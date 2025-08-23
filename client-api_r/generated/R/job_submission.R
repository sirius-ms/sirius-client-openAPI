#' Create a new JobSubmission
#'
#' @description
#' Object to submit a job to be executed by SIRIUS
#'
#' @docType class
#' @title JobSubmission
#' @description JobSubmission Class
#' @format An \code{R6Class} generator object
#' @field compoundIds Compounds that should be the input for this Job  Will be converted to the respective alignedFeatureIds for computation.   At least one compoundId or alignedFeatureId needs to be specified. list(character) [optional]
#' @field alignedFeatureIds Features (aligned over runs) that should be the input for this Job   At least one compoundId or alignedFeatureId needs to be specified. list(character) [optional]
#' @field fallbackAdducts Describes how to deal with Adducts: Fallback adducts are considered if the auto detection did not find any indication for an ion mode.  Pos Examples: [M+H]+,[M]+,[M+K]+,[M+Na]+,[M+H-H2O]+,[M+Na2-H]+,[M+2K-H]+,[M+NH4]+,[M+H3O]+,[M+MeOH+H]+,[M+ACN+H]+,[M+2ACN+H]+,[M+IPA+H]+,[M+ACN+Na]+,[M+DMSO+H]+  Neg Examples: [M-H]-,[M]-,[M+K-2H]-,[M+Cl]-,[M-H2O-H]-,[M+Na-2H]-,M+FA-H]-,[M+Br]-,[M+HAc-H]-,[M+TFA-H]-,[M+ACN-H]- list(character) [optional]
#' @field enforcedAdducts Describes how to deal with Adducts:  Enforced adducts that are always considered.  Pos Examples: [M+H]+,[M]+,[M+K]+,[M+Na]+,[M+H-H2O]+,[M+Na2-H]+,[M+2K-H]+,[M+NH4]+,[M+H3O]+,[M+MeOH+H]+,[M+ACN+H]+,[M+2ACN+H]+,[M+IPA+H]+,[M+ACN+Na]+,[M+DMSO+H]+  Neg Examples: [M-H]-,[M]-,[M+K-2H]-,[M+Cl]-,[M-H2O-H]-,[M+Na-2H]-,M+FA-H]-,[M+Br]-,[M+HAc-H]-,[M+TFA-H]-,[M+ACN-H]- list(character) [optional]
#' @field detectableAdducts Describes how to deal with Adducts: Detectable adducts which are only considered if there is an indication in the MS1 scan (e.g. correct mass delta).  Pos Examples: [M+H]+,[M]+,[M+K]+,[M+Na]+,[M+H-H2O]+,[M+Na2-H]+,[M+2K-H]+,[M+NH4]+,[M+H3O]+,[M+MeOH+H]+,[M+ACN+H]+,[M+2ACN+H]+,[M+IPA+H]+,[M+ACN+Na]+,[M+DMSO+H]+  Neg Examples: [M-H]-,[M]-,[M+K-2H]-,[M+Cl]-,[M-H2O-H]-,[M+Na-2H]-,M+FA-H]-,[M+Br]-,[M+HAc-H]-,[M+TFA-H]-,[M+ACN-H]- list(character) [optional]
#' @field recompute Indicate if already existing result for a tool to be executed should be overwritten or not. character [optional]
#' @field spectraSearchParams Parameter Object for spectral library search tool (CLI-Tool: spectra-search).  Library search results can be used to enhance formula search results  If NULL the tool will not be executed. \link{SpectralLibrarySearch} [optional]
#' @field formulaIdParams Parameter Object for molecular formula identification tool (CLI-Tool: formula, sirius).  If NULL the tool will not be executed. \link{Sirius} [optional]
#' @field zodiacParams Parameter Object for network  based molecular formula re-ranking (CLI-Tool: zodiac).  If NULL the tool will not be executed. \link{Zodiac} [optional]
#' @field fingerprintPredictionParams Parameter Object for Fingerprint prediction with CSI:FingerID (CLI-Tool: fingerint).  If NULL the tool will not be executed. \link{FingerprintPrediction} [optional]
#' @field canopusParams Parameter Object for CANOPUS compound class prediction tool (CLI-Tool: canopus).  If NULL the tool will not be executed. \link{Canopus} [optional]
#' @field structureDbSearchParams Parameter Object for structure database search with CSI:FingerID (CLI-Tool: structure).  If NULL the tool will not be executed. \link{StructureDbSearch} [optional]
#' @field msNovelistParams Parameter Object for MsNovelist DeNovo structure generation (CLI-Tool: msnovelist)  If NULL the tool will not be executed. \link{MsNovelist} [optional]
#' @field configMap As an alternative to the object based parameters, this map allows to store key value pairs  of ALL SIRIUS parameters. All possible parameters can be retrieved from SIRIUS via the respective endpoint. named list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
JobSubmission <- R6::R6Class(
  "JobSubmission",
  public = list(
    `compoundIds` = NULL,
    `alignedFeatureIds` = NULL,
    `fallbackAdducts` = NULL,
    `enforcedAdducts` = NULL,
    `detectableAdducts` = NULL,
    `recompute` = NULL,
    `spectraSearchParams` = NULL,
    `formulaIdParams` = NULL,
    `zodiacParams` = NULL,
    `fingerprintPredictionParams` = NULL,
    `canopusParams` = NULL,
    `structureDbSearchParams` = NULL,
    `msNovelistParams` = NULL,
    `configMap` = NULL,

    #' @description
    #' Initialize a new JobSubmission class.
    #'
    #' @param compoundIds Compounds that should be the input for this Job  Will be converted to the respective alignedFeatureIds for computation.   At least one compoundId or alignedFeatureId needs to be specified.
    #' @param alignedFeatureIds Features (aligned over runs) that should be the input for this Job   At least one compoundId or alignedFeatureId needs to be specified.
    #' @param fallbackAdducts Describes how to deal with Adducts: Fallback adducts are considered if the auto detection did not find any indication for an ion mode.  Pos Examples: [M+H]+,[M]+,[M+K]+,[M+Na]+,[M+H-H2O]+,[M+Na2-H]+,[M+2K-H]+,[M+NH4]+,[M+H3O]+,[M+MeOH+H]+,[M+ACN+H]+,[M+2ACN+H]+,[M+IPA+H]+,[M+ACN+Na]+,[M+DMSO+H]+  Neg Examples: [M-H]-,[M]-,[M+K-2H]-,[M+Cl]-,[M-H2O-H]-,[M+Na-2H]-,M+FA-H]-,[M+Br]-,[M+HAc-H]-,[M+TFA-H]-,[M+ACN-H]-
    #' @param enforcedAdducts Describes how to deal with Adducts:  Enforced adducts that are always considered.  Pos Examples: [M+H]+,[M]+,[M+K]+,[M+Na]+,[M+H-H2O]+,[M+Na2-H]+,[M+2K-H]+,[M+NH4]+,[M+H3O]+,[M+MeOH+H]+,[M+ACN+H]+,[M+2ACN+H]+,[M+IPA+H]+,[M+ACN+Na]+,[M+DMSO+H]+  Neg Examples: [M-H]-,[M]-,[M+K-2H]-,[M+Cl]-,[M-H2O-H]-,[M+Na-2H]-,M+FA-H]-,[M+Br]-,[M+HAc-H]-,[M+TFA-H]-,[M+ACN-H]-
    #' @param detectableAdducts Describes how to deal with Adducts: Detectable adducts which are only considered if there is an indication in the MS1 scan (e.g. correct mass delta).  Pos Examples: [M+H]+,[M]+,[M+K]+,[M+Na]+,[M+H-H2O]+,[M+Na2-H]+,[M+2K-H]+,[M+NH4]+,[M+H3O]+,[M+MeOH+H]+,[M+ACN+H]+,[M+2ACN+H]+,[M+IPA+H]+,[M+ACN+Na]+,[M+DMSO+H]+  Neg Examples: [M-H]-,[M]-,[M+K-2H]-,[M+Cl]-,[M-H2O-H]-,[M+Na-2H]-,M+FA-H]-,[M+Br]-,[M+HAc-H]-,[M+TFA-H]-,[M+ACN-H]-
    #' @param recompute Indicate if already existing result for a tool to be executed should be overwritten or not.
    #' @param spectraSearchParams Parameter Object for spectral library search tool (CLI-Tool: spectra-search).  Library search results can be used to enhance formula search results  If NULL the tool will not be executed.
    #' @param formulaIdParams Parameter Object for molecular formula identification tool (CLI-Tool: formula, sirius).  If NULL the tool will not be executed.
    #' @param zodiacParams Parameter Object for network  based molecular formula re-ranking (CLI-Tool: zodiac).  If NULL the tool will not be executed.
    #' @param fingerprintPredictionParams Parameter Object for Fingerprint prediction with CSI:FingerID (CLI-Tool: fingerint).  If NULL the tool will not be executed.
    #' @param canopusParams Parameter Object for CANOPUS compound class prediction tool (CLI-Tool: canopus).  If NULL the tool will not be executed.
    #' @param structureDbSearchParams Parameter Object for structure database search with CSI:FingerID (CLI-Tool: structure).  If NULL the tool will not be executed.
    #' @param msNovelistParams Parameter Object for MsNovelist DeNovo structure generation (CLI-Tool: msnovelist)  If NULL the tool will not be executed.
    #' @param configMap As an alternative to the object based parameters, this map allows to store key value pairs  of ALL SIRIUS parameters. All possible parameters can be retrieved from SIRIUS via the respective endpoint.
    #' @param ... Other optional arguments.
    initialize = function(`compoundIds` = NULL, `alignedFeatureIds` = NULL, `fallbackAdducts` = NULL, `enforcedAdducts` = NULL, `detectableAdducts` = NULL, `recompute` = NULL, `spectraSearchParams` = NULL, `formulaIdParams` = NULL, `zodiacParams` = NULL, `fingerprintPredictionParams` = NULL, `canopusParams` = NULL, `structureDbSearchParams` = NULL, `msNovelistParams` = NULL, `configMap` = NULL, ...) {
      if (!is.null(`compoundIds`)) {
        stopifnot(is.vector(`compoundIds`), length(`compoundIds`) != 0)
        sapply(`compoundIds`, function(x) stopifnot(is.character(x)))
        self$`compoundIds` <- `compoundIds`
      }
      if (!is.null(`alignedFeatureIds`)) {
        stopifnot(is.vector(`alignedFeatureIds`), length(`alignedFeatureIds`) != 0)
        sapply(`alignedFeatureIds`, function(x) stopifnot(is.character(x)))
        self$`alignedFeatureIds` <- `alignedFeatureIds`
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
      if (!is.null(`spectraSearchParams`)) {
        stopifnot(R6::is.R6(`spectraSearchParams`))
        self$`spectraSearchParams` <- `spectraSearchParams`
      }
      if (!is.null(`formulaIdParams`)) {
        stopifnot(R6::is.R6(`formulaIdParams`))
        self$`formulaIdParams` <- `formulaIdParams`
      }
      if (!is.null(`zodiacParams`)) {
        stopifnot(R6::is.R6(`zodiacParams`))
        self$`zodiacParams` <- `zodiacParams`
      }
      if (!is.null(`fingerprintPredictionParams`)) {
        stopifnot(R6::is.R6(`fingerprintPredictionParams`))
        self$`fingerprintPredictionParams` <- `fingerprintPredictionParams`
      }
      if (!is.null(`canopusParams`)) {
        stopifnot(R6::is.R6(`canopusParams`))
        self$`canopusParams` <- `canopusParams`
      }
      if (!is.null(`structureDbSearchParams`)) {
        stopifnot(R6::is.R6(`structureDbSearchParams`))
        self$`structureDbSearchParams` <- `structureDbSearchParams`
      }
      if (!is.null(`msNovelistParams`)) {
        stopifnot(R6::is.R6(`msNovelistParams`))
        self$`msNovelistParams` <- `msNovelistParams`
      }
      if (!is.null(`configMap`)) {
        stopifnot(is.vector(`configMap`), length(`configMap`) != 0)
        sapply(`configMap`, function(x) stopifnot(is.character(x)))
        self$`configMap` <- `configMap`
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
    #' @return JobSubmission as a base R list.
    #' @examples
    #' # convert array of JobSubmission (x) to a data frame
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
    #' Convert JobSubmission to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      JobSubmissionObject <- list()
      if (!is.null(self$`compoundIds`)) {
        JobSubmissionObject[["compoundIds"]] <-
          self$`compoundIds`
      }
      if (!is.null(self$`alignedFeatureIds`)) {
        JobSubmissionObject[["alignedFeatureIds"]] <-
          self$`alignedFeatureIds`
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
      if (!is.null(self$`spectraSearchParams`)) {
        JobSubmissionObject[["spectraSearchParams"]] <-
          self$`spectraSearchParams`$toSimpleType()
      }
      if (!is.null(self$`formulaIdParams`)) {
        JobSubmissionObject[["formulaIdParams"]] <-
          self$`formulaIdParams`$toSimpleType()
      }
      if (!is.null(self$`zodiacParams`)) {
        JobSubmissionObject[["zodiacParams"]] <-
          self$`zodiacParams`$toSimpleType()
      }
      if (!is.null(self$`fingerprintPredictionParams`)) {
        JobSubmissionObject[["fingerprintPredictionParams"]] <-
          self$`fingerprintPredictionParams`$toSimpleType()
      }
      if (!is.null(self$`canopusParams`)) {
        JobSubmissionObject[["canopusParams"]] <-
          self$`canopusParams`$toSimpleType()
      }
      if (!is.null(self$`structureDbSearchParams`)) {
        JobSubmissionObject[["structureDbSearchParams"]] <-
          self$`structureDbSearchParams`$toSimpleType()
      }
      if (!is.null(self$`msNovelistParams`)) {
        JobSubmissionObject[["msNovelistParams"]] <-
          self$`msNovelistParams`$toSimpleType()
      }
      if (!is.null(self$`configMap`)) {
        JobSubmissionObject[["configMap"]] <-
          self$`configMap`
      }
      return(JobSubmissionObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of JobSubmission
    #'
    #' @param input_json the JSON input
    #' @return the instance of JobSubmission
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`compoundIds`)) {
        self$`compoundIds` <- ApiClient$new()$deserializeObj(this_object$`compoundIds`, "array[character]", loadNamespace("Rsirius"))
      }
      if (!is.null(this_object$`alignedFeatureIds`)) {
        self$`alignedFeatureIds` <- ApiClient$new()$deserializeObj(this_object$`alignedFeatureIds`, "array[character]", loadNamespace("Rsirius"))
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
      if (!is.null(this_object$`spectraSearchParams`)) {
        `spectrasearchparams_object` <- SpectralLibrarySearch$new()
        `spectrasearchparams_object`$fromJSON(jsonlite::toJSON(this_object$`spectraSearchParams`, auto_unbox = TRUE, digits = NA, null = 'null'))
        self$`spectraSearchParams` <- `spectrasearchparams_object`
      }
      if (!is.null(this_object$`formulaIdParams`)) {
        `formulaidparams_object` <- Sirius$new()
        `formulaidparams_object`$fromJSON(jsonlite::toJSON(this_object$`formulaIdParams`, auto_unbox = TRUE, digits = NA, null = 'null'))
        self$`formulaIdParams` <- `formulaidparams_object`
      }
      if (!is.null(this_object$`zodiacParams`)) {
        `zodiacparams_object` <- Zodiac$new()
        `zodiacparams_object`$fromJSON(jsonlite::toJSON(this_object$`zodiacParams`, auto_unbox = TRUE, digits = NA, null = 'null'))
        self$`zodiacParams` <- `zodiacparams_object`
      }
      if (!is.null(this_object$`fingerprintPredictionParams`)) {
        `fingerprintpredictionparams_object` <- FingerprintPrediction$new()
        `fingerprintpredictionparams_object`$fromJSON(jsonlite::toJSON(this_object$`fingerprintPredictionParams`, auto_unbox = TRUE, digits = NA, null = 'null'))
        self$`fingerprintPredictionParams` <- `fingerprintpredictionparams_object`
      }
      if (!is.null(this_object$`canopusParams`)) {
        `canopusparams_object` <- Canopus$new()
        `canopusparams_object`$fromJSON(jsonlite::toJSON(this_object$`canopusParams`, auto_unbox = TRUE, digits = NA, null = 'null'))
        self$`canopusParams` <- `canopusparams_object`
      }
      if (!is.null(this_object$`structureDbSearchParams`)) {
        `structuredbsearchparams_object` <- StructureDbSearch$new()
        `structuredbsearchparams_object`$fromJSON(jsonlite::toJSON(this_object$`structureDbSearchParams`, auto_unbox = TRUE, digits = NA, null = 'null'))
        self$`structureDbSearchParams` <- `structuredbsearchparams_object`
      }
      if (!is.null(this_object$`msNovelistParams`)) {
        `msnovelistparams_object` <- MsNovelist$new()
        `msnovelistparams_object`$fromJSON(jsonlite::toJSON(this_object$`msNovelistParams`, auto_unbox = TRUE, digits = NA, null = 'null'))
        self$`msNovelistParams` <- `msnovelistparams_object`
      }
      if (!is.null(this_object$`configMap`)) {
        self$`configMap` <- ApiClient$new()$deserializeObj(this_object$`configMap`, "map(character)", loadNamespace("Rsirius"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return JobSubmission in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of JobSubmission
    #'
    #' @param input_json the JSON input
    #' @return the instance of JobSubmission
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`compoundIds` <- ApiClient$new()$deserializeObj(this_object$`compoundIds`, "array[character]", loadNamespace("Rsirius"))
      self$`alignedFeatureIds` <- ApiClient$new()$deserializeObj(this_object$`alignedFeatureIds`, "array[character]", loadNamespace("Rsirius"))
      self$`fallbackAdducts` <- ApiClient$new()$deserializeObj(this_object$`fallbackAdducts`, "array[character]", loadNamespace("Rsirius"))
      self$`enforcedAdducts` <- ApiClient$new()$deserializeObj(this_object$`enforcedAdducts`, "array[character]", loadNamespace("Rsirius"))
      self$`detectableAdducts` <- ApiClient$new()$deserializeObj(this_object$`detectableAdducts`, "array[character]", loadNamespace("Rsirius"))
      self$`recompute` <- this_object$`recompute`
      self$`spectraSearchParams` <- SpectralLibrarySearch$new()$fromJSON(jsonlite::toJSON(this_object$`spectraSearchParams`, auto_unbox = TRUE, digits = NA, null = 'null'))
      self$`formulaIdParams` <- Sirius$new()$fromJSON(jsonlite::toJSON(this_object$`formulaIdParams`, auto_unbox = TRUE, digits = NA, null = 'null'))
      self$`zodiacParams` <- Zodiac$new()$fromJSON(jsonlite::toJSON(this_object$`zodiacParams`, auto_unbox = TRUE, digits = NA, null = 'null'))
      self$`fingerprintPredictionParams` <- FingerprintPrediction$new()$fromJSON(jsonlite::toJSON(this_object$`fingerprintPredictionParams`, auto_unbox = TRUE, digits = NA, null = 'null'))
      self$`canopusParams` <- Canopus$new()$fromJSON(jsonlite::toJSON(this_object$`canopusParams`, auto_unbox = TRUE, digits = NA, null = 'null'))
      self$`structureDbSearchParams` <- StructureDbSearch$new()$fromJSON(jsonlite::toJSON(this_object$`structureDbSearchParams`, auto_unbox = TRUE, digits = NA, null = 'null'))
      self$`msNovelistParams` <- MsNovelist$new()$fromJSON(jsonlite::toJSON(this_object$`msNovelistParams`, auto_unbox = TRUE, digits = NA, null = 'null'))
      self$`configMap` <- ApiClient$new()$deserializeObj(this_object$`configMap`, "map(character)", loadNamespace("Rsirius"))
      self
    },

    #' @description
    #' Validate JSON input with respect to JobSubmission and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of JobSubmission
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
# JobSubmission$unlock()
#
## Below is an example to define the print function
# JobSubmission$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# JobSubmission$lock()

