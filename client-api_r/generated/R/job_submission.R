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
#' @field spectraSearchParams  \link{SpectralLibrarySearch} [optional]
#' @field formulaIdParams  \link{Sirius} [optional]
#' @field zodiacParams  \link{Zodiac} [optional]
#' @field fingerprintPredictionParams  \link{FingerprintPrediction} [optional]
#' @field canopusParams  \link{Canopus} [optional]
#' @field structureDbSearchParams  \link{StructureDbSearch} [optional]
#' @field msNovelistParams  \link{MsNovelist} [optional]
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
    #' Initialize a new JobSubmission class.
    #'
    #' @description
    #' Initialize a new JobSubmission class.
    #'
    #' @param compoundIds Compounds that should be the input for this Job  Will be converted to the respective alignedFeatureIds for computation.   At least one compoundId or alignedFeatureId needs to be specified.
    #' @param alignedFeatureIds Features (aligned over runs) that should be the input for this Job   At least one compoundId or alignedFeatureId needs to be specified.
    #' @param fallbackAdducts Describes how to deal with Adducts: Fallback adducts are considered if the auto detection did not find any indication for an ion mode.  Pos Examples: [M+H]+,[M]+,[M+K]+,[M+Na]+,[M+H-H2O]+,[M+Na2-H]+,[M+2K-H]+,[M+NH4]+,[M+H3O]+,[M+MeOH+H]+,[M+ACN+H]+,[M+2ACN+H]+,[M+IPA+H]+,[M+ACN+Na]+,[M+DMSO+H]+  Neg Examples: [M-H]-,[M]-,[M+K-2H]-,[M+Cl]-,[M-H2O-H]-,[M+Na-2H]-,M+FA-H]-,[M+Br]-,[M+HAc-H]-,[M+TFA-H]-,[M+ACN-H]-
    #' @param enforcedAdducts Describes how to deal with Adducts:  Enforced adducts that are always considered.  Pos Examples: [M+H]+,[M]+,[M+K]+,[M+Na]+,[M+H-H2O]+,[M+Na2-H]+,[M+2K-H]+,[M+NH4]+,[M+H3O]+,[M+MeOH+H]+,[M+ACN+H]+,[M+2ACN+H]+,[M+IPA+H]+,[M+ACN+Na]+,[M+DMSO+H]+  Neg Examples: [M-H]-,[M]-,[M+K-2H]-,[M+Cl]-,[M-H2O-H]-,[M+Na-2H]-,M+FA-H]-,[M+Br]-,[M+HAc-H]-,[M+TFA-H]-,[M+ACN-H]-
    #' @param detectableAdducts Describes how to deal with Adducts: Detectable adducts which are only considered if there is an indication in the MS1 scan (e.g. correct mass delta).  Pos Examples: [M+H]+,[M]+,[M+K]+,[M+Na]+,[M+H-H2O]+,[M+Na2-H]+,[M+2K-H]+,[M+NH4]+,[M+H3O]+,[M+MeOH+H]+,[M+ACN+H]+,[M+2ACN+H]+,[M+IPA+H]+,[M+ACN+Na]+,[M+DMSO+H]+  Neg Examples: [M-H]-,[M]-,[M+K-2H]-,[M+Cl]-,[M-H2O-H]-,[M+Na-2H]-,M+FA-H]-,[M+Br]-,[M+HAc-H]-,[M+TFA-H]-,[M+ACN-H]-
    #' @param recompute Indicate if already existing result for a tool to be executed should be overwritten or not.
    #' @param spectraSearchParams spectraSearchParams
    #' @param formulaIdParams formulaIdParams
    #' @param zodiacParams zodiacParams
    #' @param fingerprintPredictionParams fingerprintPredictionParams
    #' @param canopusParams canopusParams
    #' @param structureDbSearchParams structureDbSearchParams
    #' @param msNovelistParams msNovelistParams
    #' @param configMap As an alternative to the object based parameters, this map allows to store key value pairs  of ALL SIRIUS parameters. All possible parameters can be retrieved from SIRIUS via the respective endpoint.
    #' @param ... Other optional arguments.
    #' @export
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
          if (is.list(self$`spectraSearchParams`$toJSON()) && length(self$`spectraSearchParams`$toJSON()) == 0L){
            NULL
          } else if (length(names(self$`spectraSearchParams`$toJSON())) == 0L && is.character(jsonlite::fromJSON(self$`spectraSearchParams`$toJSON()))) {
            jsonlite::fromJSON(self$`spectraSearchParams`$toJSON())
          } else {
            self$`spectraSearchParams`$toJSON()
          }
      }
      if (!is.null(self$`formulaIdParams`)) {
        JobSubmissionObject[["formulaIdParams"]] <-
          if (is.list(self$`formulaIdParams`$toJSON()) && length(self$`formulaIdParams`$toJSON()) == 0L){
            NULL
          } else if (length(names(self$`formulaIdParams`$toJSON())) == 0L && is.character(jsonlite::fromJSON(self$`formulaIdParams`$toJSON()))) {
            jsonlite::fromJSON(self$`formulaIdParams`$toJSON())
          } else {
            self$`formulaIdParams`$toJSON()
          }
      }
      if (!is.null(self$`zodiacParams`)) {
        JobSubmissionObject[["zodiacParams"]] <-
          if (is.list(self$`zodiacParams`$toJSON()) && length(self$`zodiacParams`$toJSON()) == 0L){
            NULL
          } else if (length(names(self$`zodiacParams`$toJSON())) == 0L && is.character(jsonlite::fromJSON(self$`zodiacParams`$toJSON()))) {
            jsonlite::fromJSON(self$`zodiacParams`$toJSON())
          } else {
            self$`zodiacParams`$toJSON()
          }
      }
      if (!is.null(self$`fingerprintPredictionParams`)) {
        JobSubmissionObject[["fingerprintPredictionParams"]] <-
          if (is.list(self$`fingerprintPredictionParams`$toJSON()) && length(self$`fingerprintPredictionParams`$toJSON()) == 0L){
            NULL
          } else if (length(names(self$`fingerprintPredictionParams`$toJSON())) == 0L && is.character(jsonlite::fromJSON(self$`fingerprintPredictionParams`$toJSON()))) {
            jsonlite::fromJSON(self$`fingerprintPredictionParams`$toJSON())
          } else {
            self$`fingerprintPredictionParams`$toJSON()
          }
      }
      if (!is.null(self$`canopusParams`)) {
        JobSubmissionObject[["canopusParams"]] <-
          if (is.list(self$`canopusParams`$toJSON()) && length(self$`canopusParams`$toJSON()) == 0L){
            NULL
          } else if (length(names(self$`canopusParams`$toJSON())) == 0L && is.character(jsonlite::fromJSON(self$`canopusParams`$toJSON()))) {
            jsonlite::fromJSON(self$`canopusParams`$toJSON())
          } else {
            self$`canopusParams`$toJSON()
          }
      }
      if (!is.null(self$`structureDbSearchParams`)) {
        JobSubmissionObject[["structureDbSearchParams"]] <-
          if (is.list(self$`structureDbSearchParams`$toJSON()) && length(self$`structureDbSearchParams`$toJSON()) == 0L){
            NULL
          } else if (length(names(self$`structureDbSearchParams`$toJSON())) == 0L && is.character(jsonlite::fromJSON(self$`structureDbSearchParams`$toJSON()))) {
            jsonlite::fromJSON(self$`structureDbSearchParams`$toJSON())
          } else {
            self$`structureDbSearchParams`$toJSON()
          }
      }
      if (!is.null(self$`msNovelistParams`)) {
        JobSubmissionObject[["msNovelistParams"]] <-
          if (is.list(self$`msNovelistParams`$toJSON()) && length(self$`msNovelistParams`$toJSON()) == 0L){
            NULL
          } else if (length(names(self$`msNovelistParams`$toJSON())) == 0L && is.character(jsonlite::fromJSON(self$`msNovelistParams`$toJSON()))) {
            jsonlite::fromJSON(self$`msNovelistParams`$toJSON())
          } else {
            self$`msNovelistParams`$toJSON()
          }
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
        `spectrasearchparams_object`$fromJSON(jsonlite::toJSON(this_object$`spectraSearchParams`, auto_unbox = TRUE, digits = NA))
        self$`spectraSearchParams` <- `spectrasearchparams_object`
      }
      if (!is.null(this_object$`formulaIdParams`)) {
        `formulaidparams_object` <- Sirius$new()
        `formulaidparams_object`$fromJSON(jsonlite::toJSON(this_object$`formulaIdParams`, auto_unbox = TRUE, digits = NA))
        self$`formulaIdParams` <- `formulaidparams_object`
      }
      if (!is.null(this_object$`zodiacParams`)) {
        `zodiacparams_object` <- Zodiac$new()
        `zodiacparams_object`$fromJSON(jsonlite::toJSON(this_object$`zodiacParams`, auto_unbox = TRUE, digits = NA))
        self$`zodiacParams` <- `zodiacparams_object`
      }
      if (!is.null(this_object$`fingerprintPredictionParams`)) {
        `fingerprintpredictionparams_object` <- FingerprintPrediction$new()
        `fingerprintpredictionparams_object`$fromJSON(jsonlite::toJSON(this_object$`fingerprintPredictionParams`, auto_unbox = TRUE, digits = NA))
        self$`fingerprintPredictionParams` <- `fingerprintpredictionparams_object`
      }
      if (!is.null(this_object$`canopusParams`)) {
        `canopusparams_object` <- Canopus$new()
        `canopusparams_object`$fromJSON(jsonlite::toJSON(this_object$`canopusParams`, auto_unbox = TRUE, digits = NA))
        self$`canopusParams` <- `canopusparams_object`
      }
      if (!is.null(this_object$`structureDbSearchParams`)) {
        `structuredbsearchparams_object` <- StructureDbSearch$new()
        `structuredbsearchparams_object`$fromJSON(jsonlite::toJSON(this_object$`structureDbSearchParams`, auto_unbox = TRUE, digits = NA))
        self$`structureDbSearchParams` <- `structuredbsearchparams_object`
      }
      if (!is.null(this_object$`msNovelistParams`)) {
        `msnovelistparams_object` <- MsNovelist$new()
        `msnovelistparams_object`$fromJSON(jsonlite::toJSON(this_object$`msNovelistParams`, auto_unbox = TRUE, digits = NA))
        self$`msNovelistParams` <- `msnovelistparams_object`
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
        if (!is.null(self$`alignedFeatureIds`)) {
          sprintf(
          '"alignedFeatureIds":
             [%s]
          ',
          paste(unlist(lapply(self$`alignedFeatureIds`, function(x) paste0('"', x, '"'))), collapse = ",")
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
        if (!is.null(self$`spectraSearchParams`)) {
          sprintf(
          '"spectraSearchParams":
          %s
          ',
          jsonlite::toJSON(self$`spectraSearchParams`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`formulaIdParams`)) {
          sprintf(
          '"formulaIdParams":
          %s
          ',
          jsonlite::toJSON(self$`formulaIdParams`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`zodiacParams`)) {
          sprintf(
          '"zodiacParams":
          %s
          ',
          jsonlite::toJSON(self$`zodiacParams`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`fingerprintPredictionParams`)) {
          sprintf(
          '"fingerprintPredictionParams":
          %s
          ',
          jsonlite::toJSON(self$`fingerprintPredictionParams`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`canopusParams`)) {
          sprintf(
          '"canopusParams":
          %s
          ',
          jsonlite::toJSON(self$`canopusParams`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`structureDbSearchParams`)) {
          sprintf(
          '"structureDbSearchParams":
          %s
          ',
          jsonlite::toJSON(self$`structureDbSearchParams`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`msNovelistParams`)) {
          sprintf(
          '"msNovelistParams":
          %s
          ',
          jsonlite::toJSON(self$`msNovelistParams`$toJSON(), auto_unbox = TRUE, digits = NA)
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
      # remove c() occurences
      jsoncontent <- gsub('c\\((.*?)\\)', '\\1', jsoncontent)
      # reduce resulting double escaped quotes \"\" into \"
      jsoncontent <- gsub('\\\"\\\"+', '\\\"', jsoncontent)
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
      self$`alignedFeatureIds` <- ApiClient$new()$deserializeObj(this_object$`alignedFeatureIds`, "array[character]", loadNamespace("Rsirius"))
      self$`fallbackAdducts` <- ApiClient$new()$deserializeObj(this_object$`fallbackAdducts`, "array[character]", loadNamespace("Rsirius"))
      self$`enforcedAdducts` <- ApiClient$new()$deserializeObj(this_object$`enforcedAdducts`, "array[character]", loadNamespace("Rsirius"))
      self$`detectableAdducts` <- ApiClient$new()$deserializeObj(this_object$`detectableAdducts`, "array[character]", loadNamespace("Rsirius"))
      self$`recompute` <- this_object$`recompute`
      self$`spectraSearchParams` <- SpectralLibrarySearch$new()$fromJSON(jsonlite::toJSON(this_object$`spectraSearchParams`, auto_unbox = TRUE, digits = NA))
      self$`formulaIdParams` <- Sirius$new()$fromJSON(jsonlite::toJSON(this_object$`formulaIdParams`, auto_unbox = TRUE, digits = NA))
      self$`zodiacParams` <- Zodiac$new()$fromJSON(jsonlite::toJSON(this_object$`zodiacParams`, auto_unbox = TRUE, digits = NA))
      self$`fingerprintPredictionParams` <- FingerprintPrediction$new()$fromJSON(jsonlite::toJSON(this_object$`fingerprintPredictionParams`, auto_unbox = TRUE, digits = NA))
      self$`canopusParams` <- Canopus$new()$fromJSON(jsonlite::toJSON(this_object$`canopusParams`, auto_unbox = TRUE, digits = NA))
      self$`structureDbSearchParams` <- StructureDbSearch$new()$fromJSON(jsonlite::toJSON(this_object$`structureDbSearchParams`, auto_unbox = TRUE, digits = NA))
      self$`msNovelistParams` <- MsNovelist$new()$fromJSON(jsonlite::toJSON(this_object$`msNovelistParams`, auto_unbox = TRUE, digits = NA))
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

