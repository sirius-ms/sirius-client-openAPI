#' @docType class
#' @title ConfidenceMode
#' @description ConfidenceMode Class
#' @format An \code{R6Class} generator object
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ConfidenceMode <- R6::R6Class(
  "ConfidenceMode",
  public = list(
    #' Initialize a new ConfidenceMode class.
    #'
    #' @description
    #' Initialize a new ConfidenceMode class.
    #'
    #' @param ... Optional arguments.
    #' @export
    initialize = function(...) {
      local.optional.var <- list(...)
      val <- unlist(local.optional.var)
      enumvec <- .parse_ConfidenceMode()

      if (length(val) == 0L) {
        val = "DUMMY_ENUM"
      } else {
        stopifnot(length(val) == 1L)
      }

      if (!val %in% enumvec) {
        if (!(val=="DUMMY_ENUM")) {
          stop("Use one of the valid values: ",
            paste0(enumvec, collapse = ", "))
        }
        warning("Initializing ConfidenceMode with DUMMY_ENUM. Use one of the valid values: ",
          paste0(enumvec, collapse = ", "),
          ". If you did not manually initialize ConfidenceMode, this may already be overwritten by an enum loaded from a JSON config.")
      }
      private$value <- val
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ConfidenceMode in JSON format
    #' @export
    toJSON = function() {
        jsonlite::toJSON(private$value, auto_unbox = TRUE)
    },
    #' Deserialize JSON string into an instance of ConfidenceMode
    #'
    #' @description
    #' Deserialize JSON string into an instance of ConfidenceMode
    #'
    #' @param input_json the JSON input
    #' @return the instance of ConfidenceMode
    #' @export
    fromJSON = function(input_json) {
      private$value <- jsonlite::fromJSON(input_json,
          simplifyVector = FALSE)
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ConfidenceMode in JSON format
    #' @export
    toJSONString = function() {
      jsonlite::toJSON(private$value, auto_unbox = TRUE)
    },
    #' Deserialize JSON string into an instance of ConfidenceMode
    #'
    #' @description
    #' Deserialize JSON string into an instance of ConfidenceMode
    #'
    #' @param input_json the JSON input
    #' @return the instance of ConfidenceMode
    #' @export
    fromJSONString = function(input_json) {
      private$value <- jsonlite::fromJSON(input_json,
          simplifyVector = FALSE)
      self
    }
  ),
  private = list(
    value = NULL
  )
)

# add to utils.R
.parse_ConfidenceMode <- function(vals) {
  res <- gsub("^\\[|\\]$", "", "[OFF, EXACT, APPROXIMATE]")
  unlist(strsplit(res, ", "))
}

