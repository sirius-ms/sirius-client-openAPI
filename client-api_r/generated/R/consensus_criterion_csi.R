#' @docType class
#' @title ConsensusCriterionCSI
#' @description ConsensusCriterionCSI Class
#' @format An \code{R6Class} generator object
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ConsensusCriterionCSI <- R6::R6Class(
  "ConsensusCriterionCSI",
  public = list(
    #' Initialize a new ConsensusCriterionCSI class.
    #'
    #' @description
    #' Initialize a new ConsensusCriterionCSI class.
    #'
    #' @param ... Optional arguments.
    #' @export
    initialize = function(...) {
      local.optional.var <- list(...)
      val <- unlist(local.optional.var)
      enumvec <- .parse_ConsensusCriterionCSI()

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
    #' @return ConsensusCriterionCSI in JSON format
    #' @export
    toJSON = function() {
        jsonlite::toJSON(private$value, auto_unbox = TRUE)
    },
    #' Deserialize JSON string into an instance of ConsensusCriterionCSI
    #'
    #' @description
    #' Deserialize JSON string into an instance of ConsensusCriterionCSI
    #'
    #' @param input_json the JSON input
    #' @return the instance of ConsensusCriterionCSI
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
    #' @return ConsensusCriterionCSI in JSON format
    #' @export
    toJSONString = function() {
      as.character(jsonlite::toJSON(private$value,
          auto_unbox = TRUE))
    },
    #' Deserialize JSON string into an instance of ConsensusCriterionCSI
    #'
    #' @description
    #' Deserialize JSON string into an instance of ConsensusCriterionCSI
    #'
    #' @param input_json the JSON input
    #' @return the instance of ConsensusCriterionCSI
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
.parse_ConsensusCriterionCSI <- function(vals) {
  res <- gsub("^\\[|\\]$", "", "[MAJORITY_STRUCTURE, CONFIDENCE_STRUCTURE, SINGLETON_STRUCTURE, MAJORITY_FORMULA, TOP_FORMULA, SINGLETON_FORMULA]")
  unlist(strsplit(res, ", "))
}

