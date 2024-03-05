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
#' @field compatible Indicates whether computed results (e.g. fingerprints, compounds classes) are compatible with the backend.  If true project is up-to-date and there are no restrictions regarding usage.  If false project is incompatible and therefore \"read only\" until the incompatible results have been removed. See updateProject endpoint for further information  If NULL the information has not been requested. character [optional]
#' @field numOfFeatures Number of features (aligned over runs) in this project. If NULL, information has not been requested (See OptField 'sizeInformation'). integer [optional]
#' @field numOfCompounds Number of compounds (group of ion identities) in this project. If NULL, Information has not been requested (See OptField 'sizeInformation') or might be unavailable for this project type. integer [optional]
#' @field numOfBytes Size in Bytes this project consumes on disk If NULL, Information has not been requested (See OptField 'sizeInformation'). integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ProjectInfo <- R6::R6Class(
  "ProjectInfo",
  public = list(
    `projectId` = NULL,
    `location` = NULL,
    `description` = NULL,
    `compatible` = NULL,
    `numOfFeatures` = NULL,
    `numOfCompounds` = NULL,
    `numOfBytes` = NULL,
    #' Initialize a new ProjectInfo class.
    #'
    #' @description
    #' Initialize a new ProjectInfo class.
    #'
    #' @param projectId a user selected unique name of the project for easy access.
    #' @param location storage location of the project.
    #' @param description Description of this project.
    #' @param compatible Indicates whether computed results (e.g. fingerprints, compounds classes) are compatible with the backend.  If true project is up-to-date and there are no restrictions regarding usage.  If false project is incompatible and therefore \"read only\" until the incompatible results have been removed. See updateProject endpoint for further information  If NULL the information has not been requested.
    #' @param numOfFeatures Number of features (aligned over runs) in this project. If NULL, information has not been requested (See OptField 'sizeInformation').
    #' @param numOfCompounds Number of compounds (group of ion identities) in this project. If NULL, Information has not been requested (See OptField 'sizeInformation') or might be unavailable for this project type.
    #' @param numOfBytes Size in Bytes this project consumes on disk If NULL, Information has not been requested (See OptField 'sizeInformation').
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`projectId` = NULL, `location` = NULL, `description` = NULL, `compatible` = NULL, `numOfFeatures` = NULL, `numOfCompounds` = NULL, `numOfBytes` = NULL, ...) {
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
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ProjectInfo in JSON format
    #' @export
    toJSON = function() {
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
      ProjectInfoObject
    },
    #' Deserialize JSON string into an instance of ProjectInfo
    #'
    #' @description
    #' Deserialize JSON string into an instance of ProjectInfo
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProjectInfo
    #' @export
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
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ProjectInfo in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`projectId`)) {
          sprintf(
          '"projectId":
            "%s"
                    ',
          self$`projectId`
          )
        },
        if (!is.null(self$`location`)) {
          sprintf(
          '"location":
            "%s"
                    ',
          self$`location`
          )
        },
        if (!is.null(self$`description`)) {
          sprintf(
          '"description":
            "%s"
                    ',
          self$`description`
          )
        },
        if (!is.null(self$`compatible`)) {
          sprintf(
          '"compatible":
            %s
                    ',
          tolower(self$`compatible`)
          )
        },
        if (!is.null(self$`numOfFeatures`)) {
          sprintf(
          '"numOfFeatures":
            %d
                    ',
          self$`numOfFeatures`
          )
        },
        if (!is.null(self$`numOfCompounds`)) {
          sprintf(
          '"numOfCompounds":
            %d
                    ',
          self$`numOfCompounds`
          )
        },
        if (!is.null(self$`numOfBytes`)) {
          sprintf(
          '"numOfBytes":
            %d
                    ',
          self$`numOfBytes`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of ProjectInfo
    #'
    #' @description
    #' Deserialize JSON string into an instance of ProjectInfo
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProjectInfo
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`projectId` <- this_object$`projectId`
      self$`location` <- this_object$`location`
      self$`description` <- this_object$`description`
      self$`compatible` <- this_object$`compatible`
      self$`numOfFeatures` <- this_object$`numOfFeatures`
      self$`numOfCompounds` <- this_object$`numOfCompounds`
      self$`numOfBytes` <- this_object$`numOfBytes`
      self
    },
    #' Validate JSON input with respect to ProjectInfo
    #'
    #' @description
    #' Validate JSON input with respect to ProjectInfo and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ProjectInfo
    #' @export
    toString = function() {
      self$toJSONString()
    },
    #' Return true if the values in all fields are valid.
    #'
    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    #' @export
    isValid = function() {
      TRUE
    },
    #' Return a list of invalid fields (if any).
    #'
    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    #' @export
    getInvalidFields = function() {
      invalid_fields <- list()
      invalid_fields
    },
    #' Print the object
    #'
    #' @description
    #' Print the object
    #'
    #' @export
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

