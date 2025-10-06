#' Create a new DataImportEvent
#'
#' @description
#' DataImportEvent Class
#'
#' @docType class
#' @title DataImportEvent
#' @description DataImportEvent Class
#' @format An \code{R6Class} generator object
#' @field importJobId  character [optional]
#' @field importedCompoundIds  list(character)
#' @field importedFeatureIds  list(character)
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DataImportEvent <- R6::R6Class(
  "DataImportEvent",
  public = list(
    `importJobId` = NULL,
    `importedCompoundIds` = NULL,
    `importedFeatureIds` = NULL,

    #' @description
    #' Initialize a new DataImportEvent class.
    #'
    #' @param importedCompoundIds importedCompoundIds
    #' @param importedFeatureIds importedFeatureIds
    #' @param importJobId importJobId
    #' @param ... Other optional arguments.
    initialize = function(`importedCompoundIds`, `importedFeatureIds`, `importJobId` = NULL, ...) {
      if (!missing(`importedCompoundIds`)) {
        stopifnot(is.vector(`importedCompoundIds`), length(`importedCompoundIds`) != 0)
        sapply(`importedCompoundIds`, function(x) stopifnot(is.character(x)))
        self$`importedCompoundIds` <- `importedCompoundIds`
      }
      if (!missing(`importedFeatureIds`)) {
        stopifnot(is.vector(`importedFeatureIds`), length(`importedFeatureIds`) != 0)
        sapply(`importedFeatureIds`, function(x) stopifnot(is.character(x)))
        self$`importedFeatureIds` <- `importedFeatureIds`
      }
      if (!is.null(`importJobId`)) {
        if (!(is.character(`importJobId`) && length(`importJobId`) == 1)) {
          stop(paste("Error! Invalid data for `importJobId`. Must be a string:", `importJobId`))
        }
        self$`importJobId` <- `importJobId`
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
    #' @return DataImportEvent as a base R list.
    #' @examples
    #' # convert array of DataImportEvent (x) to a data frame
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
    #' Convert DataImportEvent to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      DataImportEventObject <- list()
      if (!is.null(self$`importJobId`)) {
        DataImportEventObject[["importJobId"]] <-
          self$`importJobId`
      }
      if (!is.null(self$`importedCompoundIds`)) {
        DataImportEventObject[["importedCompoundIds"]] <-
          self$`importedCompoundIds`
      }
      if (!is.null(self$`importedFeatureIds`)) {
        DataImportEventObject[["importedFeatureIds"]] <-
          self$`importedFeatureIds`
      }
      return(DataImportEventObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of DataImportEvent
    #'
    #' @param input_json the JSON input
    #' @return the instance of DataImportEvent
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`importJobId`)) {
        self$`importJobId` <- this_object$`importJobId`
      }
      if (!is.null(this_object$`importedCompoundIds`)) {
        self$`importedCompoundIds` <- ApiClient$new()$deserializeObj(this_object$`importedCompoundIds`, "array[character]", loadNamespace("RSirius"))
      }
      if (!is.null(this_object$`importedFeatureIds`)) {
        self$`importedFeatureIds` <- ApiClient$new()$deserializeObj(this_object$`importedFeatureIds`, "array[character]", loadNamespace("RSirius"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return DataImportEvent in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of DataImportEvent
    #'
    #' @param input_json the JSON input
    #' @return the instance of DataImportEvent
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`importJobId` <- this_object$`importJobId`
      self$`importedCompoundIds` <- ApiClient$new()$deserializeObj(this_object$`importedCompoundIds`, "array[character]", loadNamespace("RSirius"))
      self$`importedFeatureIds` <- ApiClient$new()$deserializeObj(this_object$`importedFeatureIds`, "array[character]", loadNamespace("RSirius"))
      self
    },

    #' @description
    #' Validate JSON input with respect to DataImportEvent and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `importedCompoundIds`
      if (!is.null(input_json$`importedCompoundIds`)) {
        stopifnot(is.vector(input_json$`importedCompoundIds`), length(input_json$`importedCompoundIds`) != 0)
        tmp <- sapply(input_json$`importedCompoundIds`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DataImportEvent: the required field `importedCompoundIds` is missing."))
      }
      # check the required field `importedFeatureIds`
      if (!is.null(input_json$`importedFeatureIds`)) {
        stopifnot(is.vector(input_json$`importedFeatureIds`), length(input_json$`importedFeatureIds`) != 0)
        tmp <- sapply(input_json$`importedFeatureIds`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DataImportEvent: the required field `importedFeatureIds` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of DataImportEvent
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `importedCompoundIds` is null
      if (is.null(self$`importedCompoundIds`)) {
        return(FALSE)
      }

      # check if the required `importedFeatureIds` is null
      if (is.null(self$`importedFeatureIds`)) {
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
      # check if the required `importedCompoundIds` is null
      if (is.null(self$`importedCompoundIds`)) {
        invalid_fields["importedCompoundIds"] <- "Non-nullable required field `importedCompoundIds` cannot be null."
      }

      # check if the required `importedFeatureIds` is null
      if (is.null(self$`importedFeatureIds`)) {
        invalid_fields["importedFeatureIds"] <- "Non-nullable required field `importedFeatureIds` cannot be null."
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
# DataImportEvent$unlock()
#
## Below is an example to define the print function
# DataImportEvent$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DataImportEvent$lock()

