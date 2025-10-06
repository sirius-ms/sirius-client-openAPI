#' Create a new AdductNodeExperimental
#'
#' @description
#' EXPERIMENTAL: This schema is experimental and may be changed (or even removed) without notice until it is declared stable.
#'
#' @docType class
#' @title AdductNodeExperimental
#' @description AdductNodeExperimental Class
#' @format An \code{R6Class} generator object
#' @field alignedFeatureId  character [optional]
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

    #' @description
    #' Initialize a new AdductNodeExperimental class.
    #'
    #' @param alignedFeatureId alignedFeatureId
    #' @param mz mz
    #' @param adductAnnotations adductAnnotations
    #' @param ... Other optional arguments.
    initialize = function(`alignedFeatureId` = NULL, `mz` = NULL, `adductAnnotations` = NULL, ...) {
      if (!is.null(`alignedFeatureId`)) {
        if (!(is.character(`alignedFeatureId`) && length(`alignedFeatureId`) == 1)) {
          stop(paste("Error! Invalid data for `alignedFeatureId`. Must be a string:", `alignedFeatureId`))
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
    #' @return AdductNodeExperimental as a base R list.
    #' @examples
    #' # convert array of AdductNodeExperimental (x) to a data frame
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
    #' Convert AdductNodeExperimental to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
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
      return(AdductNodeExperimentalObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AdductNodeExperimental
    #'
    #' @param input_json the JSON input
    #' @return the instance of AdductNodeExperimental
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`alignedFeatureId`)) {
        self$`alignedFeatureId` <- this_object$`alignedFeatureId`
      }
      if (!is.null(this_object$`mz`)) {
        self$`mz` <- this_object$`mz`
      }
      if (!is.null(this_object$`adductAnnotations`)) {
        self$`adductAnnotations` <- ApiClient$new()$deserializeObj(this_object$`adductAnnotations`, "map(numeric)", loadNamespace("RSirius"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AdductNodeExperimental in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AdductNodeExperimental
    #'
    #' @param input_json the JSON input
    #' @return the instance of AdductNodeExperimental
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`alignedFeatureId` <- this_object$`alignedFeatureId`
      self$`mz` <- this_object$`mz`
      self$`adductAnnotations` <- ApiClient$new()$deserializeObj(this_object$`adductAnnotations`, "map(numeric)", loadNamespace("RSirius"))
      self
    },

    #' @description
    #' Validate JSON input with respect to AdductNodeExperimental and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AdductNodeExperimental
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
# AdductNodeExperimental$unlock()
#
## Below is an example to define the print function
# AdductNodeExperimental$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AdductNodeExperimental$lock()

