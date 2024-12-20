#' Create a new SimplePeak
#'
#' @description
#' SimplePeak Class
#'
#' @docType class
#' @title SimplePeak
#' @description SimplePeak Class
#' @format An \code{R6Class} generator object
#' @field mz  numeric [optional]
#' @field intensity  numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SimplePeak <- R6::R6Class(
  "SimplePeak",
  public = list(
    `mz` = NULL,
    `intensity` = NULL,

    #' @description
    #' Initialize a new SimplePeak class.
    #'
    #' @param mz mz
    #' @param intensity intensity
    #' @param ... Other optional arguments.
    initialize = function(`mz` = NULL, `intensity` = NULL, ...) {
      if (!is.null(`mz`)) {
        if (!(is.numeric(`mz`) && length(`mz`) == 1)) {
          stop(paste("Error! Invalid data for `mz`. Must be a number:", `mz`))
        }
        self$`mz` <- `mz`
      }
      if (!is.null(`intensity`)) {
        if (!(is.numeric(`intensity`) && length(`intensity`) == 1)) {
          stop(paste("Error! Invalid data for `intensity`. Must be a number:", `intensity`))
        }
        self$`intensity` <- `intensity`
      }
    },

    #' @description
    #' To JSON String
    #'
    #' @return SimplePeak in JSON format
    toJSON = function() {
      SimplePeakObject <- list()
      if (!is.null(self$`mz`)) {
        SimplePeakObject[["mz"]] <-
          self$`mz`
      }
      if (!is.null(self$`intensity`)) {
        SimplePeakObject[["intensity"]] <-
          self$`intensity`
      }
      SimplePeakObject
    },

    #' @description
    #' Deserialize JSON string into an instance of SimplePeak
    #'
    #' @param input_json the JSON input
    #' @return the instance of SimplePeak
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`mz`)) {
        self$`mz` <- this_object$`mz`
      }
      if (!is.null(this_object$`intensity`)) {
        self$`intensity` <- this_object$`intensity`
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return SimplePeak in JSON format
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`mz`)) {
          sprintf(
          '"mz":
            %d
                    ',
          self$`mz`
          )
        },
        if (!is.null(self$`intensity`)) {
          sprintf(
          '"intensity":
            %d
                    ',
          self$`intensity`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },

    #' @description
    #' Deserialize JSON string into an instance of SimplePeak
    #'
    #' @param input_json the JSON input
    #' @return the instance of SimplePeak
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`mz` <- this_object$`mz`
      self$`intensity` <- this_object$`intensity`
      self
    },

    #' @description
    #' Validate JSON input with respect to SimplePeak and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SimplePeak
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
# SimplePeak$unlock()
#
## Below is an example to define the print function
# SimplePeak$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SimplePeak$lock()

