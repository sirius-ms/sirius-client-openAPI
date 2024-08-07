#' Create a new MsData
#'
#' @description
#' The MsData wraps all spectral input data belonging to a (aligned) feature. All spectra fields are optional.  However, at least one Spectrum field needs to be set to create a valid MsData Object.  The different types of spectra fields can be extended to adapt to other MassSpec measurement techniques not covered yet.  <p>  Each Feature can have:  - One merged MS/MS spectrum (optional)  - One merged MS spectrum (optional)  - many MS/MS spectra (optional)  - many MS spectra (optional)  <p>  Each non-merged spectrum has an index which can be used to access the spectrum.  <p>  In the future we might add some additional information like chromatographic peak or something similar
#'
#' @docType class
#' @title MsData
#' @description MsData Class
#' @format An \code{R6Class} generator object
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
    `mergedMs1` = NULL,
    `mergedMs2` = NULL,
    `ms1Spectra` = NULL,
    `ms2Spectra` = NULL,
    #' Initialize a new MsData class.
    #'
    #' @description
    #' Initialize a new MsData class.
    #'
    #' @param mergedMs1 mergedMs1
    #' @param mergedMs2 mergedMs2
    #' @param ms1Spectra ms1Spectra
    #' @param ms2Spectra ms2Spectra
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`mergedMs1` = NULL, `mergedMs2` = NULL, `ms1Spectra` = NULL, `ms2Spectra` = NULL, ...) {
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
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return MsData in JSON format
    #' @export
    toJSON = function() {
      MsDataObject <- list()
      if (!is.null(self$`mergedMs1`)) {
        MsDataObject[["mergedMs1"]] <-
          if (is.list(self$`mergedMs1`$toJSON()) && length(self$`mergedMs1`$toJSON()) == 0L){
            NULL
          } else if (length(names(self$`mergedMs1`$toJSON())) == 0L && is.character(jsonlite::fromJSON(self$`mergedMs1`$toJSON()))) {
            jsonlite::fromJSON(self$`mergedMs1`$toJSON())
          } else {
            self$`mergedMs1`$toJSON()
          }
      }
      if (!is.null(self$`mergedMs2`)) {
        MsDataObject[["mergedMs2"]] <-
          if (is.list(self$`mergedMs2`$toJSON()) && length(self$`mergedMs2`$toJSON()) == 0L){
            NULL
          } else if (length(names(self$`mergedMs2`$toJSON())) == 0L && is.character(jsonlite::fromJSON(self$`mergedMs2`$toJSON()))) {
            jsonlite::fromJSON(self$`mergedMs2`$toJSON())
          } else {
            self$`mergedMs2`$toJSON()
          }
      }
      if (!is.null(self$`ms1Spectra`)) {
        MsDataObject[["ms1Spectra"]] <-
          lapply(self$`ms1Spectra`, function(x) x$toJSON())
      }
      if (!is.null(self$`ms2Spectra`)) {
        MsDataObject[["ms2Spectra"]] <-
          lapply(self$`ms2Spectra`, function(x) x$toJSON())
      }
      MsDataObject
    },
    #' Deserialize JSON string into an instance of MsData
    #'
    #' @description
    #' Deserialize JSON string into an instance of MsData
    #'
    #' @param input_json the JSON input
    #' @return the instance of MsData
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`mergedMs1`)) {
        `mergedms1_object` <- BasicSpectrum$new()
        `mergedms1_object`$fromJSON(jsonlite::toJSON(this_object$`mergedMs1`, auto_unbox = TRUE, digits = NA))
        self$`mergedMs1` <- `mergedms1_object`
      }
      if (!is.null(this_object$`mergedMs2`)) {
        `mergedms2_object` <- BasicSpectrum$new()
        `mergedms2_object`$fromJSON(jsonlite::toJSON(this_object$`mergedMs2`, auto_unbox = TRUE, digits = NA))
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
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return MsData in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`mergedMs1`)) {
          sprintf(
          '"mergedMs1":
          %s
          ',
          jsonlite::toJSON(self$`mergedMs1`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`mergedMs2`)) {
          sprintf(
          '"mergedMs2":
          %s
          ',
          jsonlite::toJSON(self$`mergedMs2`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`ms1Spectra`)) {
          sprintf(
          '"ms1Spectra":
          [%s]
',
          paste(sapply(self$`ms1Spectra`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        },
        if (!is.null(self$`ms2Spectra`)) {
          sprintf(
          '"ms2Spectra":
          [%s]
',
          paste(sapply(self$`ms2Spectra`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
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
    #' Deserialize JSON string into an instance of MsData
    #'
    #' @description
    #' Deserialize JSON string into an instance of MsData
    #'
    #' @param input_json the JSON input
    #' @return the instance of MsData
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`mergedMs1` <- BasicSpectrum$new()$fromJSON(jsonlite::toJSON(this_object$`mergedMs1`, auto_unbox = TRUE, digits = NA))
      self$`mergedMs2` <- BasicSpectrum$new()$fromJSON(jsonlite::toJSON(this_object$`mergedMs2`, auto_unbox = TRUE, digits = NA))
      self$`ms1Spectra` <- ApiClient$new()$deserializeObj(this_object$`ms1Spectra`, "array[BasicSpectrum]", loadNamespace("Rsirius"))
      self$`ms2Spectra` <- ApiClient$new()$deserializeObj(this_object$`ms2Spectra`, "array[BasicSpectrum]", loadNamespace("Rsirius"))
      self
    },
    #' Validate JSON input with respect to MsData
    #'
    #' @description
    #' Validate JSON input with respect to MsData and throw an exception if invalid
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
    #' @return String representation of MsData
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
# MsData$unlock()
#
## Below is an example to define the print function
# MsData$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# MsData$lock()

