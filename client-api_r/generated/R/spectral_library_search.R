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
#' @field peakDeviationPpm Maximum allowed mass deviation in ppm for matching peaks. numeric [optional]
#' @field precursorDeviationPpm Maximum allowed mass deviation in ppm for matching the precursor. If not specified, the same value as for the peaks is used. numeric [optional]
#' @field scoring Specify scoring method to match spectra  INTENSITY: Intensity weighted. Each peak matches at most one peak in the other spectrum.  GAUSSIAN: Treat peaks as (un-normalized) Gaussians and score overlapping areas of PDFs. Each peak might score against multiple peaks in the other spectrum.  MODIFIED_COSINE:  This algorithm requires that there is at most one pair of peaks (u,v) where the m/z of u and v are within the allowed mass tolerance. To be used for analog search with different precursor masses. character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SpectralLibrarySearch <- R6::R6Class(
  "SpectralLibrarySearch",
  public = list(
    `enabled` = NULL,
    `spectraSearchDBs` = NULL,
    `peakDeviationPpm` = NULL,
    `precursorDeviationPpm` = NULL,
    `scoring` = NULL,

    #' @description
    #' Initialize a new SpectralLibrarySearch class.
    #'
    #' @param enabled tags whether the tool is enabled
    #' @param spectraSearchDBs Structure Databases with Reference spectra to search in.  <p>  Defaults to BIO + Custom Databases. Possible values are available to Database API.
    #' @param peakDeviationPpm Maximum allowed mass deviation in ppm for matching peaks.
    #' @param precursorDeviationPpm Maximum allowed mass deviation in ppm for matching the precursor. If not specified, the same value as for the peaks is used.
    #' @param scoring Specify scoring method to match spectra  INTENSITY: Intensity weighted. Each peak matches at most one peak in the other spectrum.  GAUSSIAN: Treat peaks as (un-normalized) Gaussians and score overlapping areas of PDFs. Each peak might score against multiple peaks in the other spectrum.  MODIFIED_COSINE:  This algorithm requires that there is at most one pair of peaks (u,v) where the m/z of u and v are within the allowed mass tolerance. To be used for analog search with different precursor masses.
    #' @param ... Other optional arguments.
    initialize = function(`enabled` = NULL, `spectraSearchDBs` = NULL, `peakDeviationPpm` = NULL, `precursorDeviationPpm` = NULL, `scoring` = NULL, ...) {
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
      if (!is.null(`peakDeviationPpm`)) {
        if (!(is.numeric(`peakDeviationPpm`) && length(`peakDeviationPpm`) == 1)) {
          stop(paste("Error! Invalid data for `peakDeviationPpm`. Must be a number:", `peakDeviationPpm`))
        }
        self$`peakDeviationPpm` <- `peakDeviationPpm`
      }
      if (!is.null(`precursorDeviationPpm`)) {
        if (!(is.numeric(`precursorDeviationPpm`) && length(`precursorDeviationPpm`) == 1)) {
          stop(paste("Error! Invalid data for `precursorDeviationPpm`. Must be a number:", `precursorDeviationPpm`))
        }
        self$`precursorDeviationPpm` <- `precursorDeviationPpm`
      }
      if (!is.null(`scoring`)) {
        if (!(`scoring` %in% c("INTENSITY", "GAUSSIAN", "MODIFIED_COSINE"))) {
          stop(paste("Error! \"", `scoring`, "\" cannot be assigned to `scoring`. Must be \"INTENSITY\", \"GAUSSIAN\", \"MODIFIED_COSINE\".", sep = ""))
        }
        if (!(is.character(`scoring`) && length(`scoring`) == 1)) {
          stop(paste("Error! Invalid data for `scoring`. Must be a string:", `scoring`))
        }
        self$`scoring` <- `scoring`
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
      if (!is.null(self$`peakDeviationPpm`)) {
        SpectralLibrarySearchObject[["peakDeviationPpm"]] <-
          self$`peakDeviationPpm`
      }
      if (!is.null(self$`precursorDeviationPpm`)) {
        SpectralLibrarySearchObject[["precursorDeviationPpm"]] <-
          self$`precursorDeviationPpm`
      }
      if (!is.null(self$`scoring`)) {
        SpectralLibrarySearchObject[["scoring"]] <-
          self$`scoring`
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
      if (!is.null(this_object$`peakDeviationPpm`)) {
        self$`peakDeviationPpm` <- this_object$`peakDeviationPpm`
      }
      if (!is.null(this_object$`precursorDeviationPpm`)) {
        self$`precursorDeviationPpm` <- this_object$`precursorDeviationPpm`
      }
      if (!is.null(this_object$`scoring`)) {
        if (!is.null(this_object$`scoring`) && !(this_object$`scoring` %in% c("INTENSITY", "GAUSSIAN", "MODIFIED_COSINE"))) {
          stop(paste("Error! \"", this_object$`scoring`, "\" cannot be assigned to `scoring`. Must be \"INTENSITY\", \"GAUSSIAN\", \"MODIFIED_COSINE\".", sep = ""))
        }
        self$`scoring` <- this_object$`scoring`
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
      self$`peakDeviationPpm` <- this_object$`peakDeviationPpm`
      self$`precursorDeviationPpm` <- this_object$`precursorDeviationPpm`
      if (!is.null(this_object$`scoring`) && !(this_object$`scoring` %in% c("INTENSITY", "GAUSSIAN", "MODIFIED_COSINE"))) {
        stop(paste("Error! \"", this_object$`scoring`, "\" cannot be assigned to `scoring`. Must be \"INTENSITY\", \"GAUSSIAN\", \"MODIFIED_COSINE\".", sep = ""))
      }
      self$`scoring` <- this_object$`scoring`
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

