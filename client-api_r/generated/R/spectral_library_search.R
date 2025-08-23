#' Create a new SpectralLibrarySearch
#'
#' @description
#' User/developer friendly parameter subset for the Spectral library search tool.
#'
#' @docType class
#' @title SpectralLibrarySearch
#' @description SpectralLibrarySearch Class
#' @format An \code{R6Class} generator object
#' @field enabled tags whether the tool is enabled character [optional]
#' @field spectraSearchDBs Structure Databases with Reference spectra to search in.  <p>  Defaults to BIO + Custom Databases. Possible values are available to Database API. list(character) [optional]
#' @field precursorDeviationPpm Maximum allowed mass deviation in ppm for matching the precursor. If not specified, the same value as for the peaks is used. numeric [optional]
#' @field minSimilarity Minimal spectral similarity of a spectral match to be considered a hit. numeric [optional]
#' @field minNumOfPeaks Minimal number of matching peaks of a spectral match to be considered a hit. integer [optional]
#' @field enableAnalogueSearch Enable analogue search in addition to the identity spectral library search character [optional]
#' @field minSimilarityAnalogue Minimal spectral similarity of a spectral match to be considered an analogue hit. numeric [optional]
#' @field minNumOfPeaksAnalogue Minimal number of matching peaks of a spectral match to be considered an analogue hit. integer [optional]
#' @field scoring NO LONGER SUPPORTED (IGNORED)  Specify scoring method to match spectra  INTENSITY: Intensity weighted. Each peak matches at most one peak in the other spectrum.  GAUSSIAN: Treat peaks as (un-normalized) Gaussians and score overlapping areas of PDFs. Each peak might score against multiple peaks in the other spectrum.  MODIFIED_COSINE:  This algorithm requires that there is at most one pair of peaks (u,v) where the m/z of u and v are within the allowed mass tolerance. To be used for analog search with different precursor masses. character [optional]
#' @field peakDeviationPpm NO LONGER SUPPORTED (IGNORED)  Maximum allowed mass deviation in ppm for matching peaks. numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SpectralLibrarySearch <- R6::R6Class(
  "SpectralLibrarySearch",
  public = list(
    `enabled` = NULL,
    `spectraSearchDBs` = NULL,
    `precursorDeviationPpm` = NULL,
    `minSimilarity` = NULL,
    `minNumOfPeaks` = NULL,
    `enableAnalogueSearch` = NULL,
    `minSimilarityAnalogue` = NULL,
    `minNumOfPeaksAnalogue` = NULL,
    `scoring` = NULL,
    `peakDeviationPpm` = NULL,

    #' @description
    #' Initialize a new SpectralLibrarySearch class.
    #'
    #' @param enabled tags whether the tool is enabled
    #' @param spectraSearchDBs Structure Databases with Reference spectra to search in.  <p>  Defaults to BIO + Custom Databases. Possible values are available to Database API.
    #' @param precursorDeviationPpm Maximum allowed mass deviation in ppm for matching the precursor. If not specified, the same value as for the peaks is used.
    #' @param minSimilarity Minimal spectral similarity of a spectral match to be considered a hit.
    #' @param minNumOfPeaks Minimal number of matching peaks of a spectral match to be considered a hit.
    #' @param enableAnalogueSearch Enable analogue search in addition to the identity spectral library search
    #' @param minSimilarityAnalogue Minimal spectral similarity of a spectral match to be considered an analogue hit.
    #' @param minNumOfPeaksAnalogue Minimal number of matching peaks of a spectral match to be considered an analogue hit.
    #' @param scoring NO LONGER SUPPORTED (IGNORED)  Specify scoring method to match spectra  INTENSITY: Intensity weighted. Each peak matches at most one peak in the other spectrum.  GAUSSIAN: Treat peaks as (un-normalized) Gaussians and score overlapping areas of PDFs. Each peak might score against multiple peaks in the other spectrum.  MODIFIED_COSINE:  This algorithm requires that there is at most one pair of peaks (u,v) where the m/z of u and v are within the allowed mass tolerance. To be used for analog search with different precursor masses.
    #' @param peakDeviationPpm NO LONGER SUPPORTED (IGNORED)  Maximum allowed mass deviation in ppm for matching peaks.
    #' @param ... Other optional arguments.
    initialize = function(`enabled` = NULL, `spectraSearchDBs` = NULL, `precursorDeviationPpm` = NULL, `minSimilarity` = NULL, `minNumOfPeaks` = NULL, `enableAnalogueSearch` = NULL, `minSimilarityAnalogue` = NULL, `minNumOfPeaksAnalogue` = NULL, `scoring` = NULL, `peakDeviationPpm` = NULL, ...) {
      if (!is.null(`enabled`)) {
        if (!(is.logical(`enabled`) && length(`enabled`) == 1)) {
          stop(paste("Error! Invalid data for `enabled`. Must be a boolean:", `enabled`))
        }
        self$`enabled` <- `enabled`
      }
      if (!is.null(`spectraSearchDBs`)) {
        stopifnot(is.vector(`spectraSearchDBs`), length(`spectraSearchDBs`) != 0)
        sapply(`spectraSearchDBs`, function(x) stopifnot(is.character(x)))
        self$`spectraSearchDBs` <- `spectraSearchDBs`
      }
      if (!is.null(`precursorDeviationPpm`)) {
        if (!(is.numeric(`precursorDeviationPpm`) && length(`precursorDeviationPpm`) == 1)) {
          stop(paste("Error! Invalid data for `precursorDeviationPpm`. Must be a number:", `precursorDeviationPpm`))
        }
        self$`precursorDeviationPpm` <- `precursorDeviationPpm`
      }
      if (!is.null(`minSimilarity`)) {
        if (!(is.numeric(`minSimilarity`) && length(`minSimilarity`) == 1)) {
          stop(paste("Error! Invalid data for `minSimilarity`. Must be a number:", `minSimilarity`))
        }
        self$`minSimilarity` <- `minSimilarity`
      }
      if (!is.null(`minNumOfPeaks`)) {
        if (!(is.numeric(`minNumOfPeaks`) && length(`minNumOfPeaks`) == 1)) {
          stop(paste("Error! Invalid data for `minNumOfPeaks`. Must be an integer:", `minNumOfPeaks`))
        }
        self$`minNumOfPeaks` <- `minNumOfPeaks`
      }
      if (!is.null(`enableAnalogueSearch`)) {
        if (!(is.logical(`enableAnalogueSearch`) && length(`enableAnalogueSearch`) == 1)) {
          stop(paste("Error! Invalid data for `enableAnalogueSearch`. Must be a boolean:", `enableAnalogueSearch`))
        }
        self$`enableAnalogueSearch` <- `enableAnalogueSearch`
      }
      if (!is.null(`minSimilarityAnalogue`)) {
        if (!(is.numeric(`minSimilarityAnalogue`) && length(`minSimilarityAnalogue`) == 1)) {
          stop(paste("Error! Invalid data for `minSimilarityAnalogue`. Must be a number:", `minSimilarityAnalogue`))
        }
        self$`minSimilarityAnalogue` <- `minSimilarityAnalogue`
      }
      if (!is.null(`minNumOfPeaksAnalogue`)) {
        if (!(is.numeric(`minNumOfPeaksAnalogue`) && length(`minNumOfPeaksAnalogue`) == 1)) {
          stop(paste("Error! Invalid data for `minNumOfPeaksAnalogue`. Must be an integer:", `minNumOfPeaksAnalogue`))
        }
        self$`minNumOfPeaksAnalogue` <- `minNumOfPeaksAnalogue`
      }
      if (!is.null(`scoring`)) {
        if (!(`scoring` %in% c("INTENSITY", "GAUSSIAN", "MODIFIED_COSINE", "FAST_COSINE"))) {
          stop(paste("Error! \"", `scoring`, "\" cannot be assigned to `scoring`. Must be \"INTENSITY\", \"GAUSSIAN\", \"MODIFIED_COSINE\", \"FAST_COSINE\".", sep = ""))
        }
        if (!(is.character(`scoring`) && length(`scoring`) == 1)) {
          stop(paste("Error! Invalid data for `scoring`. Must be a string:", `scoring`))
        }
        self$`scoring` <- `scoring`
      }
      if (!is.null(`peakDeviationPpm`)) {
        if (!(is.numeric(`peakDeviationPpm`) && length(`peakDeviationPpm`) == 1)) {
          stop(paste("Error! Invalid data for `peakDeviationPpm`. Must be a number:", `peakDeviationPpm`))
        }
        self$`peakDeviationPpm` <- `peakDeviationPpm`
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
    #' @return SpectralLibrarySearch as a base R list.
    #' @examples
    #' # convert array of SpectralLibrarySearch (x) to a data frame
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
    #' Convert SpectralLibrarySearch to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SpectralLibrarySearchObject <- list()
      if (!is.null(self$`enabled`)) {
        SpectralLibrarySearchObject[["enabled"]] <-
          self$`enabled`
      }
      if (!is.null(self$`spectraSearchDBs`)) {
        SpectralLibrarySearchObject[["spectraSearchDBs"]] <-
          self$`spectraSearchDBs`
      }
      if (!is.null(self$`precursorDeviationPpm`)) {
        SpectralLibrarySearchObject[["precursorDeviationPpm"]] <-
          self$`precursorDeviationPpm`
      }
      if (!is.null(self$`minSimilarity`)) {
        SpectralLibrarySearchObject[["minSimilarity"]] <-
          self$`minSimilarity`
      }
      if (!is.null(self$`minNumOfPeaks`)) {
        SpectralLibrarySearchObject[["minNumOfPeaks"]] <-
          self$`minNumOfPeaks`
      }
      if (!is.null(self$`enableAnalogueSearch`)) {
        SpectralLibrarySearchObject[["enableAnalogueSearch"]] <-
          self$`enableAnalogueSearch`
      }
      if (!is.null(self$`minSimilarityAnalogue`)) {
        SpectralLibrarySearchObject[["minSimilarityAnalogue"]] <-
          self$`minSimilarityAnalogue`
      }
      if (!is.null(self$`minNumOfPeaksAnalogue`)) {
        SpectralLibrarySearchObject[["minNumOfPeaksAnalogue"]] <-
          self$`minNumOfPeaksAnalogue`
      }
      if (!is.null(self$`scoring`)) {
        SpectralLibrarySearchObject[["scoring"]] <-
          self$`scoring`
      }
      if (!is.null(self$`peakDeviationPpm`)) {
        SpectralLibrarySearchObject[["peakDeviationPpm"]] <-
          self$`peakDeviationPpm`
      }
      return(SpectralLibrarySearchObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of SpectralLibrarySearch
    #'
    #' @param input_json the JSON input
    #' @return the instance of SpectralLibrarySearch
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`enabled`)) {
        self$`enabled` <- this_object$`enabled`
      }
      if (!is.null(this_object$`spectraSearchDBs`)) {
        self$`spectraSearchDBs` <- ApiClient$new()$deserializeObj(this_object$`spectraSearchDBs`, "array[character]", loadNamespace("Rsirius"))
      }
      if (!is.null(this_object$`precursorDeviationPpm`)) {
        self$`precursorDeviationPpm` <- this_object$`precursorDeviationPpm`
      }
      if (!is.null(this_object$`minSimilarity`)) {
        self$`minSimilarity` <- this_object$`minSimilarity`
      }
      if (!is.null(this_object$`minNumOfPeaks`)) {
        self$`minNumOfPeaks` <- this_object$`minNumOfPeaks`
      }
      if (!is.null(this_object$`enableAnalogueSearch`)) {
        self$`enableAnalogueSearch` <- this_object$`enableAnalogueSearch`
      }
      if (!is.null(this_object$`minSimilarityAnalogue`)) {
        self$`minSimilarityAnalogue` <- this_object$`minSimilarityAnalogue`
      }
      if (!is.null(this_object$`minNumOfPeaksAnalogue`)) {
        self$`minNumOfPeaksAnalogue` <- this_object$`minNumOfPeaksAnalogue`
      }
      if (!is.null(this_object$`scoring`)) {
        if (!is.null(this_object$`scoring`) && !(this_object$`scoring` %in% c("INTENSITY", "GAUSSIAN", "MODIFIED_COSINE", "FAST_COSINE"))) {
          stop(paste("Error! \"", this_object$`scoring`, "\" cannot be assigned to `scoring`. Must be \"INTENSITY\", \"GAUSSIAN\", \"MODIFIED_COSINE\", \"FAST_COSINE\".", sep = ""))
        }
        self$`scoring` <- this_object$`scoring`
      }
      if (!is.null(this_object$`peakDeviationPpm`)) {
        self$`peakDeviationPpm` <- this_object$`peakDeviationPpm`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SpectralLibrarySearch in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SpectralLibrarySearch
    #'
    #' @param input_json the JSON input
    #' @return the instance of SpectralLibrarySearch
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`enabled` <- this_object$`enabled`
      self$`spectraSearchDBs` <- ApiClient$new()$deserializeObj(this_object$`spectraSearchDBs`, "array[character]", loadNamespace("Rsirius"))
      self$`precursorDeviationPpm` <- this_object$`precursorDeviationPpm`
      self$`minSimilarity` <- this_object$`minSimilarity`
      self$`minNumOfPeaks` <- this_object$`minNumOfPeaks`
      self$`enableAnalogueSearch` <- this_object$`enableAnalogueSearch`
      self$`minSimilarityAnalogue` <- this_object$`minSimilarityAnalogue`
      self$`minNumOfPeaksAnalogue` <- this_object$`minNumOfPeaksAnalogue`
      if (!is.null(this_object$`scoring`) && !(this_object$`scoring` %in% c("INTENSITY", "GAUSSIAN", "MODIFIED_COSINE", "FAST_COSINE"))) {
        stop(paste("Error! \"", this_object$`scoring`, "\" cannot be assigned to `scoring`. Must be \"INTENSITY\", \"GAUSSIAN\", \"MODIFIED_COSINE\", \"FAST_COSINE\".", sep = ""))
      }
      self$`scoring` <- this_object$`scoring`
      self$`peakDeviationPpm` <- this_object$`peakDeviationPpm`
      self
    },

    #' @description
    #' Validate JSON input with respect to SpectralLibrarySearch and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SpectralLibrarySearch
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
# SpectralLibrarySearch$unlock()
#
## Below is an example to define the print function
# SpectralLibrarySearch$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SpectralLibrarySearch$lock()

