#' Create a new ConsensusAnnotationsCSI
#'
#' @description
#' ConsensusAnnotationsCSI Class
#'
#' @docType class
#' @title ConsensusAnnotationsCSI
#' @description ConsensusAnnotationsCSI Class
#' @format An \code{R6Class} generator object
#' @field molecularFormula Molecular formula of the consensus annotation  Might be null if no consensus formula is available. character [optional]
#' @field compoundClasses Compound classes (predicted with CANOPUS) corresponding to the molecularFormula  Might be null if no fingerprints or compound classes are available. \link{CompoundClasses} [optional]
#' @field supportingFeatureIds FeatureIds where the topAnnotation supports this annotation. list(character) [optional]
#' @field selectionCriterion Null if this is a custom selection character [optional]
#' @field csiFingerIdStructure Database structure candidate (searched with CSI:FingerID), that also defines the molecularFormula  Might be null if no consensus structure is available. \link{StructureCandidate} [optional]
#' @field confidenceExactMatch Confidence value that represents the certainty that reported consensus structure is exactly the measured one  If multiple features support this consensus structure the maximum confidence is reported numeric [optional]
#' @field confidenceApproxMatch Confidence value that represents the certainty that the exact consensus structure or a very similar  structure (e.g. measured by Maximum Common Edge Subgraph Distance) is the measured one.  If multiple features support this consensus structure the maximum confidence is reported numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ConsensusAnnotationsCSI <- R6::R6Class(
  "ConsensusAnnotationsCSI",
  public = list(
    `molecularFormula` = NULL,
    `compoundClasses` = NULL,
    `supportingFeatureIds` = NULL,
    `selectionCriterion` = NULL,
    `csiFingerIdStructure` = NULL,
    `confidenceExactMatch` = NULL,
    `confidenceApproxMatch` = NULL,

    #' @description
    #' Initialize a new ConsensusAnnotationsCSI class.
    #'
    #' @param molecularFormula Molecular formula of the consensus annotation  Might be null if no consensus formula is available.
    #' @param compoundClasses Compound classes (predicted with CANOPUS) corresponding to the molecularFormula  Might be null if no fingerprints or compound classes are available.
    #' @param supportingFeatureIds FeatureIds where the topAnnotation supports this annotation.
    #' @param selectionCriterion Null if this is a custom selection
    #' @param csiFingerIdStructure Database structure candidate (searched with CSI:FingerID), that also defines the molecularFormula  Might be null if no consensus structure is available.
    #' @param confidenceExactMatch Confidence value that represents the certainty that reported consensus structure is exactly the measured one  If multiple features support this consensus structure the maximum confidence is reported
    #' @param confidenceApproxMatch Confidence value that represents the certainty that the exact consensus structure or a very similar  structure (e.g. measured by Maximum Common Edge Subgraph Distance) is the measured one.  If multiple features support this consensus structure the maximum confidence is reported
    #' @param ... Other optional arguments.
    initialize = function(`molecularFormula` = NULL, `compoundClasses` = NULL, `supportingFeatureIds` = NULL, `selectionCriterion` = NULL, `csiFingerIdStructure` = NULL, `confidenceExactMatch` = NULL, `confidenceApproxMatch` = NULL, ...) {
      if (!is.null(`molecularFormula`)) {
        if (!(is.character(`molecularFormula`) && length(`molecularFormula`) == 1)) {
          stop(paste("Error! Invalid data for `molecularFormula`. Must be a string:", `molecularFormula`))
        }
        self$`molecularFormula` <- `molecularFormula`
      }
      if (!is.null(`compoundClasses`)) {
        stopifnot(R6::is.R6(`compoundClasses`))
        self$`compoundClasses` <- `compoundClasses`
      }
      if (!is.null(`supportingFeatureIds`)) {
        stopifnot(is.vector(`supportingFeatureIds`), length(`supportingFeatureIds`) != 0)
        sapply(`supportingFeatureIds`, function(x) stopifnot(is.character(x)))
        self$`supportingFeatureIds` <- `supportingFeatureIds`
      }
      if (!is.null(`selectionCriterion`)) {
        if (!(`selectionCriterion` %in% c("MAJORITY_STRUCTURE", "CONFIDENCE_STRUCTURE", "SINGLETON_STRUCTURE", "MAJORITY_FORMULA", "TOP_FORMULA", "SINGLETON_FORMULA"))) {
          stop(paste("Error! \"", `selectionCriterion`, "\" cannot be assigned to `selectionCriterion`. Must be \"MAJORITY_STRUCTURE\", \"CONFIDENCE_STRUCTURE\", \"SINGLETON_STRUCTURE\", \"MAJORITY_FORMULA\", \"TOP_FORMULA\", \"SINGLETON_FORMULA\".", sep = ""))
        }
        if (!(is.character(`selectionCriterion`) && length(`selectionCriterion`) == 1)) {
          stop(paste("Error! Invalid data for `selectionCriterion`. Must be a string:", `selectionCriterion`))
        }
        self$`selectionCriterion` <- `selectionCriterion`
      }
      if (!is.null(`csiFingerIdStructure`)) {
        stopifnot(R6::is.R6(`csiFingerIdStructure`))
        self$`csiFingerIdStructure` <- `csiFingerIdStructure`
      }
      if (!is.null(`confidenceExactMatch`)) {
        if (!(is.numeric(`confidenceExactMatch`) && length(`confidenceExactMatch`) == 1)) {
          stop(paste("Error! Invalid data for `confidenceExactMatch`. Must be a number:", `confidenceExactMatch`))
        }
        self$`confidenceExactMatch` <- `confidenceExactMatch`
      }
      if (!is.null(`confidenceApproxMatch`)) {
        if (!(is.numeric(`confidenceApproxMatch`) && length(`confidenceApproxMatch`) == 1)) {
          stop(paste("Error! Invalid data for `confidenceApproxMatch`. Must be a number:", `confidenceApproxMatch`))
        }
        self$`confidenceApproxMatch` <- `confidenceApproxMatch`
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
    #' @return ConsensusAnnotationsCSI as a base R list.
    #' @examples
    #' # convert array of ConsensusAnnotationsCSI (x) to a data frame
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
    #' Convert ConsensusAnnotationsCSI to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ConsensusAnnotationsCSIObject <- list()
      if (!is.null(self$`molecularFormula`)) {
        ConsensusAnnotationsCSIObject[["molecularFormula"]] <-
          self$`molecularFormula`
      }
      if (!is.null(self$`compoundClasses`)) {
        ConsensusAnnotationsCSIObject[["compoundClasses"]] <-
          self$`compoundClasses`$toSimpleType()
      }
      if (!is.null(self$`supportingFeatureIds`)) {
        ConsensusAnnotationsCSIObject[["supportingFeatureIds"]] <-
          self$`supportingFeatureIds`
      }
      if (!is.null(self$`selectionCriterion`)) {
        ConsensusAnnotationsCSIObject[["selectionCriterion"]] <-
          self$`selectionCriterion`
      }
      if (!is.null(self$`csiFingerIdStructure`)) {
        ConsensusAnnotationsCSIObject[["csiFingerIdStructure"]] <-
          self$`csiFingerIdStructure`$toSimpleType()
      }
      if (!is.null(self$`confidenceExactMatch`)) {
        ConsensusAnnotationsCSIObject[["confidenceExactMatch"]] <-
          self$`confidenceExactMatch`
      }
      if (!is.null(self$`confidenceApproxMatch`)) {
        ConsensusAnnotationsCSIObject[["confidenceApproxMatch"]] <-
          self$`confidenceApproxMatch`
      }
      return(ConsensusAnnotationsCSIObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ConsensusAnnotationsCSI
    #'
    #' @param input_json the JSON input
    #' @return the instance of ConsensusAnnotationsCSI
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`molecularFormula`)) {
        self$`molecularFormula` <- this_object$`molecularFormula`
      }
      if (!is.null(this_object$`compoundClasses`)) {
        `compoundclasses_object` <- CompoundClasses$new()
        `compoundclasses_object`$fromJSON(jsonlite::toJSON(this_object$`compoundClasses`, auto_unbox = TRUE, digits = NA, null = 'null'))
        self$`compoundClasses` <- `compoundclasses_object`
      }
      if (!is.null(this_object$`supportingFeatureIds`)) {
        self$`supportingFeatureIds` <- ApiClient$new()$deserializeObj(this_object$`supportingFeatureIds`, "array[character]", loadNamespace("Rsirius"))
      }
      if (!is.null(this_object$`selectionCriterion`)) {
        if (!is.null(this_object$`selectionCriterion`) && !(this_object$`selectionCriterion` %in% c("MAJORITY_STRUCTURE", "CONFIDENCE_STRUCTURE", "SINGLETON_STRUCTURE", "MAJORITY_FORMULA", "TOP_FORMULA", "SINGLETON_FORMULA"))) {
          stop(paste("Error! \"", this_object$`selectionCriterion`, "\" cannot be assigned to `selectionCriterion`. Must be \"MAJORITY_STRUCTURE\", \"CONFIDENCE_STRUCTURE\", \"SINGLETON_STRUCTURE\", \"MAJORITY_FORMULA\", \"TOP_FORMULA\", \"SINGLETON_FORMULA\".", sep = ""))
        }
        self$`selectionCriterion` <- this_object$`selectionCriterion`
      }
      if (!is.null(this_object$`csiFingerIdStructure`)) {
        `csifingeridstructure_object` <- StructureCandidate$new()
        `csifingeridstructure_object`$fromJSON(jsonlite::toJSON(this_object$`csiFingerIdStructure`, auto_unbox = TRUE, digits = NA, null = 'null'))
        self$`csiFingerIdStructure` <- `csifingeridstructure_object`
      }
      if (!is.null(this_object$`confidenceExactMatch`)) {
        self$`confidenceExactMatch` <- this_object$`confidenceExactMatch`
      }
      if (!is.null(this_object$`confidenceApproxMatch`)) {
        self$`confidenceApproxMatch` <- this_object$`confidenceApproxMatch`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ConsensusAnnotationsCSI in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ConsensusAnnotationsCSI
    #'
    #' @param input_json the JSON input
    #' @return the instance of ConsensusAnnotationsCSI
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`molecularFormula` <- this_object$`molecularFormula`
      self$`compoundClasses` <- CompoundClasses$new()$fromJSON(jsonlite::toJSON(this_object$`compoundClasses`, auto_unbox = TRUE, digits = NA, null = 'null'))
      self$`supportingFeatureIds` <- ApiClient$new()$deserializeObj(this_object$`supportingFeatureIds`, "array[character]", loadNamespace("Rsirius"))
      if (!is.null(this_object$`selectionCriterion`) && !(this_object$`selectionCriterion` %in% c("MAJORITY_STRUCTURE", "CONFIDENCE_STRUCTURE", "SINGLETON_STRUCTURE", "MAJORITY_FORMULA", "TOP_FORMULA", "SINGLETON_FORMULA"))) {
        stop(paste("Error! \"", this_object$`selectionCriterion`, "\" cannot be assigned to `selectionCriterion`. Must be \"MAJORITY_STRUCTURE\", \"CONFIDENCE_STRUCTURE\", \"SINGLETON_STRUCTURE\", \"MAJORITY_FORMULA\", \"TOP_FORMULA\", \"SINGLETON_FORMULA\".", sep = ""))
      }
      self$`selectionCriterion` <- this_object$`selectionCriterion`
      self$`csiFingerIdStructure` <- StructureCandidate$new()$fromJSON(jsonlite::toJSON(this_object$`csiFingerIdStructure`, auto_unbox = TRUE, digits = NA, null = 'null'))
      self$`confidenceExactMatch` <- this_object$`confidenceExactMatch`
      self$`confidenceApproxMatch` <- this_object$`confidenceApproxMatch`
      self
    },

    #' @description
    #' Validate JSON input with respect to ConsensusAnnotationsCSI and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ConsensusAnnotationsCSI
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
# ConsensusAnnotationsCSI$unlock()
#
## Below is an example to define the print function
# ConsensusAnnotationsCSI$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ConsensusAnnotationsCSI$lock()

