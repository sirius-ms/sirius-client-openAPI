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
#' @field adduct Adduct that has been annotated to this spectrum character [optional]
#' @field exactMass Exact mass based on the annotated molecular formula and ionization numeric [optional]
#' @field massDeviationMz Absolute mass deviation of the exact mass to the precursor mass (precursorMz) of this spectrum in mDa numeric [optional]
#' @field massDeviationPpm Relative mass deviation of the exact mass to the precursor mass (precursorMz) of this spectrum in ppm numeric [optional]
#' @field structureAnnotationSmiles EXPERIMENTAL: This field is experimental and may be changed (or even removed) without notice until it is declared stable.   Smiles of the structure candidate used to derive substructure peak annotations via epimetheus insilico fragmentation  Substructure highlighting (bond and atom indices) refer to this specific SMILES.  If you standardize or canonicalize this SMILES in any way the indices of substructure highlighting might  not match correctly anymore.   Null if substructure annotation not available or not requested. character [optional]
#' @field structureAnnotationScore EXPERIMENTAL: This field is experimental and may be changed (or even removed) without notice until it is declared stable.   Overall score of all substructure annotations computed for this structure candidate (structureAnnotationSmiles)   Null if substructure annotation not available or not requested. numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SpectrumAnnotation <- R6::R6Class(
  "SpectrumAnnotation",
  public = list(
    `molecularFormula` = NULL,
    `adduct` = NULL,
    `exactMass` = NULL,
    `massDeviationMz` = NULL,
    `massDeviationPpm` = NULL,
    `structureAnnotationSmiles` = NULL,
    `structureAnnotationScore` = NULL,

    #' @description
    #' Initialize a new SpectrumAnnotation class.
    #'
    #' @param molecularFormula Molecular formula that has been annotated to this spectrum
    #' @param adduct Adduct that has been annotated to this spectrum
    #' @param exactMass Exact mass based on the annotated molecular formula and ionization
    #' @param massDeviationMz Absolute mass deviation of the exact mass to the precursor mass (precursorMz) of this spectrum in mDa
    #' @param massDeviationPpm Relative mass deviation of the exact mass to the precursor mass (precursorMz) of this spectrum in ppm
    #' @param structureAnnotationSmiles EXPERIMENTAL: This field is experimental and may be changed (or even removed) without notice until it is declared stable.   Smiles of the structure candidate used to derive substructure peak annotations via epimetheus insilico fragmentation  Substructure highlighting (bond and atom indices) refer to this specific SMILES.  If you standardize or canonicalize this SMILES in any way the indices of substructure highlighting might  not match correctly anymore.   Null if substructure annotation not available or not requested.
    #' @param structureAnnotationScore EXPERIMENTAL: This field is experimental and may be changed (or even removed) without notice until it is declared stable.   Overall score of all substructure annotations computed for this structure candidate (structureAnnotationSmiles)   Null if substructure annotation not available or not requested.
    #' @param ... Other optional arguments.
    initialize = function(`molecularFormula` = NULL, `adduct` = NULL, `exactMass` = NULL, `massDeviationMz` = NULL, `massDeviationPpm` = NULL, `structureAnnotationSmiles` = NULL, `structureAnnotationScore` = NULL, ...) {
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
    #' @return SpectrumAnnotation as a base R list.
    #' @examples
    #' # convert array of SpectrumAnnotation (x) to a data frame
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
    #' Convert SpectrumAnnotation to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SpectrumAnnotationObject <- list()
      if (!is.null(self$`molecularFormula`)) {
        SpectrumAnnotationObject[["molecularFormula"]] <-
          self$`molecularFormula`
      }
      if (!is.null(self$`adduct`)) {
        SpectrumAnnotationObject[["adduct"]] <-
          self$`adduct`
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
      return(SpectrumAnnotationObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of SpectrumAnnotation
    #'
    #' @param input_json the JSON input
    #' @return the instance of SpectrumAnnotation
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`molecularFormula`)) {
        self$`molecularFormula` <- this_object$`molecularFormula`
      }
      if (!is.null(this_object$`adduct`)) {
        self$`adduct` <- this_object$`adduct`
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

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SpectrumAnnotation in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SpectrumAnnotation
    #'
    #' @param input_json the JSON input
    #' @return the instance of SpectrumAnnotation
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`molecularFormula` <- this_object$`molecularFormula`
      self$`adduct` <- this_object$`adduct`
      self$`exactMass` <- this_object$`exactMass`
      self$`massDeviationMz` <- this_object$`massDeviationMz`
      self$`massDeviationPpm` <- this_object$`massDeviationPpm`
      self$`structureAnnotationSmiles` <- this_object$`structureAnnotationSmiles`
      self$`structureAnnotationScore` <- this_object$`structureAnnotationScore`
      self
    },

    #' @description
    #' Validate JSON input with respect to SpectrumAnnotation and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SpectrumAnnotation
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
# SpectrumAnnotation$unlock()
#
## Below is an example to define the print function
# SpectrumAnnotation$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SpectrumAnnotation$lock()

