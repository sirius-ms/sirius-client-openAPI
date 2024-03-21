#' Create a new Sirius
#'
#' @description
#' User/developer friendly parameter subset for the Formula/SIRIUS tool  Can use results from Spectral library search tool.
#'
#' @docType class
#' @title Sirius
#' @description Sirius Class
#' @format An \code{R6Class} generator object
#' @field enabled tags whether the tool is enabled character [optional]
#' @field profile  \link{Instrument} [optional]
#' @field numberOfCandidates Number of formula candidates to keep as result list (Formula Candidates). integer [optional]
#' @field numberOfCandidatesPerIonization Use this parameter if you want to force SIRIUS to report at least  NumberOfCandidatesPerIonization results per ionization.  if <= 0, this parameter will have no effect and just the top  NumberOfCandidates results will be reported. integer [optional]
#' @field massAccuracyMS2ppm Maximum allowed mass deviation. Only molecular formulas within this mass window are considered. numeric [optional]
#' @field isotopeMs2Settings Specify how isotope patterns in MS/MS should be handled.  <p>  FILTER: When filtering is enabled, molecular formulas are excluded if their  theoretical isotope pattern does not match the theoretical one, even if their MS/MS pattern has high score.  <p>  SCORE: Use them for SCORING. To use this the instrument should produce clear MS/MS isotope patterns  <p>  IGNORE: Ignore that there might be isotope patterns in MS/MS character [optional]
#' @field filterByIsotopePattern When filtering is enabled, molecular formulas are excluded if their theoretical isotope pattern does not match the theoretical one, even if their MS/MS pattern has high score. character [optional]
#' @field enforceElGordoFormula El Gordo may predict that an MS/MS spectrum is a lipid spectrum. If enabled, the corresponding molecular formula will be enforeced as molecular formula candidate. character [optional]
#' @field performBottomUpSearch If true, molecular formula generation via bottom up search is enabled. character [optional]
#' @field performDenovoBelowMz Specifies the m/z below which de novo molecular formula generation is enabled. Set to 0 to disable de novo molecular formula generation. numeric [optional]
#' @field formulaSearchDBs List Structure database to extract molecular formulas from to reduce formula search space.  SIRIUS is quite good at de novo formula annotation, so only enable if you have a good reason. list(character) [optional]
#' @field applyFormulaConstraintsToDBAndBottomUpSearch By default, the formula (element) constraints are only applied to de novo molecular formula generation.  If true, the constraints are as well applied to database search and bottom up search. character [optional]
#' @field enforcedFormulaConstraints These configurations hold the information how to autodetect elements based on the given formula constraints.  Note: If the compound is already assigned to a specific molecular formula, this annotation is ignored.  <p>  Enforced: Enforced elements are always considered character [optional]
#' @field fallbackFormulaConstraints These configurations hold the information how to autodetect elements based on the given formula constraints.  Note: If the compound is already assigned to a specific molecular formula, this annotation is ignored.  <p>  Fallback: Fallback elements are used, if the auto-detection fails (e.g. no isotope pattern available) character [optional]
#' @field detectableElements These configurations hold the information how to autodetect elements based on the given formula constraints.  Note: If the compound is already assigned to a specific molecular formula, this annotation is ignored.  <p>  Detectable: Detectable elements are added to the chemical alphabet, if there are indications for them (e.g. in isotope pattern) list(character) [optional]
#' @field ilpTimeout  \link{Timeout} [optional]
#' @field useHeuristic  \link{UseHeuristic} [optional]
#' @field injectSpecLibMatchFormulas If true formula candidates that belong to spectral library matches above a certain threshold will  we inject/preserved for further analyses no matter which score they have or which filter is applied character [optional]
#' @field minScoreToInjectSpecLibMatch Similarity Threshold to inject formula candidates no matter which score/rank they have or which filter settings are applied.  If threshold >= 0 formulas candidates with reference spectrum similarity above the threshold will be injected. numeric [optional]
#' @field minPeaksToInjectSpecLibMatch Matching peaks threshold to inject formula candidates no matter which score they have or which filter is applied. integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Sirius <- R6::R6Class(
  "Sirius",
  public = list(
    `enabled` = NULL,
    `profile` = NULL,
    `numberOfCandidates` = NULL,
    `numberOfCandidatesPerIonization` = NULL,
    `massAccuracyMS2ppm` = NULL,
    `isotopeMs2Settings` = NULL,
    `filterByIsotopePattern` = NULL,
    `enforceElGordoFormula` = NULL,
    `performBottomUpSearch` = NULL,
    `performDenovoBelowMz` = NULL,
    `formulaSearchDBs` = NULL,
    `applyFormulaConstraintsToDBAndBottomUpSearch` = NULL,
    `enforcedFormulaConstraints` = NULL,
    `fallbackFormulaConstraints` = NULL,
    `detectableElements` = NULL,
    `ilpTimeout` = NULL,
    `useHeuristic` = NULL,
    `injectSpecLibMatchFormulas` = NULL,
    `minScoreToInjectSpecLibMatch` = NULL,
    `minPeaksToInjectSpecLibMatch` = NULL,
    #' Initialize a new Sirius class.
    #'
    #' @description
    #' Initialize a new Sirius class.
    #'
    #' @param enabled tags whether the tool is enabled
    #' @param profile profile
    #' @param numberOfCandidates Number of formula candidates to keep as result list (Formula Candidates).
    #' @param numberOfCandidatesPerIonization Use this parameter if you want to force SIRIUS to report at least  NumberOfCandidatesPerIonization results per ionization.  if <= 0, this parameter will have no effect and just the top  NumberOfCandidates results will be reported.
    #' @param massAccuracyMS2ppm Maximum allowed mass deviation. Only molecular formulas within this mass window are considered.
    #' @param isotopeMs2Settings Specify how isotope patterns in MS/MS should be handled.  <p>  FILTER: When filtering is enabled, molecular formulas are excluded if their  theoretical isotope pattern does not match the theoretical one, even if their MS/MS pattern has high score.  <p>  SCORE: Use them for SCORING. To use this the instrument should produce clear MS/MS isotope patterns  <p>  IGNORE: Ignore that there might be isotope patterns in MS/MS
    #' @param filterByIsotopePattern When filtering is enabled, molecular formulas are excluded if their theoretical isotope pattern does not match the theoretical one, even if their MS/MS pattern has high score.
    #' @param enforceElGordoFormula El Gordo may predict that an MS/MS spectrum is a lipid spectrum. If enabled, the corresponding molecular formula will be enforeced as molecular formula candidate.
    #' @param performBottomUpSearch If true, molecular formula generation via bottom up search is enabled.
    #' @param performDenovoBelowMz Specifies the m/z below which de novo molecular formula generation is enabled. Set to 0 to disable de novo molecular formula generation.
    #' @param formulaSearchDBs List Structure database to extract molecular formulas from to reduce formula search space.  SIRIUS is quite good at de novo formula annotation, so only enable if you have a good reason.
    #' @param applyFormulaConstraintsToDBAndBottomUpSearch By default, the formula (element) constraints are only applied to de novo molecular formula generation.  If true, the constraints are as well applied to database search and bottom up search.
    #' @param enforcedFormulaConstraints These configurations hold the information how to autodetect elements based on the given formula constraints.  Note: If the compound is already assigned to a specific molecular formula, this annotation is ignored.  <p>  Enforced: Enforced elements are always considered
    #' @param fallbackFormulaConstraints These configurations hold the information how to autodetect elements based on the given formula constraints.  Note: If the compound is already assigned to a specific molecular formula, this annotation is ignored.  <p>  Fallback: Fallback elements are used, if the auto-detection fails (e.g. no isotope pattern available)
    #' @param detectableElements These configurations hold the information how to autodetect elements based on the given formula constraints.  Note: If the compound is already assigned to a specific molecular formula, this annotation is ignored.  <p>  Detectable: Detectable elements are added to the chemical alphabet, if there are indications for them (e.g. in isotope pattern)
    #' @param ilpTimeout ilpTimeout
    #' @param useHeuristic useHeuristic
    #' @param injectSpecLibMatchFormulas If true formula candidates that belong to spectral library matches above a certain threshold will  we inject/preserved for further analyses no matter which score they have or which filter is applied
    #' @param minScoreToInjectSpecLibMatch Similarity Threshold to inject formula candidates no matter which score/rank they have or which filter settings are applied.  If threshold >= 0 formulas candidates with reference spectrum similarity above the threshold will be injected.
    #' @param minPeaksToInjectSpecLibMatch Matching peaks threshold to inject formula candidates no matter which score they have or which filter is applied.
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`enabled` = NULL, `profile` = NULL, `numberOfCandidates` = NULL, `numberOfCandidatesPerIonization` = NULL, `massAccuracyMS2ppm` = NULL, `isotopeMs2Settings` = NULL, `filterByIsotopePattern` = NULL, `enforceElGordoFormula` = NULL, `performBottomUpSearch` = NULL, `performDenovoBelowMz` = NULL, `formulaSearchDBs` = NULL, `applyFormulaConstraintsToDBAndBottomUpSearch` = NULL, `enforcedFormulaConstraints` = NULL, `fallbackFormulaConstraints` = NULL, `detectableElements` = NULL, `ilpTimeout` = NULL, `useHeuristic` = NULL, `injectSpecLibMatchFormulas` = NULL, `minScoreToInjectSpecLibMatch` = NULL, `minPeaksToInjectSpecLibMatch` = NULL, ...) {
      if (!is.null(`enabled`)) {
        if (!(is.logical(`enabled`) && length(`enabled`) == 1)) {
          stop(paste("Error! Invalid data for `enabled`. Must be a boolean:", `enabled`))
        }
        self$`enabled` <- `enabled`
      }
      if (!is.null(`profile`)) {
        if (!(`profile` %in% c())) {
          stop(paste("Error! \"", `profile`, "\" cannot be assigned to `profile`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`profile`))
        self$`profile` <- `profile`
      }
      if (!is.null(`numberOfCandidates`)) {
        if (!(is.numeric(`numberOfCandidates`) && length(`numberOfCandidates`) == 1)) {
          stop(paste("Error! Invalid data for `numberOfCandidates`. Must be an integer:", `numberOfCandidates`))
        }
        self$`numberOfCandidates` <- `numberOfCandidates`
      }
      if (!is.null(`numberOfCandidatesPerIonization`)) {
        if (!(is.numeric(`numberOfCandidatesPerIonization`) && length(`numberOfCandidatesPerIonization`) == 1)) {
          stop(paste("Error! Invalid data for `numberOfCandidatesPerIonization`. Must be an integer:", `numberOfCandidatesPerIonization`))
        }
        self$`numberOfCandidatesPerIonization` <- `numberOfCandidatesPerIonization`
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
      if (!is.null(`filterByIsotopePattern`)) {
        if (!(is.logical(`filterByIsotopePattern`) && length(`filterByIsotopePattern`) == 1)) {
          stop(paste("Error! Invalid data for `filterByIsotopePattern`. Must be a boolean:", `filterByIsotopePattern`))
        }
        self$`filterByIsotopePattern` <- `filterByIsotopePattern`
      }
      if (!is.null(`enforceElGordoFormula`)) {
        if (!(is.logical(`enforceElGordoFormula`) && length(`enforceElGordoFormula`) == 1)) {
          stop(paste("Error! Invalid data for `enforceElGordoFormula`. Must be a boolean:", `enforceElGordoFormula`))
        }
        self$`enforceElGordoFormula` <- `enforceElGordoFormula`
      }
      if (!is.null(`performBottomUpSearch`)) {
        if (!(is.logical(`performBottomUpSearch`) && length(`performBottomUpSearch`) == 1)) {
          stop(paste("Error! Invalid data for `performBottomUpSearch`. Must be a boolean:", `performBottomUpSearch`))
        }
        self$`performBottomUpSearch` <- `performBottomUpSearch`
      }
      if (!is.null(`performDenovoBelowMz`)) {
        if (!(is.numeric(`performDenovoBelowMz`) && length(`performDenovoBelowMz`) == 1)) {
          stop(paste("Error! Invalid data for `performDenovoBelowMz`. Must be a number:", `performDenovoBelowMz`))
        }
        self$`performDenovoBelowMz` <- `performDenovoBelowMz`
      }
      if (!is.null(`formulaSearchDBs`)) {
        stopifnot(is.vector(`formulaSearchDBs`), length(`formulaSearchDBs`) != 0)
        sapply(`formulaSearchDBs`, function(x) stopifnot(is.character(x)))
        self$`formulaSearchDBs` <- `formulaSearchDBs`
      }
      if (!is.null(`applyFormulaConstraintsToDBAndBottomUpSearch`)) {
        if (!(is.logical(`applyFormulaConstraintsToDBAndBottomUpSearch`) && length(`applyFormulaConstraintsToDBAndBottomUpSearch`) == 1)) {
          stop(paste("Error! Invalid data for `applyFormulaConstraintsToDBAndBottomUpSearch`. Must be a boolean:", `applyFormulaConstraintsToDBAndBottomUpSearch`))
        }
        self$`applyFormulaConstraintsToDBAndBottomUpSearch` <- `applyFormulaConstraintsToDBAndBottomUpSearch`
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
      if (!is.null(`injectSpecLibMatchFormulas`)) {
        if (!(is.logical(`injectSpecLibMatchFormulas`) && length(`injectSpecLibMatchFormulas`) == 1)) {
          stop(paste("Error! Invalid data for `injectSpecLibMatchFormulas`. Must be a boolean:", `injectSpecLibMatchFormulas`))
        }
        self$`injectSpecLibMatchFormulas` <- `injectSpecLibMatchFormulas`
      }
      if (!is.null(`minScoreToInjectSpecLibMatch`)) {
        if (!(is.numeric(`minScoreToInjectSpecLibMatch`) && length(`minScoreToInjectSpecLibMatch`) == 1)) {
          stop(paste("Error! Invalid data for `minScoreToInjectSpecLibMatch`. Must be a number:", `minScoreToInjectSpecLibMatch`))
        }
        self$`minScoreToInjectSpecLibMatch` <- `minScoreToInjectSpecLibMatch`
      }
      if (!is.null(`minPeaksToInjectSpecLibMatch`)) {
        if (!(is.numeric(`minPeaksToInjectSpecLibMatch`) && length(`minPeaksToInjectSpecLibMatch`) == 1)) {
          stop(paste("Error! Invalid data for `minPeaksToInjectSpecLibMatch`. Must be an integer:", `minPeaksToInjectSpecLibMatch`))
        }
        self$`minPeaksToInjectSpecLibMatch` <- `minPeaksToInjectSpecLibMatch`
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
          self$`profile`$toJSON()
      }
      if (!is.null(self$`numberOfCandidates`)) {
        SiriusObject[["numberOfCandidates"]] <-
          self$`numberOfCandidates`
      }
      if (!is.null(self$`numberOfCandidatesPerIonization`)) {
        SiriusObject[["numberOfCandidatesPerIonization"]] <-
          self$`numberOfCandidatesPerIonization`
      }
      if (!is.null(self$`massAccuracyMS2ppm`)) {
        SiriusObject[["massAccuracyMS2ppm"]] <-
          self$`massAccuracyMS2ppm`
      }
      if (!is.null(self$`isotopeMs2Settings`)) {
        SiriusObject[["isotopeMs2Settings"]] <-
          self$`isotopeMs2Settings`
      }
      if (!is.null(self$`filterByIsotopePattern`)) {
        SiriusObject[["filterByIsotopePattern"]] <-
          self$`filterByIsotopePattern`
      }
      if (!is.null(self$`enforceElGordoFormula`)) {
        SiriusObject[["enforceElGordoFormula"]] <-
          self$`enforceElGordoFormula`
      }
      if (!is.null(self$`performBottomUpSearch`)) {
        SiriusObject[["performBottomUpSearch"]] <-
          self$`performBottomUpSearch`
      }
      if (!is.null(self$`performDenovoBelowMz`)) {
        SiriusObject[["performDenovoBelowMz"]] <-
          self$`performDenovoBelowMz`
      }
      if (!is.null(self$`formulaSearchDBs`)) {
        SiriusObject[["formulaSearchDBs"]] <-
          self$`formulaSearchDBs`
      }
      if (!is.null(self$`applyFormulaConstraintsToDBAndBottomUpSearch`)) {
        SiriusObject[["applyFormulaConstraintsToDBAndBottomUpSearch"]] <-
          self$`applyFormulaConstraintsToDBAndBottomUpSearch`
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
      if (!is.null(self$`injectSpecLibMatchFormulas`)) {
        SiriusObject[["injectSpecLibMatchFormulas"]] <-
          self$`injectSpecLibMatchFormulas`
      }
      if (!is.null(self$`minScoreToInjectSpecLibMatch`)) {
        SiriusObject[["minScoreToInjectSpecLibMatch"]] <-
          self$`minScoreToInjectSpecLibMatch`
      }
      if (!is.null(self$`minPeaksToInjectSpecLibMatch`)) {
        SiriusObject[["minPeaksToInjectSpecLibMatch"]] <-
          self$`minPeaksToInjectSpecLibMatch`
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
        `profile_object` <- Instrument$new()
        `profile_object`$fromJSON(jsonlite::toJSON(this_object$`profile`, auto_unbox = TRUE, digits = NA))
        self$`profile` <- `profile_object`
      }
      if (!is.null(this_object$`numberOfCandidates`)) {
        self$`numberOfCandidates` <- this_object$`numberOfCandidates`
      }
      if (!is.null(this_object$`numberOfCandidatesPerIonization`)) {
        self$`numberOfCandidatesPerIonization` <- this_object$`numberOfCandidatesPerIonization`
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
      if (!is.null(this_object$`filterByIsotopePattern`)) {
        self$`filterByIsotopePattern` <- this_object$`filterByIsotopePattern`
      }
      if (!is.null(this_object$`enforceElGordoFormula`)) {
        self$`enforceElGordoFormula` <- this_object$`enforceElGordoFormula`
      }
      if (!is.null(this_object$`performBottomUpSearch`)) {
        self$`performBottomUpSearch` <- this_object$`performBottomUpSearch`
      }
      if (!is.null(this_object$`performDenovoBelowMz`)) {
        self$`performDenovoBelowMz` <- this_object$`performDenovoBelowMz`
      }
      if (!is.null(this_object$`formulaSearchDBs`)) {
        self$`formulaSearchDBs` <- ApiClient$new()$deserializeObj(this_object$`formulaSearchDBs`, "array[character]", loadNamespace("Rsirius"))
      }
      if (!is.null(this_object$`applyFormulaConstraintsToDBAndBottomUpSearch`)) {
        self$`applyFormulaConstraintsToDBAndBottomUpSearch` <- this_object$`applyFormulaConstraintsToDBAndBottomUpSearch`
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
        `ilptimeout_object` <- Timeout$new()
        `ilptimeout_object`$fromJSON(jsonlite::toJSON(this_object$`ilpTimeout`, auto_unbox = TRUE, digits = NA))
        self$`ilpTimeout` <- `ilptimeout_object`
      }
      if (!is.null(this_object$`useHeuristic`)) {
        `useheuristic_object` <- UseHeuristic$new()
        `useheuristic_object`$fromJSON(jsonlite::toJSON(this_object$`useHeuristic`, auto_unbox = TRUE, digits = NA))
        self$`useHeuristic` <- `useheuristic_object`
      }
      if (!is.null(this_object$`injectSpecLibMatchFormulas`)) {
        self$`injectSpecLibMatchFormulas` <- this_object$`injectSpecLibMatchFormulas`
      }
      if (!is.null(this_object$`minScoreToInjectSpecLibMatch`)) {
        self$`minScoreToInjectSpecLibMatch` <- this_object$`minScoreToInjectSpecLibMatch`
      }
      if (!is.null(this_object$`minPeaksToInjectSpecLibMatch`)) {
        self$`minPeaksToInjectSpecLibMatch` <- this_object$`minPeaksToInjectSpecLibMatch`
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
          %s
          ',
          jsonlite::toJSON(self$`profile`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`numberOfCandidates`)) {
          sprintf(
          '"numberOfCandidates":
            %d
                    ',
          self$`numberOfCandidates`
          )
        },
        if (!is.null(self$`numberOfCandidatesPerIonization`)) {
          sprintf(
          '"numberOfCandidatesPerIonization":
            %d
                    ',
          self$`numberOfCandidatesPerIonization`
          )
        },
        if (!is.null(self$`massAccuracyMS2ppm`)) {
          sprintf(
          '"massAccuracyMS2ppm":
            %d
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
        if (!is.null(self$`filterByIsotopePattern`)) {
          sprintf(
          '"filterByIsotopePattern":
            %s
                    ',
          tolower(self$`filterByIsotopePattern`)
          )
        },
        if (!is.null(self$`enforceElGordoFormula`)) {
          sprintf(
          '"enforceElGordoFormula":
            %s
                    ',
          tolower(self$`enforceElGordoFormula`)
          )
        },
        if (!is.null(self$`performBottomUpSearch`)) {
          sprintf(
          '"performBottomUpSearch":
            %s
                    ',
          tolower(self$`performBottomUpSearch`)
          )
        },
        if (!is.null(self$`performDenovoBelowMz`)) {
          sprintf(
          '"performDenovoBelowMz":
            %d
                    ',
          self$`performDenovoBelowMz`
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
        if (!is.null(self$`applyFormulaConstraintsToDBAndBottomUpSearch`)) {
          sprintf(
          '"applyFormulaConstraintsToDBAndBottomUpSearch":
            %s
                    ',
          tolower(self$`applyFormulaConstraintsToDBAndBottomUpSearch`)
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
        },
        if (!is.null(self$`injectSpecLibMatchFormulas`)) {
          sprintf(
          '"injectSpecLibMatchFormulas":
            %s
                    ',
          tolower(self$`injectSpecLibMatchFormulas`)
          )
        },
        if (!is.null(self$`minScoreToInjectSpecLibMatch`)) {
          sprintf(
          '"minScoreToInjectSpecLibMatch":
            %d
                    ',
          self$`minScoreToInjectSpecLibMatch`
          )
        },
        if (!is.null(self$`minPeaksToInjectSpecLibMatch`)) {
          sprintf(
          '"minPeaksToInjectSpecLibMatch":
            %d
                    ',
          self$`minPeaksToInjectSpecLibMatch`
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
      self$`profile` <- Instrument$new()$fromJSON(jsonlite::toJSON(this_object$`profile`, auto_unbox = TRUE, digits = NA))
      self$`numberOfCandidates` <- this_object$`numberOfCandidates`
      self$`numberOfCandidatesPerIonization` <- this_object$`numberOfCandidatesPerIonization`
      self$`massAccuracyMS2ppm` <- this_object$`massAccuracyMS2ppm`
      if (!is.null(this_object$`isotopeMs2Settings`) && !(this_object$`isotopeMs2Settings` %in% c("IGNORE", "FILTER", "SCORE"))) {
        stop(paste("Error! \"", this_object$`isotopeMs2Settings`, "\" cannot be assigned to `isotopeMs2Settings`. Must be \"IGNORE\", \"FILTER\", \"SCORE\".", sep = ""))
      }
      self$`isotopeMs2Settings` <- this_object$`isotopeMs2Settings`
      self$`filterByIsotopePattern` <- this_object$`filterByIsotopePattern`
      self$`enforceElGordoFormula` <- this_object$`enforceElGordoFormula`
      self$`performBottomUpSearch` <- this_object$`performBottomUpSearch`
      self$`performDenovoBelowMz` <- this_object$`performDenovoBelowMz`
      self$`formulaSearchDBs` <- ApiClient$new()$deserializeObj(this_object$`formulaSearchDBs`, "array[character]", loadNamespace("Rsirius"))
      self$`applyFormulaConstraintsToDBAndBottomUpSearch` <- this_object$`applyFormulaConstraintsToDBAndBottomUpSearch`
      self$`enforcedFormulaConstraints` <- this_object$`enforcedFormulaConstraints`
      self$`fallbackFormulaConstraints` <- this_object$`fallbackFormulaConstraints`
      self$`detectableElements` <- ApiClient$new()$deserializeObj(this_object$`detectableElements`, "array[character]", loadNamespace("Rsirius"))
      self$`ilpTimeout` <- Timeout$new()$fromJSON(jsonlite::toJSON(this_object$`ilpTimeout`, auto_unbox = TRUE, digits = NA))
      self$`useHeuristic` <- UseHeuristic$new()$fromJSON(jsonlite::toJSON(this_object$`useHeuristic`, auto_unbox = TRUE, digits = NA))
      self$`injectSpecLibMatchFormulas` <- this_object$`injectSpecLibMatchFormulas`
      self$`minScoreToInjectSpecLibMatch` <- this_object$`minScoreToInjectSpecLibMatch`
      self$`minPeaksToInjectSpecLibMatch` <- this_object$`minPeaksToInjectSpecLibMatch`
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

