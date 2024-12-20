#' Create a new Term
#'
#' @description
#' Term Class
#'
#' @docType class
#' @title Term
#' @description Term Class
#' @format An \code{R6Class} generator object
#' @field name  character [optional]
#' @field link  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Term <- R6::R6Class(
  "Term",
  public = list(
    `name` = NULL,
    `link` = NULL,

    #' @description
    #' Initialize a new Term class.
    #'
    #' @param name name
    #' @param link link
    #' @param ... Other optional arguments.
    initialize = function(`name` = NULL, `link` = NULL, ...) {
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`link`)) {
        if (!(is.character(`link`) && length(`link`) == 1)) {
          stop(paste("Error! Invalid data for `link`. Must be a string:", `link`))
        }
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(`link`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid data for `link`. Must be a URL:", `link`))
        }
        self$`link` <- `link`
      }
    },

    #' @description
    #' To JSON String
    #'
    #' @return Term in JSON format
    toJSON = function() {
      TermObject <- list()
      if (!is.null(self$`name`)) {
        TermObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`link`)) {
        TermObject[["link"]] <-
          self$`link`
      }
      TermObject
    },

    #' @description
    #' Deserialize JSON string into an instance of Term
    #'
    #' @param input_json the JSON input
    #' @return the instance of Term
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`link`)) {
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(this_object$`link`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid data for `link`. Must be a URL:", this_object$`link`))
        }
        self$`link` <- this_object$`link`
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return Term in JSON format
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`name`)) {
          sprintf(
          '"name":
            "%s"
                    ',
          self$`name`
          )
        },
        if (!is.null(self$`link`)) {
          sprintf(
          '"link":
            "%s"
                    ',
          self$`link`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },

    #' @description
    #' Deserialize JSON string into an instance of Term
    #'
    #' @param input_json the JSON input
    #' @return the instance of Term
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name` <- this_object$`name`
      # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
      if (!stringr::str_detect(this_object$`link`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
        stop(paste("Error! Invalid data for `link`. Must be a URL:", this_object$`link`))
      }
      self$`link` <- this_object$`link`
      self
    },

    #' @description
    #' Validate JSON input with respect to Term and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Term
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
# Term$unlock()
#
## Below is an example to define the print function
# Term$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Term$lock()

