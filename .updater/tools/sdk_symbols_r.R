#!/usr/bin/env Rscript
# Dump the public surface of the generated R client as JSON.
#
# Uses base R's own parser, so the R grammar decides what a method is - no regex guessing about
# generated code that a generator upgrade may reshape. Only base R is required; the extracted
# structure is joined to the OpenAPI spec later by sdk_symbols.py.
#
# Usage: sdk_symbols_r.R FILE... > surface.json

args <- commandArgs(trailingOnly = TRUE)
if (length(args) == 0L) stop("usage: sdk_symbols_r.R FILE...")

# --- minimal JSON writer (base R has none) ---------------------------------------------------
jesc <- function(s) {
  s <- gsub("\\", "\\\\", s, fixed = TRUE)
  s <- gsub("\"", "\\\"", s, fixed = TRUE)
  s <- gsub("\n", "\\n", s, fixed = TRUE)
  s <- gsub("\r", "\\r", s, fixed = TRUE)
  s <- gsub("\t", "\\t", s, fixed = TRUE)
  paste0("\"", s, "\"")
}
jval <- function(x) {
  if (is.null(x)) return("null")
  if (is.logical(x) && length(x) == 1L) return(if (isTRUE(x)) "true" else "false")
  if (is.character(x) && length(x) == 1L) return(jesc(x))
  if (is.list(x)) {
    nm <- names(x)
    if (!is.null(nm) && all(nzchar(nm))) {
      return(paste0("{", paste0(jesc(nm), ":", vapply(x, jval, ""), collapse = ","), "}"))
    }
    return(paste0("[", paste0(vapply(x, jval, ""), collapse = ","), "]"))
  }
  if (is.character(x)) return(paste0("[", paste0(vapply(x, jesc, ""), collapse = ","), "]"))
  jesc(as.character(x))
}

is_function_def <- function(node) {
  is.call(node) && identical(as.character(node[[1L]]), "function")
}

# `function(a, b = 1)` -> ordered parameter records
formals_of <- function(node) {
  fl <- as.list(node[[2L]])
  nms <- names(fl)
  out <- list()
  for (i in seq_along(fl)) {
    # never bind the empty symbol to a variable - looking it up raises "argument is missing"
    has_default <- !identical(fl[[i]], quote(expr = ))
    out[[length(out) + 1L]] <- list(
      name = nms[[i]],
      required = !has_default && nms[[i]] != "...",
      default = if (has_default) paste(deparse(fl[[i]]), collapse = " ") else NULL
    )
  }
  out
}

# The request details both identify the operation and are what actually breaks for users.
call_details <- function(node) {
  body_txt <- paste(deparse(node[[3L]]), collapse = "\n")
  path <- regmatches(body_txt, regexpr("local_var_url_path <- \"[^\"]*\"", body_txt))
  http <- regmatches(body_txt, regexpr("method = \"[A-Z]+\"", body_txt))
  deleg <- regmatches(body_txt, regexpr("self\\$[A-Za-z0-9_]+WithHttpInfo\\(", body_txt))
  list(
    path = if (length(path)) sub(".*\"([^\"]*)\"$", "\\1", path[[1L]]) else NULL,
    http_method = if (length(http)) sub(".*\"([A-Z]+)\"$", "\\1", http[[1L]]) else NULL,
    delegates_to = if (length(deleg)) sub("^self\\$([A-Za-z0-9_]+)\\($", "\\1", deleg[[1L]]) else NULL
  )
}

is_r6_call <- function(node) {
  if (!is.call(node)) return(FALSE)
  head <- paste(deparse(node[[1L]]), collapse = "")
  head %in% c("R6::R6Class", "R6Class")
}

classes <- list()
exports <- character(0)

for (path in args) {
  if (basename(path) == "NAMESPACE") {
    for (line in readLines(path, warn = FALSE)) {
      m <- regmatches(line, regexpr("^export\\(([^)]*)\\)", line))
      if (length(m)) exports <- c(exports, sub("^export\\(([^)]*)\\)$", "\\1", m[[1L]]))
    }
    next
  }
  exprs <- parse(path, keep.source = FALSE)
  for (e in exprs) {
    # members added to an existing generator after the fact: Generator$set("public", "Name", fn).
    # The deprecated aliases in rsirius_compat.R are declared this way, and they are public surface
    # like any other method, so the snapshot has to contain them.
    if (is.call(e) && is.call(e[[1L]]) && identical(as.character(e[[1L]][[1L]]), "$") &&
        identical(as.character(e[[1L]][[3L]]), "set")) {
      target <- paste(deparse(e[[1L]][[2L]]), collapse = "")
      a <- as.list(e)[-1L]
      if (length(a) >= 3L && identical(as.character(a[[1L]]), "public") &&
          is.character(a[[2L]]) && is_function_def(a[[3L]])) {
        nm <- as.character(a[[2L]])
        d <- call_details(a[[3L]])
        if (is.null(classes[[target]])) {
          classes[[target]] <- list(name = target, file = basename(path),
                                    methods = list(), fields = list())
        }
        classes[[target]]$methods[[nm]] <- list(
          params = formals_of(a[[3L]]),
          path = d$path, http_method = d$http_method, delegates_to = d$delegates_to
        )
      }
      next
    }
    if (!is.call(e) || !as.character(e[[1L]])[[1L]] %in% c("<-", "=")) next
    lhs <- e[[2L]]
    rhs <- e[[3L]]
    if (!is_r6_call(rhs)) next

    a <- as.list(rhs)[-1L]
    anames <- names(a)
    if (is.null(anames)) anames <- rep("", length(a))
    cls_name <- if (any(anames == "classname")) as.character(a[[which(anames == "classname")[[1L]]]])
                else if (any(anames == "")) as.character(a[[which(anames == "")[[1L]]]])
                else paste(deparse(lhs), collapse = "")
    pub_idx <- which(anames == "public")
    methods <- list()
    fields <- character(0)
    if (length(pub_idx)) {
      pub <- as.list(a[[pub_idx[[1L]]]])[-1L]
      pnames <- names(pub)
      for (i in seq_along(pub)) {
        nm <- if (is.null(pnames)) "" else pnames[[i]]
        if (!nzchar(nm) || startsWith(nm, ".")) next
        if (is_function_def(pub[[i]])) {
          d <- call_details(pub[[i]])
          methods[[nm]] <- list(
            params = formals_of(pub[[i]]),
            path = d$path, http_method = d$http_method, delegates_to = d$delegates_to
          )
        } else {
          fields <- c(fields, nm)
        }
      }
    }
    classes[[cls_name]] <- list(
      name = cls_name,
      file = basename(path),
      methods = methods,
      fields = as.list(sort(fields))
    )
  }
}

cat(jval(list(classes = classes, exports = as.list(sort(unique(exports))))), "\n", sep = "")
