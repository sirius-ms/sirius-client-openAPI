#' Create a new AlignedFeature
#'
#' @description
#' The AlignedFeature contains the ID of a feature (aligned over runs) together with some read-only information  that might be displayed in some summary view.
#'
#' @docType class
#' @title AlignedFeature
#' @description AlignedFeature Class
#' @format An \code{R6Class} generator object
#' @field alignedFeatureId  character [optional]
#' @field name  character [optional]
#' @field ionMass  numeric [optional]
#' @field ionType  character [optional]
#' @field rtStartSeconds  numeric [optional]
#' @field rtEndSeconds  numeric [optional]
#' @field msData  \link{MsData} [optional]
#' @field topAnnotations  \link{FeatureAnnotations} [optional]
#' @field topAnnotationsDeNovo  \link{FeatureAnnotations} [optional]
#' @field computing Write lock for this feature. If the feature is locked no write operations are possible.  True if any computation is modifying this feature or its results character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AlignedFeature <- R6::R6Class(
  "AlignedFeature",
  public = list(
    `alignedFeatureId` = NULL,
    `name` = NULL,
    `ionMass` = NULL,
    `ionType` = NULL,
    `rtStartSeconds` = NULL,
    `rtEndSeconds` = NULL,
    `msData` = NULL,
    `topAnnotations` = NULL,
    `topAnnotationsDeNovo` = NULL,
    `computing` = NULL,
    #' Initialize a new AlignedFeature class.
    #'
    #' @description
    #' Initialize a new AlignedFeature class.
    #'
    #' @param alignedFeatureId alignedFeatureId
    #' @param name name
    #' @param ionMass ionMass
    #' @param ionType ionType
    #' @param rtStartSeconds rtStartSeconds
    #' @param rtEndSeconds rtEndSeconds
    #' @param msData msData
    #' @param topAnnotations topAnnotations
    #' @param topAnnotationsDeNovo topAnnotationsDeNovo
    #' @param computing Write lock for this feature. If the feature is locked no write operations are possible.  True if any computation is modifying this feature or its results
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`alignedFeatureId` = NULL, `name` = NULL, `ionMass` = NULL, `ionType` = NULL, `rtStartSeconds` = NULL, `rtEndSeconds` = NULL, `msData` = NULL, `topAnnotations` = NULL, `topAnnotationsDeNovo` = NULL, `computing` = NULL, ...) {
      if (!is.null(`alignedFeatureId`)) {
        if (!(is.character(`alignedFeatureId`) && length(`alignedFeatureId`) == 1)) {
          stop(paste("Error! Invalid data for `alignedFeatureId`. Must be a string:", `alignedFeatureId`))
        }
        self$`alignedFeatureId` <- `alignedFeatureId`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`ionMass`)) {
        if (!(is.numeric(`ionMass`) && length(`ionMass`) == 1)) {
          stop(paste("Error! Invalid data for `ionMass`. Must be a number:", `ionMass`))
        }
        self$`ionMass` <- `ionMass`
      }
      if (!is.null(`ionType`)) {
        if (!(is.character(`ionType`) && length(`ionType`) == 1)) {
          stop(paste("Error! Invalid data for `ionType`. Must be a string:", `ionType`))
        }
        self$`ionType` <- `ionType`
      }
      if (!is.null(`rtStartSeconds`)) {
        if (!(is.numeric(`rtStartSeconds`) && length(`rtStartSeconds`) == 1)) {
          stop(paste("Error! Invalid data for `rtStartSeconds`. Must be a number:", `rtStartSeconds`))
        }
        self$`rtStartSeconds` <- `rtStartSeconds`
      }
      if (!is.null(`rtEndSeconds`)) {
        if (!(is.numeric(`rtEndSeconds`) && length(`rtEndSeconds`) == 1)) {
          stop(paste("Error! Invalid data for `rtEndSeconds`. Must be a number:", `rtEndSeconds`))
        }
        self$`rtEndSeconds` <- `rtEndSeconds`
      }
      if (!is.null(`msData`)) {
        stopifnot(R6::is.R6(`msData`))
        self$`msData` <- `msData`
      }
      if (!is.null(`topAnnotations`)) {
        stopifnot(R6::is.R6(`topAnnotations`))
        self$`topAnnotations` <- `topAnnotations`
      }
      if (!is.null(`topAnnotationsDeNovo`)) {
        stopifnot(R6::is.R6(`topAnnotationsDeNovo`))
        self$`topAnnotationsDeNovo` <- `topAnnotationsDeNovo`
      }
      if (!is.null(`computing`)) {
        if (!(is.logical(`computing`) && length(`computing`) == 1)) {
          stop(paste("Error! Invalid data for `computing`. Must be a boolean:", `computing`))
        }
        self$`computing` <- `computing`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return AlignedFeature in JSON format
    #' @export
    toJSON = function() {
      AlignedFeatureObject <- list()
      if (!is.null(self$`alignedFeatureId`)) {
        AlignedFeatureObject[["alignedFeatureId"]] <-
          self$`alignedFeatureId`
      }
      if (!is.null(self$`name`)) {
        AlignedFeatureObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`ionMass`)) {
        AlignedFeatureObject[["ionMass"]] <-
          self$`ionMass`
      }
      if (!is.null(self$`ionType`)) {
        AlignedFeatureObject[["ionType"]] <-
          self$`ionType`
      }
      if (!is.null(self$`rtStartSeconds`)) {
        AlignedFeatureObject[["rtStartSeconds"]] <-
          self$`rtStartSeconds`
      }
      if (!is.null(self$`rtEndSeconds`)) {
        AlignedFeatureObject[["rtEndSeconds"]] <-
          self$`rtEndSeconds`
      }
      if (!is.null(self$`msData`)) {
        AlignedFeatureObject[["msData"]] <-
          if (length(names(self$`msData`$toJSON())) == 0L && is.character(jsonlite::fromJSON(self$`msData`$toJSON()))) {
            jsonlite::fromJSON(self$`msData`$toJSON())
          } else {
            self$`msData`$toJSON()
          }
      }
      if (!is.null(self$`topAnnotations`)) {
        AlignedFeatureObject[["topAnnotations"]] <-
          if (length(names(self$`topAnnotations`$toJSON())) == 0L && is.character(jsonlite::fromJSON(self$`topAnnotations`$toJSON()))) {
            jsonlite::fromJSON(self$`topAnnotations`$toJSON())
          } else {
            self$`topAnnotations`$toJSON()
          }
      }
      if (!is.null(self$`topAnnotationsDeNovo`)) {
        AlignedFeatureObject[["topAnnotationsDeNovo"]] <-
          if (length(names(self$`topAnnotationsDeNovo`$toJSON())) == 0L && is.character(jsonlite::fromJSON(self$`topAnnotationsDeNovo`$toJSON()))) {
            jsonlite::fromJSON(self$`topAnnotationsDeNovo`$toJSON())
          } else {
            self$`topAnnotationsDeNovo`$toJSON()
          }
      }
      if (!is.null(self$`computing`)) {
        AlignedFeatureObject[["computing"]] <-
          self$`computing`
      }
      AlignedFeatureObject
    },
    #' Deserialize JSON string into an instance of AlignedFeature
    #'
    #' @description
    #' Deserialize JSON string into an instance of AlignedFeature
    #'
    #' @param input_json the JSON input
    #' @return the instance of AlignedFeature
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`alignedFeatureId`)) {
        self$`alignedFeatureId` <- this_object$`alignedFeatureId`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`ionMass`)) {
        self$`ionMass` <- this_object$`ionMass`
      }
      if (!is.null(this_object$`ionType`)) {
        self$`ionType` <- this_object$`ionType`
      }
      if (!is.null(this_object$`rtStartSeconds`)) {
        self$`rtStartSeconds` <- this_object$`rtStartSeconds`
      }
      if (!is.null(this_object$`rtEndSeconds`)) {
        self$`rtEndSeconds` <- this_object$`rtEndSeconds`
      }
      if (!is.null(this_object$`msData`)) {
        `msdata_object` <- MsData$new()
        `msdata_object`$fromJSON(jsonlite::toJSON(this_object$`msData`, auto_unbox = TRUE, digits = NA))
        self$`msData` <- `msdata_object`
      }
      if (!is.null(this_object$`topAnnotations`)) {
        `topannotations_object` <- FeatureAnnotations$new()
        `topannotations_object`$fromJSON(jsonlite::toJSON(this_object$`topAnnotations`, auto_unbox = TRUE, digits = NA))
        self$`topAnnotations` <- `topannotations_object`
      }
      if (!is.null(this_object$`topAnnotationsDeNovo`)) {
        `topannotationsdenovo_object` <- FeatureAnnotations$new()
        `topannotationsdenovo_object`$fromJSON(jsonlite::toJSON(this_object$`topAnnotationsDeNovo`, auto_unbox = TRUE, digits = NA))
        self$`topAnnotationsDeNovo` <- `topannotationsdenovo_object`
      }
      if (!is.null(this_object$`computing`)) {
        self$`computing` <- this_object$`computing`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return AlignedFeature in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`alignedFeatureId`)) {
          sprintf(
          '"alignedFeatureId":
            "%s"
                    ',
          self$`alignedFeatureId`
          )
        },
        if (!is.null(self$`name`)) {
          sprintf(
          '"name":
            "%s"
                    ',
          self$`name`
          )
        },
        if (!is.null(self$`ionMass`)) {
          sprintf(
          '"ionMass":
            %d
                    ',
          self$`ionMass`
          )
        },
        if (!is.null(self$`ionType`)) {
          sprintf(
          '"ionType":
            "%s"
                    ',
          self$`ionType`
          )
        },
        if (!is.null(self$`rtStartSeconds`)) {
          sprintf(
          '"rtStartSeconds":
            %d
                    ',
          self$`rtStartSeconds`
          )
        },
        if (!is.null(self$`rtEndSeconds`)) {
          sprintf(
          '"rtEndSeconds":
            %d
                    ',
          self$`rtEndSeconds`
          )
        },
        if (!is.null(self$`msData`)) {
          sprintf(
          '"msData":
          %s
          ',
          jsonlite::toJSON(self$`msData`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`topAnnotations`)) {
          sprintf(
          '"topAnnotations":
          %s
          ',
          jsonlite::toJSON(self$`topAnnotations`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`topAnnotationsDeNovo`)) {
          sprintf(
          '"topAnnotationsDeNovo":
          %s
          ',
          jsonlite::toJSON(self$`topAnnotationsDeNovo`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`computing`)) {
          sprintf(
          '"computing":
            %s
                    ',
          tolower(self$`computing`)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of AlignedFeature
    #'
    #' @description
    #' Deserialize JSON string into an instance of AlignedFeature
    #'
    #' @param input_json the JSON input
    #' @return the instance of AlignedFeature
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`alignedFeatureId` <- this_object$`alignedFeatureId`
      self$`name` <- this_object$`name`
      self$`ionMass` <- this_object$`ionMass`
      self$`ionType` <- this_object$`ionType`
      self$`rtStartSeconds` <- this_object$`rtStartSeconds`
      self$`rtEndSeconds` <- this_object$`rtEndSeconds`
      self$`msData` <- MsData$new()$fromJSON(jsonlite::toJSON(this_object$`msData`, auto_unbox = TRUE, digits = NA))
      self$`topAnnotations` <- FeatureAnnotations$new()$fromJSON(jsonlite::toJSON(this_object$`topAnnotations`, auto_unbox = TRUE, digits = NA))
      self$`topAnnotationsDeNovo` <- FeatureAnnotations$new()$fromJSON(jsonlite::toJSON(this_object$`topAnnotationsDeNovo`, auto_unbox = TRUE, digits = NA))
      self$`computing` <- this_object$`computing`
      self
    },
    #' Validate JSON input with respect to AlignedFeature
    #'
    #' @description
    #' Validate JSON input with respect to AlignedFeature and throw an exception if invalid
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
    #' @return String representation of AlignedFeature
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
# AlignedFeature$unlock()
#
## Below is an example to define the print function
# AlignedFeature$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AlignedFeature$lock()

