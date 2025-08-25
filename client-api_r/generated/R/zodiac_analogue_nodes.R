#' Create a new ZodiacAnalogueNodes
#'
#' @description
#' ZodiacAnalogueNodes Class
#'
#' @docType class
#' @title ZodiacAnalogueNodes
#' @description ZodiacAnalogueNodes Class
#' @format An \code{R6Class} generator object
#' @field enabled  character [optional]
#' @field minSimilarity  numeric [optional]
#' @field minSharedPeaks  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ZodiacAnalogueNodes <- R6::R6Class(
  "ZodiacAnalogueNodes",
  public = list(
    `enabled` = NULL,
    `minSimilarity` = NULL,
    `minSharedPeaks` = NULL,

    #' @description
    #' Initialize a new ZodiacAnalogueNodes class.
    #'
    #' @param enabled enabled
    #' @param minSimilarity minSimilarity
    #' @param minSharedPeaks minSharedPeaks
    #' @param ... Other optional arguments.
    initialize = function(`enabled` = NULL, `minSimilarity` = NULL, `minSharedPeaks` = NULL, ...) {
      if (!is.null(`enabled`)) {
        if (!(is.logical(`enabled`) && length(`enabled`) == 1)) {
          stop(paste("Error! Invalid data for `enabled`. Must be a boolean:", `enabled`))
        }
        self$`enabled` <- `enabled`
      }
      if (!is.null(`minSimilarity`)) {
        if (!(is.numeric(`minSimilarity`) && length(`minSimilarity`) == 1)) {
          stop(paste("Error! Invalid data for `minSimilarity`. Must be a number:", `minSimilarity`))
        }
        self$`minSimilarity` <- `minSimilarity`
      }
      if (!is.null(`minSharedPeaks`)) {
        if (!(is.numeric(`minSharedPeaks`) && length(`minSharedPeaks`) == 1)) {
          stop(paste("Error! Invalid data for `minSharedPeaks`. Must be an integer:", `minSharedPeaks`))
        }
        self$`minSharedPeaks` <- `minSharedPeaks`
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
    #' @return ZodiacAnalogueNodes as a base R list.
    #' @examples
    #' # convert array of ZodiacAnalogueNodes (x) to a data frame
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
    #' Convert ZodiacAnalogueNodes to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ZodiacAnalogueNodesObject <- list()
      if (!is.null(self$`enabled`)) {
        ZodiacAnalogueNodesObject[["enabled"]] <-
          self$`enabled`
      }
      if (!is.null(self$`minSimilarity`)) {
        ZodiacAnalogueNodesObject[["minSimilarity"]] <-
          self$`minSimilarity`
      }
      if (!is.null(self$`minSharedPeaks`)) {
        ZodiacAnalogueNodesObject[["minSharedPeaks"]] <-
          self$`minSharedPeaks`
      }
      return(ZodiacAnalogueNodesObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ZodiacAnalogueNodes
    #'
    #' @param input_json the JSON input
    #' @return the instance of ZodiacAnalogueNodes
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`enabled`)) {
        self$`enabled` <- this_object$`enabled`
      }
      if (!is.null(this_object$`minSimilarity`)) {
        self$`minSimilarity` <- this_object$`minSimilarity`
      }
      if (!is.null(this_object$`minSharedPeaks`)) {
        self$`minSharedPeaks` <- this_object$`minSharedPeaks`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ZodiacAnalogueNodes in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ZodiacAnalogueNodes
    #'
    #' @param input_json the JSON input
    #' @return the instance of ZodiacAnalogueNodes
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`enabled` <- this_object$`enabled`
      self$`minSimilarity` <- this_object$`minSimilarity`
      self$`minSharedPeaks` <- this_object$`minSharedPeaks`
      self
    },

    #' @description
    #' Validate JSON input with respect to ZodiacAnalogueNodes and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ZodiacAnalogueNodes
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
# ZodiacAnalogueNodes$unlock()
#
## Below is an example to define the print function
# ZodiacAnalogueNodes$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ZodiacAnalogueNodes$lock()

