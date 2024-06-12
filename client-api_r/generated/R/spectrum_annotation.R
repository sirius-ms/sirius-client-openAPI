#' Create a new SpectrumAnnotation
#'
#' @description
#' SpectrumAnnotation Class
#'
#' @docType class
#' @title SpectrumAnnotation
#' @description SpectrumAnnotation Class
#' @format An \code{R6Class} generator object
#' @field molecularFormula Molecular formula that has been annotated to this spectrum character [optional]
#' @field ionization Ionization that has been annotated to this spectrum character [optional]
#' @field exactMass Exact mass based on the annotated molecular formula and ionization numeric [optional]
#' @field massDeviationMz Absolute mass deviation of the exact mass to the precursor mass (precursorMz) of this spectrum in mDa numeric [optional]
#' @field massDeviationPpm Relative mass deviation of the exact mass to the precursor mass (precursorMz) of this spectrum in ppm numeric [optional]
#' @field structureAnnotationSmiles Smiles of the structure candidate used to derive substructure peak annotations via epimetheus insilico fragmentation  Substructure highlighting (bond and atom indices) refer to this specific SMILES.  If you standardize or canonicalize this SMILES in any way the indices of substructure highlighting might  not match correctly anymore.   Null if substructure annotation not available or not requested. character [optional]
#' @field structureAnnotationScore Overall score of all substructure annotations computed for this structure candidate (structureAnnotationSmiles)   Null if substructure annotation not available or not requested. numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SpectrumAnnotation <- R6::R6Class(
  "SpectrumAnnotation",
  public = list(
    `molecularFormula` = NULL,
    `ionization` = NULL,
    `exactMass` = NULL,
    `massDeviationMz` = NULL,
    `massDeviationPpm` = NULL,
    `structureAnnotationSmiles` = NULL,
    `structureAnnotationScore` = NULL,
    #' Initialize a new SpectrumAnnotation class.
    #'
    #' @description
    #' Initialize a new SpectrumAnnotation class.
    #'
    #' @param molecularFormula Molecular formula that has been annotated to this spectrum
    #' @param ionization Ionization that has been annotated to this spectrum
    #' @param exactMass Exact mass based on the annotated molecular formula and ionization
    #' @param massDeviationMz Absolute mass deviation of the exact mass to the precursor mass (precursorMz) of this spectrum in mDa
    #' @param massDeviationPpm Relative mass deviation of the exact mass to the precursor mass (precursorMz) of this spectrum in ppm
    #' @param structureAnnotationSmiles Smiles of the structure candidate used to derive substructure peak annotations via epimetheus insilico fragmentation  Substructure highlighting (bond and atom indices) refer to this specific SMILES.  If you standardize or canonicalize this SMILES in any way the indices of substructure highlighting might  not match correctly anymore.   Null if substructure annotation not available or not requested.
    #' @param structureAnnotationScore Overall score of all substructure annotations computed for this structure candidate (structureAnnotationSmiles)   Null if substructure annotation not available or not requested.
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`molecularFormula` = NULL, `ionization` = NULL, `exactMass` = NULL, `massDeviationMz` = NULL, `massDeviationPpm` = NULL, `structureAnnotationSmiles` = NULL, `structureAnnotationScore` = NULL, ...) {
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
      if (!is.null(`structureAnnotationSmiles`)) {
        if (!(is.character(`structureAnnotationSmiles`) && length(`structureAnnotationSmiles`) == 1)) {
          stop(paste("Error! Invalid data for `structureAnnotationSmiles`. Must be a string:", `structureAnnotationSmiles`))
        }
        self$`structureAnnotationSmiles` <- `structureAnnotationSmiles`
      }
      if (!is.null(`structureAnnotationScore`)) {
        if (!(is.numeric(`structureAnnotationScore`) && length(`structureAnnotationScore`) == 1)) {
          stop(paste("Error! Invalid data for `structureAnnotationScore`. Must be a number:", `structureAnnotationScore`))
        }
        self$`structureAnnotationScore` <- `structureAnnotationScore`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return SpectrumAnnotation in JSON format
    #' @export
    toJSON = function() {
      SpectrumAnnotationObject <- list()
      if (!is.null(self$`molecularFormula`)) {
        SpectrumAnnotationObject[["molecularFormula"]] <-
          self$`molecularFormula`
      }
      if (!is.null(self$`ionization`)) {
        SpectrumAnnotationObject[["ionization"]] <-
          self$`ionization`
      }
      if (!is.null(self$`exactMass`)) {
        SpectrumAnnotationObject[["exactMass"]] <-
          self$`exactMass`
      }
      if (!is.null(self$`massDeviationMz`)) {
        SpectrumAnnotationObject[["massDeviationMz"]] <-
          self$`massDeviationMz`
      }
      if (!is.null(self$`massDeviationPpm`)) {
        SpectrumAnnotationObject[["massDeviationPpm"]] <-
          self$`massDeviationPpm`
      }
      if (!is.null(self$`structureAnnotationSmiles`)) {
        SpectrumAnnotationObject[["structureAnnotationSmiles"]] <-
          self$`structureAnnotationSmiles`
      }
      if (!is.null(self$`structureAnnotationScore`)) {
        SpectrumAnnotationObject[["structureAnnotationScore"]] <-
          self$`structureAnnotationScore`
      }
      SpectrumAnnotationObject
    },
    #' Deserialize JSON string into an instance of SpectrumAnnotation
    #'
    #' @description
    #' Deserialize JSON string into an instance of SpectrumAnnotation
    #'
    #' @param input_json the JSON input
    #' @return the instance of SpectrumAnnotation
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
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
      if (!is.null(this_object$`structureAnnotationSmiles`)) {
        self$`structureAnnotationSmiles` <- this_object$`structureAnnotationSmiles`
      }
      if (!is.null(this_object$`structureAnnotationScore`)) {
        self$`structureAnnotationScore` <- this_object$`structureAnnotationScore`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return SpectrumAnnotation in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
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
            %f
                    ',
          self$`exactMass`
          )
        },
        if (!is.null(self$`massDeviationMz`)) {
          sprintf(
          '"massDeviationMz":
            %f
                    ',
          self$`massDeviationMz`
          )
        },
        if (!is.null(self$`massDeviationPpm`)) {
          sprintf(
          '"massDeviationPpm":
            %f
                    ',
          self$`massDeviationPpm`
          )
        },
        if (!is.null(self$`structureAnnotationSmiles`)) {
          sprintf(
          '"structureAnnotationSmiles":
            "%s"
                    ',
          self$`structureAnnotationSmiles`
          )
        },
        if (!is.null(self$`structureAnnotationScore`)) {
          sprintf(
          '"structureAnnotationScore":
            %f
                    ',
          self$`structureAnnotationScore`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of SpectrumAnnotation
    #'
    #' @description
    #' Deserialize JSON string into an instance of SpectrumAnnotation
    #'
    #' @param input_json the JSON input
    #' @return the instance of SpectrumAnnotation
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`molecularFormula` <- this_object$`molecularFormula`
      self$`ionization` <- this_object$`ionization`
      self$`exactMass` <- this_object$`exactMass`
      self$`massDeviationMz` <- this_object$`massDeviationMz`
      self$`massDeviationPpm` <- this_object$`massDeviationPpm`
      self$`structureAnnotationSmiles` <- this_object$`structureAnnotationSmiles`
      self$`structureAnnotationScore` <- this_object$`structureAnnotationScore`
      self
    },
    #' Validate JSON input with respect to SpectrumAnnotation
    #'
    #' @description
    #' Validate JSON input with respect to SpectrumAnnotation and throw an exception if invalid
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
    #' @return String representation of SpectrumAnnotation
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
# SpectrumAnnotation$unlock()
#
## Below is an example to define the print function
# SpectrumAnnotation$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SpectrumAnnotation$lock()

