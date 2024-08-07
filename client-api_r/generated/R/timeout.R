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
    #' Initialize a new Timeout class.
    #'
    #' @description
    #' Initialize a new Timeout class.
    #'
    #' @param numberOfSecondsPerDecomposition numberOfSecondsPerDecomposition
    #' @param numberOfSecondsPerInstance numberOfSecondsPerInstance
    #' @param ... Other optional arguments.
    #' @export
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
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return Timeout in JSON format
    #' @export
    toJSON = function() {
      TimeoutObject <- list()
      if (!is.null(self$`numberOfSecondsPerDecomposition`)) {
        TimeoutObject[["numberOfSecondsPerDecomposition"]] <-
          self$`numberOfSecondsPerDecomposition`
      }
      if (!is.null(self$`numberOfSecondsPerInstance`)) {
        TimeoutObject[["numberOfSecondsPerInstance"]] <-
          self$`numberOfSecondsPerInstance`
      }
      TimeoutObject
    },
    #' Deserialize JSON string into an instance of Timeout
    #'
    #' @description
    #' Deserialize JSON string into an instance of Timeout
    #'
    #' @param input_json the JSON input
    #' @return the instance of Timeout
    #' @export
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
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return Timeout in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`numberOfSecondsPerDecomposition`)) {
          sprintf(
          '"numberOfSecondsPerDecomposition":
            %f
                    ',
          self$`numberOfSecondsPerDecomposition`
          )
        },
        if (!is.null(self$`numberOfSecondsPerInstance`)) {
          sprintf(
          '"numberOfSecondsPerInstance":
            %f
                    ',
          self$`numberOfSecondsPerInstance`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      # remove c() occurences and reduce resulting double escaped quotes \"\" into \"
      jsoncontent <- gsub('\\\"c\\((.*?)\\\"\\)', '\\1', jsoncontent)
      # fix wrong serialization of "\"ENUM\"" to "ENUM"
      jsoncontent <- gsub("\\\\\"([A-Z]+)\\\\\"", "\\1", jsoncontent)
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of Timeout
    #'
    #' @description
    #' Deserialize JSON string into an instance of Timeout
    #'
    #' @param input_json the JSON input
    #' @return the instance of Timeout
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`numberOfSecondsPerDecomposition` <- this_object$`numberOfSecondsPerDecomposition`
      self$`numberOfSecondsPerInstance` <- this_object$`numberOfSecondsPerInstance`
      self
    },
    #' Validate JSON input with respect to Timeout
    #'
    #' @description
    #' Validate JSON input with respect to Timeout and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Timeout
    #' @export
    toString = function() {
      self$toJSONString()
    },
    #' Return true if the values in all fields are valid.
    #'
    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    #' @export
    isValid = function() {
      TRUE
    },
    #' Return a list of invalid fields (if any).
    #'
    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    #' @export
    getInvalidFields = function() {
      invalid_fields <- list()
      invalid_fields
    },
    #' Print the object
    #'
    #' @description
    #' Print the object
    #'
    #' @export
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

