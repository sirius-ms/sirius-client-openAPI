#' Create a new ZodiacEdgeFilterThresholds
#'
#' @description
#' ZodiacEdgeFilterThresholds Class
#'
#' @docType class
#' @title ZodiacEdgeFilterThresholds
#' @description ZodiacEdgeFilterThresholds Class
#' @format An \code{R6Class} generator object
#' @field thresholdFilter  numeric [optional]
#' @field minLocalCandidates  integer [optional]
#' @field minLocalConnections  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ZodiacEdgeFilterThresholds <- R6::R6Class(
  "ZodiacEdgeFilterThresholds",
  public = list(
    `thresholdFilter` = NULL,
    `minLocalCandidates` = NULL,
    `minLocalConnections` = NULL,

    #' @description
    #' Initialize a new ZodiacEdgeFilterThresholds class.
    #'
    #' @param thresholdFilter thresholdFilter
    #' @param minLocalCandidates minLocalCandidates
    #' @param minLocalConnections minLocalConnections
    #' @param ... Other optional arguments.
    initialize = function(`thresholdFilter` = NULL, `minLocalCandidates` = NULL, `minLocalConnections` = NULL, ...) {
      if (!is.null(`thresholdFilter`)) {
        if (!(is.numeric(`thresholdFilter`) && length(`thresholdFilter`) == 1)) {
          stop(paste("Error! Invalid data for `thresholdFilter`. Must be a number:", `thresholdFilter`))
        }
        self$`thresholdFilter` <- `thresholdFilter`
      }
      if (!is.null(`minLocalCandidates`)) {
        if (!(is.numeric(`minLocalCandidates`) && length(`minLocalCandidates`) == 1)) {
          stop(paste("Error! Invalid data for `minLocalCandidates`. Must be an integer:", `minLocalCandidates`))
        }
        self$`minLocalCandidates` <- `minLocalCandidates`
      }
      if (!is.null(`minLocalConnections`)) {
        if (!(is.numeric(`minLocalConnections`) && length(`minLocalConnections`) == 1)) {
          stop(paste("Error! Invalid data for `minLocalConnections`. Must be an integer:", `minLocalConnections`))
        }
        self$`minLocalConnections` <- `minLocalConnections`
      }
    },

    #' @description
    #' Convert to an R object. This method is deprecated. Use `toSimpleType()` instead.
    toJSON = function() {
      .Deprecated(new = "toSimpleType", msg = "Use the '$toSimpleType()' method instead since that is more clearly named. Use '$toJSONString()' to get a JSON string")
      return(self$toSimpleType())
    },

    #' @description
    #' Convert to a List
    #'
    #' Convert the R6 object to a list to work more easily with other tooling.
    #'
    #' @return ZodiacEdgeFilterThresholds as a base R list.
    #' @examples
    #' # convert array of ZodiacEdgeFilterThresholds (x) to a data frame
    #' \dontrun{
    #' library(purrr)
    #' library(tibble)
    #' df <- x |> map(\(y)y$toList()) |> map(as_tibble) |> list_rbind()
    #' df
    #' }
    toList = function() {
      return(self$toSimpleType())
    },

    #' @description
    #' Convert ZodiacEdgeFilterThresholds to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ZodiacEdgeFilterThresholdsObject <- list()
      if (!is.null(self$`thresholdFilter`)) {
        ZodiacEdgeFilterThresholdsObject[["thresholdFilter"]] <-
          self$`thresholdFilter`
      }
      if (!is.null(self$`minLocalCandidates`)) {
        ZodiacEdgeFilterThresholdsObject[["minLocalCandidates"]] <-
          self$`minLocalCandidates`
      }
      if (!is.null(self$`minLocalConnections`)) {
        ZodiacEdgeFilterThresholdsObject[["minLocalConnections"]] <-
          self$`minLocalConnections`
      }
      return(ZodiacEdgeFilterThresholdsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ZodiacEdgeFilterThresholds
    #'
    #' @param input_json the JSON input
    #' @return the instance of ZodiacEdgeFilterThresholds
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`thresholdFilter`)) {
        self$`thresholdFilter` <- this_object$`thresholdFilter`
      }
      if (!is.null(this_object$`minLocalCandidates`)) {
        self$`minLocalCandidates` <- this_object$`minLocalCandidates`
      }
      if (!is.null(this_object$`minLocalConnections`)) {
        self$`minLocalConnections` <- this_object$`minLocalConnections`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ZodiacEdgeFilterThresholds in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ZodiacEdgeFilterThresholds
    #'
    #' @param input_json the JSON input
    #' @return the instance of ZodiacEdgeFilterThresholds
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`thresholdFilter` <- this_object$`thresholdFilter`
      self$`minLocalCandidates` <- this_object$`minLocalCandidates`
      self$`minLocalConnections` <- this_object$`minLocalConnections`
      self
    },

    #' @description
    #' Validate JSON input with respect to ZodiacEdgeFilterThresholds and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ZodiacEdgeFilterThresholds
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
      invalid_fields
    },

    #' @description
    #' Print the object
    print = function() {
      print(jsonlite::prettify(self$toJSONString()))
      invisible(self)
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)
## Uncomment below to unlock the class to allow modifications of the method or field
# ZodiacEdgeFilterThresholds$unlock()
#
## Below is an example to define the print function
# ZodiacEdgeFilterThresholds$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ZodiacEdgeFilterThresholds$lock()

