#' Create a new Axes
#'
#' @description
#' Axes Class
#'
#' @docType class
#' @title Axes
#' @description Axes Class
#' @format An \code{R6Class} generator object
#' @field scanNumber  list(integer) [optional]
#' @field scanIds  list(character) [optional]
#' @field retentionTimeInSeconds  list(numeric) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Axes <- R6::R6Class(
  "Axes",
  public = list(
    `scanNumber` = NULL,
    `scanIds` = NULL,
    `retentionTimeInSeconds` = NULL,

    #' @description
    #' Initialize a new Axes class.
    #'
    #' @param scanNumber scanNumber
    #' @param scanIds scanIds
    #' @param retentionTimeInSeconds retentionTimeInSeconds
    #' @param ... Other optional arguments.
    initialize = function(`scanNumber` = NULL, `scanIds` = NULL, `retentionTimeInSeconds` = NULL, ...) {
      if (!is.null(`scanNumber`)) {
        stopifnot(is.vector(`scanNumber`), length(`scanNumber`) != 0)
        sapply(`scanNumber`, function(x) stopifnot(is.character(x)))
        self$`scanNumber` <- `scanNumber`
      }
      if (!is.null(`scanIds`)) {
        stopifnot(is.vector(`scanIds`), length(`scanIds`) != 0)
        sapply(`scanIds`, function(x) stopifnot(is.character(x)))
        self$`scanIds` <- `scanIds`
      }
      if (!is.null(`retentionTimeInSeconds`)) {
        stopifnot(is.vector(`retentionTimeInSeconds`), length(`retentionTimeInSeconds`) != 0)
        sapply(`retentionTimeInSeconds`, function(x) stopifnot(is.character(x)))
        self$`retentionTimeInSeconds` <- `retentionTimeInSeconds`
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
    #' @return Axes as a base R list.
    #' @examples
    #' # convert array of Axes (x) to a data frame
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
    #' Convert Axes to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AxesObject <- list()
      if (!is.null(self$`scanNumber`)) {
        AxesObject[["scanNumber"]] <-
          self$`scanNumber`
      }
      if (!is.null(self$`scanIds`)) {
        AxesObject[["scanIds"]] <-
          self$`scanIds`
      }
      if (!is.null(self$`retentionTimeInSeconds`)) {
        AxesObject[["retentionTimeInSeconds"]] <-
          self$`retentionTimeInSeconds`
      }
      return(AxesObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of Axes
    #'
    #' @param input_json the JSON input
    #' @return the instance of Axes
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`scanNumber`)) {
        self$`scanNumber` <- ApiClient$new()$deserializeObj(this_object$`scanNumber`, "array[integer]", loadNamespace("RSirius"))
      }
      if (!is.null(this_object$`scanIds`)) {
        self$`scanIds` <- ApiClient$new()$deserializeObj(this_object$`scanIds`, "array[character]", loadNamespace("RSirius"))
      }
      if (!is.null(this_object$`retentionTimeInSeconds`)) {
        self$`retentionTimeInSeconds` <- ApiClient$new()$deserializeObj(this_object$`retentionTimeInSeconds`, "array[numeric]", loadNamespace("RSirius"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Axes in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Axes
    #'
    #' @param input_json the JSON input
    #' @return the instance of Axes
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`scanNumber` <- ApiClient$new()$deserializeObj(this_object$`scanNumber`, "array[integer]", loadNamespace("RSirius"))
      self$`scanIds` <- ApiClient$new()$deserializeObj(this_object$`scanIds`, "array[character]", loadNamespace("RSirius"))
      self$`retentionTimeInSeconds` <- ApiClient$new()$deserializeObj(this_object$`retentionTimeInSeconds`, "array[numeric]", loadNamespace("RSirius"))
      self
    },

    #' @description
    #' Validate JSON input with respect to Axes and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Axes
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
# Axes$unlock()
#
## Below is an example to define the print function
# Axes$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Axes$lock()

