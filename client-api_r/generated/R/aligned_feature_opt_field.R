#' @docType class
#' @title AlignedFeatureOptField
#' @description AlignedFeatureOptField Class
#' @format An \code{R6Class} generator object
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AlignedFeatureOptField <- R6::R6Class(
  "AlignedFeatureOptField",
  public = list(
    #' Initialize a new AlignedFeatureOptField class.
    #'
    #' @description
    #' Initialize a new AlignedFeatureOptField class.
    #'
    #' @param ... Optional arguments.
    #' @export
    initialize = function(...) {
      local.optional.var <- list(...)
      val <- unlist(local.optional.var)
      enumvec <- .parse_AlignedFeatureOptField()

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
        warning("Initializing AlignedFeatureOptField with DUMMY_ENUM. Use one of the valid values: ",
          paste0(enumvec, collapse = ", "),
          ". If you did not manually initialize AlignedFeatureOptField, this may already be overwritten by an enum loaded from a JSON config.")
      }
      private$value <- val
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return AlignedFeatureOptField in JSON format
    #' @export
    toJSON = function() {
        jsonlite::toJSON(private$value, auto_unbox = TRUE)
    },
    #' Deserialize JSON string into an instance of AlignedFeatureOptField
    #'
    #' @description
    #' Deserialize JSON string into an instance of AlignedFeatureOptField
    #'
    #' @param input_json the JSON input
    #' @return the instance of AlignedFeatureOptField
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
    #' @return AlignedFeatureOptField in JSON format
    #' @export
    toJSONString = function() {
      as.character(jsonlite::toJSON(private$value,
          auto_unbox = TRUE))
    },
    #' Deserialize JSON string into an instance of AlignedFeatureOptField
    #'
    #' @description
    #' Deserialize JSON string into an instance of AlignedFeatureOptField
    #'
    #' @param input_json the JSON input
    #' @return the instance of AlignedFeatureOptField
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
.parse_AlignedFeatureOptField <- function(vals) {
  res <- gsub("^\\[|\\]$", "", "[none, msData, topAnnotations, topAnnotationsDeNovo]")
  unlist(strsplit(res, ", "))
}

