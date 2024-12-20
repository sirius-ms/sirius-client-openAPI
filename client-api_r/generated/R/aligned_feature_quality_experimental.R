#' Create a new AlignedFeatureQualityExperimental
#'
#' @description
#' EXPERIMENTAL: This schema is experimental and may be changed (or even removed) without notice until it is declared stable.
#'
#' @docType class
#' @title AlignedFeatureQualityExperimental
#' @description AlignedFeatureQualityExperimental Class
#' @format An \code{R6Class} generator object
#' @field alignedFeatureId Id of the feature (aligned over runs) this quality information belongs to. character
#' @field overallQuality Overall Quality character
#' @field categories Contains all pre-computation quality information that belong to  this feature (aligned over runs), such as information about the quality of the peak shape, MS2 spectrum etc., named list(\link{Category})
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AlignedFeatureQualityExperimental <- R6::R6Class(
  "AlignedFeatureQualityExperimental",
  public = list(
    `alignedFeatureId` = NULL,
    `overallQuality` = NULL,
    `categories` = NULL,
    #' Initialize a new AlignedFeatureQualityExperimental class.
    #'
    #' @description
    #' Initialize a new AlignedFeatureQualityExperimental class.
    #'
    #' @param alignedFeatureId Id of the feature (aligned over runs) this quality information belongs to.
    #' @param overallQuality Overall Quality
    #' @param categories Contains all pre-computation quality information that belong to  this feature (aligned over runs), such as information about the quality of the peak shape, MS2 spectrum etc.,
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`alignedFeatureId`, `overallQuality`, `categories`, ...) {
      if (!missing(`alignedFeatureId`)) {
        if (!(is.character(`alignedFeatureId`) && length(`alignedFeatureId`) == 1)) {
          stop(paste("Error! Invalid data for `alignedFeatureId`. Must be a string:", `alignedFeatureId`))
        }
        self$`alignedFeatureId` <- `alignedFeatureId`
      }
      if (!missing(`overallQuality`)) {
        if (!(`overallQuality` %in% c("NOT_APPLICABLE", "LOWEST", "BAD", "DECENT", "GOOD"))) {
          stop(paste("Error! \"", `overallQuality`, "\" cannot be assigned to `overallQuality`. Must be \"NOT_APPLICABLE\", \"LOWEST\", \"BAD\", \"DECENT\", \"GOOD\".", sep = ""))
        }
        if (!(is.character(`overallQuality`) && length(`overallQuality`) == 1)) {
          stop(paste("Error! Invalid data for `overallQuality`. Must be a string:", `overallQuality`))
        }
        self$`overallQuality` <- `overallQuality`
      }
      if (!missing(`categories`)) {
        stopifnot(is.vector(`categories`), length(`categories`) != 0)
        sapply(`categories`, function(x) stopifnot(R6::is.R6(x)))
        self$`categories` <- `categories`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return AlignedFeatureQualityExperimental in JSON format
    #' @export
    toJSON = function() {
      AlignedFeatureQualityExperimentalObject <- list()
      if (!is.null(self$`alignedFeatureId`)) {
        AlignedFeatureQualityExperimentalObject[["alignedFeatureId"]] <-
          self$`alignedFeatureId`
      }
      if (!is.null(self$`overallQuality`)) {
        AlignedFeatureQualityExperimentalObject[["overallQuality"]] <-
          self$`overallQuality`
      }
      if (!is.null(self$`categories`)) {
        AlignedFeatureQualityExperimentalObject[["categories"]] <-
          lapply(self$`categories`, function(x) x$toJSON())
      }
      AlignedFeatureQualityExperimentalObject
    },
    #' Deserialize JSON string into an instance of AlignedFeatureQualityExperimental
    #'
    #' @description
    #' Deserialize JSON string into an instance of AlignedFeatureQualityExperimental
    #'
    #' @param input_json the JSON input
    #' @return the instance of AlignedFeatureQualityExperimental
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`alignedFeatureId`)) {
        self$`alignedFeatureId` <- this_object$`alignedFeatureId`
      }
      if (!is.null(this_object$`overallQuality`)) {
        if (!is.null(this_object$`overallQuality`) && !(this_object$`overallQuality` %in% c("NOT_APPLICABLE", "LOWEST", "BAD", "DECENT", "GOOD"))) {
          stop(paste("Error! \"", this_object$`overallQuality`, "\" cannot be assigned to `overallQuality`. Must be \"NOT_APPLICABLE\", \"LOWEST\", \"BAD\", \"DECENT\", \"GOOD\".", sep = ""))
        }
        self$`overallQuality` <- this_object$`overallQuality`
      }
      if (!is.null(this_object$`categories`)) {
        self$`categories` <- ApiClient$new()$deserializeObj(this_object$`categories`, "map(Category)", loadNamespace("Rsirius"))
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return AlignedFeatureQualityExperimental in JSON format
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
        if (!is.null(self$`overallQuality`)) {
          sprintf(
          '"overallQuality":
            "%s"
                    ',
          self$`overallQuality`
          )
        },
        if (!is.null(self$`categories`)) {
          sprintf(
          '"categories":
          %s
',
          jsonlite::toJSON(lapply(self$`categories`, function(x){ x$toJSON() }), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      # remove c() occurences and reduce resulting double escaped quotes \"\" into \"
      jsoncontent <- gsub('\\\"c\\((.*?)\\\"\\)', '\\1', jsoncontent)
      # fix wrong serialization of "\"ENUM\"" to "ENUM"
      jsoncontent <- gsub("\\\\\"([A-Z]+)\\\\\"", "\\1", jsoncontent)
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of AlignedFeatureQualityExperimental
    #'
    #' @description
    #' Deserialize JSON string into an instance of AlignedFeatureQualityExperimental
    #'
    #' @param input_json the JSON input
    #' @return the instance of AlignedFeatureQualityExperimental
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`alignedFeatureId` <- this_object$`alignedFeatureId`
      if (!is.null(this_object$`overallQuality`) && !(this_object$`overallQuality` %in% c("NOT_APPLICABLE", "LOWEST", "BAD", "DECENT", "GOOD"))) {
        stop(paste("Error! \"", this_object$`overallQuality`, "\" cannot be assigned to `overallQuality`. Must be \"NOT_APPLICABLE\", \"LOWEST\", \"BAD\", \"DECENT\", \"GOOD\".", sep = ""))
      }
      self$`overallQuality` <- this_object$`overallQuality`
      self$`categories` <- ApiClient$new()$deserializeObj(this_object$`categories`, "map(Category)", loadNamespace("Rsirius"))
      self
    },
    #' Validate JSON input with respect to AlignedFeatureQualityExperimental
    #'
    #' @description
    #' Validate JSON input with respect to AlignedFeatureQualityExperimental and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `alignedFeatureId`
      if (!is.null(input_json$`alignedFeatureId`)) {
        if (!(is.character(input_json$`alignedFeatureId`) && length(input_json$`alignedFeatureId`) == 1)) {
          stop(paste("Error! Invalid data for `alignedFeatureId`. Must be a string:", input_json$`alignedFeatureId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AlignedFeatureQualityExperimental: the required field `alignedFeatureId` is missing."))
      }
      # check the required field `overallQuality`
      if (!is.null(input_json$`overallQuality`)) {
        if (!(is.character(input_json$`overallQuality`) && length(input_json$`overallQuality`) == 1)) {
          stop(paste("Error! Invalid data for `overallQuality`. Must be a string:", input_json$`overallQuality`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AlignedFeatureQualityExperimental: the required field `overallQuality` is missing."))
      }
      # check the required field `categories`
      if (!is.null(input_json$`categories`)) {
        stopifnot(is.vector(input_json$`categories`), length(input_json$`categories`) != 0)
        tmp <- sapply(input_json$`categories`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AlignedFeatureQualityExperimental: the required field `categories` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AlignedFeatureQualityExperimental
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
      # check if the required `alignedFeatureId` is null
      if (is.null(self$`alignedFeatureId`)) {
        return(FALSE)
      }

      # check if the required `categories` is null
      if (is.null(self$`categories`)) {
        return(FALSE)
      }

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
      # check if the required `alignedFeatureId` is null
      if (is.null(self$`alignedFeatureId`)) {
        invalid_fields["alignedFeatureId"] <- "Non-nullable required field `alignedFeatureId` cannot be null."
      }

      # check if the required `categories` is null
      if (is.null(self$`categories`)) {
        invalid_fields["categories"] <- "Non-nullable required field `categories` cannot be null."
      }

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
# AlignedFeatureQualityExperimental$unlock()
#
## Below is an example to define the print function
# AlignedFeatureQualityExperimental$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AlignedFeatureQualityExperimental$lock()

