#' Create a new JobSubmission
#'
#' @description
#' Object to submit a job to be executed by SIRIUS
#'
#' @docType class
#' @title JobSubmission
#' @description JobSubmission Class
#' @format An \code{R6Class} generator object
#' @field compoundIds Compounds that should be the input for this Job list(character) [optional]
#' @field fallbackAdducts Describes how to deal with Adducts: Fallback adducts are considered if the auto detection did not find any indication for an ion mode.  Pos Examples: [M+H]+,[M]+,[M+K]+,[M+Na]+,[M+H-H2O]+,[M+Na2-H]+,[M+2K-H]+,[M+NH4]+,[M+H3O]+,[M+MeOH+H]+,[M+ACN+H]+,[M+2ACN+H]+,[M+IPA+H]+,[M+ACN+Na]+,[M+DMSO+H]+  Neg Examples: [M-H]-,[M]-,[M+K-2H]-,[M+Cl]-,[M-H2O-H]-,[M+Na-2H]-,M+FA-H]-,[M+Br]-,[M+HAc-H]-,[M+TFA-H]-,[M+ACN-H]- list(character) [optional]
#' @field enforcedAdducts Describes how to deal with Adducts:  Enforced adducts that are always considered.  Pos Examples: [M+H]+,[M]+,[M+K]+,[M+Na]+,[M+H-H2O]+,[M+Na2-H]+,[M+2K-H]+,[M+NH4]+,[M+H3O]+,[M+MeOH+H]+,[M+ACN+H]+,[M+2ACN+H]+,[M+IPA+H]+,[M+ACN+Na]+,[M+DMSO+H]+  Neg Examples: [M-H]-,[M]-,[M+K-2H]-,[M+Cl]-,[M-H2O-H]-,[M+Na-2H]-,M+FA-H]-,[M+Br]-,[M+HAc-H]-,[M+TFA-H]-,[M+ACN-H]- list(character) [optional]
#' @field detectableAdducts Describes how to deal with Adducts: Detectable adducts which are only considered if there is an indication in the MS1 scan (e.g. correct mass delta).  Pos Examples: [M+H]+,[M]+,[M+K]+,[M+Na]+,[M+H-H2O]+,[M+Na2-H]+,[M+2K-H]+,[M+NH4]+,[M+H3O]+,[M+MeOH+H]+,[M+ACN+H]+,[M+2ACN+H]+,[M+IPA+H]+,[M+ACN+Na]+,[M+DMSO+H]+  Neg Examples: [M-H]-,[M]-,[M+K-2H]-,[M+Cl]-,[M-H2O-H]-,[M+Na-2H]-,M+FA-H]-,[M+Br]-,[M+HAc-H]-,[M+TFA-H]-,[M+ACN-H]- list(character) [optional]
#' @field recompute Indicate if already existing result for a tool to be executed should be overwritten or not. character [optional]
#' @field formulaIdParas  \link{Sirius} [optional]
#' @field zodiacParas  \link{Zodiac} [optional]
#' @field fingerprintPredictionParas  \link{FingerprintPrediction} [optional]
#' @field structureDbSearchParas  \link{StructureDbSearch} [optional]
#' @field canopusParas  \link{Canopus} [optional]
#' @field configMap As an alternative to the object based parameters, this map allows to store key value pairs  of ALL SIRIUS parameters. All possible parameters can be retrieved from SIRIUS via the respective endpoint. named list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
JobSubmission <- R6::R6Class(
  "JobSubmission",
  public = list(
    `compoundIds` = NULL,
    `fallbackAdducts` = NULL,
    `enforcedAdducts` = NULL,
    `detectableAdducts` = NULL,
    `recompute` = NULL,
    `formulaIdParas` = NULL,
    `zodiacParas` = NULL,
    `fingerprintPredictionParas` = NULL,
    `structureDbSearchParas` = NULL,
    `canopusParas` = NULL,
    `configMap` = NULL,
    #' Initialize a new JobSubmission class.
    #'
    #' @description
    #' Initialize a new JobSubmission class.
    #'
    #' @param compoundIds Compounds that should be the input for this Job
    #' @param fallbackAdducts Describes how to deal with Adducts: Fallback adducts are considered if the auto detection did not find any indication for an ion mode.  Pos Examples: [M+H]+,[M]+,[M+K]+,[M+Na]+,[M+H-H2O]+,[M+Na2-H]+,[M+2K-H]+,[M+NH4]+,[M+H3O]+,[M+MeOH+H]+,[M+ACN+H]+,[M+2ACN+H]+,[M+IPA+H]+,[M+ACN+Na]+,[M+DMSO+H]+  Neg Examples: [M-H]-,[M]-,[M+K-2H]-,[M+Cl]-,[M-H2O-H]-,[M+Na-2H]-,M+FA-H]-,[M+Br]-,[M+HAc-H]-,[M+TFA-H]-,[M+ACN-H]-
    #' @param enforcedAdducts Describes how to deal with Adducts:  Enforced adducts that are always considered.  Pos Examples: [M+H]+,[M]+,[M+K]+,[M+Na]+,[M+H-H2O]+,[M+Na2-H]+,[M+2K-H]+,[M+NH4]+,[M+H3O]+,[M+MeOH+H]+,[M+ACN+H]+,[M+2ACN+H]+,[M+IPA+H]+,[M+ACN+Na]+,[M+DMSO+H]+  Neg Examples: [M-H]-,[M]-,[M+K-2H]-,[M+Cl]-,[M-H2O-H]-,[M+Na-2H]-,M+FA-H]-,[M+Br]-,[M+HAc-H]-,[M+TFA-H]-,[M+ACN-H]-
    #' @param detectableAdducts Describes how to deal with Adducts: Detectable adducts which are only considered if there is an indication in the MS1 scan (e.g. correct mass delta).  Pos Examples: [M+H]+,[M]+,[M+K]+,[M+Na]+,[M+H-H2O]+,[M+Na2-H]+,[M+2K-H]+,[M+NH4]+,[M+H3O]+,[M+MeOH+H]+,[M+ACN+H]+,[M+2ACN+H]+,[M+IPA+H]+,[M+ACN+Na]+,[M+DMSO+H]+  Neg Examples: [M-H]-,[M]-,[M+K-2H]-,[M+Cl]-,[M-H2O-H]-,[M+Na-2H]-,M+FA-H]-,[M+Br]-,[M+HAc-H]-,[M+TFA-H]-,[M+ACN-H]-
    #' @param recompute Indicate if already existing result for a tool to be executed should be overwritten or not.
    #' @param formulaIdParas formulaIdParas
    #' @param zodiacParas zodiacParas
    #' @param fingerprintPredictionParas fingerprintPredictionParas
    #' @param structureDbSearchParas structureDbSearchParas
    #' @param canopusParas canopusParas
    #' @param configMap As an alternative to the object based parameters, this map allows to store key value pairs  of ALL SIRIUS parameters. All possible parameters can be retrieved from SIRIUS via the respective endpoint.
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`compoundIds` = NULL, `fallbackAdducts` = NULL, `enforcedAdducts` = NULL, `detectableAdducts` = NULL, `recompute` = NULL, `formulaIdParas` = NULL, `zodiacParas` = NULL, `fingerprintPredictionParas` = NULL, `structureDbSearchParas` = NULL, `canopusParas` = NULL, `configMap` = NULL, ...) {
      if (!is.null(`compoundIds`)) {
        stopifnot(is.vector(`compoundIds`), length(`compoundIds`) != 0)
        sapply(`compoundIds`, function(x) stopifnot(is.character(x)))
        self$`compoundIds` <- `compoundIds`
      }
      if (!is.null(`fallbackAdducts`)) {
        stopifnot(is.vector(`fallbackAdducts`), length(`fallbackAdducts`) != 0)
        sapply(`fallbackAdducts`, function(x) stopifnot(is.character(x)))
        self$`fallbackAdducts` <- `fallbackAdducts`
      }
      if (!is.null(`enforcedAdducts`)) {
        stopifnot(is.vector(`enforcedAdducts`), length(`enforcedAdducts`) != 0)
        sapply(`enforcedAdducts`, function(x) stopifnot(is.character(x)))
        self$`enforcedAdducts` <- `enforcedAdducts`
      }
      if (!is.null(`detectableAdducts`)) {
        stopifnot(is.vector(`detectableAdducts`), length(`detectableAdducts`) != 0)
        sapply(`detectableAdducts`, function(x) stopifnot(is.character(x)))
        self$`detectableAdducts` <- `detectableAdducts`
      }
      if (!is.null(`recompute`)) {
        if (!(is.logical(`recompute`) && length(`recompute`) == 1)) {
          stop(paste("Error! Invalid data for `recompute`. Must be a boolean:", `recompute`))
        }
        self$`recompute` <- `recompute`
      }
      if (!is.null(`formulaIdParas`)) {
        stopifnot(R6::is.R6(`formulaIdParas`))
        self$`formulaIdParas` <- `formulaIdParas`
      }
      if (!is.null(`zodiacParas`)) {
        stopifnot(R6::is.R6(`zodiacParas`))
        self$`zodiacParas` <- `zodiacParas`
      }
      if (!is.null(`fingerprintPredictionParas`)) {
        stopifnot(R6::is.R6(`fingerprintPredictionParas`))
        self$`fingerprintPredictionParas` <- `fingerprintPredictionParas`
      }
      if (!is.null(`structureDbSearchParas`)) {
        stopifnot(R6::is.R6(`structureDbSearchParas`))
        self$`structureDbSearchParas` <- `structureDbSearchParas`
      }
      if (!is.null(`canopusParas`)) {
        stopifnot(R6::is.R6(`canopusParas`))
        self$`canopusParas` <- `canopusParas`
      }
      if (!is.null(`configMap`)) {
        stopifnot(is.vector(`configMap`), length(`configMap`) != 0)
        sapply(`configMap`, function(x) stopifnot(is.character(x)))
        self$`configMap` <- `configMap`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return JobSubmission in JSON format
    #' @export
    toJSON = function() {
      JobSubmissionObject <- list()
      if (!is.null(self$`compoundIds`)) {
        JobSubmissionObject[["compoundIds"]] <-
          self$`compoundIds`
      }
      if (!is.null(self$`fallbackAdducts`)) {
        JobSubmissionObject[["fallbackAdducts"]] <-
          self$`fallbackAdducts`
      }
      if (!is.null(self$`enforcedAdducts`)) {
        JobSubmissionObject[["enforcedAdducts"]] <-
          self$`enforcedAdducts`
      }
      if (!is.null(self$`detectableAdducts`)) {
        JobSubmissionObject[["detectableAdducts"]] <-
          self$`detectableAdducts`
      }
      if (!is.null(self$`recompute`)) {
        JobSubmissionObject[["recompute"]] <-
          self$`recompute`
      }
      if (!is.null(self$`formulaIdParas`)) {
        JobSubmissionObject[["formulaIdParas"]] <-
          self$`formulaIdParas`$toJSON()
      }
      if (!is.null(self$`zodiacParas`)) {
        JobSubmissionObject[["zodiacParas"]] <-
          self$`zodiacParas`$toJSON()
      }
      if (!is.null(self$`fingerprintPredictionParas`)) {
        JobSubmissionObject[["fingerprintPredictionParas"]] <-
          self$`fingerprintPredictionParas`$toJSON()
      }
      if (!is.null(self$`structureDbSearchParas`)) {
        JobSubmissionObject[["structureDbSearchParas"]] <-
          self$`structureDbSearchParas`$toJSON()
      }
      if (!is.null(self$`canopusParas`)) {
        JobSubmissionObject[["canopusParas"]] <-
          self$`canopusParas`$toJSON()
      }
      if (!is.null(self$`configMap`)) {
        JobSubmissionObject[["configMap"]] <-
          self$`configMap`
      }
      JobSubmissionObject
    },
    #' Deserialize JSON string into an instance of JobSubmission
    #'
    #' @description
    #' Deserialize JSON string into an instance of JobSubmission
    #'
    #' @param input_json the JSON input
    #' @return the instance of JobSubmission
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`compoundIds`)) {
        self$`compoundIds` <- ApiClient$new()$deserializeObj(this_object$`compoundIds`, "array[character]", loadNamespace("Rsirius"))
      }
      if (!is.null(this_object$`fallbackAdducts`)) {
        self$`fallbackAdducts` <- ApiClient$new()$deserializeObj(this_object$`fallbackAdducts`, "array[character]", loadNamespace("Rsirius"))
      }
      if (!is.null(this_object$`enforcedAdducts`)) {
        self$`enforcedAdducts` <- ApiClient$new()$deserializeObj(this_object$`enforcedAdducts`, "array[character]", loadNamespace("Rsirius"))
      }
      if (!is.null(this_object$`detectableAdducts`)) {
        self$`detectableAdducts` <- ApiClient$new()$deserializeObj(this_object$`detectableAdducts`, "array[character]", loadNamespace("Rsirius"))
      }
      if (!is.null(this_object$`recompute`)) {
        self$`recompute` <- this_object$`recompute`
      }
      if (!is.null(this_object$`formulaIdParas`)) {
        formulaidparas_object <- Sirius$new()
        formulaidparas_object$fromJSON(jsonlite::toJSON(this_object$formulaIdParas, auto_unbox = TRUE, digits = NA))
        self$`formulaIdParas` <- formulaidparas_object
      }
      if (!is.null(this_object$`zodiacParas`)) {
        zodiacparas_object <- Zodiac$new()
        zodiacparas_object$fromJSON(jsonlite::toJSON(this_object$zodiacParas, auto_unbox = TRUE, digits = NA))
        self$`zodiacParas` <- zodiacparas_object
      }
      if (!is.null(this_object$`fingerprintPredictionParas`)) {
        fingerprintpredictionparas_object <- FingerprintPrediction$new()
        fingerprintpredictionparas_object$fromJSON(jsonlite::toJSON(this_object$fingerprintPredictionParas, auto_unbox = TRUE, digits = NA))
        self$`fingerprintPredictionParas` <- fingerprintpredictionparas_object
      }
      if (!is.null(this_object$`structureDbSearchParas`)) {
        structuredbsearchparas_object <- StructureDbSearch$new()
        structuredbsearchparas_object$fromJSON(jsonlite::toJSON(this_object$structureDbSearchParas, auto_unbox = TRUE, digits = NA))
        self$`structureDbSearchParas` <- structuredbsearchparas_object
      }
      if (!is.null(this_object$`canopusParas`)) {
        canopusparas_object <- Canopus$new()
        canopusparas_object$fromJSON(jsonlite::toJSON(this_object$canopusParas, auto_unbox = TRUE, digits = NA))
        self$`canopusParas` <- canopusparas_object
      }
      if (!is.null(this_object$`configMap`)) {
        self$`configMap` <- ApiClient$new()$deserializeObj(this_object$`configMap`, "map(character)", loadNamespace("Rsirius"))
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return JobSubmission in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`compoundIds`)) {
          sprintf(
          '"compoundIds":
             [%s]
          ',
          paste(unlist(lapply(self$`compoundIds`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`fallbackAdducts`)) {
          sprintf(
          '"fallbackAdducts":
             [%s]
          ',
          paste(unlist(lapply(self$`fallbackAdducts`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`enforcedAdducts`)) {
          sprintf(
          '"enforcedAdducts":
             [%s]
          ',
          paste(unlist(lapply(self$`enforcedAdducts`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`detectableAdducts`)) {
          sprintf(
          '"detectableAdducts":
             [%s]
          ',
          paste(unlist(lapply(self$`detectableAdducts`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`recompute`)) {
          sprintf(
          '"recompute":
            %s
                    ',
          tolower(self$`recompute`)
          )
        },
        if (!is.null(self$`formulaIdParas`)) {
          sprintf(
          '"formulaIdParas":
          %s
          ',
          jsonlite::toJSON(self$`formulaIdParas`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`zodiacParas`)) {
          sprintf(
          '"zodiacParas":
          %s
          ',
          jsonlite::toJSON(self$`zodiacParas`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`fingerprintPredictionParas`)) {
          sprintf(
          '"fingerprintPredictionParas":
          %s
          ',
          jsonlite::toJSON(self$`fingerprintPredictionParas`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`structureDbSearchParas`)) {
          sprintf(
          '"structureDbSearchParas":
          %s
          ',
          jsonlite::toJSON(self$`structureDbSearchParas`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`canopusParas`)) {
          sprintf(
          '"canopusParas":
          %s
          ',
          jsonlite::toJSON(self$`canopusParas`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`configMap`)) {
          sprintf(
          '"configMap":
            %s
          ',
          jsonlite::toJSON(lapply(self$`configMap`, function(x){ x }), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of JobSubmission
    #'
    #' @description
    #' Deserialize JSON string into an instance of JobSubmission
    #'
    #' @param input_json the JSON input
    #' @return the instance of JobSubmission
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`compoundIds` <- ApiClient$new()$deserializeObj(this_object$`compoundIds`, "array[character]", loadNamespace("Rsirius"))
      self$`fallbackAdducts` <- ApiClient$new()$deserializeObj(this_object$`fallbackAdducts`, "array[character]", loadNamespace("Rsirius"))
      self$`enforcedAdducts` <- ApiClient$new()$deserializeObj(this_object$`enforcedAdducts`, "array[character]", loadNamespace("Rsirius"))
      self$`detectableAdducts` <- ApiClient$new()$deserializeObj(this_object$`detectableAdducts`, "array[character]", loadNamespace("Rsirius"))
      self$`recompute` <- this_object$`recompute`
      self$`formulaIdParas` <- Sirius$new()$fromJSON(jsonlite::toJSON(this_object$formulaIdParas, auto_unbox = TRUE, digits = NA))
      self$`zodiacParas` <- Zodiac$new()$fromJSON(jsonlite::toJSON(this_object$zodiacParas, auto_unbox = TRUE, digits = NA))
      self$`fingerprintPredictionParas` <- FingerprintPrediction$new()$fromJSON(jsonlite::toJSON(this_object$fingerprintPredictionParas, auto_unbox = TRUE, digits = NA))
      self$`structureDbSearchParas` <- StructureDbSearch$new()$fromJSON(jsonlite::toJSON(this_object$structureDbSearchParas, auto_unbox = TRUE, digits = NA))
      self$`canopusParas` <- Canopus$new()$fromJSON(jsonlite::toJSON(this_object$canopusParas, auto_unbox = TRUE, digits = NA))
      self$`configMap` <- ApiClient$new()$deserializeObj(this_object$`configMap`, "map(character)", loadNamespace("Rsirius"))
      self
    },
    #' Validate JSON input with respect to JobSubmission
    #'
    #' @description
    #' Validate JSON input with respect to JobSubmission and throw an exception if invalid
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
    #' @return String representation of JobSubmission
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
# JobSubmission$unlock()
#
## Below is an example to define the print function
# JobSubmission$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# JobSubmission$lock()

