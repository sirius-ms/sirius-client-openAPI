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

    #' @description
    #' Initialize a new FingerprintPrediction class.
    #'
    #' @param enabled tags whether the tool is enabled
    #' @param useScoreThreshold If true, an adaptive soft threshold will be applied to only compute Fingerprints for promising formula candidates  Enabling is highly recommended.
    #' @param alwaysPredictHighRefMatches If true Fingerprint/Classes/Structures will be predicted for formulas candidates with  reference spectrum similarity > Sirius.minReferenceMatchScoreToInject will be predicted no matter which  score threshold rules apply.  If NULL default value will be used.
    #' @param ... Other optional arguments.
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
    #' @return FingerprintPrediction as a base R list.
    #' @examples
    #' # convert array of FingerprintPrediction (x) to a data frame
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
    #' Convert FingerprintPrediction to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
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
      return(FingerprintPredictionObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of FingerprintPrediction
    #'
    #' @param input_json the JSON input
    #' @return the instance of FingerprintPrediction
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

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return FingerprintPrediction in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of FingerprintPrediction
    #'
    #' @param input_json the JSON input
    #' @return the instance of FingerprintPrediction
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`enabled` <- this_object$`enabled`
      self$`useScoreThreshold` <- this_object$`useScoreThreshold`
      self$`alwaysPredictHighRefMatches` <- this_object$`alwaysPredictHighRefMatches`
      self
    },

    #' @description
    #' Validate JSON input with respect to FingerprintPrediction and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of FingerprintPrediction
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
# FingerprintPrediction$unlock()
#
## Below is an example to define the print function
# FingerprintPrediction$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# FingerprintPrediction$lock()

