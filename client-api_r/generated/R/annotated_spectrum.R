#' Create a new AnnotatedSpectrum
#'
#' @description
#' AnnotatedSpectrum Class
#'
#' @docType class
#' @title AnnotatedSpectrum
#' @description AnnotatedSpectrum Class
#' @format An \code{R6Class} generator object
#' @field name Optional Displayable name of this spectrum. character [optional]
#' @field msLevel MS level of the measured spectrum.  Artificial spectra with no msLevel (e.g. Simulated Isotope patterns) use null or zero integer [optional]
#' @field collisionEnergy Collision energy used for MS/MS spectra  Null for spectra where collision energy is not applicable character [optional]
#' @field precursorMz Precursor m/z of the MS/MS spectrum  Null for spectra where precursor m/z is not applicable numeric [optional]
#' @field scanNumber Scan number of the spectrum.  Might be null for artificial spectra with no scan number (e.g. Simulated Isotope patterns or merged spectra) integer [optional]
#' @field peaks The peaks of this spectrum which might contain additional annotations such as molecular formulas. list(\link{AnnotatedPeak})
#' @field absIntensityFactor Factor to convert relative intensities to absolute intensities.  Might be null or 1 for spectra where absolute intensities are not available (E.g. artificial or merged spectra) numeric [optional]
#' @field spectrumAnnotation  \link{SpectrumAnnotation} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AnnotatedSpectrum <- R6::R6Class(
  "AnnotatedSpectrum",
  public = list(
    `name` = NULL,
    `msLevel` = NULL,
    `collisionEnergy` = NULL,
    `precursorMz` = NULL,
    `scanNumber` = NULL,
    `peaks` = NULL,
    `absIntensityFactor` = NULL,
    `spectrumAnnotation` = NULL,
    #' Initialize a new AnnotatedSpectrum class.
    #'
    #' @description
    #' Initialize a new AnnotatedSpectrum class.
    #'
    #' @param peaks The peaks of this spectrum which might contain additional annotations such as molecular formulas.
    #' @param name Optional Displayable name of this spectrum.
    #' @param msLevel MS level of the measured spectrum.  Artificial spectra with no msLevel (e.g. Simulated Isotope patterns) use null or zero
    #' @param collisionEnergy Collision energy used for MS/MS spectra  Null for spectra where collision energy is not applicable
    #' @param precursorMz Precursor m/z of the MS/MS spectrum  Null for spectra where precursor m/z is not applicable
    #' @param scanNumber Scan number of the spectrum.  Might be null for artificial spectra with no scan number (e.g. Simulated Isotope patterns or merged spectra)
    #' @param absIntensityFactor Factor to convert relative intensities to absolute intensities.  Might be null or 1 for spectra where absolute intensities are not available (E.g. artificial or merged spectra)
    #' @param spectrumAnnotation spectrumAnnotation
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`peaks`, `name` = NULL, `msLevel` = NULL, `collisionEnergy` = NULL, `precursorMz` = NULL, `scanNumber` = NULL, `absIntensityFactor` = NULL, `spectrumAnnotation` = NULL, ...) {
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
      if (!is.null(`absIntensityFactor`)) {
        if (!(is.numeric(`absIntensityFactor`) && length(`absIntensityFactor`) == 1)) {
          stop(paste("Error! Invalid data for `absIntensityFactor`. Must be a number:", `absIntensityFactor`))
        }
        self$`absIntensityFactor` <- `absIntensityFactor`
      }
      if (!is.null(`spectrumAnnotation`)) {
        stopifnot(R6::is.R6(`spectrumAnnotation`))
        self$`spectrumAnnotation` <- `spectrumAnnotation`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return AnnotatedSpectrum in JSON format
    #' @export
    toJSON = function() {
      AnnotatedSpectrumObject <- list()
      if (!is.null(self$`name`)) {
        AnnotatedSpectrumObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`msLevel`)) {
        AnnotatedSpectrumObject[["msLevel"]] <-
          self$`msLevel`
      }
      if (!is.null(self$`collisionEnergy`)) {
        AnnotatedSpectrumObject[["collisionEnergy"]] <-
          self$`collisionEnergy`
      }
      if (!is.null(self$`precursorMz`)) {
        AnnotatedSpectrumObject[["precursorMz"]] <-
          self$`precursorMz`
      }
      if (!is.null(self$`scanNumber`)) {
        AnnotatedSpectrumObject[["scanNumber"]] <-
          self$`scanNumber`
      }
      if (!is.null(self$`peaks`)) {
        AnnotatedSpectrumObject[["peaks"]] <-
          lapply(self$`peaks`, function(x) x$toJSON())
      }
      if (!is.null(self$`absIntensityFactor`)) {
        AnnotatedSpectrumObject[["absIntensityFactor"]] <-
          self$`absIntensityFactor`
      }
      if (!is.null(self$`spectrumAnnotation`)) {
        AnnotatedSpectrumObject[["spectrumAnnotation"]] <-
          self$`spectrumAnnotation`$toJSON()
      }
      AnnotatedSpectrumObject
    },
    #' Deserialize JSON string into an instance of AnnotatedSpectrum
    #'
    #' @description
    #' Deserialize JSON string into an instance of AnnotatedSpectrum
    #'
    #' @param input_json the JSON input
    #' @return the instance of AnnotatedSpectrum
    #' @export
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
      if (!is.null(this_object$`precursorMz`)) {
        self$`precursorMz` <- this_object$`precursorMz`
      }
      if (!is.null(this_object$`scanNumber`)) {
        self$`scanNumber` <- this_object$`scanNumber`
      }
      if (!is.null(this_object$`peaks`)) {
        self$`peaks` <- ApiClient$new()$deserializeObj(this_object$`peaks`, "array[AnnotatedPeak]", loadNamespace("Rsirius"))
      }
      if (!is.null(this_object$`absIntensityFactor`)) {
        self$`absIntensityFactor` <- this_object$`absIntensityFactor`
      }
      if (!is.null(this_object$`spectrumAnnotation`)) {
        `spectrumannotation_object` <- SpectrumAnnotation$new()
        `spectrumannotation_object`$fromJSON(jsonlite::toJSON(this_object$`spectrumAnnotation`, auto_unbox = TRUE, digits = NA))
        self$`spectrumAnnotation` <- `spectrumannotation_object`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return AnnotatedSpectrum in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`name`)) {
          sprintf(
          '"name":
            "%s"
                    ',
          self$`name`
          )
        },
        if (!is.null(self$`msLevel`)) {
          sprintf(
          '"msLevel":
            %d
                    ',
          self$`msLevel`
          )
        },
        if (!is.null(self$`collisionEnergy`)) {
          sprintf(
          '"collisionEnergy":
            "%s"
                    ',
          self$`collisionEnergy`
          )
        },
        if (!is.null(self$`precursorMz`)) {
          sprintf(
          '"precursorMz":
            %d
                    ',
          self$`precursorMz`
          )
        },
        if (!is.null(self$`scanNumber`)) {
          sprintf(
          '"scanNumber":
            %d
                    ',
          self$`scanNumber`
          )
        },
        if (!is.null(self$`peaks`)) {
          sprintf(
          '"peaks":
          [%s]
',
          paste(sapply(self$`peaks`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        },
        if (!is.null(self$`absIntensityFactor`)) {
          sprintf(
          '"absIntensityFactor":
            %d
                    ',
          self$`absIntensityFactor`
          )
        },
        if (!is.null(self$`spectrumAnnotation`)) {
          sprintf(
          '"spectrumAnnotation":
          %s
          ',
          jsonlite::toJSON(self$`spectrumAnnotation`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of AnnotatedSpectrum
    #'
    #' @description
    #' Deserialize JSON string into an instance of AnnotatedSpectrum
    #'
    #' @param input_json the JSON input
    #' @return the instance of AnnotatedSpectrum
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name` <- this_object$`name`
      self$`msLevel` <- this_object$`msLevel`
      self$`collisionEnergy` <- this_object$`collisionEnergy`
      self$`precursorMz` <- this_object$`precursorMz`
      self$`scanNumber` <- this_object$`scanNumber`
      self$`peaks` <- ApiClient$new()$deserializeObj(this_object$`peaks`, "array[AnnotatedPeak]", loadNamespace("Rsirius"))
      self$`absIntensityFactor` <- this_object$`absIntensityFactor`
      self$`spectrumAnnotation` <- SpectrumAnnotation$new()$fromJSON(jsonlite::toJSON(this_object$`spectrumAnnotation`, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to AnnotatedSpectrum
    #'
    #' @description
    #' Validate JSON input with respect to AnnotatedSpectrum and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `peaks`
      if (!is.null(input_json$`peaks`)) {
        stopifnot(is.vector(input_json$`peaks`), length(input_json$`peaks`) != 0)
        tmp <- sapply(input_json$`peaks`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AnnotatedSpectrum: the required field `peaks` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AnnotatedSpectrum
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
      # check if the required `peaks` is null
      if (is.null(self$`peaks`)) {
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
      # check if the required `peaks` is null
      if (is.null(self$`peaks`)) {
        invalid_fields["peaks"] <- "Non-nullable required field `peaks` cannot be null."
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
# AnnotatedSpectrum$unlock()
#
## Below is an example to define the print function
# AnnotatedSpectrum$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AnnotatedSpectrum$lock()

