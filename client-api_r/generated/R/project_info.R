#' Create a new ProjectInfo
#'
#' @description
#' ProjectInfo Class
#'
#' @docType class
#' @title ProjectInfo
#' @description ProjectInfo Class
#' @format An \code{R6Class} generator object
#' @field projectId a user selected unique name of the project for easy access. character [optional]
#' @field location storage location of the project. character [optional]
#' @field description Description of this project. character [optional]
#' @field type Type of this project.  NULL if project type has not yet been specified by importing data. character [optional]
#' @field compatible Indicates whether computed results (e.g. fingerprints, compounds classes) are compatible with the backend.  If true project is up-to-date and there are no restrictions regarding usage.  If false project is incompatible and therefore \"read only\" until the incompatible results have been removed. See updateProject endpoint for further information  If NULL the information has not been requested. character [optional]
#' @field numOfFeatures Number of features (aligned over runs) in this project. If NULL, information has not been requested (See OptField 'sizeInformation'). integer [optional]
#' @field numOfCompounds Number of compounds (group of ion identities) in this project. If NULL, Information has not been requested (See OptField 'sizeInformation') or might be unavailable for this project type. integer [optional]
#' @field numOfBytes Size in Bytes this project consumes on disk If NULL, Information has not been requested (See OptField 'sizeInformation'). integer [optional]
#' @field detectedAdducts Set of all detected adducts available in this projects list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ProjectInfo <- R6::R6Class(
  "ProjectInfo",
  public = list(
    `projectId` = NULL,
    `location` = NULL,
    `description` = NULL,
    `type` = NULL,
    `compatible` = NULL,
    `numOfFeatures` = NULL,
    `numOfCompounds` = NULL,
    `numOfBytes` = NULL,
    `detectedAdducts` = NULL,

    #' @description
    #' Initialize a new ProjectInfo class.
    #'
    #' @param projectId a user selected unique name of the project for easy access.
    #' @param location storage location of the project.
    #' @param description Description of this project.
    #' @param type Type of this project.  NULL if project type has not yet been specified by importing data.
    #' @param compatible Indicates whether computed results (e.g. fingerprints, compounds classes) are compatible with the backend.  If true project is up-to-date and there are no restrictions regarding usage.  If false project is incompatible and therefore \"read only\" until the incompatible results have been removed. See updateProject endpoint for further information  If NULL the information has not been requested.
    #' @param numOfFeatures Number of features (aligned over runs) in this project. If NULL, information has not been requested (See OptField 'sizeInformation').
    #' @param numOfCompounds Number of compounds (group of ion identities) in this project. If NULL, Information has not been requested (See OptField 'sizeInformation') or might be unavailable for this project type.
    #' @param numOfBytes Size in Bytes this project consumes on disk If NULL, Information has not been requested (See OptField 'sizeInformation').
    #' @param detectedAdducts Set of all detected adducts available in this projects
    #' @param ... Other optional arguments.
    initialize = function(`projectId` = NULL, `location` = NULL, `description` = NULL, `type` = NULL, `compatible` = NULL, `numOfFeatures` = NULL, `numOfCompounds` = NULL, `numOfBytes` = NULL, `detectedAdducts` = NULL, ...) {
      if (!is.null(`projectId`)) {
        if (!(is.character(`projectId`) && length(`projectId`) == 1)) {
          stop(paste("Error! Invalid data for `projectId`. Must be a string:", `projectId`))
        }
        self$`projectId` <- `projectId`
      }
      if (!is.null(`location`)) {
        if (!(is.character(`location`) && length(`location`) == 1)) {
          stop(paste("Error! Invalid data for `location`. Must be a string:", `location`))
        }
        self$`location` <- `location`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`type`)) {
        if (!(`type` %in% c("UNIMPORTED", "DIRECT_IMPORT", "PEAKLISTS", "ALIGNED_RUNS", "UNALIGNED_RUNS"))) {
          stop(paste("Error! \"", `type`, "\" cannot be assigned to `type`. Must be \"UNIMPORTED\", \"DIRECT_IMPORT\", \"PEAKLISTS\", \"ALIGNED_RUNS\", \"UNALIGNED_RUNS\".", sep = ""))
        }
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
      }
      if (!is.null(`compatible`)) {
        if (!(is.logical(`compatible`) && length(`compatible`) == 1)) {
          stop(paste("Error! Invalid data for `compatible`. Must be a boolean:", `compatible`))
        }
        self$`compatible` <- `compatible`
      }
      if (!is.null(`numOfFeatures`)) {
        if (!(is.numeric(`numOfFeatures`) && length(`numOfFeatures`) == 1)) {
          stop(paste("Error! Invalid data for `numOfFeatures`. Must be an integer:", `numOfFeatures`))
        }
        self$`numOfFeatures` <- `numOfFeatures`
      }
      if (!is.null(`numOfCompounds`)) {
        if (!(is.numeric(`numOfCompounds`) && length(`numOfCompounds`) == 1)) {
          stop(paste("Error! Invalid data for `numOfCompounds`. Must be an integer:", `numOfCompounds`))
        }
        self$`numOfCompounds` <- `numOfCompounds`
      }
      if (!is.null(`numOfBytes`)) {
        if (!(is.numeric(`numOfBytes`) && length(`numOfBytes`) == 1)) {
          stop(paste("Error! Invalid data for `numOfBytes`. Must be an integer:", `numOfBytes`))
        }
        self$`numOfBytes` <- `numOfBytes`
      }
      if (!is.null(`detectedAdducts`)) {
        stopifnot(is.vector(`detectedAdducts`), length(`detectedAdducts`) != 0)
        sapply(`detectedAdducts`, function(x) stopifnot(is.character(x)))
        if (!identical(`detectedAdducts`, unique(`detectedAdducts`))) {
          stop("Error! Items in `detectedAdducts` are not unique.")
        }
        self$`detectedAdducts` <- `detectedAdducts`
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
    #' @return ProjectInfo as a base R list.
    #' @examples
    #' # convert array of ProjectInfo (x) to a data frame
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
    #' Convert ProjectInfo to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ProjectInfoObject <- list()
      if (!is.null(self$`projectId`)) {
        ProjectInfoObject[["projectId"]] <-
          self$`projectId`
      }
      if (!is.null(self$`location`)) {
        ProjectInfoObject[["location"]] <-
          self$`location`
      }
      if (!is.null(self$`description`)) {
        ProjectInfoObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`type`)) {
        ProjectInfoObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`compatible`)) {
        ProjectInfoObject[["compatible"]] <-
          self$`compatible`
      }
      if (!is.null(self$`numOfFeatures`)) {
        ProjectInfoObject[["numOfFeatures"]] <-
          self$`numOfFeatures`
      }
      if (!is.null(self$`numOfCompounds`)) {
        ProjectInfoObject[["numOfCompounds"]] <-
          self$`numOfCompounds`
      }
      if (!is.null(self$`numOfBytes`)) {
        ProjectInfoObject[["numOfBytes"]] <-
          self$`numOfBytes`
      }
      if (!is.null(self$`detectedAdducts`)) {
        ProjectInfoObject[["detectedAdducts"]] <-
          self$`detectedAdducts`
      }
      return(ProjectInfoObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ProjectInfo
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProjectInfo
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`projectId`)) {
        self$`projectId` <- this_object$`projectId`
      }
      if (!is.null(this_object$`location`)) {
        self$`location` <- this_object$`location`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`type`)) {
        if (!is.null(this_object$`type`) && !(this_object$`type` %in% c("UNIMPORTED", "DIRECT_IMPORT", "PEAKLISTS", "ALIGNED_RUNS", "UNALIGNED_RUNS"))) {
          stop(paste("Error! \"", this_object$`type`, "\" cannot be assigned to `type`. Must be \"UNIMPORTED\", \"DIRECT_IMPORT\", \"PEAKLISTS\", \"ALIGNED_RUNS\", \"UNALIGNED_RUNS\".", sep = ""))
        }
        self$`type` <- this_object$`type`
      }
      if (!is.null(this_object$`compatible`)) {
        self$`compatible` <- this_object$`compatible`
      }
      if (!is.null(this_object$`numOfFeatures`)) {
        self$`numOfFeatures` <- this_object$`numOfFeatures`
      }
      if (!is.null(this_object$`numOfCompounds`)) {
        self$`numOfCompounds` <- this_object$`numOfCompounds`
      }
      if (!is.null(this_object$`numOfBytes`)) {
        self$`numOfBytes` <- this_object$`numOfBytes`
      }
      if (!is.null(this_object$`detectedAdducts`)) {
        self$`detectedAdducts` <- ApiClient$new()$deserializeObj(this_object$`detectedAdducts`, "set[character]", loadNamespace("RSirius"))
        if (!identical(self$`detectedAdducts`, unique(self$`detectedAdducts`))) {
          stop("Error! Items in `detectedAdducts` are not unique.")
        }
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ProjectInfo in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ProjectInfo
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProjectInfo
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`projectId` <- this_object$`projectId`
      self$`location` <- this_object$`location`
      self$`description` <- this_object$`description`
      if (!is.null(this_object$`type`) && !(this_object$`type` %in% c("UNIMPORTED", "DIRECT_IMPORT", "PEAKLISTS", "ALIGNED_RUNS", "UNALIGNED_RUNS"))) {
        stop(paste("Error! \"", this_object$`type`, "\" cannot be assigned to `type`. Must be \"UNIMPORTED\", \"DIRECT_IMPORT\", \"PEAKLISTS\", \"ALIGNED_RUNS\", \"UNALIGNED_RUNS\".", sep = ""))
      }
      self$`type` <- this_object$`type`
      self$`compatible` <- this_object$`compatible`
      self$`numOfFeatures` <- this_object$`numOfFeatures`
      self$`numOfCompounds` <- this_object$`numOfCompounds`
      self$`numOfBytes` <- this_object$`numOfBytes`
      self$`detectedAdducts` <- ApiClient$new()$deserializeObj(this_object$`detectedAdducts`, "set[character]", loadNamespace("RSirius"))
      if (!identical(self$`detectedAdducts`, unique(self$`detectedAdducts`))) {
        stop("Error! Items in `detectedAdducts` are not unique.")
      }
      self
    },

    #' @description
    #' Validate JSON input with respect to ProjectInfo and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ProjectInfo
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
# ProjectInfo$unlock()
#
## Below is an example to define the print function
# ProjectInfo$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ProjectInfo$lock()

