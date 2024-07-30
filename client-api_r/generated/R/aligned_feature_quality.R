#' Create a new AlignedFeatureQuality
#'
#' @description
#' AlignedFeatureQuality Class
#'
#' @docType class
#' @title AlignedFeatureQuality
#' @description AlignedFeatureQuality Class
#' @format An \code{R6Class} generator object
#' @field alignedFeatureId Id of the feature (aligned over runs) this quality information belongs to. character
#' @field overallQuality  \link{DataQuality}
#' @field categories Contains all pre-computation quality information that belong to  this feature (aligned over runs), such as information about the quality of the peak shape, MS2 spectrum etc., named list(\link{Category})
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AlignedFeatureQuality <- R6::R6Class(
  "AlignedFeatureQuality",
  public = list(
    `alignedFeatureId` = NULL,
    `overallQuality` = NULL,
    `categories` = NULL,
    #' Initialize a new AlignedFeatureQuality class.
    #'
    #' @description
    #' Initialize a new AlignedFeatureQuality class.
    #'
    #' @param alignedFeatureId Id of the feature (aligned over runs) this quality information belongs to.
    #' @param overallQuality overallQuality
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
        if (!(`overallQuality` %in% c())) {
          stop(paste("Error! \"", `overallQuality`, "\" cannot be assigned to `overallQuality`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`overallQuality`))
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
    #' @return AlignedFeatureQuality in JSON format
    #' @export
    toJSON = function() {
      AlignedFeatureQualityObject <- list()
      if (!is.null(self$`alignedFeatureId`)) {
        AlignedFeatureQualityObject[["alignedFeatureId"]] <-
          self$`alignedFeatureId`
      }
      if (!is.null(self$`overallQuality`)) {
        AlignedFeatureQualityObject[["overallQuality"]] <-
          if (is.list(self$`overallQuality`$toJSON()) && length(self$`overallQuality`$toJSON()) == 0L){
            NULL
          } else if (length(names(self$`overallQuality`$toJSON())) == 0L && is.character(jsonlite::fromJSON(self$`overallQuality`$toJSON()))) {
            jsonlite::fromJSON(self$`overallQuality`$toJSON())
          } else {
            self$`overallQuality`$toJSON()
          }
      }
      if (!is.null(self$`categories`)) {
        AlignedFeatureQualityObject[["categories"]] <-
          lapply(self$`categories`, function(x) x$toJSON())
      }
      AlignedFeatureQualityObject
    },
    #' Deserialize JSON string into an instance of AlignedFeatureQuality
    #'
    #' @description
    #' Deserialize JSON string into an instance of AlignedFeatureQuality
    #'
    #' @param input_json the JSON input
    #' @return the instance of AlignedFeatureQuality
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`alignedFeatureId`)) {
        self$`alignedFeatureId` <- this_object$`alignedFeatureId`
      }
      if (!is.null(this_object$`overallQuality`)) {
        `overallquality_object` <- DataQuality$new()
        `overallquality_object`$fromJSON(jsonlite::toJSON(this_object$`overallQuality`, auto_unbox = TRUE, digits = NA))
        self$`overallQuality` <- `overallquality_object`
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
    #' @return AlignedFeatureQuality in JSON format
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
          %s
          ',
          jsonlite::toJSON(self$`overallQuality`$toJSON(), auto_unbox = TRUE, digits = NA)
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
    #' Deserialize JSON string into an instance of AlignedFeatureQuality
    #'
    #' @description
    #' Deserialize JSON string into an instance of AlignedFeatureQuality
    #'
    #' @param input_json the JSON input
    #' @return the instance of AlignedFeatureQuality
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`alignedFeatureId` <- this_object$`alignedFeatureId`
      self$`overallQuality` <- DataQuality$new()$fromJSON(jsonlite::toJSON(this_object$`overallQuality`, auto_unbox = TRUE, digits = NA))
      self$`categories` <- ApiClient$new()$deserializeObj(this_object$`categories`, "map(Category)", loadNamespace("Rsirius"))
      self
    },
    #' Validate JSON input with respect to AlignedFeatureQuality
    #'
    #' @description
    #' Validate JSON input with respect to AlignedFeatureQuality and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for AlignedFeatureQuality: the required field `alignedFeatureId` is missing."))
      }
      # check the required field `overallQuality`
      if (!is.null(input_json$`overallQuality`)) {
        stopifnot(R6::is.R6(input_json$`overallQuality`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AlignedFeatureQuality: the required field `overallQuality` is missing."))
      }
      # check the required field `categories`
      if (!is.null(input_json$`categories`)) {
        stopifnot(is.vector(input_json$`categories`), length(input_json$`categories`) != 0)
        tmp <- sapply(input_json$`categories`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AlignedFeatureQuality: the required field `categories` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AlignedFeatureQuality
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
# AlignedFeatureQuality$unlock()
#
## Below is an example to define the print function
# AlignedFeatureQuality$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AlignedFeatureQuality$lock()

