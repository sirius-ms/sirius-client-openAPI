#' Create a new MsData
#'
#' @description
#' The MsData wraps all spectral input data belonging to a feature.  <p>  Each Feature has:  - One merged MS/MS spectrum (optional)  - One merged MS spectrum (optional)  - many MS/MS spectra  - many MS spectra  <p>  Each non-merged spectrum has an index which can be used to access the spectrum.  <p>  In the future we might add some additional information like chromatographic peak or something similar
#'
#' @docType class
#' @title MsData
#' @description MsData Class
#' @format An \code{R6Class} generator object
#' @field mergedMs1  \link{BasicSpectrum} [optional]
#' @field mergedMs2  \link{BasicSpectrum} [optional]
#' @field ms1Spectra  list(\link{BasicSpectrum})
#' @field ms2Spectra  list(\link{BasicSpectrum})
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
    #' @param ms1Spectra ms1Spectra
    #' @param ms2Spectra ms2Spectra
    #' @param mergedMs1 mergedMs1
    #' @param mergedMs2 mergedMs2
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`ms1Spectra`, `ms2Spectra`, `mergedMs1` = NULL, `mergedMs2` = NULL, ...) {
      if (!missing(`ms1Spectra`)) {
        stopifnot(is.vector(`ms1Spectra`), length(`ms1Spectra`) != 0)
        sapply(`ms1Spectra`, function(x) stopifnot(R6::is.R6(x)))
        self$`ms1Spectra` <- `ms1Spectra`
      }
      if (!missing(`ms2Spectra`)) {
        stopifnot(is.vector(`ms2Spectra`), length(`ms2Spectra`) != 0)
        sapply(`ms2Spectra`, function(x) stopifnot(R6::is.R6(x)))
        self$`ms2Spectra` <- `ms2Spectra`
      }
      if (!is.null(`mergedMs1`)) {
        stopifnot(R6::is.R6(`mergedMs1`))
        self$`mergedMs1` <- `mergedMs1`
      }
      if (!is.null(`mergedMs2`)) {
        stopifnot(R6::is.R6(`mergedMs2`))
        self$`mergedMs2` <- `mergedMs2`
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
          self$`mergedMs1`$toJSON()
      }
      if (!is.null(self$`mergedMs2`)) {
        MsDataObject[["mergedMs2"]] <-
          self$`mergedMs2`$toJSON()
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
      # check the required field `ms1Spectra`
      if (!is.null(input_json$`ms1Spectra`)) {
        stopifnot(is.vector(input_json$`ms1Spectra`), length(input_json$`ms1Spectra`) != 0)
        tmp <- sapply(input_json$`ms1Spectra`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MsData: the required field `ms1Spectra` is missing."))
      }
      # check the required field `ms2Spectra`
      if (!is.null(input_json$`ms2Spectra`)) {
        stopifnot(is.vector(input_json$`ms2Spectra`), length(input_json$`ms2Spectra`) != 0)
        tmp <- sapply(input_json$`ms2Spectra`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MsData: the required field `ms2Spectra` is missing."))
      }
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
      # check if the required `ms1Spectra` is null
      if (is.null(self$`ms1Spectra`)) {
        return(FALSE)
      }

      # check if the required `ms2Spectra` is null
      if (is.null(self$`ms2Spectra`)) {
        return(FALSE)
      }

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
      # check if the required `ms1Spectra` is null
      if (is.null(self$`ms1Spectra`)) {
        invalid_fields["ms1Spectra"] <- "Non-nullable required field `ms1Spectra` cannot be null."
      }

      # check if the required `ms2Spectra` is null
      if (is.null(self$`ms2Spectra`)) {
        invalid_fields["ms2Spectra"] <- "Non-nullable required field `ms2Spectra` cannot be null."
      }

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

