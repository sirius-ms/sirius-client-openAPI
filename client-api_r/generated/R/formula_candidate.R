#' Create a new FormulaCandidate
#'
#' @description
#' Molecular formula candidate that holds a unique identifier (molecular formula + adduct).  It can be extended with optional scoring metrics and the raw results  such as fragmentation trees and simulated isotope pattern.
#'
#' @docType class
#' @title FormulaCandidate
#' @description FormulaCandidate Class
#' @format An \code{R6Class} generator object
#' @field formulaId Unique identifier of this formula candidate character [optional]
#' @field molecularFormula molecular formula of this formula candidate character [optional]
#' @field adduct Adduct of this formula candidate character [optional]
#' @field rank  integer [optional]
#' @field siriusScore Sirius Score (isotope + tree score) of the formula candidate.  If NULL result is not available numeric [optional]
#' @field isotopeScore  numeric [optional]
#' @field treeScore  numeric [optional]
#' @field zodiacScore Zodiac Score of the formula candidate.  If NULL result is not available numeric [optional]
#' @field numOfExplainedPeaks  integer [optional]
#' @field numOfExplainablePeaks  integer [optional]
#' @field totalExplainedIntensity  numeric [optional]
#' @field medianMassDeviation  \link{Deviation} [optional]
#' @field fragmentationTree  \link{FragmentationTree} [optional]
#' @field annotatedSpectrum  \link{AnnotatedSpectrum} [optional]
#' @field isotopePatternAnnotation  \link{IsotopePatternAnnotation} [optional]
#' @field lipidAnnotation  \link{LipidAnnotation} [optional]
#' @field predictedFingerprint Probabilistic molecular fingerprint predicted by CSI:FingerID list(numeric) [optional]
#' @field compoundClasses  \link{CompoundClasses} [optional]
#' @field canopusPrediction  \link{CanopusPrediction} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FormulaCandidate <- R6::R6Class(
  "FormulaCandidate",
  public = list(
    `formulaId` = NULL,
    `molecularFormula` = NULL,
    `adduct` = NULL,
    `rank` = NULL,
    `siriusScore` = NULL,
    `isotopeScore` = NULL,
    `treeScore` = NULL,
    `zodiacScore` = NULL,
    `numOfExplainedPeaks` = NULL,
    `numOfExplainablePeaks` = NULL,
    `totalExplainedIntensity` = NULL,
    `medianMassDeviation` = NULL,
    `fragmentationTree` = NULL,
    `annotatedSpectrum` = NULL,
    `isotopePatternAnnotation` = NULL,
    `lipidAnnotation` = NULL,
    `predictedFingerprint` = NULL,
    `compoundClasses` = NULL,
    `canopusPrediction` = NULL,
    #' Initialize a new FormulaCandidate class.
    #'
    #' @description
    #' Initialize a new FormulaCandidate class.
    #'
    #' @param formulaId Unique identifier of this formula candidate
    #' @param molecularFormula molecular formula of this formula candidate
    #' @param adduct Adduct of this formula candidate
    #' @param rank rank
    #' @param siriusScore Sirius Score (isotope + tree score) of the formula candidate.  If NULL result is not available
    #' @param isotopeScore isotopeScore
    #' @param treeScore treeScore
    #' @param zodiacScore Zodiac Score of the formula candidate.  If NULL result is not available
    #' @param numOfExplainedPeaks numOfExplainedPeaks
    #' @param numOfExplainablePeaks numOfExplainablePeaks
    #' @param totalExplainedIntensity totalExplainedIntensity
    #' @param medianMassDeviation medianMassDeviation
    #' @param fragmentationTree fragmentationTree
    #' @param annotatedSpectrum annotatedSpectrum
    #' @param isotopePatternAnnotation isotopePatternAnnotation
    #' @param lipidAnnotation lipidAnnotation
    #' @param predictedFingerprint Probabilistic molecular fingerprint predicted by CSI:FingerID
    #' @param compoundClasses compoundClasses
    #' @param canopusPrediction canopusPrediction
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`formulaId` = NULL, `molecularFormula` = NULL, `adduct` = NULL, `rank` = NULL, `siriusScore` = NULL, `isotopeScore` = NULL, `treeScore` = NULL, `zodiacScore` = NULL, `numOfExplainedPeaks` = NULL, `numOfExplainablePeaks` = NULL, `totalExplainedIntensity` = NULL, `medianMassDeviation` = NULL, `fragmentationTree` = NULL, `annotatedSpectrum` = NULL, `isotopePatternAnnotation` = NULL, `lipidAnnotation` = NULL, `predictedFingerprint` = NULL, `compoundClasses` = NULL, `canopusPrediction` = NULL, ...) {
      if (!is.null(`formulaId`)) {
        if (!(is.character(`formulaId`) && length(`formulaId`) == 1)) {
          stop(paste("Error! Invalid data for `formulaId`. Must be a string:", `formulaId`))
        }
        self$`formulaId` <- `formulaId`
      }
      if (!is.null(`molecularFormula`)) {
        if (!(is.character(`molecularFormula`) && length(`molecularFormula`) == 1)) {
          stop(paste("Error! Invalid data for `molecularFormula`. Must be a string:", `molecularFormula`))
        }
        self$`molecularFormula` <- `molecularFormula`
      }
      if (!is.null(`adduct`)) {
        if (!(is.character(`adduct`) && length(`adduct`) == 1)) {
          stop(paste("Error! Invalid data for `adduct`. Must be a string:", `adduct`))
        }
        self$`adduct` <- `adduct`
      }
      if (!is.null(`rank`)) {
        if (!(is.numeric(`rank`) && length(`rank`) == 1)) {
          stop(paste("Error! Invalid data for `rank`. Must be an integer:", `rank`))
        }
        self$`rank` <- `rank`
      }
      if (!is.null(`siriusScore`)) {
        if (!(is.numeric(`siriusScore`) && length(`siriusScore`) == 1)) {
          stop(paste("Error! Invalid data for `siriusScore`. Must be a number:", `siriusScore`))
        }
        self$`siriusScore` <- `siriusScore`
      }
      if (!is.null(`isotopeScore`)) {
        if (!(is.numeric(`isotopeScore`) && length(`isotopeScore`) == 1)) {
          stop(paste("Error! Invalid data for `isotopeScore`. Must be a number:", `isotopeScore`))
        }
        self$`isotopeScore` <- `isotopeScore`
      }
      if (!is.null(`treeScore`)) {
        if (!(is.numeric(`treeScore`) && length(`treeScore`) == 1)) {
          stop(paste("Error! Invalid data for `treeScore`. Must be a number:", `treeScore`))
        }
        self$`treeScore` <- `treeScore`
      }
      if (!is.null(`zodiacScore`)) {
        if (!(is.numeric(`zodiacScore`) && length(`zodiacScore`) == 1)) {
          stop(paste("Error! Invalid data for `zodiacScore`. Must be a number:", `zodiacScore`))
        }
        self$`zodiacScore` <- `zodiacScore`
      }
      if (!is.null(`numOfExplainedPeaks`)) {
        if (!(is.numeric(`numOfExplainedPeaks`) && length(`numOfExplainedPeaks`) == 1)) {
          stop(paste("Error! Invalid data for `numOfExplainedPeaks`. Must be an integer:", `numOfExplainedPeaks`))
        }
        self$`numOfExplainedPeaks` <- `numOfExplainedPeaks`
      }
      if (!is.null(`numOfExplainablePeaks`)) {
        if (!(is.numeric(`numOfExplainablePeaks`) && length(`numOfExplainablePeaks`) == 1)) {
          stop(paste("Error! Invalid data for `numOfExplainablePeaks`. Must be an integer:", `numOfExplainablePeaks`))
        }
        self$`numOfExplainablePeaks` <- `numOfExplainablePeaks`
      }
      if (!is.null(`totalExplainedIntensity`)) {
        if (!(is.numeric(`totalExplainedIntensity`) && length(`totalExplainedIntensity`) == 1)) {
          stop(paste("Error! Invalid data for `totalExplainedIntensity`. Must be a number:", `totalExplainedIntensity`))
        }
        self$`totalExplainedIntensity` <- `totalExplainedIntensity`
      }
      if (!is.null(`medianMassDeviation`)) {
        stopifnot(R6::is.R6(`medianMassDeviation`))
        self$`medianMassDeviation` <- `medianMassDeviation`
      }
      if (!is.null(`fragmentationTree`)) {
        stopifnot(R6::is.R6(`fragmentationTree`))
        self$`fragmentationTree` <- `fragmentationTree`
      }
      if (!is.null(`annotatedSpectrum`)) {
        stopifnot(R6::is.R6(`annotatedSpectrum`))
        self$`annotatedSpectrum` <- `annotatedSpectrum`
      }
      if (!is.null(`isotopePatternAnnotation`)) {
        stopifnot(R6::is.R6(`isotopePatternAnnotation`))
        self$`isotopePatternAnnotation` <- `isotopePatternAnnotation`
      }
      if (!is.null(`lipidAnnotation`)) {
        stopifnot(R6::is.R6(`lipidAnnotation`))
        self$`lipidAnnotation` <- `lipidAnnotation`
      }
      if (!is.null(`predictedFingerprint`)) {
        stopifnot(is.vector(`predictedFingerprint`), length(`predictedFingerprint`) != 0)
        sapply(`predictedFingerprint`, function(x) stopifnot(is.character(x)))
        self$`predictedFingerprint` <- `predictedFingerprint`
      }
      if (!is.null(`compoundClasses`)) {
        stopifnot(R6::is.R6(`compoundClasses`))
        self$`compoundClasses` <- `compoundClasses`
      }
      if (!is.null(`canopusPrediction`)) {
        stopifnot(R6::is.R6(`canopusPrediction`))
        self$`canopusPrediction` <- `canopusPrediction`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return FormulaCandidate in JSON format
    #' @export
    toJSON = function() {
      FormulaCandidateObject <- list()
      if (!is.null(self$`formulaId`)) {
        FormulaCandidateObject[["formulaId"]] <-
          self$`formulaId`
      }
      if (!is.null(self$`molecularFormula`)) {
        FormulaCandidateObject[["molecularFormula"]] <-
          self$`molecularFormula`
      }
      if (!is.null(self$`adduct`)) {
        FormulaCandidateObject[["adduct"]] <-
          self$`adduct`
      }
      if (!is.null(self$`rank`)) {
        FormulaCandidateObject[["rank"]] <-
          self$`rank`
      }
      if (!is.null(self$`siriusScore`)) {
        FormulaCandidateObject[["siriusScore"]] <-
          self$`siriusScore`
      }
      if (!is.null(self$`isotopeScore`)) {
        FormulaCandidateObject[["isotopeScore"]] <-
          self$`isotopeScore`
      }
      if (!is.null(self$`treeScore`)) {
        FormulaCandidateObject[["treeScore"]] <-
          self$`treeScore`
      }
      if (!is.null(self$`zodiacScore`)) {
        FormulaCandidateObject[["zodiacScore"]] <-
          self$`zodiacScore`
      }
      if (!is.null(self$`numOfExplainedPeaks`)) {
        FormulaCandidateObject[["numOfExplainedPeaks"]] <-
          self$`numOfExplainedPeaks`
      }
      if (!is.null(self$`numOfExplainablePeaks`)) {
        FormulaCandidateObject[["numOfExplainablePeaks"]] <-
          self$`numOfExplainablePeaks`
      }
      if (!is.null(self$`totalExplainedIntensity`)) {
        FormulaCandidateObject[["totalExplainedIntensity"]] <-
          self$`totalExplainedIntensity`
      }
      if (!is.null(self$`medianMassDeviation`)) {
        FormulaCandidateObject[["medianMassDeviation"]] <-
          if (length(names(self$`medianMassDeviation`$toJSON())) == 0L && is.character(jsonlite::fromJSON(self$`medianMassDeviation`$toJSON()))) {
            jsonlite::fromJSON(self$`medianMassDeviation`$toJSON())
          } else {
            self$`medianMassDeviation`$toJSON()
          }
      }
      if (!is.null(self$`fragmentationTree`)) {
        FormulaCandidateObject[["fragmentationTree"]] <-
          if (length(names(self$`fragmentationTree`$toJSON())) == 0L && is.character(jsonlite::fromJSON(self$`fragmentationTree`$toJSON()))) {
            jsonlite::fromJSON(self$`fragmentationTree`$toJSON())
          } else {
            self$`fragmentationTree`$toJSON()
          }
      }
      if (!is.null(self$`annotatedSpectrum`)) {
        FormulaCandidateObject[["annotatedSpectrum"]] <-
          if (length(names(self$`annotatedSpectrum`$toJSON())) == 0L && is.character(jsonlite::fromJSON(self$`annotatedSpectrum`$toJSON()))) {
            jsonlite::fromJSON(self$`annotatedSpectrum`$toJSON())
          } else {
            self$`annotatedSpectrum`$toJSON()
          }
      }
      if (!is.null(self$`isotopePatternAnnotation`)) {
        FormulaCandidateObject[["isotopePatternAnnotation"]] <-
          if (length(names(self$`isotopePatternAnnotation`$toJSON())) == 0L && is.character(jsonlite::fromJSON(self$`isotopePatternAnnotation`$toJSON()))) {
            jsonlite::fromJSON(self$`isotopePatternAnnotation`$toJSON())
          } else {
            self$`isotopePatternAnnotation`$toJSON()
          }
      }
      if (!is.null(self$`lipidAnnotation`)) {
        FormulaCandidateObject[["lipidAnnotation"]] <-
          if (length(names(self$`lipidAnnotation`$toJSON())) == 0L && is.character(jsonlite::fromJSON(self$`lipidAnnotation`$toJSON()))) {
            jsonlite::fromJSON(self$`lipidAnnotation`$toJSON())
          } else {
            self$`lipidAnnotation`$toJSON()
          }
      }
      if (!is.null(self$`predictedFingerprint`)) {
        FormulaCandidateObject[["predictedFingerprint"]] <-
          self$`predictedFingerprint`
      }
      if (!is.null(self$`compoundClasses`)) {
        FormulaCandidateObject[["compoundClasses"]] <-
          if (length(names(self$`compoundClasses`$toJSON())) == 0L && is.character(jsonlite::fromJSON(self$`compoundClasses`$toJSON()))) {
            jsonlite::fromJSON(self$`compoundClasses`$toJSON())
          } else {
            self$`compoundClasses`$toJSON()
          }
      }
      if (!is.null(self$`canopusPrediction`)) {
        FormulaCandidateObject[["canopusPrediction"]] <-
          if (length(names(self$`canopusPrediction`$toJSON())) == 0L && is.character(jsonlite::fromJSON(self$`canopusPrediction`$toJSON()))) {
            jsonlite::fromJSON(self$`canopusPrediction`$toJSON())
          } else {
            self$`canopusPrediction`$toJSON()
          }
      }
      FormulaCandidateObject
    },
    #' Deserialize JSON string into an instance of FormulaCandidate
    #'
    #' @description
    #' Deserialize JSON string into an instance of FormulaCandidate
    #'
    #' @param input_json the JSON input
    #' @return the instance of FormulaCandidate
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`formulaId`)) {
        self$`formulaId` <- this_object$`formulaId`
      }
      if (!is.null(this_object$`molecularFormula`)) {
        self$`molecularFormula` <- this_object$`molecularFormula`
      }
      if (!is.null(this_object$`adduct`)) {
        self$`adduct` <- this_object$`adduct`
      }
      if (!is.null(this_object$`rank`)) {
        self$`rank` <- this_object$`rank`
      }
      if (!is.null(this_object$`siriusScore`)) {
        self$`siriusScore` <- this_object$`siriusScore`
      }
      if (!is.null(this_object$`isotopeScore`)) {
        self$`isotopeScore` <- this_object$`isotopeScore`
      }
      if (!is.null(this_object$`treeScore`)) {
        self$`treeScore` <- this_object$`treeScore`
      }
      if (!is.null(this_object$`zodiacScore`)) {
        self$`zodiacScore` <- this_object$`zodiacScore`
      }
      if (!is.null(this_object$`numOfExplainedPeaks`)) {
        self$`numOfExplainedPeaks` <- this_object$`numOfExplainedPeaks`
      }
      if (!is.null(this_object$`numOfExplainablePeaks`)) {
        self$`numOfExplainablePeaks` <- this_object$`numOfExplainablePeaks`
      }
      if (!is.null(this_object$`totalExplainedIntensity`)) {
        self$`totalExplainedIntensity` <- this_object$`totalExplainedIntensity`
      }
      if (!is.null(this_object$`medianMassDeviation`)) {
        `medianmassdeviation_object` <- Deviation$new()
        `medianmassdeviation_object`$fromJSON(jsonlite::toJSON(this_object$`medianMassDeviation`, auto_unbox = TRUE, digits = NA))
        self$`medianMassDeviation` <- `medianmassdeviation_object`
      }
      if (!is.null(this_object$`fragmentationTree`)) {
        `fragmentationtree_object` <- FragmentationTree$new()
        `fragmentationtree_object`$fromJSON(jsonlite::toJSON(this_object$`fragmentationTree`, auto_unbox = TRUE, digits = NA))
        self$`fragmentationTree` <- `fragmentationtree_object`
      }
      if (!is.null(this_object$`annotatedSpectrum`)) {
        `annotatedspectrum_object` <- AnnotatedSpectrum$new()
        `annotatedspectrum_object`$fromJSON(jsonlite::toJSON(this_object$`annotatedSpectrum`, auto_unbox = TRUE, digits = NA))
        self$`annotatedSpectrum` <- `annotatedspectrum_object`
      }
      if (!is.null(this_object$`isotopePatternAnnotation`)) {
        `isotopepatternannotation_object` <- IsotopePatternAnnotation$new()
        `isotopepatternannotation_object`$fromJSON(jsonlite::toJSON(this_object$`isotopePatternAnnotation`, auto_unbox = TRUE, digits = NA))
        self$`isotopePatternAnnotation` <- `isotopepatternannotation_object`
      }
      if (!is.null(this_object$`lipidAnnotation`)) {
        `lipidannotation_object` <- LipidAnnotation$new()
        `lipidannotation_object`$fromJSON(jsonlite::toJSON(this_object$`lipidAnnotation`, auto_unbox = TRUE, digits = NA))
        self$`lipidAnnotation` <- `lipidannotation_object`
      }
      if (!is.null(this_object$`predictedFingerprint`)) {
        self$`predictedFingerprint` <- ApiClient$new()$deserializeObj(this_object$`predictedFingerprint`, "array[numeric]", loadNamespace("Rsirius"))
      }
      if (!is.null(this_object$`compoundClasses`)) {
        `compoundclasses_object` <- CompoundClasses$new()
        `compoundclasses_object`$fromJSON(jsonlite::toJSON(this_object$`compoundClasses`, auto_unbox = TRUE, digits = NA))
        self$`compoundClasses` <- `compoundclasses_object`
      }
      if (!is.null(this_object$`canopusPrediction`)) {
        `canopusprediction_object` <- CanopusPrediction$new()
        `canopusprediction_object`$fromJSON(jsonlite::toJSON(this_object$`canopusPrediction`, auto_unbox = TRUE, digits = NA))
        self$`canopusPrediction` <- `canopusprediction_object`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return FormulaCandidate in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`formulaId`)) {
          sprintf(
          '"formulaId":
            "%s"
                    ',
          self$`formulaId`
          )
        },
        if (!is.null(self$`molecularFormula`)) {
          sprintf(
          '"molecularFormula":
            "%s"
                    ',
          self$`molecularFormula`
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
        if (!is.null(self$`rank`)) {
          sprintf(
          '"rank":
            %d
                    ',
          self$`rank`
          )
        },
        if (!is.null(self$`siriusScore`)) {
          sprintf(
          '"siriusScore":
            %d
                    ',
          self$`siriusScore`
          )
        },
        if (!is.null(self$`isotopeScore`)) {
          sprintf(
          '"isotopeScore":
            %d
                    ',
          self$`isotopeScore`
          )
        },
        if (!is.null(self$`treeScore`)) {
          sprintf(
          '"treeScore":
            %d
                    ',
          self$`treeScore`
          )
        },
        if (!is.null(self$`zodiacScore`)) {
          sprintf(
          '"zodiacScore":
            %d
                    ',
          self$`zodiacScore`
          )
        },
        if (!is.null(self$`numOfExplainedPeaks`)) {
          sprintf(
          '"numOfExplainedPeaks":
            %d
                    ',
          self$`numOfExplainedPeaks`
          )
        },
        if (!is.null(self$`numOfExplainablePeaks`)) {
          sprintf(
          '"numOfExplainablePeaks":
            %d
                    ',
          self$`numOfExplainablePeaks`
          )
        },
        if (!is.null(self$`totalExplainedIntensity`)) {
          sprintf(
          '"totalExplainedIntensity":
            %d
                    ',
          self$`totalExplainedIntensity`
          )
        },
        if (!is.null(self$`medianMassDeviation`)) {
          sprintf(
          '"medianMassDeviation":
          %s
          ',
          jsonlite::toJSON(self$`medianMassDeviation`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`fragmentationTree`)) {
          sprintf(
          '"fragmentationTree":
          %s
          ',
          jsonlite::toJSON(self$`fragmentationTree`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`annotatedSpectrum`)) {
          sprintf(
          '"annotatedSpectrum":
          %s
          ',
          jsonlite::toJSON(self$`annotatedSpectrum`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`isotopePatternAnnotation`)) {
          sprintf(
          '"isotopePatternAnnotation":
          %s
          ',
          jsonlite::toJSON(self$`isotopePatternAnnotation`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`lipidAnnotation`)) {
          sprintf(
          '"lipidAnnotation":
          %s
          ',
          jsonlite::toJSON(self$`lipidAnnotation`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`predictedFingerprint`)) {
          sprintf(
          '"predictedFingerprint":
             [%s]
          ',
          paste(unlist(lapply(self$`predictedFingerprint`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`compoundClasses`)) {
          sprintf(
          '"compoundClasses":
          %s
          ',
          jsonlite::toJSON(self$`compoundClasses`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`canopusPrediction`)) {
          sprintf(
          '"canopusPrediction":
          %s
          ',
          jsonlite::toJSON(self$`canopusPrediction`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of FormulaCandidate
    #'
    #' @description
    #' Deserialize JSON string into an instance of FormulaCandidate
    #'
    #' @param input_json the JSON input
    #' @return the instance of FormulaCandidate
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`formulaId` <- this_object$`formulaId`
      self$`molecularFormula` <- this_object$`molecularFormula`
      self$`adduct` <- this_object$`adduct`
      self$`rank` <- this_object$`rank`
      self$`siriusScore` <- this_object$`siriusScore`
      self$`isotopeScore` <- this_object$`isotopeScore`
      self$`treeScore` <- this_object$`treeScore`
      self$`zodiacScore` <- this_object$`zodiacScore`
      self$`numOfExplainedPeaks` <- this_object$`numOfExplainedPeaks`
      self$`numOfExplainablePeaks` <- this_object$`numOfExplainablePeaks`
      self$`totalExplainedIntensity` <- this_object$`totalExplainedIntensity`
      self$`medianMassDeviation` <- Deviation$new()$fromJSON(jsonlite::toJSON(this_object$`medianMassDeviation`, auto_unbox = TRUE, digits = NA))
      self$`fragmentationTree` <- FragmentationTree$new()$fromJSON(jsonlite::toJSON(this_object$`fragmentationTree`, auto_unbox = TRUE, digits = NA))
      self$`annotatedSpectrum` <- AnnotatedSpectrum$new()$fromJSON(jsonlite::toJSON(this_object$`annotatedSpectrum`, auto_unbox = TRUE, digits = NA))
      self$`isotopePatternAnnotation` <- IsotopePatternAnnotation$new()$fromJSON(jsonlite::toJSON(this_object$`isotopePatternAnnotation`, auto_unbox = TRUE, digits = NA))
      self$`lipidAnnotation` <- LipidAnnotation$new()$fromJSON(jsonlite::toJSON(this_object$`lipidAnnotation`, auto_unbox = TRUE, digits = NA))
      self$`predictedFingerprint` <- ApiClient$new()$deserializeObj(this_object$`predictedFingerprint`, "array[numeric]", loadNamespace("Rsirius"))
      self$`compoundClasses` <- CompoundClasses$new()$fromJSON(jsonlite::toJSON(this_object$`compoundClasses`, auto_unbox = TRUE, digits = NA))
      self$`canopusPrediction` <- CanopusPrediction$new()$fromJSON(jsonlite::toJSON(this_object$`canopusPrediction`, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to FormulaCandidate
    #'
    #' @description
    #' Validate JSON input with respect to FormulaCandidate and throw an exception if invalid
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
    #' @return String representation of FormulaCandidate
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
# FormulaCandidate$unlock()
#
## Below is an example to define the print function
# FormulaCandidate$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# FormulaCandidate$lock()

