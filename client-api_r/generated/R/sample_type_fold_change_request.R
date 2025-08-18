#' Create a new SampleTypeFoldChangeRequest
#'
#' @description
#' SampleTypeFoldChangeRequest Class
#'
#' @docType class
#' @title SampleTypeFoldChangeRequest
#' @description SampleTypeFoldChangeRequest Class
#' @format An \code{R6Class} generator object
#' @field sampleRunIds  list(character) [optional]
#' @field blankRunIds  list(character) [optional]
#' @field controlRunIds  list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SampleTypeFoldChangeRequest <- R6::R6Class(
  "SampleTypeFoldChangeRequest",
  public = list(
    `sampleRunIds` = NULL,
    `blankRunIds` = NULL,
    `controlRunIds` = NULL,

    #' @description
    #' Initialize a new SampleTypeFoldChangeRequest class.
    #'
    #' @param sampleRunIds sampleRunIds
    #' @param blankRunIds blankRunIds
    #' @param controlRunIds controlRunIds
    #' @param ... Other optional arguments.
    initialize = function(`sampleRunIds` = NULL, `blankRunIds` = NULL, `controlRunIds` = NULL, ...) {
      if (!is.null(`sampleRunIds`)) {
        stopifnot(is.vector(`sampleRunIds`), length(`sampleRunIds`) != 0)
        sapply(`sampleRunIds`, function(x) stopifnot(is.character(x)))
        self$`sampleRunIds` <- `sampleRunIds`
      }
      if (!is.null(`blankRunIds`)) {
        stopifnot(is.vector(`blankRunIds`), length(`blankRunIds`) != 0)
        sapply(`blankRunIds`, function(x) stopifnot(is.character(x)))
        self$`blankRunIds` <- `blankRunIds`
      }
      if (!is.null(`controlRunIds`)) {
        stopifnot(is.vector(`controlRunIds`), length(`controlRunIds`) != 0)
        sapply(`controlRunIds`, function(x) stopifnot(is.character(x)))
        self$`controlRunIds` <- `controlRunIds`
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
    #' @return SampleTypeFoldChangeRequest as a base R list.
    #' @examples
    #' # convert array of SampleTypeFoldChangeRequest (x) to a data frame
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
    #' Convert SampleTypeFoldChangeRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SampleTypeFoldChangeRequestObject <- list()
      if (!is.null(self$`sampleRunIds`)) {
        SampleTypeFoldChangeRequestObject[["sampleRunIds"]] <-
          self$`sampleRunIds`
      }
      if (!is.null(self$`blankRunIds`)) {
        SampleTypeFoldChangeRequestObject[["blankRunIds"]] <-
          self$`blankRunIds`
      }
      if (!is.null(self$`controlRunIds`)) {
        SampleTypeFoldChangeRequestObject[["controlRunIds"]] <-
          self$`controlRunIds`
      }
      return(SampleTypeFoldChangeRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of SampleTypeFoldChangeRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of SampleTypeFoldChangeRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`sampleRunIds`)) {
        self$`sampleRunIds` <- ApiClient$new()$deserializeObj(this_object$`sampleRunIds`, "array[character]", loadNamespace("Rsirius"))
      }
      if (!is.null(this_object$`blankRunIds`)) {
        self$`blankRunIds` <- ApiClient$new()$deserializeObj(this_object$`blankRunIds`, "array[character]", loadNamespace("Rsirius"))
      }
      if (!is.null(this_object$`controlRunIds`)) {
        self$`controlRunIds` <- ApiClient$new()$deserializeObj(this_object$`controlRunIds`, "array[character]", loadNamespace("Rsirius"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SampleTypeFoldChangeRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SampleTypeFoldChangeRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of SampleTypeFoldChangeRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`sampleRunIds` <- ApiClient$new()$deserializeObj(this_object$`sampleRunIds`, "array[character]", loadNamespace("Rsirius"))
      self$`blankRunIds` <- ApiClient$new()$deserializeObj(this_object$`blankRunIds`, "array[character]", loadNamespace("Rsirius"))
      self$`controlRunIds` <- ApiClient$new()$deserializeObj(this_object$`controlRunIds`, "array[character]", loadNamespace("Rsirius"))
      self
    },

    #' @description
    #' Validate JSON input with respect to SampleTypeFoldChangeRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SampleTypeFoldChangeRequest
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
# SampleTypeFoldChangeRequest$unlock()
#
## Below is an example to define the print function
# SampleTypeFoldChangeRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SampleTypeFoldChangeRequest$lock()

