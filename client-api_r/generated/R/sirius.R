#' Create a new Sirius
#'
#' @description
#' User/developer friendly parameter subset for the Formula/SIRIUS tool
#'
#' @docType class
#' @title Sirius
#' @description Sirius Class
#' @format An \code{R6Class} generator object
#' @field enabled tags whether the tool is enabled character [optional]
#' @field profile Instrument specific profile for internal algorithms  Just select what comes closest to the instrument that was used for measuring the data. character [optional]
#' @field numberOfCandidates Number of formula candidates to keep as result list (Formula Candidates). integer [optional]
#' @field numberOfCandidatesPerIon Use this parameter if you want to force SIRIUS to report at least  NumberOfCandidatesPerIon results per ionization.  if <= 0, this parameter will have no effect and just the top  NumberOfCandidates results will be reported. integer [optional]
#' @field massAccuracyMS2ppm Maximum allowed mass accuracy. Only molecular formulas within this mass window are considered. numeric [optional]
#' @field isotopeMs2Settings Specify how isotope patterns in MS/MS should be handled.  <p>  FILTER: When filtering is enabled, molecular formulas are excluded if their  theoretical isotope pattern does not match the theoretical one, even if their MS/MS pattern has high score.  <p>  SCORE: Use them for SCORING. To use this the instrument should produce clear MS/MS isotope patterns  <p>  IGNORE: Ignore that there might be isotope patterns in MS/MS character [optional]
#' @field formulaSearchDBs List Structure database to extract molecular formulas from to reduce formula search space.  SIRIUS is quite good at de novo formula annotation, so only enable if you have a good reason. list(character) [optional]
#' @field enforcedFormulaConstraints These configurations hold the information how to autodetect elements based on the given formula constraints.  Note: If the compound is already assigned to a specific molecular formula, this annotation is ignored.  <p>  Enforced: Enforced elements are always considered character [optional]
#' @field fallbackFormulaConstraints These configurations hold the information how to autodetect elements based on the given formula constraints.  Note: If the compound is already assigned to a specific molecular formula, this annotation is ignored.  <p>  Fallback: Fallback elements are used, if the auto-detection fails (e.g. no isotope pattern available) character [optional]
#' @field detectableElements These configurations hold the information how to autodetect elements based on the given formula constraints.  Note: If the compound is already assigned to a specific molecular formula, this annotation is ignored.  <p>  Detectable: Detectable elements are added to the chemical alphabet, if there are indications for them (e.g. in isotope pattern) list(character) [optional]
#' @field ilpTimeout  \link{Timeout} [optional]
#' @field useHeuristic  \link{UseHeuristic} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Sirius <- R6::R6Class(
  "Sirius",
  public = list(
    `enabled` = NULL,
    `profile` = NULL,
    `numberOfCandidates` = NULL,
    `numberOfCandidatesPerIon` = NULL,
    `massAccuracyMS2ppm` = NULL,
    `isotopeMs2Settings` = NULL,
    `formulaSearchDBs` = NULL,
    `enforcedFormulaConstraints` = NULL,
    `fallbackFormulaConstraints` = NULL,
    `detectableElements` = NULL,
    `ilpTimeout` = NULL,
    `useHeuristic` = NULL,
    #' Initialize a new Sirius class.
    #'
    #' @description
    #' Initialize a new Sirius class.
    #'
    #' @param enabled tags whether the tool is enabled
    #' @param profile Instrument specific profile for internal algorithms  Just select what comes closest to the instrument that was used for measuring the data.
    #' @param numberOfCandidates Number of formula candidates to keep as result list (Formula Candidates).
    #' @param numberOfCandidatesPerIon Use this parameter if you want to force SIRIUS to report at least  NumberOfCandidatesPerIon results per ionization.  if <= 0, this parameter will have no effect and just the top  NumberOfCandidates results will be reported.
    #' @param massAccuracyMS2ppm Maximum allowed mass accuracy. Only molecular formulas within this mass window are considered.
    #' @param isotopeMs2Settings Specify how isotope patterns in MS/MS should be handled.  <p>  FILTER: When filtering is enabled, molecular formulas are excluded if their  theoretical isotope pattern does not match the theoretical one, even if their MS/MS pattern has high score.  <p>  SCORE: Use them for SCORING. To use this the instrument should produce clear MS/MS isotope patterns  <p>  IGNORE: Ignore that there might be isotope patterns in MS/MS
    #' @param formulaSearchDBs List Structure database to extract molecular formulas from to reduce formula search space.  SIRIUS is quite good at de novo formula annotation, so only enable if you have a good reason.
    #' @param enforcedFormulaConstraints These configurations hold the information how to autodetect elements based on the given formula constraints.  Note: If the compound is already assigned to a specific molecular formula, this annotation is ignored.  <p>  Enforced: Enforced elements are always considered
    #' @param fallbackFormulaConstraints These configurations hold the information how to autodetect elements based on the given formula constraints.  Note: If the compound is already assigned to a specific molecular formula, this annotation is ignored.  <p>  Fallback: Fallback elements are used, if the auto-detection fails (e.g. no isotope pattern available)
    #' @param detectableElements These configurations hold the information how to autodetect elements based on the given formula constraints.  Note: If the compound is already assigned to a specific molecular formula, this annotation is ignored.  <p>  Detectable: Detectable elements are added to the chemical alphabet, if there are indications for them (e.g. in isotope pattern)
    #' @param ilpTimeout ilpTimeout
    #' @param useHeuristic useHeuristic
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`enabled` = NULL, `profile` = NULL, `numberOfCandidates` = NULL, `numberOfCandidatesPerIon` = NULL, `massAccuracyMS2ppm` = NULL, `isotopeMs2Settings` = NULL, `formulaSearchDBs` = NULL, `enforcedFormulaConstraints` = NULL, `fallbackFormulaConstraints` = NULL, `detectableElements` = NULL, `ilpTimeout` = NULL, `useHeuristic` = NULL, ...) {
      if (!is.null(`enabled`)) {
        if (!(is.logical(`enabled`) && length(`enabled`) == 1)) {
          stop(paste("Error! Invalid data for `enabled`. Must be a boolean:", `enabled`))
        }
        self$`enabled` <- `enabled`
      }
      if (!is.null(`profile`)) {
        if (!(`profile` %in% c("QTOF", "ORBI", "FTICR"))) {
          stop(paste("Error! \"", `profile`, "\" cannot be assigned to `profile`. Must be \"QTOF\", \"ORBI\", \"FTICR\".", sep = ""))
        }
        if (!(is.character(`profile`) && length(`profile`) == 1)) {
          stop(paste("Error! Invalid data for `profile`. Must be a string:", `profile`))
        }
        self$`profile` <- `profile`
      }
      if (!is.null(`numberOfCandidates`)) {
        if (!(is.numeric(`numberOfCandidates`) && length(`numberOfCandidates`) == 1)) {
          stop(paste("Error! Invalid data for `numberOfCandidates`. Must be an integer:", `numberOfCandidates`))
        }
        self$`numberOfCandidates` <- `numberOfCandidates`
      }
      if (!is.null(`numberOfCandidatesPerIon`)) {
        if (!(is.numeric(`numberOfCandidatesPerIon`) && length(`numberOfCandidatesPerIon`) == 1)) {
          stop(paste("Error! Invalid data for `numberOfCandidatesPerIon`. Must be an integer:", `numberOfCandidatesPerIon`))
        }
        self$`numberOfCandidatesPerIon` <- `numberOfCandidatesPerIon`
      }
      if (!is.null(`massAccuracyMS2ppm`)) {
        if (!(is.numeric(`massAccuracyMS2ppm`) && length(`massAccuracyMS2ppm`) == 1)) {
          stop(paste("Error! Invalid data for `massAccuracyMS2ppm`. Must be a number:", `massAccuracyMS2ppm`))
        }
        self$`massAccuracyMS2ppm` <- `massAccuracyMS2ppm`
      }
      if (!is.null(`isotopeMs2Settings`)) {
        if (!(`isotopeMs2Settings` %in% c("IGNORE", "FILTER", "SCORE"))) {
          stop(paste("Error! \"", `isotopeMs2Settings`, "\" cannot be assigned to `isotopeMs2Settings`. Must be \"IGNORE\", \"FILTER\", \"SCORE\".", sep = ""))
        }
        if (!(is.character(`isotopeMs2Settings`) && length(`isotopeMs2Settings`) == 1)) {
          stop(paste("Error! Invalid data for `isotopeMs2Settings`. Must be a string:", `isotopeMs2Settings`))
        }
        self$`isotopeMs2Settings` <- `isotopeMs2Settings`
      }
      if (!is.null(`formulaSearchDBs`)) {
        stopifnot(is.vector(`formulaSearchDBs`), length(`formulaSearchDBs`) != 0)
        sapply(`formulaSearchDBs`, function(x) stopifnot(is.character(x)))
        self$`formulaSearchDBs` <- `formulaSearchDBs`
      }
      if (!is.null(`enforcedFormulaConstraints`)) {
        if (!(is.character(`enforcedFormulaConstraints`) && length(`enforcedFormulaConstraints`) == 1)) {
          stop(paste("Error! Invalid data for `enforcedFormulaConstraints`. Must be a string:", `enforcedFormulaConstraints`))
        }
        self$`enforcedFormulaConstraints` <- `enforcedFormulaConstraints`
      }
      if (!is.null(`fallbackFormulaConstraints`)) {
        if (!(is.character(`fallbackFormulaConstraints`) && length(`fallbackFormulaConstraints`) == 1)) {
          stop(paste("Error! Invalid data for `fallbackFormulaConstraints`. Must be a string:", `fallbackFormulaConstraints`))
        }
        self$`fallbackFormulaConstraints` <- `fallbackFormulaConstraints`
      }
      if (!is.null(`detectableElements`)) {
        stopifnot(is.vector(`detectableElements`), length(`detectableElements`) != 0)
        sapply(`detectableElements`, function(x) stopifnot(is.character(x)))
        self$`detectableElements` <- `detectableElements`
      }
      if (!is.null(`ilpTimeout`)) {
        stopifnot(R6::is.R6(`ilpTimeout`))
        self$`ilpTimeout` <- `ilpTimeout`
      }
      if (!is.null(`useHeuristic`)) {
        stopifnot(R6::is.R6(`useHeuristic`))
        self$`useHeuristic` <- `useHeuristic`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return Sirius in JSON format
    #' @export
    toJSON = function() {
      SiriusObject <- list()
      if (!is.null(self$`enabled`)) {
        SiriusObject[["enabled"]] <-
          self$`enabled`
      }
      if (!is.null(self$`profile`)) {
        SiriusObject[["profile"]] <-
          self$`profile`
      }
      if (!is.null(self$`numberOfCandidates`)) {
        SiriusObject[["numberOfCandidates"]] <-
          self$`numberOfCandidates`
      }
      if (!is.null(self$`numberOfCandidatesPerIon`)) {
        SiriusObject[["numberOfCandidatesPerIon"]] <-
          self$`numberOfCandidatesPerIon`
      }
      if (!is.null(self$`massAccuracyMS2ppm`)) {
        SiriusObject[["massAccuracyMS2ppm"]] <-
          self$`massAccuracyMS2ppm`
      }
      if (!is.null(self$`isotopeMs2Settings`)) {
        SiriusObject[["isotopeMs2Settings"]] <-
          self$`isotopeMs2Settings`
      }
      if (!is.null(self$`formulaSearchDBs`)) {
        SiriusObject[["formulaSearchDBs"]] <-
          self$`formulaSearchDBs`
      }
      if (!is.null(self$`enforcedFormulaConstraints`)) {
        SiriusObject[["enforcedFormulaConstraints"]] <-
          self$`enforcedFormulaConstraints`
      }
      if (!is.null(self$`fallbackFormulaConstraints`)) {
        SiriusObject[["fallbackFormulaConstraints"]] <-
          self$`fallbackFormulaConstraints`
      }
      if (!is.null(self$`detectableElements`)) {
        SiriusObject[["detectableElements"]] <-
          self$`detectableElements`
      }
      if (!is.null(self$`ilpTimeout`)) {
        SiriusObject[["ilpTimeout"]] <-
          self$`ilpTimeout`$toJSON()
      }
      if (!is.null(self$`useHeuristic`)) {
        SiriusObject[["useHeuristic"]] <-
          self$`useHeuristic`$toJSON()
      }
      SiriusObject
    },
    #' Deserialize JSON string into an instance of Sirius
    #'
    #' @description
    #' Deserialize JSON string into an instance of Sirius
    #'
    #' @param input_json the JSON input
    #' @return the instance of Sirius
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`enabled`)) {
        self$`enabled` <- this_object$`enabled`
      }
      if (!is.null(this_object$`profile`)) {
        if (!is.null(this_object$`profile`) && !(this_object$`profile` %in% c("QTOF", "ORBI", "FTICR"))) {
          stop(paste("Error! \"", this_object$`profile`, "\" cannot be assigned to `profile`. Must be \"QTOF\", \"ORBI\", \"FTICR\".", sep = ""))
        }
        self$`profile` <- this_object$`profile`
      }
      if (!is.null(this_object$`numberOfCandidates`)) {
        self$`numberOfCandidates` <- this_object$`numberOfCandidates`
      }
      if (!is.null(this_object$`numberOfCandidatesPerIon`)) {
        self$`numberOfCandidatesPerIon` <- this_object$`numberOfCandidatesPerIon`
      }
      if (!is.null(this_object$`massAccuracyMS2ppm`)) {
        self$`massAccuracyMS2ppm` <- this_object$`massAccuracyMS2ppm`
      }
      if (!is.null(this_object$`isotopeMs2Settings`)) {
        if (!is.null(this_object$`isotopeMs2Settings`) && !(this_object$`isotopeMs2Settings` %in% c("IGNORE", "FILTER", "SCORE"))) {
          stop(paste("Error! \"", this_object$`isotopeMs2Settings`, "\" cannot be assigned to `isotopeMs2Settings`. Must be \"IGNORE\", \"FILTER\", \"SCORE\".", sep = ""))
        }
        self$`isotopeMs2Settings` <- this_object$`isotopeMs2Settings`
      }
      if (!is.null(this_object$`formulaSearchDBs`)) {
        self$`formulaSearchDBs` <- ApiClient$new()$deserializeObj(this_object$`formulaSearchDBs`, "array[character]", loadNamespace("Rsirius"))
      }
      if (!is.null(this_object$`enforcedFormulaConstraints`)) {
        self$`enforcedFormulaConstraints` <- this_object$`enforcedFormulaConstraints`
      }
      if (!is.null(this_object$`fallbackFormulaConstraints`)) {
        self$`fallbackFormulaConstraints` <- this_object$`fallbackFormulaConstraints`
      }
      if (!is.null(this_object$`detectableElements`)) {
        self$`detectableElements` <- ApiClient$new()$deserializeObj(this_object$`detectableElements`, "array[character]", loadNamespace("Rsirius"))
      }
      if (!is.null(this_object$`ilpTimeout`)) {
        ilptimeout_object <- Timeout$new()
        ilptimeout_object$fromJSON(jsonlite::toJSON(this_object$ilpTimeout, auto_unbox = TRUE, digits = NA))
        self$`ilpTimeout` <- ilptimeout_object
      }
      if (!is.null(this_object$`useHeuristic`)) {
        useheuristic_object <- UseHeuristic$new()
        useheuristic_object$fromJSON(jsonlite::toJSON(this_object$useHeuristic, auto_unbox = TRUE, digits = NA))
        self$`useHeuristic` <- useheuristic_object
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return Sirius in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`enabled`)) {
          sprintf(
          '"enabled":
            %s
                    ',
          tolower(self$`enabled`)
          )
        },
        if (!is.null(self$`profile`)) {
          sprintf(
          '"profile":
            "%s"
                    ',
          self$`profile`
          )
        },
        if (!is.null(self$`numberOfCandidates`)) {
          sprintf(
          '"numberOfCandidates":
            %f
                    ',
          self$`numberOfCandidates`
          )
        },
        if (!is.null(self$`numberOfCandidatesPerIon`)) {
          sprintf(
          '"numberOfCandidatesPerIon":
            %f
                    ',
          self$`numberOfCandidatesPerIon`
          )
        },
        if (!is.null(self$`massAccuracyMS2ppm`)) {
          sprintf(
          '"massAccuracyMS2ppm":
            %f
                    ',
          self$`massAccuracyMS2ppm`
          )
        },
        if (!is.null(self$`isotopeMs2Settings`)) {
          sprintf(
          '"isotopeMs2Settings":
            "%s"
                    ',
          self$`isotopeMs2Settings`
          )
        },
        if (!is.null(self$`formulaSearchDBs`)) {
          sprintf(
          '"formulaSearchDBs":
             [%s]
          ',
          paste(unlist(lapply(self$`formulaSearchDBs`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`enforcedFormulaConstraints`)) {
          sprintf(
          '"enforcedFormulaConstraints":
            "%s"
                    ',
          self$`enforcedFormulaConstraints`
          )
        },
        if (!is.null(self$`fallbackFormulaConstraints`)) {
          sprintf(
          '"fallbackFormulaConstraints":
            "%s"
                    ',
          self$`fallbackFormulaConstraints`
          )
        },
        if (!is.null(self$`detectableElements`)) {
          sprintf(
          '"detectableElements":
             [%s]
          ',
          paste(unlist(lapply(self$`detectableElements`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`ilpTimeout`)) {
          sprintf(
          '"ilpTimeout":
          %s
          ',
          jsonlite::toJSON(self$`ilpTimeout`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`useHeuristic`)) {
          sprintf(
          '"useHeuristic":
          %s
          ',
          jsonlite::toJSON(self$`useHeuristic`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of Sirius
    #'
    #' @description
    #' Deserialize JSON string into an instance of Sirius
    #'
    #' @param input_json the JSON input
    #' @return the instance of Sirius
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`enabled` <- this_object$`enabled`
      if (!is.null(this_object$`profile`) && !(this_object$`profile` %in% c("QTOF", "ORBI", "FTICR"))) {
        stop(paste("Error! \"", this_object$`profile`, "\" cannot be assigned to `profile`. Must be \"QTOF\", \"ORBI\", \"FTICR\".", sep = ""))
      }
      self$`profile` <- this_object$`profile`
      self$`numberOfCandidates` <- this_object$`numberOfCandidates`
      self$`numberOfCandidatesPerIon` <- this_object$`numberOfCandidatesPerIon`
      self$`massAccuracyMS2ppm` <- this_object$`massAccuracyMS2ppm`
      if (!is.null(this_object$`isotopeMs2Settings`) && !(this_object$`isotopeMs2Settings` %in% c("IGNORE", "FILTER", "SCORE"))) {
        stop(paste("Error! \"", this_object$`isotopeMs2Settings`, "\" cannot be assigned to `isotopeMs2Settings`. Must be \"IGNORE\", \"FILTER\", \"SCORE\".", sep = ""))
      }
      self$`isotopeMs2Settings` <- this_object$`isotopeMs2Settings`
      self$`formulaSearchDBs` <- ApiClient$new()$deserializeObj(this_object$`formulaSearchDBs`, "array[character]", loadNamespace("Rsirius"))
      self$`enforcedFormulaConstraints` <- this_object$`enforcedFormulaConstraints`
      self$`fallbackFormulaConstraints` <- this_object$`fallbackFormulaConstraints`
      self$`detectableElements` <- ApiClient$new()$deserializeObj(this_object$`detectableElements`, "array[character]", loadNamespace("Rsirius"))
      self$`ilpTimeout` <- Timeout$new()$fromJSON(jsonlite::toJSON(this_object$ilpTimeout, auto_unbox = TRUE, digits = NA))
      self$`useHeuristic` <- UseHeuristic$new()$fromJSON(jsonlite::toJSON(this_object$useHeuristic, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to Sirius
    #'
    #' @description
    #' Validate JSON input with respect to Sirius and throw an exception if invalid
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
    #' @return String representation of Sirius
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
# Sirius$unlock()
#
## Below is an example to define the print function
# Sirius$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Sirius$lock()

