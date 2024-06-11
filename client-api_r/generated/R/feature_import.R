#' Create a new FeatureImport
#'
#' @description
#' FeatureImport Class
#'
#' @docType class
#' @title FeatureImport
#' @description FeatureImport Class
#' @format An \code{R6Class} generator object
#' @field name  character [optional]
#' @field featureId  character [optional]
#' @field ionMass  numeric
#' @field adduct Adduct of this feature. If not know specify [M+?]+ or [M+?]- to define the charge character
#' @field rtStartSeconds  numeric [optional]
#' @field rtEndSeconds  numeric [optional]
#' @field mergedMs1  \link{BasicSpectrum} [optional]
#' @field ms1Spectra  list(\link{BasicSpectrum})
#' @field ms2Spectra  list(\link{BasicSpectrum})
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FeatureImport <- R6::R6Class(
  "FeatureImport",
  public = list(
    `name` = NULL,
    `featureId` = NULL,
    `ionMass` = NULL,
    `adduct` = NULL,
    `rtStartSeconds` = NULL,
    `rtEndSeconds` = NULL,
    `mergedMs1` = NULL,
    `ms1Spectra` = NULL,
    `ms2Spectra` = NULL,
    #' Initialize a new FeatureImport class.
    #'
    #' @description
    #' Initialize a new FeatureImport class.
    #'
    #' @param ionMass ionMass
    #' @param adduct Adduct of this feature. If not know specify [M+?]+ or [M+?]- to define the charge
    #' @param ms1Spectra ms1Spectra
    #' @param ms2Spectra ms2Spectra
    #' @param name name
    #' @param featureId featureId
    #' @param rtStartSeconds rtStartSeconds
    #' @param rtEndSeconds rtEndSeconds
    #' @param mergedMs1 mergedMs1
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`ionMass`, `adduct`, `ms1Spectra`, `ms2Spectra`, `name` = NULL, `featureId` = NULL, `rtStartSeconds` = NULL, `rtEndSeconds` = NULL, `mergedMs1` = NULL, ...) {
      if (!missing(`ionMass`)) {
        if (!(is.numeric(`ionMass`) && length(`ionMass`) == 1)) {
          stop(paste("Error! Invalid data for `ionMass`. Must be a number:", `ionMass`))
        }
        self$`ionMass` <- `ionMass`
      }
      if (!missing(`adduct`)) {
        if (!(is.character(`adduct`) && length(`adduct`) == 1)) {
          stop(paste("Error! Invalid data for `adduct`. Must be a string:", `adduct`))
        }
        self$`adduct` <- `adduct`
      }
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
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`featureId`)) {
        if (!(is.character(`featureId`) && length(`featureId`) == 1)) {
          stop(paste("Error! Invalid data for `featureId`. Must be a string:", `featureId`))
        }
        self$`featureId` <- `featureId`
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
      if (!is.null(`mergedMs1`)) {
        stopifnot(R6::is.R6(`mergedMs1`))
        self$`mergedMs1` <- `mergedMs1`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return FeatureImport in JSON format
    #' @export
    toJSON = function() {
      FeatureImportObject <- list()
      if (!is.null(self$`name`)) {
        FeatureImportObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`featureId`)) {
        FeatureImportObject[["featureId"]] <-
          self$`featureId`
      }
      if (!is.null(self$`ionMass`)) {
        FeatureImportObject[["ionMass"]] <-
          self$`ionMass`
      }
      if (!is.null(self$`adduct`)) {
        FeatureImportObject[["adduct"]] <-
          self$`adduct`
      }
      if (!is.null(self$`rtStartSeconds`)) {
        FeatureImportObject[["rtStartSeconds"]] <-
          self$`rtStartSeconds`
      }
      if (!is.null(self$`rtEndSeconds`)) {
        FeatureImportObject[["rtEndSeconds"]] <-
          self$`rtEndSeconds`
      }
      if (!is.null(self$`mergedMs1`)) {
        FeatureImportObject[["mergedMs1"]] <-
          if (!is.numeric(self$`mergedMs1`$toJSON()) && length(names(self$`mergedMs1`$toJSON())) == 0L && is.character(jsonlite::fromJSON(self$`mergedMs1`$toJSON()))) {
            jsonlite::fromJSON(self$`mergedMs1`$toJSON())
          } else {
            self$`mergedMs1`$toJSON()
          }
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
    #' Deserialize JSON string into an instance of FeatureImport
    #'
    #' @description
    #' Deserialize JSON string into an instance of FeatureImport
    #'
    #' @param input_json the JSON input
    #' @return the instance of FeatureImport
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`featureId`)) {
        self$`featureId` <- this_object$`featureId`
      }
      if (!is.null(this_object$`ionMass`)) {
        self$`ionMass` <- this_object$`ionMass`
      }
      if (!is.null(this_object$`adduct`)) {
        self$`adduct` <- this_object$`adduct`
      }
      if (!is.null(this_object$`rtStartSeconds`)) {
        self$`rtStartSeconds` <- this_object$`rtStartSeconds`
      }
      if (!is.null(this_object$`rtEndSeconds`)) {
        self$`rtEndSeconds` <- this_object$`rtEndSeconds`
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
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return FeatureImport in JSON format
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
        if (!is.null(self$`featureId`)) {
          sprintf(
          '"featureId":
            "%s"
                    ',
          self$`featureId`
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
        if (!is.null(self$`adduct`)) {
          sprintf(
          '"adduct":
            "%s"
                    ',
          self$`adduct`
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
    #' Deserialize JSON string into an instance of FeatureImport
    #'
    #' @description
    #' Deserialize JSON string into an instance of FeatureImport
    #'
    #' @param input_json the JSON input
    #' @return the instance of FeatureImport
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name` <- this_object$`name`
      self$`featureId` <- this_object$`featureId`
      self$`ionMass` <- this_object$`ionMass`
      self$`adduct` <- this_object$`adduct`
      self$`rtStartSeconds` <- this_object$`rtStartSeconds`
      self$`rtEndSeconds` <- this_object$`rtEndSeconds`
      self$`mergedMs1` <- BasicSpectrum$new()$fromJSON(jsonlite::toJSON(this_object$`mergedMs1`, auto_unbox = TRUE, digits = NA))
      self$`ms1Spectra` <- ApiClient$new()$deserializeObj(this_object$`ms1Spectra`, "array[BasicSpectrum]", loadNamespace("Rsirius"))
      self$`ms2Spectra` <- ApiClient$new()$deserializeObj(this_object$`ms2Spectra`, "array[BasicSpectrum]", loadNamespace("Rsirius"))
      self
    },
    #' Validate JSON input with respect to FeatureImport
    #'
    #' @description
    #' Validate JSON input with respect to FeatureImport and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
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
      # check the required field `adduct`
      if (!is.null(input_json$`adduct`)) {
        if (!(is.character(input_json$`adduct`) && length(input_json$`adduct`) == 1)) {
          stop(paste("Error! Invalid data for `adduct`. Must be a string:", input_json$`adduct`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for FeatureImport: the required field `adduct` is missing."))
      }
      # check the required field `ms1Spectra`
      if (!is.null(input_json$`ms1Spectra`)) {
        stopifnot(is.vector(input_json$`ms1Spectra`), length(input_json$`ms1Spectra`) != 0)
        tmp <- sapply(input_json$`ms1Spectra`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for FeatureImport: the required field `ms1Spectra` is missing."))
      }
      # check the required field `ms2Spectra`
      if (!is.null(input_json$`ms2Spectra`)) {
        stopifnot(is.vector(input_json$`ms2Spectra`), length(input_json$`ms2Spectra`) != 0)
        tmp <- sapply(input_json$`ms2Spectra`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for FeatureImport: the required field `ms2Spectra` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of FeatureImport
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
      # check if the required `ionMass` is null
      if (is.null(self$`ionMass`)) {
        return(FALSE)
      }

      # check if the required `adduct` is null
      if (is.null(self$`adduct`)) {
        return(FALSE)
      }

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
      # check if the required `ionMass` is null
      if (is.null(self$`ionMass`)) {
        invalid_fields["ionMass"] <- "Non-nullable required field `ionMass` cannot be null."
      }

      # check if the required `adduct` is null
      if (is.null(self$`adduct`)) {
        invalid_fields["adduct"] <- "Non-nullable required field `adduct` cannot be null."
      }

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
# FeatureImport$unlock()
#
## Below is an example to define the print function
# FeatureImport$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# FeatureImport$lock()

