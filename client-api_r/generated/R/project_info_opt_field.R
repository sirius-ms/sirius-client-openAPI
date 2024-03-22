#' @docType class
#' @title ProjectInfoOptField
#' @description ProjectInfoOptField Class
#' @format An \code{R6Class} generator object
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ProjectInfoOptField <- R6::R6Class(
  "ProjectInfoOptField",
  public = list(
    #' Initialize a new ProjectInfoOptField class.
    #'
    #' @description
    #' Initialize a new ProjectInfoOptField class.
    #'
    #' @param ... Optional arguments.
    #' @export
    initialize = function(...) {
      local.optional.var <- list(...)
      val <- unlist(local.optional.var)
      enumvec <- .parse_ProjectInfoOptField()

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
        warning("Initializing ProjectInfoOptField with DUMMY_ENUM. Use one of the valid values: ",
          paste0(enumvec, collapse = ", "),
          ". If you did not manually initialize ProjectInfoOptField, this may already be overwritten by an enum loaded from a JSON config.")
      }
      private$value <- val
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ProjectInfoOptField in JSON format
    #' @export
    toJSON = function() {
        jsonlite::toJSON(private$value, auto_unbox = TRUE)
    },
    #' Deserialize JSON string into an instance of ProjectInfoOptField
    #'
    #' @description
    #' Deserialize JSON string into an instance of ProjectInfoOptField
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProjectInfoOptField
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
    #' @return ProjectInfoOptField in JSON format
    #' @export
    toJSONString = function() {
        jsonlite::toJSON(private$value, auto_unbox = TRUE)
    },
    #' Deserialize JSON string into an instance of ProjectInfoOptField
    #'
    #' @description
    #' Deserialize JSON string into an instance of ProjectInfoOptField
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProjectInfoOptField
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
.parse_ProjectInfoOptField <- function(vals) {
  res <- gsub("^\\[|\\]$", "", "[none, compatibilityInfo, sizeInformation]")
  unlist(strsplit(res, ", "))
}

