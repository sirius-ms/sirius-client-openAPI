#' Create a new FingerprintPrediction
#'
#' @description
#' User/developer friendly parameter subset for the CSI:FingerID Fingerprint tool  Needs results from Formula/SIRIUS Tool
#'
#' @docType class
#' @title FingerprintPrediction
#' @description FingerprintPrediction Class
#' @format An \code{R6Class} generator object
#' @field enabled tags whether the tool is enabled character [optional]
#' @field useScoreThreshold If true, an adaptive soft threshold will be applied to only compute Fingerprints for promising formula candidates  Enabling is highly recommended. character [optional]
#' @field alwaysPredictHighRefMatches If true Fingerprint/Classes/Structures will be predicted for formulas candidates with  reference spectrum similarity > Sirius.minReferenceMatchScoreToInject will be predicted no matter which  score threshold rules apply.  If NULL default value will be used. character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FingerprintPrediction <- R6::R6Class(
  "FingerprintPrediction",
  public = list(
    `enabled` = NULL,
    `useScoreThreshold` = NULL,
    `alwaysPredictHighRefMatches` = NULL,
    #' Initialize a new FingerprintPrediction class.
    #'
    #' @description
    #' Initialize a new FingerprintPrediction class.
    #'
    #' @param enabled tags whether the tool is enabled
    #' @param useScoreThreshold If true, an adaptive soft threshold will be applied to only compute Fingerprints for promising formula candidates  Enabling is highly recommended.
    #' @param alwaysPredictHighRefMatches If true Fingerprint/Classes/Structures will be predicted for formulas candidates with  reference spectrum similarity > Sirius.minReferenceMatchScoreToInject will be predicted no matter which  score threshold rules apply.  If NULL default value will be used.
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`enabled` = NULL, `useScoreThreshold` = NULL, `alwaysPredictHighRefMatches` = NULL, ...) {
      if (!is.null(`enabled`)) {
        if (!(is.logical(`enabled`) && length(`enabled`) == 1)) {
          stop(paste("Error! Invalid data for `enabled`. Must be a boolean:", `enabled`))
        }
        self$`enabled` <- `enabled`
      }
      if (!is.null(`useScoreThreshold`)) {
        if (!(is.logical(`useScoreThreshold`) && length(`useScoreThreshold`) == 1)) {
          stop(paste("Error! Invalid data for `useScoreThreshold`. Must be a boolean:", `useScoreThreshold`))
        }
        self$`useScoreThreshold` <- `useScoreThreshold`
      }
      if (!is.null(`alwaysPredictHighRefMatches`)) {
        if (!(is.logical(`alwaysPredictHighRefMatches`) && length(`alwaysPredictHighRefMatches`) == 1)) {
          stop(paste("Error! Invalid data for `alwaysPredictHighRefMatches`. Must be a boolean:", `alwaysPredictHighRefMatches`))
        }
        self$`alwaysPredictHighRefMatches` <- `alwaysPredictHighRefMatches`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return FingerprintPrediction in JSON format
    #' @export
    toJSON = function() {
      FingerprintPredictionObject <- list()
      if (!is.null(self$`enabled`)) {
        FingerprintPredictionObject[["enabled"]] <-
          self$`enabled`
      }
      if (!is.null(self$`useScoreThreshold`)) {
        FingerprintPredictionObject[["useScoreThreshold"]] <-
          self$`useScoreThreshold`
      }
      if (!is.null(self$`alwaysPredictHighRefMatches`)) {
        FingerprintPredictionObject[["alwaysPredictHighRefMatches"]] <-
          self$`alwaysPredictHighRefMatches`
      }
      FingerprintPredictionObject
    },
    #' Deserialize JSON string into an instance of FingerprintPrediction
    #'
    #' @description
    #' Deserialize JSON string into an instance of FingerprintPrediction
    #'
    #' @param input_json the JSON input
    #' @return the instance of FingerprintPrediction
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`enabled`)) {
        self$`enabled` <- this_object$`enabled`
      }
      if (!is.null(this_object$`useScoreThreshold`)) {
        self$`useScoreThreshold` <- this_object$`useScoreThreshold`
      }
      if (!is.null(this_object$`alwaysPredictHighRefMatches`)) {
        self$`alwaysPredictHighRefMatches` <- this_object$`alwaysPredictHighRefMatches`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return FingerprintPrediction in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`enabled`)) {
          sprintf(
          '"enabled":
            %s
                    ',
          tolower(self$`enabled`)
          )
        },
        if (!is.null(self$`useScoreThreshold`)) {
          sprintf(
          '"useScoreThreshold":
            %s
                    ',
          tolower(self$`useScoreThreshold`)
          )
        },
        if (!is.null(self$`alwaysPredictHighRefMatches`)) {
          sprintf(
          '"alwaysPredictHighRefMatches":
            %s
                    ',
          tolower(self$`alwaysPredictHighRefMatches`)
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
    #' Deserialize JSON string into an instance of FingerprintPrediction
    #'
    #' @description
    #' Deserialize JSON string into an instance of FingerprintPrediction
    #'
    #' @param input_json the JSON input
    #' @return the instance of FingerprintPrediction
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`enabled` <- this_object$`enabled`
      self$`useScoreThreshold` <- this_object$`useScoreThreshold`
      self$`alwaysPredictHighRefMatches` <- this_object$`alwaysPredictHighRefMatches`
      self
    },
    #' Validate JSON input with respect to FingerprintPrediction
    #'
    #' @description
    #' Validate JSON input with respect to FingerprintPrediction and throw an exception if invalid
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
    #' @return String representation of FingerprintPrediction
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
# FingerprintPrediction$unlock()
#
## Below is an example to define the print function
# FingerprintPrediction$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# FingerprintPrediction$lock()

