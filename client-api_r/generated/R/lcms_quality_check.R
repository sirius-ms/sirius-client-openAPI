#' Create a new LCMSQualityCheck
#'
#' @description
#' 
#'
#' @docType class
#' @title LCMSQualityCheck
#' @description LCMSQualityCheck Class
#' @format An \code{R6Class} generator object
#' @field quality  character [optional]
#' @field description  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
LCMSQualityCheck <- R6::R6Class(
  "LCMSQualityCheck",
  public = list(
    `quality` = NULL,
    `description` = NULL,
    #' Initialize a new LCMSQualityCheck class.
    #'
    #' @description
    #' Initialize a new LCMSQualityCheck class.
    #'
    #' @param quality quality
    #' @param description description
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`quality` = NULL, `description` = NULL, ...) {
      if (!is.null(`quality`)) {
        if (!(`quality` %in% c("LOW", "MEDIUM", "GOOD"))) {
          stop(paste("Error! \"", `quality`, "\" cannot be assigned to `quality`. Must be \"LOW\", \"MEDIUM\", \"GOOD\".", sep = ""))
        }
        if (!(is.character(`quality`) && length(`quality`) == 1)) {
          stop(paste("Error! Invalid data for `quality`. Must be a string:", `quality`))
        }
        self$`quality` <- `quality`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return LCMSQualityCheck in JSON format
    #' @export
    toJSON = function() {
      LCMSQualityCheckObject <- list()
      if (!is.null(self$`quality`)) {
        LCMSQualityCheckObject[["quality"]] <-
          self$`quality`
      }
      if (!is.null(self$`description`)) {
        LCMSQualityCheckObject[["description"]] <-
          self$`description`
      }
      LCMSQualityCheckObject
    },
    #' Deserialize JSON string into an instance of LCMSQualityCheck
    #'
    #' @description
    #' Deserialize JSON string into an instance of LCMSQualityCheck
    #'
    #' @param input_json the JSON input
    #' @return the instance of LCMSQualityCheck
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`quality`)) {
        if (!is.null(this_object$`quality`) && !(this_object$`quality` %in% c("LOW", "MEDIUM", "GOOD"))) {
          stop(paste("Error! \"", this_object$`quality`, "\" cannot be assigned to `quality`. Must be \"LOW\", \"MEDIUM\", \"GOOD\".", sep = ""))
        }
        self$`quality` <- this_object$`quality`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return LCMSQualityCheck in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`quality`)) {
          sprintf(
          '"quality":
            "%s"
                    ',
          self$`quality`
          )
        },
        if (!is.null(self$`description`)) {
          sprintf(
          '"description":
            "%s"
                    ',
          self$`description`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of LCMSQualityCheck
    #'
    #' @description
    #' Deserialize JSON string into an instance of LCMSQualityCheck
    #'
    #' @param input_json the JSON input
    #' @return the instance of LCMSQualityCheck
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`quality`) && !(this_object$`quality` %in% c("LOW", "MEDIUM", "GOOD"))) {
        stop(paste("Error! \"", this_object$`quality`, "\" cannot be assigned to `quality`. Must be \"LOW\", \"MEDIUM\", \"GOOD\".", sep = ""))
      }
      self$`quality` <- this_object$`quality`
      self$`description` <- this_object$`description`
      self
    },
    #' Validate JSON input with respect to LCMSQualityCheck
    #'
    #' @description
    #' Validate JSON input with respect to LCMSQualityCheck and throw an exception if invalid
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
    #' @return String representation of LCMSQualityCheck
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
# LCMSQualityCheck$unlock()
#
## Below is an example to define the print function
# LCMSQualityCheck$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# LCMSQualityCheck$lock()

