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
#' @field peaks The peaks of this spectrum which might contain additional annotations such as molecular formulas. list(\link{SimplePeak})
#' @field absIntensityFactor Factor to convert relative intensities to absolute intensities.  Might be null or 1 for spectra where absolute intensities are not available (E.g. artificial or merged spectra) numeric [optional]
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
    `peaks` = NULL,
    `absIntensityFactor` = NULL,
    #' Initialize a new BasicSpectrum class.
    #'
    #' @description
    #' Initialize a new BasicSpectrum class.
    #'
    #' @param peaks The peaks of this spectrum which might contain additional annotations such as molecular formulas.
    #' @param name Optional Displayable name of this spectrum.
    #' @param msLevel MS level of the measured spectrum.  Artificial spectra with no msLevel (e.g. Simulated Isotope patterns) use null or zero
    #' @param collisionEnergy Collision energy used for MS/MS spectra  Null for spectra where collision energy is not applicable
    #' @param instrument Instrument information.
    #' @param precursorMz Precursor m/z of the MS/MS spectrum  Null for spectra where precursor m/z is not applicable
    #' @param scanNumber Scan number of the spectrum.  Might be null for artificial spectra with no scan number (e.g. Simulated Isotope patterns or merged spectra)
    #' @param absIntensityFactor Factor to convert relative intensities to absolute intensities.  Might be null or 1 for spectra where absolute intensities are not available (E.g. artificial or merged spectra)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`peaks`, `name` = NULL, `msLevel` = NULL, `collisionEnergy` = NULL, `instrument` = NULL, `precursorMz` = NULL, `scanNumber` = NULL, `absIntensityFactor` = NULL, ...) {
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
      if (!is.null(`absIntensityFactor`)) {
        if (!(is.numeric(`absIntensityFactor`) && length(`absIntensityFactor`) == 1)) {
          stop(paste("Error! Invalid data for `absIntensityFactor`. Must be a number:", `absIntensityFactor`))
        }
        self$`absIntensityFactor` <- `absIntensityFactor`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return BasicSpectrum in JSON format
    #' @export
    toJSON = function() {
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
      if (!is.null(self$`peaks`)) {
        BasicSpectrumObject[["peaks"]] <-
          lapply(self$`peaks`, function(x) x$toJSON())
      }
      if (!is.null(self$`absIntensityFactor`)) {
        BasicSpectrumObject[["absIntensityFactor"]] <-
          self$`absIntensityFactor`
      }
      BasicSpectrumObject
    },
    #' Deserialize JSON string into an instance of BasicSpectrum
    #'
    #' @description
    #' Deserialize JSON string into an instance of BasicSpectrum
    #'
    #' @param input_json the JSON input
    #' @return the instance of BasicSpectrum
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
      if (!is.null(this_object$`instrument`)) {
        self$`instrument` <- this_object$`instrument`
      }
      if (!is.null(this_object$`precursorMz`)) {
        self$`precursorMz` <- this_object$`precursorMz`
      }
      if (!is.null(this_object$`scanNumber`)) {
        self$`scanNumber` <- this_object$`scanNumber`
      }
      if (!is.null(this_object$`peaks`)) {
        self$`peaks` <- ApiClient$new()$deserializeObj(this_object$`peaks`, "array[SimplePeak]", loadNamespace("Rsirius"))
      }
      if (!is.null(this_object$`absIntensityFactor`)) {
        self$`absIntensityFactor` <- this_object$`absIntensityFactor`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return BasicSpectrum in JSON format
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
            %f
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
        if (!is.null(self$`instrument`)) {
          sprintf(
          '"instrument":
            "%s"
                    ',
          self$`instrument`
          )
        },
        if (!is.null(self$`precursorMz`)) {
          sprintf(
          '"precursorMz":
            %f
                    ',
          self$`precursorMz`
          )
        },
        if (!is.null(self$`scanNumber`)) {
          sprintf(
          '"scanNumber":
            %f
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
            %f
                    ',
          self$`absIntensityFactor`
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
    #' Deserialize JSON string into an instance of BasicSpectrum
    #'
    #' @description
    #' Deserialize JSON string into an instance of BasicSpectrum
    #'
    #' @param input_json the JSON input
    #' @return the instance of BasicSpectrum
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name` <- this_object$`name`
      self$`msLevel` <- this_object$`msLevel`
      self$`collisionEnergy` <- this_object$`collisionEnergy`
      self$`instrument` <- this_object$`instrument`
      self$`precursorMz` <- this_object$`precursorMz`
      self$`scanNumber` <- this_object$`scanNumber`
      self$`peaks` <- ApiClient$new()$deserializeObj(this_object$`peaks`, "array[SimplePeak]", loadNamespace("Rsirius"))
      self$`absIntensityFactor` <- this_object$`absIntensityFactor`
      self
    },
    #' Validate JSON input with respect to BasicSpectrum
    #'
    #' @description
    #' Validate JSON input with respect to BasicSpectrum and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for BasicSpectrum: the required field `peaks` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of BasicSpectrum
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
# BasicSpectrum$unlock()
#
## Below is an example to define the print function
# BasicSpectrum$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# BasicSpectrum$lock()

