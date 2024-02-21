#' @docType class
#' @title Mode
#' @description Mode Class
#' @format An \code{R6Class} generator object
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Mode <- R6::R6Class(
  "Mode",
  public = list(
    #' Initialize a new Mode class.
    #'
    #' @description
    #' Initialize a new Mode class.
    #'
    #' @param ... Optional arguments.
    #' @export
    initialize = function(...) {
      local.optional.var <- list(...)
      val <- unlist(local.optional.var)
      enumvec <- .parse_Mode()

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
    #' @return Mode in JSON format
    #' @export
    toJSON = function() {
        jsonlite::toJSON(private$value, auto_unbox = TRUE)
    },
    #' Deserialize JSON string into an instance of Mode
    #'
    #' @description
    #' Deserialize JSON string into an instance of Mode
    #'
    #' @param input_json the JSON input
    #' @return the instance of Mode
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
    #' @return Mode in JSON format
    #' @export
    toJSONString = function() {
      as.character(jsonlite::toJSON(private$value,
          auto_unbox = TRUE))
    },
    #' Deserialize JSON string into an instance of Mode
    #'
    #' @description
    #' Deserialize JSON string into an instance of Mode
    #'
    #' @param input_json the JSON input
    #' @return the instance of Mode
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
.parse_Mode <- function(vals) {
  res <- gsub("^\\[|\\]$", "", "[OFF, EXACT, APPROXIMATE]")
  unlist(strsplit(res, ", "))
}

