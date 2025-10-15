#' Create a new TagDefinition
#'
#' @description
#' TagDefinition Class
#'
#' @docType class
#' @title TagDefinition
#' @description TagDefinition Class
#' @format An \code{R6Class} generator object
#' @field tagName Name of this tag defined by this definition (key) character
#' @field description A human-readable description about the purpose of this tag. character [optional]
#' @field tagType A simple string based identifier to specify the type/scope/purpose of this tag. character [optional]
#' @field valueType  character
#' @field possibleValues  list(object) [optional]
#' @field minValue  object [optional]
#' @field maxValue  object [optional]
#' @field editable  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TagDefinition <- R6::R6Class(
  "TagDefinition",
  public = list(
    `tagName` = NULL,
    `description` = NULL,
    `tagType` = NULL,
    `valueType` = NULL,
    `possibleValues` = NULL,
    `minValue` = NULL,
    `maxValue` = NULL,
    `editable` = NULL,

    #' @description
    #' Initialize a new TagDefinition class.
    #'
    #' @param tagName Name of this tag defined by this definition (key)
    #' @param valueType valueType
    #' @param description A human-readable description about the purpose of this tag.
    #' @param tagType A simple string based identifier to specify the type/scope/purpose of this tag.
    #' @param possibleValues possibleValues
    #' @param minValue minValue
    #' @param maxValue maxValue
    #' @param editable editable
    #' @param ... Other optional arguments.
    initialize = function(`tagName`, `valueType`, `description` = NULL, `tagType` = NULL, `possibleValues` = NULL, `minValue` = NULL, `maxValue` = NULL, `editable` = NULL, ...) {
      if (!missing(`tagName`)) {
        if (!(is.character(`tagName`) && length(`tagName`) == 1)) {
          stop(paste("Error! Invalid data for `tagName`. Must be a string:", `tagName`))
        }
        self$`tagName` <- `tagName`
      }
      if (!missing(`valueType`)) {
        if (!(`valueType` %in% c("NONE", "BOOLEAN", "INTEGER", "REAL", "TEXT", "DATE", "TIME"))) {
          stop(paste("Error! \"", `valueType`, "\" cannot be assigned to `valueType`. Must be \"NONE\", \"BOOLEAN\", \"INTEGER\", \"REAL\", \"TEXT\", \"DATE\", \"TIME\".", sep = ""))
        }
        if (!(is.character(`valueType`) && length(`valueType`) == 1)) {
          stop(paste("Error! Invalid data for `valueType`. Must be a string:", `valueType`))
        }
        self$`valueType` <- `valueType`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`tagType`)) {
        if (!(is.character(`tagType`) && length(`tagType`) == 1)) {
          stop(paste("Error! Invalid data for `tagType`. Must be a string:", `tagType`))
        }
        self$`tagType` <- `tagType`
      }
      if (!is.null(`possibleValues`)) {
        stopifnot(is.vector(`possibleValues`), length(`possibleValues`) != 0)
        sapply(`possibleValues`, function(x) stopifnot(is.character(x)))
        self$`possibleValues` <- `possibleValues`
      }
      if (!is.null(`minValue`)) {
        self$`minValue` <- `minValue`
      }
      if (!is.null(`maxValue`)) {
        self$`maxValue` <- `maxValue`
      }
      if (!is.null(`editable`)) {
        if (!(is.logical(`editable`) && length(`editable`) == 1)) {
          stop(paste("Error! Invalid data for `editable`. Must be a boolean:", `editable`))
        }
        self$`editable` <- `editable`
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
    #' @return TagDefinition as a base R list.
    #' @examples
    #' # convert array of TagDefinition (x) to a data frame
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
    #' Convert TagDefinition to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      TagDefinitionObject <- list()
      if (!is.null(self$`tagName`)) {
        TagDefinitionObject[["tagName"]] <-
          self$`tagName`
      }
      if (!is.null(self$`description`)) {
        TagDefinitionObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`tagType`)) {
        TagDefinitionObject[["tagType"]] <-
          self$`tagType`
      }
      if (!is.null(self$`valueType`)) {
        TagDefinitionObject[["valueType"]] <-
          self$`valueType`
      }
      if (!is.null(self$`possibleValues`)) {
        TagDefinitionObject[["possibleValues"]] <-
          self$`possibleValues`
      }
      if (!is.null(self$`minValue`)) {
        TagDefinitionObject[["minValue"]] <-
          self$`minValue`
      }
      if (!is.null(self$`maxValue`)) {
        TagDefinitionObject[["maxValue"]] <-
          self$`maxValue`
      }
      if (!is.null(self$`editable`)) {
        TagDefinitionObject[["editable"]] <-
          self$`editable`
      }
      return(TagDefinitionObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of TagDefinition
    #'
    #' @param input_json the JSON input
    #' @return the instance of TagDefinition
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`tagName`)) {
        self$`tagName` <- this_object$`tagName`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`tagType`)) {
        self$`tagType` <- this_object$`tagType`
      }
      if (!is.null(this_object$`valueType`)) {
        if (!is.null(this_object$`valueType`) && !(this_object$`valueType` %in% c("NONE", "BOOLEAN", "INTEGER", "REAL", "TEXT", "DATE", "TIME"))) {
          stop(paste("Error! \"", this_object$`valueType`, "\" cannot be assigned to `valueType`. Must be \"NONE\", \"BOOLEAN\", \"INTEGER\", \"REAL\", \"TEXT\", \"DATE\", \"TIME\".", sep = ""))
        }
        self$`valueType` <- this_object$`valueType`
      }
      if (!is.null(this_object$`possibleValues`)) {
        self$`possibleValues` <- ApiClient$new()$deserializeObj(this_object$`possibleValues`, "array[object]", loadNamespace("RSirius"))
      }
      if (!is.null(this_object$`minValue`)) {
        self$`minValue` <- this_object$`minValue`
      }
      if (!is.null(this_object$`maxValue`)) {
        self$`maxValue` <- this_object$`maxValue`
      }
      if (!is.null(this_object$`editable`)) {
        self$`editable` <- this_object$`editable`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return TagDefinition in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of TagDefinition
    #'
    #' @param input_json the JSON input
    #' @return the instance of TagDefinition
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`tagName` <- this_object$`tagName`
      self$`description` <- this_object$`description`
      self$`tagType` <- this_object$`tagType`
      if (!is.null(this_object$`valueType`) && !(this_object$`valueType` %in% c("NONE", "BOOLEAN", "INTEGER", "REAL", "TEXT", "DATE", "TIME"))) {
        stop(paste("Error! \"", this_object$`valueType`, "\" cannot be assigned to `valueType`. Must be \"NONE\", \"BOOLEAN\", \"INTEGER\", \"REAL\", \"TEXT\", \"DATE\", \"TIME\".", sep = ""))
      }
      self$`valueType` <- this_object$`valueType`
      self$`possibleValues` <- ApiClient$new()$deserializeObj(this_object$`possibleValues`, "array[object]", loadNamespace("RSirius"))
      self$`minValue` <- this_object$`minValue`
      self$`maxValue` <- this_object$`maxValue`
      self$`editable` <- this_object$`editable`
      self
    },

    #' @description
    #' Validate JSON input with respect to TagDefinition and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for TagDefinition: the required field `tagName` is missing."))
      }
      # check the required field `valueType`
      if (!is.null(input_json$`valueType`)) {
        if (!(is.character(input_json$`valueType`) && length(input_json$`valueType`) == 1)) {
          stop(paste("Error! Invalid data for `valueType`. Must be a string:", input_json$`valueType`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TagDefinition: the required field `valueType` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TagDefinition
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

      # check if the required `valueType` is null
      if (is.null(self$`valueType`)) {
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

      # check if the required `valueType` is null
      if (is.null(self$`valueType`)) {
        invalid_fields["valueType"] <- "Non-nullable required field `valueType` cannot be null."
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
# TagDefinition$unlock()
#
## Below is an example to define the print function
# TagDefinition$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TagDefinition$lock()

