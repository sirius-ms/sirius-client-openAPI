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

    #' @description
    #' Initialize a new AccountCredentials class.
    #'
    #' @param username username
    #' @param password password
    #' @param refreshToken refreshToken
    #' @param ... Other optional arguments.
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
    #' @return AccountCredentials as a base R list.
    #' @examples
    #' # convert array of AccountCredentials (x) to a data frame
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
    #' Convert AccountCredentials to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
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
      return(AccountCredentialsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AccountCredentials
    #'
    #' @param input_json the JSON input
    #' @return the instance of AccountCredentials
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

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AccountCredentials in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AccountCredentials
    #'
    #' @param input_json the JSON input
    #' @return the instance of AccountCredentials
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`username` <- this_object$`username`
      self$`password` <- this_object$`password`
      self$`refreshToken` <- this_object$`refreshToken`
      self
    },

    #' @description
    #' Validate JSON input with respect to AccountCredentials and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AccountCredentials
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
# AccountCredentials$unlock()
#
## Below is an example to define the print function
# AccountCredentials$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AccountCredentials$lock()

