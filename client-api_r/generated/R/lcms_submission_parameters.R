#' Create a new LcmsSubmissionParameters
#'
#' @description
#' LcmsSubmissionParameters Class
#'
#' @docType class
#' @title LcmsSubmissionParameters
#' @description LcmsSubmissionParameters Class
#' @format An \code{R6Class} generator object
#' @field alignLCMSRuns Specifies whether LC/MS runs should be aligned character [optional]
#' @field noiseIntensity Noise level under which all peaks are considered to be likely noise. A peak has to be at least 3x noise level  to be picked as feature. Peaks with MS/MS are still picked even though they might be below noise level.  If not specified, the noise intensity is detected automatically from data. We recommend to NOT specify  this parameter, as the automated detection is usually sufficient. numeric [optional]
#' @field traceMaxMassDeviation  \link{Deviation} [optional]
#' @field alignMaxMassDeviation  \link{Deviation} [optional]
#' @field alignMaxRetentionTimeDeviation Maximal allowed retention time error in seconds for aligning features. If not specified, this parameter is estimated from data. numeric [optional]
#' @field minSNR Minimum ratio between peak height and noise intensity for detecting features. By default, this value is 3. Features with good MS/MS are always picked independent of their intensity. For picking very low intensive features we recommend a min-snr of 2, but this will increase runtime and storage memory numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
LcmsSubmissionParameters <- R6::R6Class(
  "LcmsSubmissionParameters",
  public = list(
    `alignLCMSRuns` = NULL,
    `noiseIntensity` = NULL,
    `traceMaxMassDeviation` = NULL,
    `alignMaxMassDeviation` = NULL,
    `alignMaxRetentionTimeDeviation` = NULL,
    `minSNR` = NULL,

    #' @description
    #' Initialize a new LcmsSubmissionParameters class.
    #'
    #' @param alignLCMSRuns Specifies whether LC/MS runs should be aligned. Default to TRUE.
    #' @param noiseIntensity Noise level under which all peaks are considered to be likely noise. A peak has to be at least 3x noise level  to be picked as feature. Peaks with MS/MS are still picked even though they might be below noise level.  If not specified, the noise intensity is detected automatically from data. We recommend to NOT specify  this parameter, as the automated detection is usually sufficient.. Default to -1.
    #' @param traceMaxMassDeviation traceMaxMassDeviation
    #' @param alignMaxMassDeviation alignMaxMassDeviation
    #' @param alignMaxRetentionTimeDeviation Maximal allowed retention time error in seconds for aligning features. If not specified, this parameter is estimated from data.. Default to -1.
    #' @param minSNR Minimum ratio between peak height and noise intensity for detecting features. By default, this value is 3. Features with good MS/MS are always picked independent of their intensity. For picking very low intensive features we recommend a min-snr of 2, but this will increase runtime and storage memory. Default to 3.
    #' @param ... Other optional arguments.
    initialize = function(`alignLCMSRuns` = TRUE, `noiseIntensity` = -1, `traceMaxMassDeviation` = NULL, `alignMaxMassDeviation` = NULL, `alignMaxRetentionTimeDeviation` = -1, `minSNR` = 3, ...) {
      if (!is.null(`alignLCMSRuns`)) {
        if (!(is.logical(`alignLCMSRuns`) && length(`alignLCMSRuns`) == 1)) {
          stop(paste("Error! Invalid data for `alignLCMSRuns`. Must be a boolean:", `alignLCMSRuns`))
        }
        self$`alignLCMSRuns` <- `alignLCMSRuns`
      }
      if (!is.null(`noiseIntensity`)) {
        if (!(is.numeric(`noiseIntensity`) && length(`noiseIntensity`) == 1)) {
          stop(paste("Error! Invalid data for `noiseIntensity`. Must be a number:", `noiseIntensity`))
        }
        self$`noiseIntensity` <- `noiseIntensity`
      }
      if (!is.null(`traceMaxMassDeviation`)) {
        stopifnot(R6::is.R6(`traceMaxMassDeviation`))
        self$`traceMaxMassDeviation` <- `traceMaxMassDeviation`
      }
      if (!is.null(`alignMaxMassDeviation`)) {
        stopifnot(R6::is.R6(`alignMaxMassDeviation`))
        self$`alignMaxMassDeviation` <- `alignMaxMassDeviation`
      }
      if (!is.null(`alignMaxRetentionTimeDeviation`)) {
        if (!(is.numeric(`alignMaxRetentionTimeDeviation`) && length(`alignMaxRetentionTimeDeviation`) == 1)) {
          stop(paste("Error! Invalid data for `alignMaxRetentionTimeDeviation`. Must be a number:", `alignMaxRetentionTimeDeviation`))
        }
        self$`alignMaxRetentionTimeDeviation` <- `alignMaxRetentionTimeDeviation`
      }
      if (!is.null(`minSNR`)) {
        if (!(is.numeric(`minSNR`) && length(`minSNR`) == 1)) {
          stop(paste("Error! Invalid data for `minSNR`. Must be a number:", `minSNR`))
        }
        self$`minSNR` <- `minSNR`
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
    #' @return LcmsSubmissionParameters as a base R list.
    #' @examples
    #' # convert array of LcmsSubmissionParameters (x) to a data frame
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
    #' Convert LcmsSubmissionParameters to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      LcmsSubmissionParametersObject <- list()
      if (!is.null(self$`alignLCMSRuns`)) {
        LcmsSubmissionParametersObject[["alignLCMSRuns"]] <-
          self$`alignLCMSRuns`
      }
      if (!is.null(self$`noiseIntensity`)) {
        LcmsSubmissionParametersObject[["noiseIntensity"]] <-
          self$`noiseIntensity`
      }
      if (!is.null(self$`traceMaxMassDeviation`)) {
        LcmsSubmissionParametersObject[["traceMaxMassDeviation"]] <-
          self$`traceMaxMassDeviation`$toSimpleType()
      }
      if (!is.null(self$`alignMaxMassDeviation`)) {
        LcmsSubmissionParametersObject[["alignMaxMassDeviation"]] <-
          self$`alignMaxMassDeviation`$toSimpleType()
      }
      if (!is.null(self$`alignMaxRetentionTimeDeviation`)) {
        LcmsSubmissionParametersObject[["alignMaxRetentionTimeDeviation"]] <-
          self$`alignMaxRetentionTimeDeviation`
      }
      if (!is.null(self$`minSNR`)) {
        LcmsSubmissionParametersObject[["minSNR"]] <-
          self$`minSNR`
      }
      return(LcmsSubmissionParametersObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of LcmsSubmissionParameters
    #'
    #' @param input_json the JSON input
    #' @return the instance of LcmsSubmissionParameters
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`alignLCMSRuns`)) {
        self$`alignLCMSRuns` <- this_object$`alignLCMSRuns`
      }
      if (!is.null(this_object$`noiseIntensity`)) {
        self$`noiseIntensity` <- this_object$`noiseIntensity`
      }
      if (!is.null(this_object$`traceMaxMassDeviation`)) {
        `tracemaxmassdeviation_object` <- Deviation$new()
        `tracemaxmassdeviation_object`$fromJSON(jsonlite::toJSON(this_object$`traceMaxMassDeviation`, auto_unbox = TRUE, digits = NA, null = 'null'))
        self$`traceMaxMassDeviation` <- `tracemaxmassdeviation_object`
      }
      if (!is.null(this_object$`alignMaxMassDeviation`)) {
        `alignmaxmassdeviation_object` <- Deviation$new()
        `alignmaxmassdeviation_object`$fromJSON(jsonlite::toJSON(this_object$`alignMaxMassDeviation`, auto_unbox = TRUE, digits = NA, null = 'null'))
        self$`alignMaxMassDeviation` <- `alignmaxmassdeviation_object`
      }
      if (!is.null(this_object$`alignMaxRetentionTimeDeviation`)) {
        self$`alignMaxRetentionTimeDeviation` <- this_object$`alignMaxRetentionTimeDeviation`
      }
      if (!is.null(this_object$`minSNR`)) {
        self$`minSNR` <- this_object$`minSNR`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return LcmsSubmissionParameters in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of LcmsSubmissionParameters
    #'
    #' @param input_json the JSON input
    #' @return the instance of LcmsSubmissionParameters
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`alignLCMSRuns` <- this_object$`alignLCMSRuns`
      self$`noiseIntensity` <- this_object$`noiseIntensity`
      self$`traceMaxMassDeviation` <- Deviation$new()$fromJSON(jsonlite::toJSON(this_object$`traceMaxMassDeviation`, auto_unbox = TRUE, digits = NA, null = 'null'))
      self$`alignMaxMassDeviation` <- Deviation$new()$fromJSON(jsonlite::toJSON(this_object$`alignMaxMassDeviation`, auto_unbox = TRUE, digits = NA, null = 'null'))
      self$`alignMaxRetentionTimeDeviation` <- this_object$`alignMaxRetentionTimeDeviation`
      self$`minSNR` <- this_object$`minSNR`
      self
    },

    #' @description
    #' Validate JSON input with respect to LcmsSubmissionParameters and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of LcmsSubmissionParameters
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
# LcmsSubmissionParameters$unlock()
#
## Below is an example to define the print function
# LcmsSubmissionParameters$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# LcmsSubmissionParameters$lock()

