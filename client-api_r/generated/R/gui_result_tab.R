#' @docType class
#' @title GuiResultTab
#' @description GuiResultTab Class
#' @format An \code{R6Class} generator object
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GuiResultTab <- R6::R6Class(
  "GuiResultTab",
  public = list(
    #' Initialize a new GuiResultTab class.
    #'
    #' @description
    #' Initialize a new GuiResultTab class.
    #'
    #' @param ... Optional arguments.
    #' @export
    initialize = function(...) {
      local.optional.var <- list(...)
      val <- unlist(local.optional.var)
      enumvec <- .parse_GuiResultTab()

      stopifnot(length(val) == 1L)

      if (!val %in% enumvec)
          stop("Use one of the valid values: ",
              paste0(enumvec, collapse = ", "))
      private$value <- val
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return GuiResultTab in JSON format
    #' @export
    toJSON = function() {
        jsonlite::toJSON(private$value, auto_unbox = TRUE)
    },
    #' Deserialize JSON string into an instance of GuiResultTab
    #'
    #' @description
    #' Deserialize JSON string into an instance of GuiResultTab
    #'
    #' @param input_json the JSON input
    #' @return the instance of GuiResultTab
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
    #' @return GuiResultTab in JSON format
    #' @export
    toJSONString = function() {
      as.character(jsonlite::toJSON(private$value,
          auto_unbox = TRUE))
    },
    #' Deserialize JSON string into an instance of GuiResultTab
    #'
    #' @description
    #' Deserialize JSON string into an instance of GuiResultTab
    #'
    #' @param input_json the JSON input
    #' @return the instance of GuiResultTab
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
.parse_GuiResultTab <- function(vals) {
  res <- gsub("^\\[|\\]$", "", "[FORMULAS, PREDICTED_FINGERPRINT, COMPOUND_CLASSES, STRUCTURES, STRUCTURE_ANNOTATION, DE_NOVO_STRUCTURES]")
  unlist(strsplit(res, ", "))
}

