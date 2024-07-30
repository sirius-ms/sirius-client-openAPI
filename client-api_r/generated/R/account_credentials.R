#' Create a new AccountCredentials
#'
#' @description
#' Simple object to hold account credentials, e.g. to perform login operations.  If refreshToken is given, it is usually preferred over password based authentication.  But in the end this is up to the respective web service.
#'
#' @docType class
#' @title AccountCredentials
#' @description AccountCredentials Class
#' @format An \code{R6Class} generator object
#' @field username  character [optional]
#' @field password  character [optional]
#' @field refreshToken  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AccountCredentials <- R6::R6Class(
  "AccountCredentials",
  public = list(
    `username` = NULL,
    `password` = NULL,
    `refreshToken` = NULL,
    #' Initialize a new AccountCredentials class.
    #'
    #' @description
    #' Initialize a new AccountCredentials class.
    #'
    #' @param username username
    #' @param password password
    #' @param refreshToken refreshToken
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`username` = NULL, `password` = NULL, `refreshToken` = NULL, ...) {
      if (!is.null(`username`)) {
        if (!(is.character(`username`) && length(`username`) == 1)) {
          stop(paste("Error! Invalid data for `username`. Must be a string:", `username`))
        }
        self$`username` <- `username`
      }
      if (!is.null(`password`)) {
        if (!(is.character(`password`) && length(`password`) == 1)) {
          stop(paste("Error! Invalid data for `password`. Must be a string:", `password`))
        }
        self$`password` <- `password`
      }
      if (!is.null(`refreshToken`)) {
        if (!(is.character(`refreshToken`) && length(`refreshToken`) == 1)) {
          stop(paste("Error! Invalid data for `refreshToken`. Must be a string:", `refreshToken`))
        }
        self$`refreshToken` <- `refreshToken`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return AccountCredentials in JSON format
    #' @export
    toJSON = function() {
      AccountCredentialsObject <- list()
      if (!is.null(self$`username`)) {
        AccountCredentialsObject[["username"]] <-
          self$`username`
      }
      if (!is.null(self$`password`)) {
        AccountCredentialsObject[["password"]] <-
          self$`password`
      }
      if (!is.null(self$`refreshToken`)) {
        AccountCredentialsObject[["refreshToken"]] <-
          self$`refreshToken`
      }
      AccountCredentialsObject
    },
    #' Deserialize JSON string into an instance of AccountCredentials
    #'
    #' @description
    #' Deserialize JSON string into an instance of AccountCredentials
    #'
    #' @param input_json the JSON input
    #' @return the instance of AccountCredentials
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`username`)) {
        self$`username` <- this_object$`username`
      }
      if (!is.null(this_object$`password`)) {
        self$`password` <- this_object$`password`
      }
      if (!is.null(this_object$`refreshToken`)) {
        self$`refreshToken` <- this_object$`refreshToken`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return AccountCredentials in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`username`)) {
          sprintf(
          '"username":
            "%s"
                    ',
          self$`username`
          )
        },
        if (!is.null(self$`password`)) {
          sprintf(
          '"password":
            "%s"
                    ',
          self$`password`
          )
        },
        if (!is.null(self$`refreshToken`)) {
          sprintf(
          '"refreshToken":
            "%s"
                    ',
          self$`refreshToken`
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
    #' Deserialize JSON string into an instance of AccountCredentials
    #'
    #' @description
    #' Deserialize JSON string into an instance of AccountCredentials
    #'
    #' @param input_json the JSON input
    #' @return the instance of AccountCredentials
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`username` <- this_object$`username`
      self$`password` <- this_object$`password`
      self$`refreshToken` <- this_object$`refreshToken`
      self
    },
    #' Validate JSON input with respect to AccountCredentials
    #'
    #' @description
    #' Validate JSON input with respect to AccountCredentials and throw an exception if invalid
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
    #' @return String representation of AccountCredentials
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
# AccountCredentials$unlock()
#
## Below is an example to define the print function
# AccountCredentials$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AccountCredentials$lock()

