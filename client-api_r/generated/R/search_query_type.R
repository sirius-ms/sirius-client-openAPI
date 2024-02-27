#' @docType class
#' @title SearchQueryType
#' @description SearchQueryType Class
#' @format An \code{R6Class} generator object
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SearchQueryType <- R6::R6Class(
  "SearchQueryType",
  public = list(
    #' Initialize a new SearchQueryType class.
    #'
    #' @description
    #' Initialize a new SearchQueryType class.
    #'
    #' @param ... Optional arguments.
    #' @export
    initialize = function(...) {
      local.optional.var <- list(...)
      val <- unlist(local.optional.var)
      enumvec <- .parse_SearchQueryType()

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
    #' @return SearchQueryType in JSON format
    #' @export
    toJSON = function() {
        jsonlite::toJSON(private$value, auto_unbox = TRUE)
    },
    #' Deserialize JSON string into an instance of SearchQueryType
    #'
    #' @description
    #' Deserialize JSON string into an instance of SearchQueryType
    #'
    #' @param input_json the JSON input
    #' @return the instance of SearchQueryType
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
    #' @return SearchQueryType in JSON format
    #' @export
    toJSONString = function() {
      as.character(jsonlite::toJSON(private$value,
          auto_unbox = TRUE))
    },
    #' Deserialize JSON string into an instance of SearchQueryType
    #'
    #' @description
    #' Deserialize JSON string into an instance of SearchQueryType
    #'
    #' @param input_json the JSON input
    #' @return the instance of SearchQueryType
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
.parse_SearchQueryType <- function(vals) {
  res <- gsub("^\\[|\\]$", "", "[LUCENE]")
  unlist(strsplit(res, ", "))
}

