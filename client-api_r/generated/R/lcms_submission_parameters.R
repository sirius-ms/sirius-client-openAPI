#' Create a new LcmsSubmissionParameters
#'
#' @description
#' LcmsSubmissionParameters Class
#'
#' @docType class
#' @title LcmsSubmissionParameters
#' @description LcmsSubmissionParameters Class
#' @format An \code{R6Class} generator object
#' @field alignLCMSRuns Specifies whether LC/MS runs should be aligned character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
LcmsSubmissionParameters <- R6::R6Class(
  "LcmsSubmissionParameters",
  public = list(
    `alignLCMSRuns` = NULL,

    #' @description
    #' Initialize a new LcmsSubmissionParameters class.
    #'
    #' @param alignLCMSRuns Specifies whether LC/MS runs should be aligned. Default to TRUE.
    #' @param ... Other optional arguments.
    initialize = function(`alignLCMSRuns` = TRUE, ...) {
      if (!is.null(`alignLCMSRuns`)) {
        if (!(is.logical(`alignLCMSRuns`) && length(`alignLCMSRuns`) == 1)) {
          stop(paste("Error! Invalid data for `alignLCMSRuns`. Must be a boolean:", `alignLCMSRuns`))
        }
        self$`alignLCMSRuns` <- `alignLCMSRuns`
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
    #' @return LcmsSubmissionParameters as a base R list.
    #' @examples
    #' # convert array of LcmsSubmissionParameters (x) to a data frame
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
    #' Convert LcmsSubmissionParameters to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      LcmsSubmissionParametersObject <- list()
      if (!is.null(self$`alignLCMSRuns`)) {
        LcmsSubmissionParametersObject[["alignLCMSRuns"]] <-
          self$`alignLCMSRuns`
      }
      return(LcmsSubmissionParametersObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of LcmsSubmissionParameters
    #'
    #' @param input_json the JSON input
    #' @return the instance of LcmsSubmissionParameters
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`alignLCMSRuns`)) {
        self$`alignLCMSRuns` <- this_object$`alignLCMSRuns`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return LcmsSubmissionParameters in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of LcmsSubmissionParameters
    #'
    #' @param input_json the JSON input
    #' @return the instance of LcmsSubmissionParameters
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`alignLCMSRuns` <- this_object$`alignLCMSRuns`
      self
    },

    #' @description
    #' Validate JSON input with respect to LcmsSubmissionParameters and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of LcmsSubmissionParameters
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
# LcmsSubmissionParameters$unlock()
#
## Below is an example to define the print function
# LcmsSubmissionParameters$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# LcmsSubmissionParameters$lock()

