#' Create a new FeatureImport
#'
#' @description
#' Represents an (aligned) feature to be imported into a SIRIUS project.  At least one of the Mass Spec data sources (e.g. mergedMs1, ms1Spectra, ms2Spectra) needs to be given.  Otherwise, the import will fail.
#'
#' @docType class
#' @title FeatureImport
#' @description FeatureImport Class
#' @format An \code{R6Class} generator object
#' @field name  character [optional]
#' @field externalFeatureId Externally provided FeatureId (by some preprocessing tool). This FeatureId is NOT used by SIRIUS but is stored to ease mapping information back to the source. character [optional]
#' @field ionMass  numeric
#' @field charge  integer
#' @field detectedAdducts Detected adducts of this feature. Can be NULL or empty if no adducts are known. list(character) [optional]
#' @field rtStartSeconds  numeric [optional]
#' @field rtEndSeconds  numeric [optional]
#' @field rtApexSeconds  numeric [optional]
#' @field dataQuality A optional feature quality flag that can be used to filter features to be shown in the gui or to be considered for further analysis. character [optional]
#' @field mergedMs1  \link{BasicSpectrum} [optional]
#' @field ms1Spectra List of MS1Spectra belonging to this feature. These spectra will be merged an only a representative  mergedMs1 spectrum will be stored in SIRIUS. At least one of these spectra should contain the  isotope pattern of the precursor ion.  Note: Will be ignored if 'mergedMs1' is given. list(\link{BasicSpectrum}) [optional]
#' @field ms2Spectra List of MS/MS spectra that belong to this feature. list(\link{BasicSpectrum}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FeatureImport <- R6::R6Class(
  "FeatureImport",
  public = list(
    `name` = NULL,
    `externalFeatureId` = NULL,
    `ionMass` = NULL,
    `charge` = NULL,
    `detectedAdducts` = NULL,
    `rtStartSeconds` = NULL,
    `rtEndSeconds` = NULL,
    `rtApexSeconds` = NULL,
    `dataQuality` = NULL,
    `mergedMs1` = NULL,
    `ms1Spectra` = NULL,
    `ms2Spectra` = NULL,

    #' @description
    #' Initialize a new FeatureImport class.
    #'
    #' @param ionMass ionMass
    #' @param charge charge
    #' @param name name
    #' @param externalFeatureId Externally provided FeatureId (by some preprocessing tool). This FeatureId is NOT used by SIRIUS but is stored to ease mapping information back to the source.
    #' @param detectedAdducts Detected adducts of this feature. Can be NULL or empty if no adducts are known.
    #' @param rtStartSeconds rtStartSeconds
    #' @param rtEndSeconds rtEndSeconds
    #' @param rtApexSeconds rtApexSeconds
    #' @param dataQuality A optional feature quality flag that can be used to filter features to be shown in the gui or to be considered for further analysis.
    #' @param mergedMs1 mergedMs1
    #' @param ms1Spectra List of MS1Spectra belonging to this feature. These spectra will be merged an only a representative  mergedMs1 spectrum will be stored in SIRIUS. At least one of these spectra should contain the  isotope pattern of the precursor ion.  Note: Will be ignored if 'mergedMs1' is given.
    #' @param ms2Spectra List of MS/MS spectra that belong to this feature.
    #' @param ... Other optional arguments.
    initialize = function(`ionMass`, `charge`, `name` = NULL, `externalFeatureId` = NULL, `detectedAdducts` = NULL, `rtStartSeconds` = NULL, `rtEndSeconds` = NULL, `rtApexSeconds` = NULL, `dataQuality` = NULL, `mergedMs1` = NULL, `ms1Spectra` = NULL, `ms2Spectra` = NULL, ...) {
      if (!missing(`ionMass`)) {
        if (!(is.numeric(`ionMass`) && length(`ionMass`) == 1)) {
          stop(paste("Error! Invalid data for `ionMass`. Must be a number:", `ionMass`))
        }
        self$`ionMass` <- `ionMass`
      }
      if (!missing(`charge`)) {
        if (!(is.numeric(`charge`) && length(`charge`) == 1)) {
          stop(paste("Error! Invalid data for `charge`. Must be an integer:", `charge`))
        }
        self$`charge` <- `charge`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`externalFeatureId`)) {
        if (!(is.character(`externalFeatureId`) && length(`externalFeatureId`) == 1)) {
          stop(paste("Error! Invalid data for `externalFeatureId`. Must be a string:", `externalFeatureId`))
        }
        self$`externalFeatureId` <- `externalFeatureId`
      }
      if (!is.null(`detectedAdducts`)) {
        stopifnot(is.vector(`detectedAdducts`), length(`detectedAdducts`) != 0)
        sapply(`detectedAdducts`, function(x) stopifnot(is.character(x)))
        if (!identical(`detectedAdducts`, unique(`detectedAdducts`))) {
          stop("Error! Items in `detectedAdducts` are not unique.")
        }
        self$`detectedAdducts` <- `detectedAdducts`
      }
      if (!is.null(`rtStartSeconds`)) {
        if (!(is.numeric(`rtStartSeconds`) && length(`rtStartSeconds`) == 1)) {
          stop(paste("Error! Invalid data for `rtStartSeconds`. Must be a number:", `rtStartSeconds`))
        }
        self$`rtStartSeconds` <- `rtStartSeconds`
      }
      if (!is.null(`rtEndSeconds`)) {
        if (!(is.numeric(`rtEndSeconds`) && length(`rtEndSeconds`) == 1)) {
          stop(paste("Error! Invalid data for `rtEndSeconds`. Must be a number:", `rtEndSeconds`))
        }
        self$`rtEndSeconds` <- `rtEndSeconds`
      }
      if (!is.null(`rtApexSeconds`)) {
        if (!(is.numeric(`rtApexSeconds`) && length(`rtApexSeconds`) == 1)) {
          stop(paste("Error! Invalid data for `rtApexSeconds`. Must be a number:", `rtApexSeconds`))
        }
        self$`rtApexSeconds` <- `rtApexSeconds`
      }
      if (!is.null(`dataQuality`)) {
        if (!(`dataQuality` %in% c("NOT_APPLICABLE", "LOWEST", "BAD", "DECENT", "GOOD"))) {
          stop(paste("Error! \"", `dataQuality`, "\" cannot be assigned to `dataQuality`. Must be \"NOT_APPLICABLE\", \"LOWEST\", \"BAD\", \"DECENT\", \"GOOD\".", sep = ""))
        }
        if (!(is.character(`dataQuality`) && length(`dataQuality`) == 1)) {
          stop(paste("Error! Invalid data for `dataQuality`. Must be a string:", `dataQuality`))
        }
        self$`dataQuality` <- `dataQuality`
      }
      if (!is.null(`mergedMs1`)) {
        stopifnot(R6::is.R6(`mergedMs1`))
        self$`mergedMs1` <- `mergedMs1`
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
    #' To JSON String
    #'
    #' @return FeatureImport in JSON format
    toJSON = function() {
      FeatureImportObject <- list()
      if (!is.null(self$`name`)) {
        FeatureImportObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`externalFeatureId`)) {
        FeatureImportObject[["externalFeatureId"]] <-
          self$`externalFeatureId`
      }
      if (!is.null(self$`ionMass`)) {
        FeatureImportObject[["ionMass"]] <-
          self$`ionMass`
      }
      if (!is.null(self$`charge`)) {
        FeatureImportObject[["charge"]] <-
          self$`charge`
      }
      if (!is.null(self$`detectedAdducts`)) {
        FeatureImportObject[["detectedAdducts"]] <-
          self$`detectedAdducts`
      }
      if (!is.null(self$`rtStartSeconds`)) {
        FeatureImportObject[["rtStartSeconds"]] <-
          self$`rtStartSeconds`
      }
      if (!is.null(self$`rtEndSeconds`)) {
        FeatureImportObject[["rtEndSeconds"]] <-
          self$`rtEndSeconds`
      }
      if (!is.null(self$`rtApexSeconds`)) {
        FeatureImportObject[["rtApexSeconds"]] <-
          self$`rtApexSeconds`
      }
      if (!is.null(self$`dataQuality`)) {
        FeatureImportObject[["dataQuality"]] <-
          self$`dataQuality`
      }
      if (!is.null(self$`mergedMs1`)) {
        FeatureImportObject[["mergedMs1"]] <-
          self$`mergedMs1`$toJSON()
      }
      if (!is.null(self$`ms1Spectra`)) {
        FeatureImportObject[["ms1Spectra"]] <-
          lapply(self$`ms1Spectra`, function(x) x$toJSON())
      }
      if (!is.null(self$`ms2Spectra`)) {
        FeatureImportObject[["ms2Spectra"]] <-
          lapply(self$`ms2Spectra`, function(x) x$toJSON())
      }
      FeatureImportObject
    },

    #' @description
    #' Deserialize JSON string into an instance of FeatureImport
    #'
    #' @param input_json the JSON input
    #' @return the instance of FeatureImport
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`externalFeatureId`)) {
        self$`externalFeatureId` <- this_object$`externalFeatureId`
      }
      if (!is.null(this_object$`ionMass`)) {
        self$`ionMass` <- this_object$`ionMass`
      }
      if (!is.null(this_object$`charge`)) {
        self$`charge` <- this_object$`charge`
      }
      if (!is.null(this_object$`detectedAdducts`)) {
        self$`detectedAdducts` <- ApiClient$new()$deserializeObj(this_object$`detectedAdducts`, "set[character]", loadNamespace("Rsirius"))
        if (!identical(self$`detectedAdducts`, unique(self$`detectedAdducts`))) {
          stop("Error! Items in `detectedAdducts` are not unique.")
        }
      }
      if (!is.null(this_object$`rtStartSeconds`)) {
        self$`rtStartSeconds` <- this_object$`rtStartSeconds`
      }
      if (!is.null(this_object$`rtEndSeconds`)) {
        self$`rtEndSeconds` <- this_object$`rtEndSeconds`
      }
      if (!is.null(this_object$`rtApexSeconds`)) {
        self$`rtApexSeconds` <- this_object$`rtApexSeconds`
      }
      if (!is.null(this_object$`dataQuality`)) {
        if (!is.null(this_object$`dataQuality`) && !(this_object$`dataQuality` %in% c("NOT_APPLICABLE", "LOWEST", "BAD", "DECENT", "GOOD"))) {
          stop(paste("Error! \"", this_object$`dataQuality`, "\" cannot be assigned to `dataQuality`. Must be \"NOT_APPLICABLE\", \"LOWEST\", \"BAD\", \"DECENT\", \"GOOD\".", sep = ""))
        }
        self$`dataQuality` <- this_object$`dataQuality`
      }
      if (!is.null(this_object$`mergedMs1`)) {
        `mergedms1_object` <- BasicSpectrum$new()
        `mergedms1_object`$fromJSON(jsonlite::toJSON(this_object$`mergedMs1`, auto_unbox = TRUE, digits = NA))
        self$`mergedMs1` <- `mergedms1_object`
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
    #' @return FeatureImport in JSON format
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
        if (!is.null(self$`externalFeatureId`)) {
          sprintf(
          '"externalFeatureId":
            "%s"
                    ',
          self$`externalFeatureId`
          )
        },
        if (!is.null(self$`ionMass`)) {
          sprintf(
          '"ionMass":
            %d
                    ',
          self$`ionMass`
          )
        },
        if (!is.null(self$`charge`)) {
          sprintf(
          '"charge":
            %d
                    ',
          self$`charge`
          )
        },
        if (!is.null(self$`detectedAdducts`)) {
          sprintf(
          '"detectedAdducts":
             [%s]
          ',
          paste(unlist(lapply(self$`detectedAdducts`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`rtStartSeconds`)) {
          sprintf(
          '"rtStartSeconds":
            %d
                    ',
          self$`rtStartSeconds`
          )
        },
        if (!is.null(self$`rtEndSeconds`)) {
          sprintf(
          '"rtEndSeconds":
            %d
                    ',
          self$`rtEndSeconds`
          )
        },
        if (!is.null(self$`rtApexSeconds`)) {
          sprintf(
          '"rtApexSeconds":
            %d
                    ',
          self$`rtApexSeconds`
          )
        },
        if (!is.null(self$`dataQuality`)) {
          sprintf(
          '"dataQuality":
            "%s"
                    ',
          self$`dataQuality`
          )
        },
        if (!is.null(self$`mergedMs1`)) {
          sprintf(
          '"mergedMs1":
          %s
          ',
          jsonlite::toJSON(self$`mergedMs1`$toJSON(), auto_unbox = TRUE, digits = NA)
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

    #' @description
    #' Deserialize JSON string into an instance of FeatureImport
    #'
    #' @param input_json the JSON input
    #' @return the instance of FeatureImport
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name` <- this_object$`name`
      self$`externalFeatureId` <- this_object$`externalFeatureId`
      self$`ionMass` <- this_object$`ionMass`
      self$`charge` <- this_object$`charge`
      self$`detectedAdducts` <- ApiClient$new()$deserializeObj(this_object$`detectedAdducts`, "set[character]", loadNamespace("Rsirius"))
      if (!identical(self$`detectedAdducts`, unique(self$`detectedAdducts`))) {
        stop("Error! Items in `detectedAdducts` are not unique.")
      }
      self$`rtStartSeconds` <- this_object$`rtStartSeconds`
      self$`rtEndSeconds` <- this_object$`rtEndSeconds`
      self$`rtApexSeconds` <- this_object$`rtApexSeconds`
      if (!is.null(this_object$`dataQuality`) && !(this_object$`dataQuality` %in% c("NOT_APPLICABLE", "LOWEST", "BAD", "DECENT", "GOOD"))) {
        stop(paste("Error! \"", this_object$`dataQuality`, "\" cannot be assigned to `dataQuality`. Must be \"NOT_APPLICABLE\", \"LOWEST\", \"BAD\", \"DECENT\", \"GOOD\".", sep = ""))
      }
      self$`dataQuality` <- this_object$`dataQuality`
      self$`mergedMs1` <- BasicSpectrum$new()$fromJSON(jsonlite::toJSON(this_object$`mergedMs1`, auto_unbox = TRUE, digits = NA))
      self$`ms1Spectra` <- ApiClient$new()$deserializeObj(this_object$`ms1Spectra`, "array[BasicSpectrum]", loadNamespace("Rsirius"))
      self$`ms2Spectra` <- ApiClient$new()$deserializeObj(this_object$`ms2Spectra`, "array[BasicSpectrum]", loadNamespace("Rsirius"))
      self
    },

    #' @description
    #' Validate JSON input with respect to FeatureImport and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `ionMass`
      if (!is.null(input_json$`ionMass`)) {
        if (!(is.numeric(input_json$`ionMass`) && length(input_json$`ionMass`) == 1)) {
          stop(paste("Error! Invalid data for `ionMass`. Must be a number:", input_json$`ionMass`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for FeatureImport: the required field `ionMass` is missing."))
      }
      # check the required field `charge`
      if (!is.null(input_json$`charge`)) {
        if (!(is.numeric(input_json$`charge`) && length(input_json$`charge`) == 1)) {
          stop(paste("Error! Invalid data for `charge`. Must be an integer:", input_json$`charge`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for FeatureImport: the required field `charge` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of FeatureImport
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `ionMass` is null
      if (is.null(self$`ionMass`)) {
        return(FALSE)
      }

      # check if the required `charge` is null
      if (is.null(self$`charge`)) {
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
      # check if the required `ionMass` is null
      if (is.null(self$`ionMass`)) {
        invalid_fields["ionMass"] <- "Non-nullable required field `ionMass` cannot be null."
      }

      # check if the required `charge` is null
      if (is.null(self$`charge`)) {
        invalid_fields["charge"] <- "Non-nullable required field `charge` cannot be null."
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
# FeatureImport$unlock()
#
## Below is an example to define the print function
# FeatureImport$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# FeatureImport$lock()

