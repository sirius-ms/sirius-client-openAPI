#' Create a new Timeout
#'
#' @description
#' Timeout Class
#'
#' @docType class
#' @title Timeout
#' @description Timeout Class
#' @format An \code{R6Class} generator object
#' @field numberOfSecondsPerDecomposition  integer [optional]
#' @field numberOfSecondsPerInstance  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Timeout <- R6::R6Class(
  "Timeout",
  public = list(
    `numberOfSecondsPerDecomposition` = NULL,
    `numberOfSecondsPerInstance` = NULL,

    #' @description
    #' Initialize a new Timeout class.
    #'
    #' @param numberOfSecondsPerDecomposition numberOfSecondsPerDecomposition
    #' @param numberOfSecondsPerInstance numberOfSecondsPerInstance
    #' @param ... Other optional arguments.
    initialize = function(`numberOfSecondsPerDecomposition` = NULL, `numberOfSecondsPerInstance` = NULL, ...) {
      if (!is.null(`numberOfSecondsPerDecomposition`)) {
        if (!(is.numeric(`numberOfSecondsPerDecomposition`) && length(`numberOfSecondsPerDecomposition`) == 1)) {
          stop(paste("Error! Invalid data for `numberOfSecondsPerDecomposition`. Must be an integer:", `numberOfSecondsPerDecomposition`))
        }
        self$`numberOfSecondsPerDecomposition` <- `numberOfSecondsPerDecomposition`
      }
      if (!is.null(`numberOfSecondsPerInstance`)) {
        if (!(is.numeric(`numberOfSecondsPerInstance`) && length(`numberOfSecondsPerInstance`) == 1)) {
          stop(paste("Error! Invalid data for `numberOfSecondsPerInstance`. Must be an integer:", `numberOfSecondsPerInstance`))
        }
        self$`numberOfSecondsPerInstance` <- `numberOfSecondsPerInstance`
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
    #' @return Timeout as a base R list.
    #' @examples
    #' # convert array of Timeout (x) to a data frame
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
    #' Convert Timeout to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      TimeoutObject <- list()
      if (!is.null(self$`numberOfSecondsPerDecomposition`)) {
        TimeoutObject[["numberOfSecondsPerDecomposition"]] <-
          self$`numberOfSecondsPerDecomposition`
      }
      if (!is.null(self$`numberOfSecondsPerInstance`)) {
        TimeoutObject[["numberOfSecondsPerInstance"]] <-
          self$`numberOfSecondsPerInstance`
      }
      return(TimeoutObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of Timeout
    #'
    #' @param input_json the JSON input
    #' @return the instance of Timeout
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`numberOfSecondsPerDecomposition`)) {
        self$`numberOfSecondsPerDecomposition` <- this_object$`numberOfSecondsPerDecomposition`
      }
      if (!is.null(this_object$`numberOfSecondsPerInstance`)) {
        self$`numberOfSecondsPerInstance` <- this_object$`numberOfSecondsPerInstance`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Timeout in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Timeout
    #'
    #' @param input_json the JSON input
    #' @return the instance of Timeout
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`numberOfSecondsPerDecomposition` <- this_object$`numberOfSecondsPerDecomposition`
      self$`numberOfSecondsPerInstance` <- this_object$`numberOfSecondsPerInstance`
      self
    },

    #' @description
    #' Validate JSON input with respect to Timeout and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Timeout
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
# Timeout$unlock()
#
## Below is an example to define the print function
# Timeout$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Timeout$lock()

