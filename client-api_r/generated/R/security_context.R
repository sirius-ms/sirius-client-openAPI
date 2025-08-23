#' Create a new SecurityContext
#'
#' @description
#' SecurityContext Class
#'
#' @docType class
#' @title SecurityContext
#' @description SecurityContext Class
#' @format An \code{R6Class} generator object
#' @field principal  \link{SecurityContextPrincipal} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SecurityContext <- R6::R6Class(
  "SecurityContext",
  public = list(
    `principal` = NULL,

    #' @description
    #' Initialize a new SecurityContext class.
    #'
    #' @param principal principal
    #' @param ... Other optional arguments.
    initialize = function(`principal` = NULL, ...) {
      if (!is.null(`principal`)) {
        stopifnot(R6::is.R6(`principal`))
        self$`principal` <- `principal`
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
    #' @return SecurityContext as a base R list.
    #' @examples
    #' # convert array of SecurityContext (x) to a data frame
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
    #' Convert SecurityContext to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SecurityContextObject <- list()
      if (!is.null(self$`principal`)) {
        SecurityContextObject[["principal"]] <-
          self$`principal`$toSimpleType()
      }
      return(SecurityContextObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of SecurityContext
    #'
    #' @param input_json the JSON input
    #' @return the instance of SecurityContext
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`principal`)) {
        `principal_object` <- SecurityContextPrincipal$new()
        `principal_object`$fromJSON(jsonlite::toJSON(this_object$`principal`, auto_unbox = TRUE, digits = NA, null = 'null'))
        self$`principal` <- `principal_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SecurityContext in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SecurityContext
    #'
    #' @param input_json the JSON input
    #' @return the instance of SecurityContext
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`principal` <- SecurityContextPrincipal$new()$fromJSON(jsonlite::toJSON(this_object$`principal`, auto_unbox = TRUE, digits = NA, null = 'null'))
      self
    },

    #' @description
    #' Validate JSON input with respect to SecurityContext and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SecurityContext
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
# SecurityContext$unlock()
#
## Below is an example to define the print function
# SecurityContext$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SecurityContext$lock()

