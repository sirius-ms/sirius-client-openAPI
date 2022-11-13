#' Create a new ResultOverview
#'
#' @description
#' Results that are available for a {@link FormulaResultContainer FormulaResultContainer} represented as boolean or numeric score (if available).  NULL scores indicate that the corresponding result is not available.
#'
#' @docType class
#' @title ResultOverview
#' @description ResultOverview Class
#' @format An \code{R6Class} generator object
#' @field siriusScore Sirius Score (isotope + tree score) of the formula candidate.  If NULL result is not available numeric [optional]
#' @field zodiacScore Zodiac Score of the formula candidate.  If NULL result is not available numeric [optional]
#' @field topCSIScore CSI:FingerID Score of the top ranking structure candidate of the structure database search  performed for this formula candidate.  If NULL structure database result is not available or the structure candidate list is empty. numeric [optional]
#' @field confidenceScore Confidence Score of the  IF NULL structure database result not available a structure candidate hit of another formula candidate is  the top ranking structure candidate. numeric [optional]
#' @field canopusResult True if Canopus compound class prediction results are available. character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ResultOverview <- R6::R6Class(
  "ResultOverview",
  public = list(
    `siriusScore` = NULL,
    `zodiacScore` = NULL,
    `topCSIScore` = NULL,
    `confidenceScore` = NULL,
    `canopusResult` = NULL,
    #' Initialize a new ResultOverview class.
    #'
    #' @description
    #' Initialize a new ResultOverview class.
    #'
    #' @param siriusScore Sirius Score (isotope + tree score) of the formula candidate.  If NULL result is not available
    #' @param zodiacScore Zodiac Score of the formula candidate.  If NULL result is not available
    #' @param topCSIScore CSI:FingerID Score of the top ranking structure candidate of the structure database search  performed for this formula candidate.  If NULL structure database result is not available or the structure candidate list is empty.
    #' @param confidenceScore Confidence Score of the  IF NULL structure database result not available a structure candidate hit of another formula candidate is  the top ranking structure candidate.
    #' @param canopusResult True if Canopus compound class prediction results are available.
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`siriusScore` = NULL, `zodiacScore` = NULL, `topCSIScore` = NULL, `confidenceScore` = NULL, `canopusResult` = NULL, ...) {
      if (!is.null(`siriusScore`)) {
        if (!(is.numeric(`siriusScore`) && length(`siriusScore`) == 1)) {
          stop(paste("Error! Invalid data for `siriusScore`. Must be a number:", `siriusScore`))
        }
        self$`siriusScore` <- `siriusScore`
      }
      if (!is.null(`zodiacScore`)) {
        if (!(is.numeric(`zodiacScore`) && length(`zodiacScore`) == 1)) {
          stop(paste("Error! Invalid data for `zodiacScore`. Must be a number:", `zodiacScore`))
        }
        self$`zodiacScore` <- `zodiacScore`
      }
      if (!is.null(`topCSIScore`)) {
        if (!(is.numeric(`topCSIScore`) && length(`topCSIScore`) == 1)) {
          stop(paste("Error! Invalid data for `topCSIScore`. Must be a number:", `topCSIScore`))
        }
        self$`topCSIScore` <- `topCSIScore`
      }
      if (!is.null(`confidenceScore`)) {
        if (!(is.numeric(`confidenceScore`) && length(`confidenceScore`) == 1)) {
          stop(paste("Error! Invalid data for `confidenceScore`. Must be a number:", `confidenceScore`))
        }
        self$`confidenceScore` <- `confidenceScore`
      }
      if (!is.null(`canopusResult`)) {
        if (!(is.logical(`canopusResult`) && length(`canopusResult`) == 1)) {
          stop(paste("Error! Invalid data for `canopusResult`. Must be a boolean:", `canopusResult`))
        }
        self$`canopusResult` <- `canopusResult`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ResultOverview in JSON format
    #' @export
    toJSON = function() {
      ResultOverviewObject <- list()
      if (!is.null(self$`siriusScore`)) {
        ResultOverviewObject[["siriusScore"]] <-
          self$`siriusScore`
      }
      if (!is.null(self$`zodiacScore`)) {
        ResultOverviewObject[["zodiacScore"]] <-
          self$`zodiacScore`
      }
      if (!is.null(self$`topCSIScore`)) {
        ResultOverviewObject[["topCSIScore"]] <-
          self$`topCSIScore`
      }
      if (!is.null(self$`confidenceScore`)) {
        ResultOverviewObject[["confidenceScore"]] <-
          self$`confidenceScore`
      }
      if (!is.null(self$`canopusResult`)) {
        ResultOverviewObject[["canopusResult"]] <-
          self$`canopusResult`
      }
      ResultOverviewObject
    },
    #' Deserialize JSON string into an instance of ResultOverview
    #'
    #' @description
    #' Deserialize JSON string into an instance of ResultOverview
    #'
    #' @param input_json the JSON input
    #' @return the instance of ResultOverview
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`siriusScore`)) {
        self$`siriusScore` <- this_object$`siriusScore`
      }
      if (!is.null(this_object$`zodiacScore`)) {
        self$`zodiacScore` <- this_object$`zodiacScore`
      }
      if (!is.null(this_object$`topCSIScore`)) {
        self$`topCSIScore` <- this_object$`topCSIScore`
      }
      if (!is.null(this_object$`confidenceScore`)) {
        self$`confidenceScore` <- this_object$`confidenceScore`
      }
      if (!is.null(this_object$`canopusResult`)) {
        self$`canopusResult` <- this_object$`canopusResult`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ResultOverview in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`siriusScore`)) {
          sprintf(
          '"siriusScore":
            %d
                    ',
          self$`siriusScore`
          )
        },
        if (!is.null(self$`zodiacScore`)) {
          sprintf(
          '"zodiacScore":
            %d
                    ',
          self$`zodiacScore`
          )
        },
        if (!is.null(self$`topCSIScore`)) {
          sprintf(
          '"topCSIScore":
            %d
                    ',
          self$`topCSIScore`
          )
        },
        if (!is.null(self$`confidenceScore`)) {
          sprintf(
          '"confidenceScore":
            %d
                    ',
          self$`confidenceScore`
          )
        },
        if (!is.null(self$`canopusResult`)) {
          sprintf(
          '"canopusResult":
            %s
                    ',
          tolower(self$`canopusResult`)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of ResultOverview
    #'
    #' @description
    #' Deserialize JSON string into an instance of ResultOverview
    #'
    #' @param input_json the JSON input
    #' @return the instance of ResultOverview
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`siriusScore` <- this_object$`siriusScore`
      self$`zodiacScore` <- this_object$`zodiacScore`
      self$`topCSIScore` <- this_object$`topCSIScore`
      self$`confidenceScore` <- this_object$`confidenceScore`
      self$`canopusResult` <- this_object$`canopusResult`
      self
    },
    #' Validate JSON input with respect to ResultOverview
    #'
    #' @description
    #' Validate JSON input with respect to ResultOverview and throw an exception if invalid
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
    #' @return String representation of ResultOverview
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
# ResultOverview$unlock()
#
## Below is an example to define the print fnuction
# ResultOverview$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ResultOverview$lock()

