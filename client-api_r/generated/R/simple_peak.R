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
    #' Initialize a new SimplePeak class.
    #'
    #' @description
    #' Initialize a new SimplePeak class.
    #'
    #' @param mz mz
    #' @param intensity intensity
    #' @param ... Other optional arguments.
    #' @export
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
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return SimplePeak in JSON format
    #' @export
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
    #' Deserialize JSON string into an instance of SimplePeak
    #'
    #' @description
    #' Deserialize JSON string into an instance of SimplePeak
    #'
    #' @param input_json the JSON input
    #' @return the instance of SimplePeak
    #' @export
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
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return SimplePeak in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`mz`)) {
          sprintf(
          '"mz":
            %f
                    ',
          self$`mz`
          )
        },
        if (!is.null(self$`intensity`)) {
          sprintf(
          '"intensity":
            %f
                    ',
          self$`intensity`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      # remove c() occurences
      jsoncontent <- gsub('c\\((.*?)\\)', '\\1', jsoncontent)
      # reduce resulting double escaped quotes \"\" into \"
      jsoncontent <- gsub('\\\"\\\"+', '\\\"', jsoncontent)
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of SimplePeak
    #'
    #' @description
    #' Deserialize JSON string into an instance of SimplePeak
    #'
    #' @param input_json the JSON input
    #' @return the instance of SimplePeak
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`mz` <- this_object$`mz`
      self$`intensity` <- this_object$`intensity`
      self
    },
    #' Validate JSON input with respect to SimplePeak
    #'
    #' @description
    #' Validate JSON input with respect to SimplePeak and throw an exception if invalid
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
    #' @return String representation of SimplePeak
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
# SimplePeak$unlock()
#
## Below is an example to define the print function
# SimplePeak$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SimplePeak$lock()

