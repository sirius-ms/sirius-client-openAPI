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
    #' Initialize a new LcmsSubmissionParameters class.
    #'
    #' @description
    #' Initialize a new LcmsSubmissionParameters class.
    #'
    #' @param alignLCMSRuns Specifies whether LC/MS runs should be aligned. Default to TRUE.
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`alignLCMSRuns` = TRUE, ...) {
      if (!is.null(`alignLCMSRuns`)) {
        if (!(is.logical(`alignLCMSRuns`) && length(`alignLCMSRuns`) == 1)) {
          stop(paste("Error! Invalid data for `alignLCMSRuns`. Must be a boolean:", `alignLCMSRuns`))
        }
        self$`alignLCMSRuns` <- `alignLCMSRuns`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return LcmsSubmissionParameters in JSON format
    #' @export
    toJSON = function() {
      LcmsSubmissionParametersObject <- list()
      if (!is.null(self$`alignLCMSRuns`)) {
        LcmsSubmissionParametersObject[["alignLCMSRuns"]] <-
          self$`alignLCMSRuns`
      }
      LcmsSubmissionParametersObject
    },
    #' Deserialize JSON string into an instance of LcmsSubmissionParameters
    #'
    #' @description
    #' Deserialize JSON string into an instance of LcmsSubmissionParameters
    #'
    #' @param input_json the JSON input
    #' @return the instance of LcmsSubmissionParameters
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`alignLCMSRuns`)) {
        self$`alignLCMSRuns` <- this_object$`alignLCMSRuns`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return LcmsSubmissionParameters in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`alignLCMSRuns`)) {
          sprintf(
          '"alignLCMSRuns":
            %s
                    ',
          tolower(self$`alignLCMSRuns`)
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
    #' Deserialize JSON string into an instance of LcmsSubmissionParameters
    #'
    #' @description
    #' Deserialize JSON string into an instance of LcmsSubmissionParameters
    #'
    #' @param input_json the JSON input
    #' @return the instance of LcmsSubmissionParameters
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`alignLCMSRuns` <- this_object$`alignLCMSRuns`
      self
    },
    #' Validate JSON input with respect to LcmsSubmissionParameters
    #'
    #' @description
    #' Validate JSON input with respect to LcmsSubmissionParameters and throw an exception if invalid
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
    #' @return String representation of LcmsSubmissionParameters
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
# LcmsSubmissionParameters$unlock()
#
## Below is an example to define the print function
# LcmsSubmissionParameters$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# LcmsSubmissionParameters$lock()

