#' @docType class
#' @title CompoundOptField
#' @description CompoundOptField Class
#' @format An \code{R6Class} generator object
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CompoundOptField <- R6::R6Class(
  "CompoundOptField",
  public = list(
    #' Initialize a new CompoundOptField class.
    #'
    #' @description
    #' Initialize a new CompoundOptField class.
    #'
    #' @param ... Optional arguments.
    #' @export
    initialize = function(...) {
      local.optional.var <- list(...)
      val <- unlist(local.optional.var)
      enumvec <- .parse_CompoundOptField()

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
        warning("Initializing CompoundOptField with DUMMY_ENUM. Use one of the valid values: ",
          paste0(enumvec, collapse = ", "),
          ". If you did not manually initialize CompoundOptField, this may already be overwritten by an enum loaded from a JSON config.")
      }
      private$value <- val
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return CompoundOptField in JSON format
    #' @export
    toJSON = function() {
        jsonlite::toJSON(private$value, auto_unbox = TRUE)
    },
    #' Deserialize JSON string into an instance of CompoundOptField
    #'
    #' @description
    #' Deserialize JSON string into an instance of CompoundOptField
    #'
    #' @param input_json the JSON input
    #' @return the instance of CompoundOptField
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
    #' @return CompoundOptField in JSON format
    #' @export
    toJSONString = function() {
        jsonlite::toJSON(private$value, auto_unbox = TRUE)
    },
    #' Deserialize JSON string into an instance of CompoundOptField
    #'
    #' @description
    #' Deserialize JSON string into an instance of CompoundOptField
    #'
    #' @param input_json the JSON input
    #' @return the instance of CompoundOptField
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
.parse_CompoundOptField <- function(vals) {
  res <- gsub("^\\[|\\]$", "", "[none, consensusAnnotations, consensusAnnotationsDeNovo, customAnnotations]")
  unlist(strsplit(res, ", "))
}

