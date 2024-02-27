#' Create a new Deviation
#'
#' @description
#' 
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
    #' Initialize a new Deviation class.
    #'
    #' @description
    #' Initialize a new Deviation class.
    #'
    #' @param ppm ppm
    #' @param absolute absolute
    #' @param ... Other optional arguments.
    #' @export
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
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return Deviation in JSON format
    #' @export
    toJSON = function() {
      DeviationObject <- list()
      if (!is.null(self$`ppm`)) {
        DeviationObject[["ppm"]] <-
          self$`ppm`
      }
      if (!is.null(self$`absolute`)) {
        DeviationObject[["absolute"]] <-
          self$`absolute`
      }
      DeviationObject
    },
    #' Deserialize JSON string into an instance of Deviation
    #'
    #' @description
    #' Deserialize JSON string into an instance of Deviation
    #'
    #' @param input_json the JSON input
    #' @return the instance of Deviation
    #' @export
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
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return Deviation in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`ppm`)) {
          sprintf(
          '"ppm":
            %d
                    ',
          self$`ppm`
          )
        },
        if (!is.null(self$`absolute`)) {
          sprintf(
          '"absolute":
            %d
                    ',
          self$`absolute`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of Deviation
    #'
    #' @description
    #' Deserialize JSON string into an instance of Deviation
    #'
    #' @param input_json the JSON input
    #' @return the instance of Deviation
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`ppm` <- this_object$`ppm`
      self$`absolute` <- this_object$`absolute`
      self
    },
    #' Validate JSON input with respect to Deviation
    #'
    #' @description
    #' Validate JSON input with respect to Deviation and throw an exception if invalid
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
    #' @return String representation of Deviation
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
# Deviation$unlock()
#
## Below is an example to define the print function
# Deviation$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Deviation$lock()

