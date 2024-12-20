#' Create a new AdductNodeExperimental
#'
#' @description
#' EXPERIMENTAL: This schema is experimental and may be changed (or even removed) without notice until it is declared stable.
#'
#' @docType class
#' @title AdductNodeExperimental
#' @description AdductNodeExperimental Class
#' @format An \code{R6Class} generator object
#' @field alignedFeatureId  integer [optional]
#' @field mz  numeric [optional]
#' @field adductAnnotations  named list(numeric) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AdductNodeExperimental <- R6::R6Class(
  "AdductNodeExperimental",
  public = list(
    `alignedFeatureId` = NULL,
    `mz` = NULL,
    `adductAnnotations` = NULL,
    #' Initialize a new AdductNodeExperimental class.
    #'
    #' @description
    #' Initialize a new AdductNodeExperimental class.
    #'
    #' @param alignedFeatureId alignedFeatureId
    #' @param mz mz
    #' @param adductAnnotations adductAnnotations
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`alignedFeatureId` = NULL, `mz` = NULL, `adductAnnotations` = NULL, ...) {
      if (!is.null(`alignedFeatureId`)) {
        if (!(is.numeric(`alignedFeatureId`) && length(`alignedFeatureId`) == 1)) {
          stop(paste("Error! Invalid data for `alignedFeatureId`. Must be an integer:", `alignedFeatureId`))
        }
        self$`alignedFeatureId` <- `alignedFeatureId`
      }
      if (!is.null(`mz`)) {
        if (!(is.numeric(`mz`) && length(`mz`) == 1)) {
          stop(paste("Error! Invalid data for `mz`. Must be a number:", `mz`))
        }
        self$`mz` <- `mz`
      }
      if (!is.null(`adductAnnotations`)) {
        stopifnot(is.vector(`adductAnnotations`), length(`adductAnnotations`) != 0)
        sapply(`adductAnnotations`, function(x) stopifnot(is.character(x)))
        self$`adductAnnotations` <- `adductAnnotations`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return AdductNodeExperimental in JSON format
    #' @export
    toJSON = function() {
      AdductNodeExperimentalObject <- list()
      if (!is.null(self$`alignedFeatureId`)) {
        AdductNodeExperimentalObject[["alignedFeatureId"]] <-
          self$`alignedFeatureId`
      }
      if (!is.null(self$`mz`)) {
        AdductNodeExperimentalObject[["mz"]] <-
          self$`mz`
      }
      if (!is.null(self$`adductAnnotations`)) {
        AdductNodeExperimentalObject[["adductAnnotations"]] <-
          self$`adductAnnotations`
      }
      AdductNodeExperimentalObject
    },
    #' Deserialize JSON string into an instance of AdductNodeExperimental
    #'
    #' @description
    #' Deserialize JSON string into an instance of AdductNodeExperimental
    #'
    #' @param input_json the JSON input
    #' @return the instance of AdductNodeExperimental
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`alignedFeatureId`)) {
        self$`alignedFeatureId` <- this_object$`alignedFeatureId`
      }
      if (!is.null(this_object$`mz`)) {
        self$`mz` <- this_object$`mz`
      }
      if (!is.null(this_object$`adductAnnotations`)) {
        self$`adductAnnotations` <- ApiClient$new()$deserializeObj(this_object$`adductAnnotations`, "map(numeric)", loadNamespace("Rsirius"))
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return AdductNodeExperimental in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`alignedFeatureId`)) {
          sprintf(
          '"alignedFeatureId":
            %f
                    ',
          self$`alignedFeatureId`
          )
        },
        if (!is.null(self$`mz`)) {
          sprintf(
          '"mz":
            %f
                    ',
          self$`mz`
          )
        },
        if (!is.null(self$`adductAnnotations`)) {
          sprintf(
          '"adductAnnotations":
            %s
          ',
          jsonlite::toJSON(lapply(self$`adductAnnotations`, function(x){ x }), auto_unbox = TRUE, digits = NA)
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
    #' Deserialize JSON string into an instance of AdductNodeExperimental
    #'
    #' @description
    #' Deserialize JSON string into an instance of AdductNodeExperimental
    #'
    #' @param input_json the JSON input
    #' @return the instance of AdductNodeExperimental
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`alignedFeatureId` <- this_object$`alignedFeatureId`
      self$`mz` <- this_object$`mz`
      self$`adductAnnotations` <- ApiClient$new()$deserializeObj(this_object$`adductAnnotations`, "map(numeric)", loadNamespace("Rsirius"))
      self
    },
    #' Validate JSON input with respect to AdductNodeExperimental
    #'
    #' @description
    #' Validate JSON input with respect to AdductNodeExperimental and throw an exception if invalid
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
    #' @return String representation of AdductNodeExperimental
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
# AdductNodeExperimental$unlock()
#
## Below is an example to define the print function
# AdductNodeExperimental$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AdductNodeExperimental$lock()

