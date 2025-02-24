#' Create a new TraceExperimental
#'
#' @description
#' EXPERIMENTAL: This schema is experimental and may be changed (or even removed) without notice until it is declared stable.
#'
#' @docType class
#' @title TraceExperimental
#' @description TraceExperimental Class
#' @format An \code{R6Class} generator object
#' @field id  character [optional]
#' @field sampleId  character [optional]
#' @field sampleName  character [optional]
#' @field label  character [optional]
#' @field intensities  list(numeric) [optional]
#' @field annotations  list(\link{TraceAnnotationExperimental}) [optional]
#' @field mz  numeric [optional]
#' @field merged  character [optional]
#' @field normalizationFactor Traces are stored with raw intensity values. The normalization factor maps them to relative intensities,  such that traces from different samples can be compared. numeric [optional]
#' @field noiseLevel The noise level is estimated from the median noise in the surrounding scans. It can be used to  calculate signal-to-noise ratios. numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TraceExperimental <- R6::R6Class(
  "TraceExperimental",
  public = list(
    `id` = NULL,
    `sampleId` = NULL,
    `sampleName` = NULL,
    `label` = NULL,
    `intensities` = NULL,
    `annotations` = NULL,
    `mz` = NULL,
    `merged` = NULL,
    `normalizationFactor` = NULL,
    `noiseLevel` = NULL,

    #' @description
    #' Initialize a new TraceExperimental class.
    #'
    #' @param id id
    #' @param sampleId sampleId
    #' @param sampleName sampleName
    #' @param label label
    #' @param intensities intensities
    #' @param annotations annotations
    #' @param mz mz
    #' @param merged merged
    #' @param normalizationFactor Traces are stored with raw intensity values. The normalization factor maps them to relative intensities,  such that traces from different samples can be compared.
    #' @param noiseLevel The noise level is estimated from the median noise in the surrounding scans. It can be used to  calculate signal-to-noise ratios.
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `sampleId` = NULL, `sampleName` = NULL, `label` = NULL, `intensities` = NULL, `annotations` = NULL, `mz` = NULL, `merged` = NULL, `normalizationFactor` = NULL, `noiseLevel` = NULL, ...) {
      if (!is.null(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`sampleId`)) {
        if (!(is.character(`sampleId`) && length(`sampleId`) == 1)) {
          stop(paste("Error! Invalid data for `sampleId`. Must be a string:", `sampleId`))
        }
        self$`sampleId` <- `sampleId`
      }
      if (!is.null(`sampleName`)) {
        if (!(is.character(`sampleName`) && length(`sampleName`) == 1)) {
          stop(paste("Error! Invalid data for `sampleName`. Must be a string:", `sampleName`))
        }
        self$`sampleName` <- `sampleName`
      }
      if (!is.null(`label`)) {
        if (!(is.character(`label`) && length(`label`) == 1)) {
          stop(paste("Error! Invalid data for `label`. Must be a string:", `label`))
        }
        self$`label` <- `label`
      }
      if (!is.null(`intensities`)) {
        stopifnot(is.vector(`intensities`), length(`intensities`) != 0)
        sapply(`intensities`, function(x) stopifnot(is.character(x)))
        self$`intensities` <- `intensities`
      }
      if (!is.null(`annotations`)) {
        stopifnot(is.vector(`annotations`), length(`annotations`) != 0)
        sapply(`annotations`, function(x) stopifnot(R6::is.R6(x)))
        self$`annotations` <- `annotations`
      }
      if (!is.null(`mz`)) {
        if (!(is.numeric(`mz`) && length(`mz`) == 1)) {
          stop(paste("Error! Invalid data for `mz`. Must be a number:", `mz`))
        }
        self$`mz` <- `mz`
      }
      if (!is.null(`merged`)) {
        if (!(is.logical(`merged`) && length(`merged`) == 1)) {
          stop(paste("Error! Invalid data for `merged`. Must be a boolean:", `merged`))
        }
        self$`merged` <- `merged`
      }
      if (!is.null(`normalizationFactor`)) {
        if (!(is.numeric(`normalizationFactor`) && length(`normalizationFactor`) == 1)) {
          stop(paste("Error! Invalid data for `normalizationFactor`. Must be a number:", `normalizationFactor`))
        }
        self$`normalizationFactor` <- `normalizationFactor`
      }
      if (!is.null(`noiseLevel`)) {
        if (!(is.numeric(`noiseLevel`) && length(`noiseLevel`) == 1)) {
          stop(paste("Error! Invalid data for `noiseLevel`. Must be a number:", `noiseLevel`))
        }
        self$`noiseLevel` <- `noiseLevel`
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
    #' @return TraceExperimental as a base R list.
    #' @examples
    #' # convert array of TraceExperimental (x) to a data frame
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
    #' Convert TraceExperimental to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      TraceExperimentalObject <- list()
      if (!is.null(self$`id`)) {
        TraceExperimentalObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`sampleId`)) {
        TraceExperimentalObject[["sampleId"]] <-
          self$`sampleId`
      }
      if (!is.null(self$`sampleName`)) {
        TraceExperimentalObject[["sampleName"]] <-
          self$`sampleName`
      }
      if (!is.null(self$`label`)) {
        TraceExperimentalObject[["label"]] <-
          self$`label`
      }
      if (!is.null(self$`intensities`)) {
        TraceExperimentalObject[["intensities"]] <-
          self$`intensities`
      }
      if (!is.null(self$`annotations`)) {
        TraceExperimentalObject[["annotations"]] <-
          lapply(self$`annotations`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`mz`)) {
        TraceExperimentalObject[["mz"]] <-
          self$`mz`
      }
      if (!is.null(self$`merged`)) {
        TraceExperimentalObject[["merged"]] <-
          self$`merged`
      }
      if (!is.null(self$`normalizationFactor`)) {
        TraceExperimentalObject[["normalizationFactor"]] <-
          self$`normalizationFactor`
      }
      if (!is.null(self$`noiseLevel`)) {
        TraceExperimentalObject[["noiseLevel"]] <-
          self$`noiseLevel`
      }
      return(TraceExperimentalObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of TraceExperimental
    #'
    #' @param input_json the JSON input
    #' @return the instance of TraceExperimental
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`sampleId`)) {
        self$`sampleId` <- this_object$`sampleId`
      }
      if (!is.null(this_object$`sampleName`)) {
        self$`sampleName` <- this_object$`sampleName`
      }
      if (!is.null(this_object$`label`)) {
        self$`label` <- this_object$`label`
      }
      if (!is.null(this_object$`intensities`)) {
        self$`intensities` <- ApiClient$new()$deserializeObj(this_object$`intensities`, "array[numeric]", loadNamespace("Rsirius"))
      }
      if (!is.null(this_object$`annotations`)) {
        self$`annotations` <- ApiClient$new()$deserializeObj(this_object$`annotations`, "array[TraceAnnotationExperimental]", loadNamespace("Rsirius"))
      }
      if (!is.null(this_object$`mz`)) {
        self$`mz` <- this_object$`mz`
      }
      if (!is.null(this_object$`merged`)) {
        self$`merged` <- this_object$`merged`
      }
      if (!is.null(this_object$`normalizationFactor`)) {
        self$`normalizationFactor` <- this_object$`normalizationFactor`
      }
      if (!is.null(this_object$`noiseLevel`)) {
        self$`noiseLevel` <- this_object$`noiseLevel`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return TraceExperimental in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of TraceExperimental
    #'
    #' @param input_json the JSON input
    #' @return the instance of TraceExperimental
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`sampleId` <- this_object$`sampleId`
      self$`sampleName` <- this_object$`sampleName`
      self$`label` <- this_object$`label`
      self$`intensities` <- ApiClient$new()$deserializeObj(this_object$`intensities`, "array[numeric]", loadNamespace("Rsirius"))
      self$`annotations` <- ApiClient$new()$deserializeObj(this_object$`annotations`, "array[TraceAnnotationExperimental]", loadNamespace("Rsirius"))
      self$`mz` <- this_object$`mz`
      self$`merged` <- this_object$`merged`
      self$`normalizationFactor` <- this_object$`normalizationFactor`
      self$`noiseLevel` <- this_object$`noiseLevel`
      self
    },

    #' @description
    #' Validate JSON input with respect to TraceExperimental and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TraceExperimental
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
# TraceExperimental$unlock()
#
## Below is an example to define the print function
# TraceExperimental$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TraceExperimental$lock()

