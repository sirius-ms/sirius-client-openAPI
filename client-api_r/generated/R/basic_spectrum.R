#' Create a new BasicSpectrum
#'
#' @description
#' BasicSpectrum Class
#'
#' @docType class
#' @title BasicSpectrum
#' @description BasicSpectrum Class
#' @format An \code{R6Class} generator object
#' @field name Optional Displayable name of this spectrum. character [optional]
#' @field msLevel MS level of the measured spectrum.  Artificial spectra with no msLevel (e.g. Simulated Isotope patterns) use null or zero integer [optional]
#' @field collisionEnergy Collision energy used for MS/MS spectra  Null for spectra where collision energy is not applicable character [optional]
#' @field instrument Instrument information. character [optional]
#' @field precursorMz Precursor m/z of the MS/MS spectrum  Null for spectra where precursor m/z is not applicable numeric [optional]
#' @field scanNumber Scan number of the spectrum.  Might be null for artificial spectra with no scan number (e.g. Simulated Isotope patterns or merged spectra) integer [optional]
#' @field cosineQuery True if spectrum is in cosine query normalized format.  Such spectrum is compatible with SpectralLibraryMatch peak assignments to reference spectra. character
#' @field precursorPeak A separate precursor peak field to either mark the precursor in the peaklist or  provide the precursor peak separately from the spectrum in case the spectrum is in a preprocessed form where  the precursor peak has been removed for library matching.   NULL if the spectrum does not contain the precursor peak. \link{SimplePeak} [optional]
#' @field peaks The peaks of this spectrum which might contain additional annotations such as molecular formulas. list(\link{SimplePeak})
#' @field absIntensityFactor Factor to convert relative intensities to absolute intensities.  Might be null or 1 for spectra where absolute intensities are not available (E.g. artificial or merged spectra)  <p>  DEPRECATED: Spectra are always returned with raw intensities.  Use provided normalization factors to normalize on the fly. numeric [optional]
#' @field maxNormFactor Factor to convert absolute intensities to MAX norm. numeric [optional]
#' @field sumNormFactor Factor to convert absolute intensities to SUM norm. numeric [optional]
#' @field l2NormFactor Factor to convert absolute intensities to L2 (Euclidean) norm. numeric [optional]
#' @field firstPeakNormFactor Factor to convert absolute intensities to normalize intensities by first peak intensity. numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BasicSpectrum <- R6::R6Class(
  "BasicSpectrum",
  public = list(
    `name` = NULL,
    `msLevel` = NULL,
    `collisionEnergy` = NULL,
    `instrument` = NULL,
    `precursorMz` = NULL,
    `scanNumber` = NULL,
    `cosineQuery` = NULL,
    `precursorPeak` = NULL,
    `peaks` = NULL,
    `absIntensityFactor` = NULL,
    `maxNormFactor` = NULL,
    `sumNormFactor` = NULL,
    `l2NormFactor` = NULL,
    `firstPeakNormFactor` = NULL,

    #' @description
    #' Initialize a new BasicSpectrum class.
    #'
    #' @param cosineQuery True if spectrum is in cosine query normalized format.  Such spectrum is compatible with SpectralLibraryMatch peak assignments to reference spectra.
    #' @param peaks The peaks of this spectrum which might contain additional annotations such as molecular formulas.
    #' @param name Optional Displayable name of this spectrum.
    #' @param msLevel MS level of the measured spectrum.  Artificial spectra with no msLevel (e.g. Simulated Isotope patterns) use null or zero
    #' @param collisionEnergy Collision energy used for MS/MS spectra  Null for spectra where collision energy is not applicable
    #' @param instrument Instrument information.
    #' @param precursorMz Precursor m/z of the MS/MS spectrum  Null for spectra where precursor m/z is not applicable
    #' @param scanNumber Scan number of the spectrum.  Might be null for artificial spectra with no scan number (e.g. Simulated Isotope patterns or merged spectra)
    #' @param precursorPeak A separate precursor peak field to either mark the precursor in the peaklist or  provide the precursor peak separately from the spectrum in case the spectrum is in a preprocessed form where  the precursor peak has been removed for library matching.   NULL if the spectrum does not contain the precursor peak.
    #' @param absIntensityFactor Factor to convert relative intensities to absolute intensities.  Might be null or 1 for spectra where absolute intensities are not available (E.g. artificial or merged spectra)  <p>  DEPRECATED: Spectra are always returned with raw intensities.  Use provided normalization factors to normalize on the fly.
    #' @param maxNormFactor Factor to convert absolute intensities to MAX norm.
    #' @param sumNormFactor Factor to convert absolute intensities to SUM norm.
    #' @param l2NormFactor Factor to convert absolute intensities to L2 (Euclidean) norm.
    #' @param firstPeakNormFactor Factor to convert absolute intensities to normalize intensities by first peak intensity.
    #' @param ... Other optional arguments.
    initialize = function(`cosineQuery`, `peaks`, `name` = NULL, `msLevel` = NULL, `collisionEnergy` = NULL, `instrument` = NULL, `precursorMz` = NULL, `scanNumber` = NULL, `precursorPeak` = NULL, `absIntensityFactor` = NULL, `maxNormFactor` = NULL, `sumNormFactor` = NULL, `l2NormFactor` = NULL, `firstPeakNormFactor` = NULL, ...) {
      if (!missing(`cosineQuery`)) {
        if (!(is.logical(`cosineQuery`) && length(`cosineQuery`) == 1)) {
          stop(paste("Error! Invalid data for `cosineQuery`. Must be a boolean:", `cosineQuery`))
        }
        self$`cosineQuery` <- `cosineQuery`
      }
      if (!missing(`peaks`)) {
        stopifnot(is.vector(`peaks`), length(`peaks`) != 0)
        sapply(`peaks`, function(x) stopifnot(R6::is.R6(x)))
        self$`peaks` <- `peaks`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`msLevel`)) {
        if (!(is.numeric(`msLevel`) && length(`msLevel`) == 1)) {
          stop(paste("Error! Invalid data for `msLevel`. Must be an integer:", `msLevel`))
        }
        self$`msLevel` <- `msLevel`
      }
      if (!is.null(`collisionEnergy`)) {
        if (!(is.character(`collisionEnergy`) && length(`collisionEnergy`) == 1)) {
          stop(paste("Error! Invalid data for `collisionEnergy`. Must be a string:", `collisionEnergy`))
        }
        self$`collisionEnergy` <- `collisionEnergy`
      }
      if (!is.null(`instrument`)) {
        if (!(is.character(`instrument`) && length(`instrument`) == 1)) {
          stop(paste("Error! Invalid data for `instrument`. Must be a string:", `instrument`))
        }
        self$`instrument` <- `instrument`
      }
      if (!is.null(`precursorMz`)) {
        if (!(is.numeric(`precursorMz`) && length(`precursorMz`) == 1)) {
          stop(paste("Error! Invalid data for `precursorMz`. Must be a number:", `precursorMz`))
        }
        self$`precursorMz` <- `precursorMz`
      }
      if (!is.null(`scanNumber`)) {
        if (!(is.numeric(`scanNumber`) && length(`scanNumber`) == 1)) {
          stop(paste("Error! Invalid data for `scanNumber`. Must be an integer:", `scanNumber`))
        }
        self$`scanNumber` <- `scanNumber`
      }
      if (!is.null(`precursorPeak`)) {
        stopifnot(R6::is.R6(`precursorPeak`))
        self$`precursorPeak` <- `precursorPeak`
      }
      if (!is.null(`absIntensityFactor`)) {
        if (!(is.numeric(`absIntensityFactor`) && length(`absIntensityFactor`) == 1)) {
          stop(paste("Error! Invalid data for `absIntensityFactor`. Must be a number:", `absIntensityFactor`))
        }
        self$`absIntensityFactor` <- `absIntensityFactor`
      }
      if (!is.null(`maxNormFactor`)) {
        if (!(is.numeric(`maxNormFactor`) && length(`maxNormFactor`) == 1)) {
          stop(paste("Error! Invalid data for `maxNormFactor`. Must be a number:", `maxNormFactor`))
        }
        self$`maxNormFactor` <- `maxNormFactor`
      }
      if (!is.null(`sumNormFactor`)) {
        if (!(is.numeric(`sumNormFactor`) && length(`sumNormFactor`) == 1)) {
          stop(paste("Error! Invalid data for `sumNormFactor`. Must be a number:", `sumNormFactor`))
        }
        self$`sumNormFactor` <- `sumNormFactor`
      }
      if (!is.null(`l2NormFactor`)) {
        if (!(is.numeric(`l2NormFactor`) && length(`l2NormFactor`) == 1)) {
          stop(paste("Error! Invalid data for `l2NormFactor`. Must be a number:", `l2NormFactor`))
        }
        self$`l2NormFactor` <- `l2NormFactor`
      }
      if (!is.null(`firstPeakNormFactor`)) {
        if (!(is.numeric(`firstPeakNormFactor`) && length(`firstPeakNormFactor`) == 1)) {
          stop(paste("Error! Invalid data for `firstPeakNormFactor`. Must be a number:", `firstPeakNormFactor`))
        }
        self$`firstPeakNormFactor` <- `firstPeakNormFactor`
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
    #' @return BasicSpectrum as a base R list.
    #' @examples
    #' # convert array of BasicSpectrum (x) to a data frame
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
    #' Convert BasicSpectrum to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      BasicSpectrumObject <- list()
      if (!is.null(self$`name`)) {
        BasicSpectrumObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`msLevel`)) {
        BasicSpectrumObject[["msLevel"]] <-
          self$`msLevel`
      }
      if (!is.null(self$`collisionEnergy`)) {
        BasicSpectrumObject[["collisionEnergy"]] <-
          self$`collisionEnergy`
      }
      if (!is.null(self$`instrument`)) {
        BasicSpectrumObject[["instrument"]] <-
          self$`instrument`
      }
      if (!is.null(self$`precursorMz`)) {
        BasicSpectrumObject[["precursorMz"]] <-
          self$`precursorMz`
      }
      if (!is.null(self$`scanNumber`)) {
        BasicSpectrumObject[["scanNumber"]] <-
          self$`scanNumber`
      }
      if (!is.null(self$`cosineQuery`)) {
        BasicSpectrumObject[["cosineQuery"]] <-
          self$`cosineQuery`
      }
      if (!is.null(self$`precursorPeak`)) {
        BasicSpectrumObject[["precursorPeak"]] <-
          self$`precursorPeak`$toSimpleType()
      }
      if (!is.null(self$`peaks`)) {
        BasicSpectrumObject[["peaks"]] <-
          lapply(self$`peaks`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`absIntensityFactor`)) {
        BasicSpectrumObject[["absIntensityFactor"]] <-
          self$`absIntensityFactor`
      }
      if (!is.null(self$`maxNormFactor`)) {
        BasicSpectrumObject[["maxNormFactor"]] <-
          self$`maxNormFactor`
      }
      if (!is.null(self$`sumNormFactor`)) {
        BasicSpectrumObject[["sumNormFactor"]] <-
          self$`sumNormFactor`
      }
      if (!is.null(self$`l2NormFactor`)) {
        BasicSpectrumObject[["l2NormFactor"]] <-
          self$`l2NormFactor`
      }
      if (!is.null(self$`firstPeakNormFactor`)) {
        BasicSpectrumObject[["firstPeakNormFactor"]] <-
          self$`firstPeakNormFactor`
      }
      return(BasicSpectrumObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of BasicSpectrum
    #'
    #' @param input_json the JSON input
    #' @return the instance of BasicSpectrum
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`msLevel`)) {
        self$`msLevel` <- this_object$`msLevel`
      }
      if (!is.null(this_object$`collisionEnergy`)) {
        self$`collisionEnergy` <- this_object$`collisionEnergy`
      }
      if (!is.null(this_object$`instrument`)) {
        self$`instrument` <- this_object$`instrument`
      }
      if (!is.null(this_object$`precursorMz`)) {
        self$`precursorMz` <- this_object$`precursorMz`
      }
      if (!is.null(this_object$`scanNumber`)) {
        self$`scanNumber` <- this_object$`scanNumber`
      }
      if (!is.null(this_object$`cosineQuery`)) {
        self$`cosineQuery` <- this_object$`cosineQuery`
      }
      if (!is.null(this_object$`precursorPeak`)) {
        `precursorpeak_object` <- SimplePeak$new()
        `precursorpeak_object`$fromJSON(jsonlite::toJSON(this_object$`precursorPeak`, auto_unbox = TRUE, digits = NA, null = 'null'))
        self$`precursorPeak` <- `precursorpeak_object`
      }
      if (!is.null(this_object$`peaks`)) {
        self$`peaks` <- ApiClient$new()$deserializeObj(this_object$`peaks`, "array[SimplePeak]", loadNamespace("Rsirius"))
      }
      if (!is.null(this_object$`absIntensityFactor`)) {
        self$`absIntensityFactor` <- this_object$`absIntensityFactor`
      }
      if (!is.null(this_object$`maxNormFactor`)) {
        self$`maxNormFactor` <- this_object$`maxNormFactor`
      }
      if (!is.null(this_object$`sumNormFactor`)) {
        self$`sumNormFactor` <- this_object$`sumNormFactor`
      }
      if (!is.null(this_object$`l2NormFactor`)) {
        self$`l2NormFactor` <- this_object$`l2NormFactor`
      }
      if (!is.null(this_object$`firstPeakNormFactor`)) {
        self$`firstPeakNormFactor` <- this_object$`firstPeakNormFactor`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return BasicSpectrum in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of BasicSpectrum
    #'
    #' @param input_json the JSON input
    #' @return the instance of BasicSpectrum
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name` <- this_object$`name`
      self$`msLevel` <- this_object$`msLevel`
      self$`collisionEnergy` <- this_object$`collisionEnergy`
      self$`instrument` <- this_object$`instrument`
      self$`precursorMz` <- this_object$`precursorMz`
      self$`scanNumber` <- this_object$`scanNumber`
      self$`cosineQuery` <- this_object$`cosineQuery`
      self$`precursorPeak` <- SimplePeak$new()$fromJSON(jsonlite::toJSON(this_object$`precursorPeak`, auto_unbox = TRUE, digits = NA, null = 'null'))
      self$`peaks` <- ApiClient$new()$deserializeObj(this_object$`peaks`, "array[SimplePeak]", loadNamespace("Rsirius"))
      self$`absIntensityFactor` <- this_object$`absIntensityFactor`
      self$`maxNormFactor` <- this_object$`maxNormFactor`
      self$`sumNormFactor` <- this_object$`sumNormFactor`
      self$`l2NormFactor` <- this_object$`l2NormFactor`
      self$`firstPeakNormFactor` <- this_object$`firstPeakNormFactor`
      self
    },

    #' @description
    #' Validate JSON input with respect to BasicSpectrum and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `cosineQuery`
      if (!is.null(input_json$`cosineQuery`)) {
        if (!(is.logical(input_json$`cosineQuery`) && length(input_json$`cosineQuery`) == 1)) {
          stop(paste("Error! Invalid data for `cosineQuery`. Must be a boolean:", input_json$`cosineQuery`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BasicSpectrum: the required field `cosineQuery` is missing."))
      }
      # check the required field `peaks`
      if (!is.null(input_json$`peaks`)) {
        stopifnot(is.vector(input_json$`peaks`), length(input_json$`peaks`) != 0)
        tmp <- sapply(input_json$`peaks`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BasicSpectrum: the required field `peaks` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of BasicSpectrum
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `cosineQuery` is null
      if (is.null(self$`cosineQuery`)) {
        return(FALSE)
      }

      # check if the required `peaks` is null
      if (is.null(self$`peaks`)) {
        return(FALSE)
      }

      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
      # check if the required `cosineQuery` is null
      if (is.null(self$`cosineQuery`)) {
        invalid_fields["cosineQuery"] <- "Non-nullable required field `cosineQuery` cannot be null."
      }

      # check if the required `peaks` is null
      if (is.null(self$`peaks`)) {
        invalid_fields["peaks"] <- "Non-nullable required field `peaks` cannot be null."
      }

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
# BasicSpectrum$unlock()
#
## Below is an example to define the print function
# BasicSpectrum$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# BasicSpectrum$lock()

