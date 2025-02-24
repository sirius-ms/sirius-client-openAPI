#' Create a new UseHeuristic
#'
#' @description
#' UseHeuristic Class
#'
#' @docType class
#' @title UseHeuristic
#' @description UseHeuristic Class
#' @format An \code{R6Class} generator object
#' @field useHeuristicAboveMz  integer [optional]
#' @field useOnlyHeuristicAboveMz  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UseHeuristic <- R6::R6Class(
  "UseHeuristic",
  public = list(
    `useHeuristicAboveMz` = NULL,
    `useOnlyHeuristicAboveMz` = NULL,

    #' @description
    #' Initialize a new UseHeuristic class.
    #'
    #' @param useHeuristicAboveMz useHeuristicAboveMz
    #' @param useOnlyHeuristicAboveMz useOnlyHeuristicAboveMz
    #' @param ... Other optional arguments.
    initialize = function(`useHeuristicAboveMz` = NULL, `useOnlyHeuristicAboveMz` = NULL, ...) {
      if (!is.null(`useHeuristicAboveMz`)) {
        if (!(is.numeric(`useHeuristicAboveMz`) && length(`useHeuristicAboveMz`) == 1)) {
          stop(paste("Error! Invalid data for `useHeuristicAboveMz`. Must be an integer:", `useHeuristicAboveMz`))
        }
        self$`useHeuristicAboveMz` <- `useHeuristicAboveMz`
      }
      if (!is.null(`useOnlyHeuristicAboveMz`)) {
        if (!(is.numeric(`useOnlyHeuristicAboveMz`) && length(`useOnlyHeuristicAboveMz`) == 1)) {
          stop(paste("Error! Invalid data for `useOnlyHeuristicAboveMz`. Must be an integer:", `useOnlyHeuristicAboveMz`))
        }
        self$`useOnlyHeuristicAboveMz` <- `useOnlyHeuristicAboveMz`
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
    #' @return UseHeuristic as a base R list.
    #' @examples
    #' # convert array of UseHeuristic (x) to a data frame
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
    #' Convert UseHeuristic to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      UseHeuristicObject <- list()
      if (!is.null(self$`useHeuristicAboveMz`)) {
        UseHeuristicObject[["useHeuristicAboveMz"]] <-
          self$`useHeuristicAboveMz`
      }
      if (!is.null(self$`useOnlyHeuristicAboveMz`)) {
        UseHeuristicObject[["useOnlyHeuristicAboveMz"]] <-
          self$`useOnlyHeuristicAboveMz`
      }
      return(UseHeuristicObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of UseHeuristic
    #'
    #' @param input_json the JSON input
    #' @return the instance of UseHeuristic
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`useHeuristicAboveMz`)) {
        self$`useHeuristicAboveMz` <- this_object$`useHeuristicAboveMz`
      }
      if (!is.null(this_object$`useOnlyHeuristicAboveMz`)) {
        self$`useOnlyHeuristicAboveMz` <- this_object$`useOnlyHeuristicAboveMz`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return UseHeuristic in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of UseHeuristic
    #'
    #' @param input_json the JSON input
    #' @return the instance of UseHeuristic
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`useHeuristicAboveMz` <- this_object$`useHeuristicAboveMz`
      self$`useOnlyHeuristicAboveMz` <- this_object$`useOnlyHeuristicAboveMz`
      self
    },

    #' @description
    #' Validate JSON input with respect to UseHeuristic and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of UseHeuristic
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
# UseHeuristic$unlock()
#
## Below is an example to define the print function
# UseHeuristic$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UseHeuristic$lock()

