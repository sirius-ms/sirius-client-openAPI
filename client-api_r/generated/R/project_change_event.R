#' Create a new ProjectChangeEvent
#'
#' @description
#' ProjectChangeEvent Class
#'
#' @docType class
#' @title ProjectChangeEvent
#' @description ProjectChangeEvent Class
#' @format An \code{R6Class} generator object
#' @field eventType  character [optional]
#' @field projectId  character [optional]
#' @field compoundId  character [optional]
#' @field featuredId  character [optional]
#' @field formulaId  character [optional]
#' @field structureInChIKey  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ProjectChangeEvent <- R6::R6Class(
  "ProjectChangeEvent",
  public = list(
    `eventType` = NULL,
    `projectId` = NULL,
    `compoundId` = NULL,
    `featuredId` = NULL,
    `formulaId` = NULL,
    `structureInChIKey` = NULL,

    #' @description
    #' Initialize a new ProjectChangeEvent class.
    #'
    #' @param eventType eventType
    #' @param projectId projectId
    #' @param compoundId compoundId
    #' @param featuredId featuredId
    #' @param formulaId formulaId
    #' @param structureInChIKey structureInChIKey
    #' @param ... Other optional arguments.
    initialize = function(`eventType` = NULL, `projectId` = NULL, `compoundId` = NULL, `featuredId` = NULL, `formulaId` = NULL, `structureInChIKey` = NULL, ...) {
      if (!is.null(`eventType`)) {
        if (!(`eventType` %in% c("PROJECT_OPENED", "PROJECT_MOVED", "PROJECT_CLOSED", "FEATURE_CREATED", "FEATURE_UPDATED", "FEATURE_DELETED", "RESULT_CREATED", "RESULT_UPDATED", "RESULT_DELETED"))) {
          stop(paste("Error! \"", `eventType`, "\" cannot be assigned to `eventType`. Must be \"PROJECT_OPENED\", \"PROJECT_MOVED\", \"PROJECT_CLOSED\", \"FEATURE_CREATED\", \"FEATURE_UPDATED\", \"FEATURE_DELETED\", \"RESULT_CREATED\", \"RESULT_UPDATED\", \"RESULT_DELETED\".", sep = ""))
        }
        if (!(is.character(`eventType`) && length(`eventType`) == 1)) {
          stop(paste("Error! Invalid data for `eventType`. Must be a string:", `eventType`))
        }
        self$`eventType` <- `eventType`
      }
      if (!is.null(`projectId`)) {
        if (!(is.character(`projectId`) && length(`projectId`) == 1)) {
          stop(paste("Error! Invalid data for `projectId`. Must be a string:", `projectId`))
        }
        self$`projectId` <- `projectId`
      }
      if (!is.null(`compoundId`)) {
        if (!(is.character(`compoundId`) && length(`compoundId`) == 1)) {
          stop(paste("Error! Invalid data for `compoundId`. Must be a string:", `compoundId`))
        }
        self$`compoundId` <- `compoundId`
      }
      if (!is.null(`featuredId`)) {
        if (!(is.character(`featuredId`) && length(`featuredId`) == 1)) {
          stop(paste("Error! Invalid data for `featuredId`. Must be a string:", `featuredId`))
        }
        self$`featuredId` <- `featuredId`
      }
      if (!is.null(`formulaId`)) {
        if (!(is.character(`formulaId`) && length(`formulaId`) == 1)) {
          stop(paste("Error! Invalid data for `formulaId`. Must be a string:", `formulaId`))
        }
        self$`formulaId` <- `formulaId`
      }
      if (!is.null(`structureInChIKey`)) {
        if (!(is.character(`structureInChIKey`) && length(`structureInChIKey`) == 1)) {
          stop(paste("Error! Invalid data for `structureInChIKey`. Must be a string:", `structureInChIKey`))
        }
        self$`structureInChIKey` <- `structureInChIKey`
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
    #' @return ProjectChangeEvent as a base R list.
    #' @examples
    #' # convert array of ProjectChangeEvent (x) to a data frame
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
    #' Convert ProjectChangeEvent to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ProjectChangeEventObject <- list()
      if (!is.null(self$`eventType`)) {
        ProjectChangeEventObject[["eventType"]] <-
          self$`eventType`
      }
      if (!is.null(self$`projectId`)) {
        ProjectChangeEventObject[["projectId"]] <-
          self$`projectId`
      }
      if (!is.null(self$`compoundId`)) {
        ProjectChangeEventObject[["compoundId"]] <-
          self$`compoundId`
      }
      if (!is.null(self$`featuredId`)) {
        ProjectChangeEventObject[["featuredId"]] <-
          self$`featuredId`
      }
      if (!is.null(self$`formulaId`)) {
        ProjectChangeEventObject[["formulaId"]] <-
          self$`formulaId`
      }
      if (!is.null(self$`structureInChIKey`)) {
        ProjectChangeEventObject[["structureInChIKey"]] <-
          self$`structureInChIKey`
      }
      return(ProjectChangeEventObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ProjectChangeEvent
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProjectChangeEvent
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`eventType`)) {
        if (!is.null(this_object$`eventType`) && !(this_object$`eventType` %in% c("PROJECT_OPENED", "PROJECT_MOVED", "PROJECT_CLOSED", "FEATURE_CREATED", "FEATURE_UPDATED", "FEATURE_DELETED", "RESULT_CREATED", "RESULT_UPDATED", "RESULT_DELETED"))) {
          stop(paste("Error! \"", this_object$`eventType`, "\" cannot be assigned to `eventType`. Must be \"PROJECT_OPENED\", \"PROJECT_MOVED\", \"PROJECT_CLOSED\", \"FEATURE_CREATED\", \"FEATURE_UPDATED\", \"FEATURE_DELETED\", \"RESULT_CREATED\", \"RESULT_UPDATED\", \"RESULT_DELETED\".", sep = ""))
        }
        self$`eventType` <- this_object$`eventType`
      }
      if (!is.null(this_object$`projectId`)) {
        self$`projectId` <- this_object$`projectId`
      }
      if (!is.null(this_object$`compoundId`)) {
        self$`compoundId` <- this_object$`compoundId`
      }
      if (!is.null(this_object$`featuredId`)) {
        self$`featuredId` <- this_object$`featuredId`
      }
      if (!is.null(this_object$`formulaId`)) {
        self$`formulaId` <- this_object$`formulaId`
      }
      if (!is.null(this_object$`structureInChIKey`)) {
        self$`structureInChIKey` <- this_object$`structureInChIKey`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ProjectChangeEvent in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ProjectChangeEvent
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProjectChangeEvent
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`eventType`) && !(this_object$`eventType` %in% c("PROJECT_OPENED", "PROJECT_MOVED", "PROJECT_CLOSED", "FEATURE_CREATED", "FEATURE_UPDATED", "FEATURE_DELETED", "RESULT_CREATED", "RESULT_UPDATED", "RESULT_DELETED"))) {
        stop(paste("Error! \"", this_object$`eventType`, "\" cannot be assigned to `eventType`. Must be \"PROJECT_OPENED\", \"PROJECT_MOVED\", \"PROJECT_CLOSED\", \"FEATURE_CREATED\", \"FEATURE_UPDATED\", \"FEATURE_DELETED\", \"RESULT_CREATED\", \"RESULT_UPDATED\", \"RESULT_DELETED\".", sep = ""))
      }
      self$`eventType` <- this_object$`eventType`
      self$`projectId` <- this_object$`projectId`
      self$`compoundId` <- this_object$`compoundId`
      self$`featuredId` <- this_object$`featuredId`
      self$`formulaId` <- this_object$`formulaId`
      self$`structureInChIKey` <- this_object$`structureInChIKey`
      self
    },

    #' @description
    #' Validate JSON input with respect to ProjectChangeEvent and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ProjectChangeEvent
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
# ProjectChangeEvent$unlock()
#
## Below is an example to define the print function
# ProjectChangeEvent$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ProjectChangeEvent$lock()

