#' Create a new MsData
#'
#' @description
#' The MsData wraps all spectral input data belonging to a (aligned) feature. All spectra fields are optional.  However, at least one Spectrum field needs to be set to create a valid MsData Object.  The different types of spectra fields can be extended to adapt to other MassSpec measurement techniques not covered yet.  <p>  Each Feature can have:  - One extracted isotope pattern (optional)  - One merged MS/MS spectrum (optional)  - One merged MS spectrum (optional)  - many MS/MS spectra (optional)  - many MS spectra (optional)  <p>  Each non-merged spectrum has an index which can be used to access the spectrum.  <p>  In the future we might add some additional information like chromatographic peak or something similar
#'
#' @docType class
#' @title MsData
#' @description MsData Class
#' @format An \code{R6Class} generator object
#' @field isotopePattern  \link{BasicSpectrum} [optional]
#' @field mergedMs1  \link{BasicSpectrum} [optional]
#' @field mergedMs2  \link{BasicSpectrum} [optional]
#' @field ms1Spectra  list(\link{BasicSpectrum}) [optional]
#' @field ms2Spectra  list(\link{BasicSpectrum}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MsData <- R6::R6Class(
  "MsData",
  public = list(
    `isotopePattern` = NULL,
    `mergedMs1` = NULL,
    `mergedMs2` = NULL,
    `ms1Spectra` = NULL,
    `ms2Spectra` = NULL,

    #' @description
    #' Initialize a new MsData class.
    #'
    #' @param isotopePattern isotopePattern
    #' @param mergedMs1 mergedMs1
    #' @param mergedMs2 mergedMs2
    #' @param ms1Spectra ms1Spectra
    #' @param ms2Spectra ms2Spectra
    #' @param ... Other optional arguments.
    initialize = function(`isotopePattern` = NULL, `mergedMs1` = NULL, `mergedMs2` = NULL, `ms1Spectra` = NULL, `ms2Spectra` = NULL, ...) {
      if (!is.null(`isotopePattern`)) {
        stopifnot(R6::is.R6(`isotopePattern`))
        self$`isotopePattern` <- `isotopePattern`
      }
      if (!is.null(`mergedMs1`)) {
        stopifnot(R6::is.R6(`mergedMs1`))
        self$`mergedMs1` <- `mergedMs1`
      }
      if (!is.null(`mergedMs2`)) {
        stopifnot(R6::is.R6(`mergedMs2`))
        self$`mergedMs2` <- `mergedMs2`
      }
      if (!is.null(`ms1Spectra`)) {
        stopifnot(is.vector(`ms1Spectra`), length(`ms1Spectra`) != 0)
        sapply(`ms1Spectra`, function(x) stopifnot(R6::is.R6(x)))
        self$`ms1Spectra` <- `ms1Spectra`
      }
      if (!is.null(`ms2Spectra`)) {
        stopifnot(is.vector(`ms2Spectra`), length(`ms2Spectra`) != 0)
        sapply(`ms2Spectra`, function(x) stopifnot(R6::is.R6(x)))
        self$`ms2Spectra` <- `ms2Spectra`
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
    #' @return MsData as a base R list.
    #' @examples
    #' # convert array of MsData (x) to a data frame
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
    #' Convert MsData to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      MsDataObject <- list()
      if (!is.null(self$`isotopePattern`)) {
        MsDataObject[["isotopePattern"]] <-
          self$`isotopePattern`$toSimpleType()
      }
      if (!is.null(self$`mergedMs1`)) {
        MsDataObject[["mergedMs1"]] <-
          self$`mergedMs1`$toSimpleType()
      }
      if (!is.null(self$`mergedMs2`)) {
        MsDataObject[["mergedMs2"]] <-
          self$`mergedMs2`$toSimpleType()
      }
      if (!is.null(self$`ms1Spectra`)) {
        MsDataObject[["ms1Spectra"]] <-
          lapply(self$`ms1Spectra`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`ms2Spectra`)) {
        MsDataObject[["ms2Spectra"]] <-
          lapply(self$`ms2Spectra`, function(x) x$toSimpleType())
      }
      return(MsDataObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of MsData
    #'
    #' @param input_json the JSON input
    #' @return the instance of MsData
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`isotopePattern`)) {
        `isotopepattern_object` <- BasicSpectrum$new()
        `isotopepattern_object`$fromJSON(jsonlite::toJSON(this_object$`isotopePattern`, auto_unbox = TRUE, digits = NA, null = 'null'))
        self$`isotopePattern` <- `isotopepattern_object`
      }
      if (!is.null(this_object$`mergedMs1`)) {
        `mergedms1_object` <- BasicSpectrum$new()
        `mergedms1_object`$fromJSON(jsonlite::toJSON(this_object$`mergedMs1`, auto_unbox = TRUE, digits = NA, null = 'null'))
        self$`mergedMs1` <- `mergedms1_object`
      }
      if (!is.null(this_object$`mergedMs2`)) {
        `mergedms2_object` <- BasicSpectrum$new()
        `mergedms2_object`$fromJSON(jsonlite::toJSON(this_object$`mergedMs2`, auto_unbox = TRUE, digits = NA, null = 'null'))
        self$`mergedMs2` <- `mergedms2_object`
      }
      if (!is.null(this_object$`ms1Spectra`)) {
        self$`ms1Spectra` <- ApiClient$new()$deserializeObj(this_object$`ms1Spectra`, "array[BasicSpectrum]", loadNamespace("Rsirius"))
      }
      if (!is.null(this_object$`ms2Spectra`)) {
        self$`ms2Spectra` <- ApiClient$new()$deserializeObj(this_object$`ms2Spectra`, "array[BasicSpectrum]", loadNamespace("Rsirius"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return MsData in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of MsData
    #'
    #' @param input_json the JSON input
    #' @return the instance of MsData
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`isotopePattern` <- BasicSpectrum$new()$fromJSON(jsonlite::toJSON(this_object$`isotopePattern`, auto_unbox = TRUE, digits = NA, null = 'null'))
      self$`mergedMs1` <- BasicSpectrum$new()$fromJSON(jsonlite::toJSON(this_object$`mergedMs1`, auto_unbox = TRUE, digits = NA, null = 'null'))
      self$`mergedMs2` <- BasicSpectrum$new()$fromJSON(jsonlite::toJSON(this_object$`mergedMs2`, auto_unbox = TRUE, digits = NA, null = 'null'))
      self$`ms1Spectra` <- ApiClient$new()$deserializeObj(this_object$`ms1Spectra`, "array[BasicSpectrum]", loadNamespace("Rsirius"))
      self$`ms2Spectra` <- ApiClient$new()$deserializeObj(this_object$`ms2Spectra`, "array[BasicSpectrum]", loadNamespace("Rsirius"))
      self
    },

    #' @description
    #' Validate JSON input with respect to MsData and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of MsData
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
# MsData$unlock()
#
## Below is an example to define the print function
# MsData$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# MsData$lock()

