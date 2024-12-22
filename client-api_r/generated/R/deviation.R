#' Create a new Deviation
#'
#' @description
#' Deviation Class
#'
#' @docType class
#' @title Deviation
#' @description Deviation Class
#' @format An \code{R6Class} generator object
#' @field ppm  numeric [optional]
#' @field absolute  numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Deviation <- R6::R6Class(
  "Deviation",
  public = list(
    `ppm` = NULL,
    `absolute` = NULL,

    #' @description
    #' Initialize a new Deviation class.
    #'
    #' @param ppm ppm
    #' @param absolute absolute
    #' @param ... Other optional arguments.
    initialize = function(`ppm` = NULL, `absolute` = NULL, ...) {
      if (!is.null(`ppm`)) {
        if (!(is.numeric(`ppm`) && length(`ppm`) == 1)) {
          stop(paste("Error! Invalid data for `ppm`. Must be a number:", `ppm`))
        }
        self$`ppm` <- `ppm`
      }
      if (!is.null(`absolute`)) {
        if (!(is.numeric(`absolute`) && length(`absolute`) == 1)) {
          stop(paste("Error! Invalid data for `absolute`. Must be a number:", `absolute`))
        }
        self$`absolute` <- `absolute`
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
    #' @return Deviation as a base R list.
    #' @examples
    #' # convert array of Deviation (x) to a data frame
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
    #' Convert Deviation to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      DeviationObject <- list()
      if (!is.null(self$`ppm`)) {
        DeviationObject[["ppm"]] <-
          self$`ppm`
      }
      if (!is.null(self$`absolute`)) {
        DeviationObject[["absolute"]] <-
          self$`absolute`
      }
      return(DeviationObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of Deviation
    #'
    #' @param input_json the JSON input
    #' @return the instance of Deviation
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`ppm`)) {
        self$`ppm` <- this_object$`ppm`
      }
      if (!is.null(this_object$`absolute`)) {
        self$`absolute` <- this_object$`absolute`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Deviation in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Deviation
    #'
    #' @param input_json the JSON input
    #' @return the instance of Deviation
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`ppm` <- this_object$`ppm`
      self$`absolute` <- this_object$`absolute`
      self
    },

    #' @description
    #' Validate JSON input with respect to Deviation and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Deviation
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
# Deviation$unlock()
#
## Below is an example to define the print function
# Deviation$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Deviation$lock()

