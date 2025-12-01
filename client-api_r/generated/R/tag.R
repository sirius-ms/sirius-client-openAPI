#' Create a new Tag
#'
#' @description
#' Tag Class
#'
#' @docType class
#' @title Tag
#' @description Tag Class
#' @format An \code{R6Class} generator object
#' @field tagName Name of the tag as defined by the corresponding TagDefinition  Links tag object to their definition. character
#' @field value  \link{AnyValue} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Tag <- R6::R6Class(
  "Tag",
  public = list(
    `tagName` = NULL,
    `value` = NULL,

    #' @description
    #' Initialize a new Tag class.
    #'
    #' @param tagName Name of the tag as defined by the corresponding TagDefinition  Links tag object to their definition.
    #' @param value value
    #' @param ... Other optional arguments.
    initialize = function(`tagName`, `value` = NULL, ...) {
      if (!missing(`tagName`)) {
        if (!(is.character(`tagName`) && length(`tagName`) == 1)) {
          stop(paste("Error! Invalid data for `tagName`. Must be a string:", `tagName`))
        }
        self$`tagName` <- `tagName`
      }
      if (!is.null(`value`)) {
        stopifnot(R6::is.R6(`value`))
        self$`value` <- `value`
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
    #' @return Tag as a base R list.
    #' @examples
    #' # convert array of Tag (x) to a data frame
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
    #' Convert Tag to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      TagObject <- list()
      if (!is.null(self$`tagName`)) {
        TagObject[["tagName"]] <-
          self$`tagName`
      }
      if (!is.null(self$`value`)) {
        TagObject[["value"]] <-
          self$`value`$toSimpleType()
      }
      return(TagObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of Tag
    #'
    #' @param input_json the JSON input
    #' @return the instance of Tag
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`tagName`)) {
        self$`tagName` <- this_object$`tagName`
      }
      if (!is.null(this_object$`value`)) {
        `value_object` <- AnyValue$new()
        `value_object`$fromJSON(jsonlite::toJSON(this_object$`value`, auto_unbox = TRUE, digits = NA, null = 'null'))
        self$`value` <- `value_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Tag in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Tag
    #'
    #' @param input_json the JSON input
    #' @return the instance of Tag
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`tagName` <- this_object$`tagName`
      self$`value` <- AnyValue$new()$fromJSON(jsonlite::toJSON(this_object$`value`, auto_unbox = TRUE, digits = NA, null = 'null'))
      self
    },

    #' @description
    #' Validate JSON input with respect to Tag and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `tagName`
      if (!is.null(input_json$`tagName`)) {
        if (!(is.character(input_json$`tagName`) && length(input_json$`tagName`) == 1)) {
          stop(paste("Error! Invalid data for `tagName`. Must be a string:", input_json$`tagName`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Tag: the required field `tagName` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Tag
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `tagName` is null
      if (is.null(self$`tagName`)) {
        return(FALSE)
      }

      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
      # check if the required `tagName` is null
      if (is.null(self$`tagName`)) {
        invalid_fields["tagName"] <- "Non-nullable required field `tagName` cannot be null."
      }

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
# Tag$unlock()
#
## Below is an example to define the print function
# Tag$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Tag$lock()

