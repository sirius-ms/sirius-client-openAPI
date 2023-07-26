#' Create a new LCMSFeatureSummaryQualityData
#'
#' @description
#' This quality information is available for LC-MS data and includes quality measures for  - the chromatographic peak  - isotope peaks  - detected adducts  - MS/MS peaks  This information is the same as provided in the LCMS-view in the GUI
#'
#' @docType class
#' @title LCMSFeatureSummaryQualityData
#' @description LCMSFeatureSummaryQualityData Class
#' @format An \code{R6Class} generator object
#' @field peakQualityResult  \link{LCMSQualityCheckResult} [optional]
#' @field isotopeQualityResult  \link{LCMSQualityCheckResult} [optional]
#' @field adductQualityResult  \link{LCMSQualityCheckResult} [optional]
#' @field ms2QualityResult  \link{LCMSQualityCheckResult} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
LCMSFeatureSummaryQualityData <- R6::R6Class(
  "LCMSFeatureSummaryQualityData",
  public = list(
    `peakQualityResult` = NULL,
    `isotopeQualityResult` = NULL,
    `adductQualityResult` = NULL,
    `ms2QualityResult` = NULL,
    #' Initialize a new LCMSFeatureSummaryQualityData class.
    #'
    #' @description
    #' Initialize a new LCMSFeatureSummaryQualityData class.
    #'
    #' @param peakQualityResult peakQualityResult
    #' @param isotopeQualityResult isotopeQualityResult
    #' @param adductQualityResult adductQualityResult
    #' @param ms2QualityResult ms2QualityResult
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`peakQualityResult` = NULL, `isotopeQualityResult` = NULL, `adductQualityResult` = NULL, `ms2QualityResult` = NULL, ...) {
      if (!is.null(`peakQualityResult`)) {
        stopifnot(R6::is.R6(`peakQualityResult`))
        self$`peakQualityResult` <- `peakQualityResult`
      }
      if (!is.null(`isotopeQualityResult`)) {
        stopifnot(R6::is.R6(`isotopeQualityResult`))
        self$`isotopeQualityResult` <- `isotopeQualityResult`
      }
      if (!is.null(`adductQualityResult`)) {
        stopifnot(R6::is.R6(`adductQualityResult`))
        self$`adductQualityResult` <- `adductQualityResult`
      }
      if (!is.null(`ms2QualityResult`)) {
        stopifnot(R6::is.R6(`ms2QualityResult`))
        self$`ms2QualityResult` <- `ms2QualityResult`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return LCMSFeatureSummaryQualityData in JSON format
    #' @export
    toJSON = function() {
      LCMSFeatureSummaryQualityDataObject <- list()
      if (!is.null(self$`peakQualityResult`)) {
        LCMSFeatureSummaryQualityDataObject[["peakQualityResult"]] <-
          self$`peakQualityResult`$toJSON()
      }
      if (!is.null(self$`isotopeQualityResult`)) {
        LCMSFeatureSummaryQualityDataObject[["isotopeQualityResult"]] <-
          self$`isotopeQualityResult`$toJSON()
      }
      if (!is.null(self$`adductQualityResult`)) {
        LCMSFeatureSummaryQualityDataObject[["adductQualityResult"]] <-
          self$`adductQualityResult`$toJSON()
      }
      if (!is.null(self$`ms2QualityResult`)) {
        LCMSFeatureSummaryQualityDataObject[["ms2QualityResult"]] <-
          self$`ms2QualityResult`$toJSON()
      }
      LCMSFeatureSummaryQualityDataObject
    },
    #' Deserialize JSON string into an instance of LCMSFeatureSummaryQualityData
    #'
    #' @description
    #' Deserialize JSON string into an instance of LCMSFeatureSummaryQualityData
    #'
    #' @param input_json the JSON input
    #' @return the instance of LCMSFeatureSummaryQualityData
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`peakQualityResult`)) {
        peakqualityresult_object <- LCMSQualityCheckResult$new()
        peakqualityresult_object$fromJSON(jsonlite::toJSON(this_object$peakQualityResult, auto_unbox = TRUE, digits = NA))
        self$`peakQualityResult` <- peakqualityresult_object
      }
      if (!is.null(this_object$`isotopeQualityResult`)) {
        isotopequalityresult_object <- LCMSQualityCheckResult$new()
        isotopequalityresult_object$fromJSON(jsonlite::toJSON(this_object$isotopeQualityResult, auto_unbox = TRUE, digits = NA))
        self$`isotopeQualityResult` <- isotopequalityresult_object
      }
      if (!is.null(this_object$`adductQualityResult`)) {
        adductqualityresult_object <- LCMSQualityCheckResult$new()
        adductqualityresult_object$fromJSON(jsonlite::toJSON(this_object$adductQualityResult, auto_unbox = TRUE, digits = NA))
        self$`adductQualityResult` <- adductqualityresult_object
      }
      if (!is.null(this_object$`ms2QualityResult`)) {
        ms2qualityresult_object <- LCMSQualityCheckResult$new()
        ms2qualityresult_object$fromJSON(jsonlite::toJSON(this_object$ms2QualityResult, auto_unbox = TRUE, digits = NA))
        self$`ms2QualityResult` <- ms2qualityresult_object
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return LCMSFeatureSummaryQualityData in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`peakQualityResult`)) {
          sprintf(
          '"peakQualityResult":
          %s
          ',
          jsonlite::toJSON(self$`peakQualityResult`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`isotopeQualityResult`)) {
          sprintf(
          '"isotopeQualityResult":
          %s
          ',
          jsonlite::toJSON(self$`isotopeQualityResult`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`adductQualityResult`)) {
          sprintf(
          '"adductQualityResult":
          %s
          ',
          jsonlite::toJSON(self$`adductQualityResult`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`ms2QualityResult`)) {
          sprintf(
          '"ms2QualityResult":
          %s
          ',
          jsonlite::toJSON(self$`ms2QualityResult`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of LCMSFeatureSummaryQualityData
    #'
    #' @description
    #' Deserialize JSON string into an instance of LCMSFeatureSummaryQualityData
    #'
    #' @param input_json the JSON input
    #' @return the instance of LCMSFeatureSummaryQualityData
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`peakQualityResult` <- LCMSQualityCheckResult$new()$fromJSON(jsonlite::toJSON(this_object$peakQualityResult, auto_unbox = TRUE, digits = NA))
      self$`isotopeQualityResult` <- LCMSQualityCheckResult$new()$fromJSON(jsonlite::toJSON(this_object$isotopeQualityResult, auto_unbox = TRUE, digits = NA))
      self$`adductQualityResult` <- LCMSQualityCheckResult$new()$fromJSON(jsonlite::toJSON(this_object$adductQualityResult, auto_unbox = TRUE, digits = NA))
      self$`ms2QualityResult` <- LCMSQualityCheckResult$new()$fromJSON(jsonlite::toJSON(this_object$ms2QualityResult, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to LCMSFeatureSummaryQualityData
    #'
    #' @description
    #' Validate JSON input with respect to LCMSFeatureSummaryQualityData and throw an exception if invalid
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
    #' @return String representation of LCMSFeatureSummaryQualityData
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
# LCMSFeatureSummaryQualityData$unlock()
#
## Below is an example to define the print function
# LCMSFeatureSummaryQualityData$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# LCMSFeatureSummaryQualityData$lock()

