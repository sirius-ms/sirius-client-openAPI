#' @docType class
#' @title SpectralAlignmentType
#' @description SpectralAlignmentType Class
#' @format An \code{R6Class} generator object
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SpectralAlignmentType <- R6::R6Class(
  "SpectralAlignmentType",
  public = list(
    #' Initialize a new SpectralAlignmentType class.
    #'
    #' @description
    #' Initialize a new SpectralAlignmentType class.
    #'
    #' @param ... Optional arguments.
    #' @export
    initialize = function(...) {
      local.optional.var <- list(...)
      val <- unlist(local.optional.var)
      enumvec <- .parse_SpectralAlignmentType()

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
        warning("Initializing SpectralAlignmentType with DUMMY_ENUM. Use one of the valid values: ",
          paste0(enumvec, collapse = ", "),
          ". If you did not manually initialize SpectralAlignmentType, this may already be overwritten by an enum loaded from a JSON config.")
      }
      private$value <- val
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return SpectralAlignmentType in JSON format
    #' @export
    toJSON = function() {
        jsonlite::toJSON(private$value, auto_unbox = TRUE)
    },
    #' Deserialize JSON string into an instance of SpectralAlignmentType
    #'
    #' @description
    #' Deserialize JSON string into an instance of SpectralAlignmentType
    #'
    #' @param input_json the JSON input
    #' @return the instance of SpectralAlignmentType
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
    #' @return SpectralAlignmentType in JSON format
    #' @export
    toJSONString = function() {
      jsonlite::toJSON(private$value, auto_unbox = TRUE)
    },
    #' Deserialize JSON string into an instance of SpectralAlignmentType
    #'
    #' @description
    #' Deserialize JSON string into an instance of SpectralAlignmentType
    #'
    #' @param input_json the JSON input
    #' @return the instance of SpectralAlignmentType
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
.parse_SpectralAlignmentType <- function(vals) {
  res <- gsub("^\\[|\\]$", "", "[INTENSITY, GAUSSIAN, MODIFIED_COSINE]")
  unlist(strsplit(res, ", "))
}

