#' @docType class
#' @title ImportFormat
#' @description ImportFormat Class
#' @format An \code{R6Class} generator object
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ImportFormat <- R6::R6Class(
  "ImportFormat",
  public = list(
    #' Initialize a new ImportFormat class.
    #'
    #' @description
    #' Initialize a new ImportFormat class.
    #'
    #' @param ... Optional arguments.
    #' @export
    initialize = function(...) {
      local.optional.var <- list(...)
      val <- unlist(local.optional.var)
      enumvec <- .parse_ImportFormat()

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
    #' @return ImportFormat in JSON format
    #' @export
    toJSON = function() {
        jsonlite::toJSON(private$value, auto_unbox = TRUE)
    },
    #' Deserialize JSON string into an instance of ImportFormat
    #'
    #' @description
    #' Deserialize JSON string into an instance of ImportFormat
    #'
    #' @param input_json the JSON input
    #' @return the instance of ImportFormat
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
    #' @return ImportFormat in JSON format
    #' @export
    toJSONString = function() {
      as.character(jsonlite::toJSON(private$value,
          auto_unbox = TRUE))
    },
    #' Deserialize JSON string into an instance of ImportFormat
    #'
    #' @description
    #' Deserialize JSON string into an instance of ImportFormat
    #'
    #' @param input_json the JSON input
    #' @return the instance of ImportFormat
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
.parse_ImportFormat <- function(vals) {
  res <- gsub("^\\[|\\]$", "", "[MS, MGF, MZML, MZXML, CEF, MSP, MAT, MASSBANK]")
  unlist(strsplit(res, ", "))
}

