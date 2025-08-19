#' Create a new TagGroup
#'
#' @description
#' TagGroup Class
#'
#' @docType class
#' @title TagGroup
#' @description TagGroup Class
#' @format An \code{R6Class} generator object
#' @field groupName Name of this Grouping query. character [optional]
#' @field luceneQuery Query used to group the entities in lucene format. character [optional]
#' @field groupType  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TagGroup <- R6::R6Class(
  "TagGroup",
  public = list(
    `groupName` = NULL,
    `luceneQuery` = NULL,
    `groupType` = NULL,

    #' @description
    #' Initialize a new TagGroup class.
    #'
    #' @param groupName Name of this Grouping query.
    #' @param luceneQuery Query used to group the entities in lucene format.
    #' @param groupType groupType
    #' @param ... Other optional arguments.
    initialize = function(`groupName` = NULL, `luceneQuery` = NULL, `groupType` = NULL, ...) {
      if (!is.null(`groupName`)) {
        if (!(is.character(`groupName`) && length(`groupName`) == 1)) {
          stop(paste("Error! Invalid data for `groupName`. Must be a string:", `groupName`))
        }
        self$`groupName` <- `groupName`
      }
      if (!is.null(`luceneQuery`)) {
        if (!(is.character(`luceneQuery`) && length(`luceneQuery`) == 1)) {
          stop(paste("Error! Invalid data for `luceneQuery`. Must be a string:", `luceneQuery`))
        }
        self$`luceneQuery` <- `luceneQuery`
      }
      if (!is.null(`groupType`)) {
        if (!(is.character(`groupType`) && length(`groupType`) == 1)) {
          stop(paste("Error! Invalid data for `groupType`. Must be a string:", `groupType`))
        }
        self$`groupType` <- `groupType`
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
    #' @return TagGroup as a base R list.
    #' @examples
    #' # convert array of TagGroup (x) to a data frame
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
    #' Convert TagGroup to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      TagGroupObject <- list()
      if (!is.null(self$`groupName`)) {
        TagGroupObject[["groupName"]] <-
          self$`groupName`
      }
      if (!is.null(self$`luceneQuery`)) {
        TagGroupObject[["luceneQuery"]] <-
          self$`luceneQuery`
      }
      if (!is.null(self$`groupType`)) {
        TagGroupObject[["groupType"]] <-
          self$`groupType`
      }
      return(TagGroupObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of TagGroup
    #'
    #' @param input_json the JSON input
    #' @return the instance of TagGroup
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`groupName`)) {
        self$`groupName` <- this_object$`groupName`
      }
      if (!is.null(this_object$`luceneQuery`)) {
        self$`luceneQuery` <- this_object$`luceneQuery`
      }
      if (!is.null(this_object$`groupType`)) {
        self$`groupType` <- this_object$`groupType`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return TagGroup in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of TagGroup
    #'
    #' @param input_json the JSON input
    #' @return the instance of TagGroup
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`groupName` <- this_object$`groupName`
      self$`luceneQuery` <- this_object$`luceneQuery`
      self$`groupType` <- this_object$`groupType`
      self
    },

    #' @description
    #' Validate JSON input with respect to TagGroup and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TagGroup
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
# TagGroup$unlock()
#
## Below is an example to define the print function
# TagGroup$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TagGroup$lock()

