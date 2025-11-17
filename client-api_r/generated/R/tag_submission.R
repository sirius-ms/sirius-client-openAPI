#' Create a new TagSubmission
#'
#' @description
#' TagSubmission Class
#'
#' @docType class
#' @title TagSubmission
#' @description TagSubmission Class
#' @format An \code{R6Class} generator object
#' @field tagName Name of the tag as defined by the corresponding TagDefinition  Links tag object to their definition. character
#' @field value Optional value of the tag.  <p>  Generic value of the tag as defined by the corresponding TagDefinition.  Can be Integer, Double, Boolean and String, whereas String values can represent Text, Date (yyyy-MM-dd) or Time (HH:mm:ss). object [optional]
#' @field taggedObjectId ID of the object where the tag should be added.  Then Object type is taken from context of the API endpoint. character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TagSubmission <- R6::R6Class(
  "TagSubmission",
  public = list(
    `tagName` = NULL,
    `value` = NULL,
    `taggedObjectId` = NULL,

    #' @description
    #' Initialize a new TagSubmission class.
    #'
    #' @param tagName Name of the tag as defined by the corresponding TagDefinition  Links tag object to their definition.
    #' @param taggedObjectId ID of the object where the tag should be added.  Then Object type is taken from context of the API endpoint.
    #' @param value Optional value of the tag.  <p>  Generic value of the tag as defined by the corresponding TagDefinition.  Can be Integer, Double, Boolean and String, whereas String values can represent Text, Date (yyyy-MM-dd) or Time (HH:mm:ss).
    #' @param ... Other optional arguments.
    initialize = function(`tagName`, `taggedObjectId`, `value` = NULL, ...) {
      if (!missing(`tagName`)) {
        if (!(is.character(`tagName`) && length(`tagName`) == 1)) {
          stop(paste("Error! Invalid data for `tagName`. Must be a string:", `tagName`))
        }
        self$`tagName` <- `tagName`
      }
      if (!missing(`taggedObjectId`)) {
        if (!(is.character(`taggedObjectId`) && length(`taggedObjectId`) == 1)) {
          stop(paste("Error! Invalid data for `taggedObjectId`. Must be a string:", `taggedObjectId`))
        }
        self$`taggedObjectId` <- `taggedObjectId`
      }
      if (!is.null(`value`)) {
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
    #' @return TagSubmission as a base R list.
    #' @examples
    #' # convert array of TagSubmission (x) to a data frame
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
    #' Convert TagSubmission to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      TagSubmissionObject <- list()
      if (!is.null(self$`tagName`)) {
        TagSubmissionObject[["tagName"]] <-
          self$`tagName`
      }
      if (!is.null(self$`value`)) {
        TagSubmissionObject[["value"]] <-
          self$`value`
      }
      if (!is.null(self$`taggedObjectId`)) {
        TagSubmissionObject[["taggedObjectId"]] <-
          self$`taggedObjectId`
      }
      return(TagSubmissionObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of TagSubmission
    #'
    #' @param input_json the JSON input
    #' @return the instance of TagSubmission
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`tagName`)) {
        self$`tagName` <- this_object$`tagName`
      }
      if (!is.null(this_object$`value`)) {
        self$`value` <- this_object$`value`
      }
      if (!is.null(this_object$`taggedObjectId`)) {
        self$`taggedObjectId` <- this_object$`taggedObjectId`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return TagSubmission in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of TagSubmission
    #'
    #' @param input_json the JSON input
    #' @return the instance of TagSubmission
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`tagName` <- this_object$`tagName`
      self$`value` <- this_object$`value`
      self$`taggedObjectId` <- this_object$`taggedObjectId`
      self
    },

    #' @description
    #' Validate JSON input with respect to TagSubmission and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for TagSubmission: the required field `tagName` is missing."))
      }
      # check the required field `taggedObjectId`
      if (!is.null(input_json$`taggedObjectId`)) {
        if (!(is.character(input_json$`taggedObjectId`) && length(input_json$`taggedObjectId`) == 1)) {
          stop(paste("Error! Invalid data for `taggedObjectId`. Must be a string:", input_json$`taggedObjectId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TagSubmission: the required field `taggedObjectId` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TagSubmission
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

      # check if the required `taggedObjectId` is null
      if (is.null(self$`taggedObjectId`)) {
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

      # check if the required `taggedObjectId` is null
      if (is.null(self$`taggedObjectId`)) {
        invalid_fields["taggedObjectId"] <- "Non-nullable required field `taggedObjectId` cannot be null."
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
# TagSubmission$unlock()
#
## Below is an example to define the print function
# TagSubmission$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TagSubmission$lock()

