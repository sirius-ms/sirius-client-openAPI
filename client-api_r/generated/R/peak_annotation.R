#' Create a new PeakAnnotation
#'
#' @description
#' PeakAnnotation Class
#'
#' @docType class
#' @title PeakAnnotation
#' @description PeakAnnotation Class
#' @format An \code{R6Class} generator object
#' @field fragmentId Identifier of the peak/fragment. Can be used to map fragments and peaks  among fragmentation trees and spectra. integer
#' @field molecularFormula Molecular formula that has been annotated to this peak character [optional]
#' @field ionization Ionization that has been annotated to this peak character [optional]
#' @field exactMass Exact mass of the annotated molecular formula and ionization numeric [optional]
#' @field massDeviationMz Absolute mass deviation of the exact mass to the measured peak mass in mDa numeric [optional]
#' @field massDeviationPpm Relative mass deviation of the exact mass to the measured peak mass in ppm numeric [optional]
#' @field recalibratedMassDeviationMz Absolute mass deviation of the exact mass to the recalibrated peak mass in mDa numeric [optional]
#' @field recalibratedMassDeviationPpm Relative mass deviation of the exact mass to the recalibrated peak mass in ppm numeric [optional]
#' @field parentPeak  \link{ParentPeak} [optional]
#' @field substructureAtoms Array/List of indices of the atoms of the structure candidate that are part of this fragments substructure  (highlighted atoms) list(integer) [optional]
#' @field substructureBonds Array/List of indices of the bonds of the structure candidate that are part of this fragments substructure  (highlighted bonds)   Null if substructure annotation not available or not requested. list(integer) [optional]
#' @field substructureBondsCut Array/List of indices of the bonds of the structure candidate that need to be cut to produce this fragments  substructure (highlighted cutted bonds).   Null if substructure annotation not available or not requested. list(integer) [optional]
#' @field substructureScore This score roughly reflects the probability of this fragment forming.   This is the score of the path from root to this node which has the maximal score or \"profit\".  The score of a path is equal to the sum of scores of its contained fragments and edges.  Note: Refers to 'totalScore' in CombinatorialNode   Null if substructure annotation not available or not requested. numeric [optional]
#' @field hydrogenRearrangements Number of hydrogens rearrangements needed to match the substructure to the fragment formula.   Null if substructure annotation not available or not requested. integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PeakAnnotation <- R6::R6Class(
  "PeakAnnotation",
  public = list(
    `fragmentId` = NULL,
    `molecularFormula` = NULL,
    `ionization` = NULL,
    `exactMass` = NULL,
    `massDeviationMz` = NULL,
    `massDeviationPpm` = NULL,
    `recalibratedMassDeviationMz` = NULL,
    `recalibratedMassDeviationPpm` = NULL,
    `parentPeak` = NULL,
    `substructureAtoms` = NULL,
    `substructureBonds` = NULL,
    `substructureBondsCut` = NULL,
    `substructureScore` = NULL,
    `hydrogenRearrangements` = NULL,
    #' Initialize a new PeakAnnotation class.
    #'
    #' @description
    #' Initialize a new PeakAnnotation class.
    #'
    #' @param fragmentId Identifier of the peak/fragment. Can be used to map fragments and peaks  among fragmentation trees and spectra.
    #' @param molecularFormula Molecular formula that has been annotated to this peak
    #' @param ionization Ionization that has been annotated to this peak
    #' @param exactMass Exact mass of the annotated molecular formula and ionization
    #' @param massDeviationMz Absolute mass deviation of the exact mass to the measured peak mass in mDa
    #' @param massDeviationPpm Relative mass deviation of the exact mass to the measured peak mass in ppm
    #' @param recalibratedMassDeviationMz Absolute mass deviation of the exact mass to the recalibrated peak mass in mDa
    #' @param recalibratedMassDeviationPpm Relative mass deviation of the exact mass to the recalibrated peak mass in ppm
    #' @param parentPeak parentPeak
    #' @param substructureAtoms Array/List of indices of the atoms of the structure candidate that are part of this fragments substructure  (highlighted atoms)
    #' @param substructureBonds Array/List of indices of the bonds of the structure candidate that are part of this fragments substructure  (highlighted bonds)   Null if substructure annotation not available or not requested.
    #' @param substructureBondsCut Array/List of indices of the bonds of the structure candidate that need to be cut to produce this fragments  substructure (highlighted cutted bonds).   Null if substructure annotation not available or not requested.
    #' @param substructureScore This score roughly reflects the probability of this fragment forming.   This is the score of the path from root to this node which has the maximal score or \"profit\".  The score of a path is equal to the sum of scores of its contained fragments and edges.  Note: Refers to 'totalScore' in CombinatorialNode   Null if substructure annotation not available or not requested.
    #' @param hydrogenRearrangements Number of hydrogens rearrangements needed to match the substructure to the fragment formula.   Null if substructure annotation not available or not requested.
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`fragmentId`, `molecularFormula` = NULL, `ionization` = NULL, `exactMass` = NULL, `massDeviationMz` = NULL, `massDeviationPpm` = NULL, `recalibratedMassDeviationMz` = NULL, `recalibratedMassDeviationPpm` = NULL, `parentPeak` = NULL, `substructureAtoms` = NULL, `substructureBonds` = NULL, `substructureBondsCut` = NULL, `substructureScore` = NULL, `hydrogenRearrangements` = NULL, ...) {
      if (!missing(`fragmentId`)) {
        if (!(is.numeric(`fragmentId`) && length(`fragmentId`) == 1)) {
          stop(paste("Error! Invalid data for `fragmentId`. Must be an integer:", `fragmentId`))
        }
        self$`fragmentId` <- `fragmentId`
      }
      if (!is.null(`molecularFormula`)) {
        if (!(is.character(`molecularFormula`) && length(`molecularFormula`) == 1)) {
          stop(paste("Error! Invalid data for `molecularFormula`. Must be a string:", `molecularFormula`))
        }
        self$`molecularFormula` <- `molecularFormula`
      }
      if (!is.null(`ionization`)) {
        if (!(is.character(`ionization`) && length(`ionization`) == 1)) {
          stop(paste("Error! Invalid data for `ionization`. Must be a string:", `ionization`))
        }
        self$`ionization` <- `ionization`
      }
      if (!is.null(`exactMass`)) {
        if (!(is.numeric(`exactMass`) && length(`exactMass`) == 1)) {
          stop(paste("Error! Invalid data for `exactMass`. Must be a number:", `exactMass`))
        }
        self$`exactMass` <- `exactMass`
      }
      if (!is.null(`massDeviationMz`)) {
        if (!(is.numeric(`massDeviationMz`) && length(`massDeviationMz`) == 1)) {
          stop(paste("Error! Invalid data for `massDeviationMz`. Must be a number:", `massDeviationMz`))
        }
        self$`massDeviationMz` <- `massDeviationMz`
      }
      if (!is.null(`massDeviationPpm`)) {
        if (!(is.numeric(`massDeviationPpm`) && length(`massDeviationPpm`) == 1)) {
          stop(paste("Error! Invalid data for `massDeviationPpm`. Must be a number:", `massDeviationPpm`))
        }
        self$`massDeviationPpm` <- `massDeviationPpm`
      }
      if (!is.null(`recalibratedMassDeviationMz`)) {
        if (!(is.numeric(`recalibratedMassDeviationMz`) && length(`recalibratedMassDeviationMz`) == 1)) {
          stop(paste("Error! Invalid data for `recalibratedMassDeviationMz`. Must be a number:", `recalibratedMassDeviationMz`))
        }
        self$`recalibratedMassDeviationMz` <- `recalibratedMassDeviationMz`
      }
      if (!is.null(`recalibratedMassDeviationPpm`)) {
        if (!(is.numeric(`recalibratedMassDeviationPpm`) && length(`recalibratedMassDeviationPpm`) == 1)) {
          stop(paste("Error! Invalid data for `recalibratedMassDeviationPpm`. Must be a number:", `recalibratedMassDeviationPpm`))
        }
        self$`recalibratedMassDeviationPpm` <- `recalibratedMassDeviationPpm`
      }
      if (!is.null(`parentPeak`)) {
        stopifnot(R6::is.R6(`parentPeak`))
        self$`parentPeak` <- `parentPeak`
      }
      if (!is.null(`substructureAtoms`)) {
        stopifnot(is.vector(`substructureAtoms`), length(`substructureAtoms`) != 0)
        sapply(`substructureAtoms`, function(x) stopifnot(is.character(x)))
        self$`substructureAtoms` <- `substructureAtoms`
      }
      if (!is.null(`substructureBonds`)) {
        stopifnot(is.vector(`substructureBonds`), length(`substructureBonds`) != 0)
        sapply(`substructureBonds`, function(x) stopifnot(is.character(x)))
        self$`substructureBonds` <- `substructureBonds`
      }
      if (!is.null(`substructureBondsCut`)) {
        stopifnot(is.vector(`substructureBondsCut`), length(`substructureBondsCut`) != 0)
        sapply(`substructureBondsCut`, function(x) stopifnot(is.character(x)))
        self$`substructureBondsCut` <- `substructureBondsCut`
      }
      if (!is.null(`substructureScore`)) {
        if (!(is.numeric(`substructureScore`) && length(`substructureScore`) == 1)) {
          stop(paste("Error! Invalid data for `substructureScore`. Must be a number:", `substructureScore`))
        }
        self$`substructureScore` <- `substructureScore`
      }
      if (!is.null(`hydrogenRearrangements`)) {
        if (!(is.numeric(`hydrogenRearrangements`) && length(`hydrogenRearrangements`) == 1)) {
          stop(paste("Error! Invalid data for `hydrogenRearrangements`. Must be an integer:", `hydrogenRearrangements`))
        }
        self$`hydrogenRearrangements` <- `hydrogenRearrangements`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return PeakAnnotation in JSON format
    #' @export
    toJSON = function() {
      PeakAnnotationObject <- list()
      if (!is.null(self$`fragmentId`)) {
        PeakAnnotationObject[["fragmentId"]] <-
          self$`fragmentId`
      }
      if (!is.null(self$`molecularFormula`)) {
        PeakAnnotationObject[["molecularFormula"]] <-
          self$`molecularFormula`
      }
      if (!is.null(self$`ionization`)) {
        PeakAnnotationObject[["ionization"]] <-
          self$`ionization`
      }
      if (!is.null(self$`exactMass`)) {
        PeakAnnotationObject[["exactMass"]] <-
          self$`exactMass`
      }
      if (!is.null(self$`massDeviationMz`)) {
        PeakAnnotationObject[["massDeviationMz"]] <-
          self$`massDeviationMz`
      }
      if (!is.null(self$`massDeviationPpm`)) {
        PeakAnnotationObject[["massDeviationPpm"]] <-
          self$`massDeviationPpm`
      }
      if (!is.null(self$`recalibratedMassDeviationMz`)) {
        PeakAnnotationObject[["recalibratedMassDeviationMz"]] <-
          self$`recalibratedMassDeviationMz`
      }
      if (!is.null(self$`recalibratedMassDeviationPpm`)) {
        PeakAnnotationObject[["recalibratedMassDeviationPpm"]] <-
          self$`recalibratedMassDeviationPpm`
      }
      if (!is.null(self$`parentPeak`)) {
        PeakAnnotationObject[["parentPeak"]] <-
          self$`parentPeak`$toJSON()
      }
      if (!is.null(self$`substructureAtoms`)) {
        PeakAnnotationObject[["substructureAtoms"]] <-
          self$`substructureAtoms`
      }
      if (!is.null(self$`substructureBonds`)) {
        PeakAnnotationObject[["substructureBonds"]] <-
          self$`substructureBonds`
      }
      if (!is.null(self$`substructureBondsCut`)) {
        PeakAnnotationObject[["substructureBondsCut"]] <-
          self$`substructureBondsCut`
      }
      if (!is.null(self$`substructureScore`)) {
        PeakAnnotationObject[["substructureScore"]] <-
          self$`substructureScore`
      }
      if (!is.null(self$`hydrogenRearrangements`)) {
        PeakAnnotationObject[["hydrogenRearrangements"]] <-
          self$`hydrogenRearrangements`
      }
      PeakAnnotationObject
    },
    #' Deserialize JSON string into an instance of PeakAnnotation
    #'
    #' @description
    #' Deserialize JSON string into an instance of PeakAnnotation
    #'
    #' @param input_json the JSON input
    #' @return the instance of PeakAnnotation
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`fragmentId`)) {
        self$`fragmentId` <- this_object$`fragmentId`
      }
      if (!is.null(this_object$`molecularFormula`)) {
        self$`molecularFormula` <- this_object$`molecularFormula`
      }
      if (!is.null(this_object$`ionization`)) {
        self$`ionization` <- this_object$`ionization`
      }
      if (!is.null(this_object$`exactMass`)) {
        self$`exactMass` <- this_object$`exactMass`
      }
      if (!is.null(this_object$`massDeviationMz`)) {
        self$`massDeviationMz` <- this_object$`massDeviationMz`
      }
      if (!is.null(this_object$`massDeviationPpm`)) {
        self$`massDeviationPpm` <- this_object$`massDeviationPpm`
      }
      if (!is.null(this_object$`recalibratedMassDeviationMz`)) {
        self$`recalibratedMassDeviationMz` <- this_object$`recalibratedMassDeviationMz`
      }
      if (!is.null(this_object$`recalibratedMassDeviationPpm`)) {
        self$`recalibratedMassDeviationPpm` <- this_object$`recalibratedMassDeviationPpm`
      }
      if (!is.null(this_object$`parentPeak`)) {
        `parentpeak_object` <- ParentPeak$new()
        `parentpeak_object`$fromJSON(jsonlite::toJSON(this_object$`parentPeak`, auto_unbox = TRUE, digits = NA))
        self$`parentPeak` <- `parentpeak_object`
      }
      if (!is.null(this_object$`substructureAtoms`)) {
        self$`substructureAtoms` <- ApiClient$new()$deserializeObj(this_object$`substructureAtoms`, "array[integer]", loadNamespace("Rsirius"))
      }
      if (!is.null(this_object$`substructureBonds`)) {
        self$`substructureBonds` <- ApiClient$new()$deserializeObj(this_object$`substructureBonds`, "array[integer]", loadNamespace("Rsirius"))
      }
      if (!is.null(this_object$`substructureBondsCut`)) {
        self$`substructureBondsCut` <- ApiClient$new()$deserializeObj(this_object$`substructureBondsCut`, "array[integer]", loadNamespace("Rsirius"))
      }
      if (!is.null(this_object$`substructureScore`)) {
        self$`substructureScore` <- this_object$`substructureScore`
      }
      if (!is.null(this_object$`hydrogenRearrangements`)) {
        self$`hydrogenRearrangements` <- this_object$`hydrogenRearrangements`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return PeakAnnotation in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`fragmentId`)) {
          sprintf(
          '"fragmentId":
            %d
                    ',
          self$`fragmentId`
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
        if (!is.null(self$`ionization`)) {
          sprintf(
          '"ionization":
            "%s"
                    ',
          self$`ionization`
          )
        },
        if (!is.null(self$`exactMass`)) {
          sprintf(
          '"exactMass":
            %d
                    ',
          self$`exactMass`
          )
        },
        if (!is.null(self$`massDeviationMz`)) {
          sprintf(
          '"massDeviationMz":
            %d
                    ',
          self$`massDeviationMz`
          )
        },
        if (!is.null(self$`massDeviationPpm`)) {
          sprintf(
          '"massDeviationPpm":
            %d
                    ',
          self$`massDeviationPpm`
          )
        },
        if (!is.null(self$`recalibratedMassDeviationMz`)) {
          sprintf(
          '"recalibratedMassDeviationMz":
            %d
                    ',
          self$`recalibratedMassDeviationMz`
          )
        },
        if (!is.null(self$`recalibratedMassDeviationPpm`)) {
          sprintf(
          '"recalibratedMassDeviationPpm":
            %d
                    ',
          self$`recalibratedMassDeviationPpm`
          )
        },
        if (!is.null(self$`parentPeak`)) {
          sprintf(
          '"parentPeak":
          %s
          ',
          jsonlite::toJSON(self$`parentPeak`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`substructureAtoms`)) {
          sprintf(
          '"substructureAtoms":
             [%s]
          ',
          paste(unlist(lapply(self$`substructureAtoms`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`substructureBonds`)) {
          sprintf(
          '"substructureBonds":
             [%s]
          ',
          paste(unlist(lapply(self$`substructureBonds`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`substructureBondsCut`)) {
          sprintf(
          '"substructureBondsCut":
             [%s]
          ',
          paste(unlist(lapply(self$`substructureBondsCut`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`substructureScore`)) {
          sprintf(
          '"substructureScore":
            %d
                    ',
          self$`substructureScore`
          )
        },
        if (!is.null(self$`hydrogenRearrangements`)) {
          sprintf(
          '"hydrogenRearrangements":
            %d
                    ',
          self$`hydrogenRearrangements`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of PeakAnnotation
    #'
    #' @description
    #' Deserialize JSON string into an instance of PeakAnnotation
    #'
    #' @param input_json the JSON input
    #' @return the instance of PeakAnnotation
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`fragmentId` <- this_object$`fragmentId`
      self$`molecularFormula` <- this_object$`molecularFormula`
      self$`ionization` <- this_object$`ionization`
      self$`exactMass` <- this_object$`exactMass`
      self$`massDeviationMz` <- this_object$`massDeviationMz`
      self$`massDeviationPpm` <- this_object$`massDeviationPpm`
      self$`recalibratedMassDeviationMz` <- this_object$`recalibratedMassDeviationMz`
      self$`recalibratedMassDeviationPpm` <- this_object$`recalibratedMassDeviationPpm`
      self$`parentPeak` <- ParentPeak$new()$fromJSON(jsonlite::toJSON(this_object$`parentPeak`, auto_unbox = TRUE, digits = NA))
      self$`substructureAtoms` <- ApiClient$new()$deserializeObj(this_object$`substructureAtoms`, "array[integer]", loadNamespace("Rsirius"))
      self$`substructureBonds` <- ApiClient$new()$deserializeObj(this_object$`substructureBonds`, "array[integer]", loadNamespace("Rsirius"))
      self$`substructureBondsCut` <- ApiClient$new()$deserializeObj(this_object$`substructureBondsCut`, "array[integer]", loadNamespace("Rsirius"))
      self$`substructureScore` <- this_object$`substructureScore`
      self$`hydrogenRearrangements` <- this_object$`hydrogenRearrangements`
      self
    },
    #' Validate JSON input with respect to PeakAnnotation
    #'
    #' @description
    #' Validate JSON input with respect to PeakAnnotation and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `fragmentId`
      if (!is.null(input_json$`fragmentId`)) {
        if (!(is.numeric(input_json$`fragmentId`) && length(input_json$`fragmentId`) == 1)) {
          stop(paste("Error! Invalid data for `fragmentId`. Must be an integer:", input_json$`fragmentId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PeakAnnotation: the required field `fragmentId` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PeakAnnotation
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
      # check if the required `fragmentId` is null
      if (is.null(self$`fragmentId`)) {
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
      # check if the required `fragmentId` is null
      if (is.null(self$`fragmentId`)) {
        invalid_fields["fragmentId"] <- "Non-nullable required field `fragmentId` cannot be null."
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
# PeakAnnotation$unlock()
#
## Below is an example to define the print function
# PeakAnnotation$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PeakAnnotation$lock()

