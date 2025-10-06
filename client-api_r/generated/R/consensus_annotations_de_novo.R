#' Create a new ConsensusAnnotationsDeNovo
#'
#' @description
#' ConsensusAnnotationsDeNovo Class
#'
#' @docType class
#' @title ConsensusAnnotationsDeNovo
#' @description ConsensusAnnotationsDeNovo Class
#' @format An \code{R6Class} generator object
#' @field molecularFormula Molecular formula of the consensus annotation  Might be null if no consensus formula is available. character [optional]
#' @field compoundClasses  \link{CompoundClasses} [optional]
#' @field supportingFeatureIds FeatureIds where the topAnnotation supports this annotation. list(character) [optional]
#' @field selectionCriterion Criterion that was used to select the consensus annotation. character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ConsensusAnnotationsDeNovo <- R6::R6Class(
  "ConsensusAnnotationsDeNovo",
  public = list(
    `molecularFormula` = NULL,
    `compoundClasses` = NULL,
    `supportingFeatureIds` = NULL,
    `selectionCriterion` = NULL,

    #' @description
    #' Initialize a new ConsensusAnnotationsDeNovo class.
    #'
    #' @param molecularFormula Molecular formula of the consensus annotation  Might be null if no consensus formula is available.
    #' @param compoundClasses compoundClasses
    #' @param supportingFeatureIds FeatureIds where the topAnnotation supports this annotation.
    #' @param selectionCriterion Criterion that was used to select the consensus annotation.
    #' @param ... Other optional arguments.
    initialize = function(`molecularFormula` = NULL, `compoundClasses` = NULL, `supportingFeatureIds` = NULL, `selectionCriterion` = NULL, ...) {
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
        if (!(`selectionCriterion` %in% c("MAJORITY_FORMULA", "TOP_FORMULA", "SINGLETON_FORMULA"))) {
          stop(paste("Error! \"", `selectionCriterion`, "\" cannot be assigned to `selectionCriterion`. Must be \"MAJORITY_FORMULA\", \"TOP_FORMULA\", \"SINGLETON_FORMULA\".", sep = ""))
        }
        if (!(is.character(`selectionCriterion`) && length(`selectionCriterion`) == 1)) {
          stop(paste("Error! Invalid data for `selectionCriterion`. Must be a string:", `selectionCriterion`))
        }
        self$`selectionCriterion` <- `selectionCriterion`
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
    #' @return ConsensusAnnotationsDeNovo as a base R list.
    #' @examples
    #' # convert array of ConsensusAnnotationsDeNovo (x) to a data frame
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
    #' Convert ConsensusAnnotationsDeNovo to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ConsensusAnnotationsDeNovoObject <- list()
      if (!is.null(self$`molecularFormula`)) {
        ConsensusAnnotationsDeNovoObject[["molecularFormula"]] <-
          self$`molecularFormula`
      }
      if (!is.null(self$`compoundClasses`)) {
        ConsensusAnnotationsDeNovoObject[["compoundClasses"]] <-
          self$`compoundClasses`$toSimpleType()
      }
      if (!is.null(self$`supportingFeatureIds`)) {
        ConsensusAnnotationsDeNovoObject[["supportingFeatureIds"]] <-
          self$`supportingFeatureIds`
      }
      if (!is.null(self$`selectionCriterion`)) {
        ConsensusAnnotationsDeNovoObject[["selectionCriterion"]] <-
          self$`selectionCriterion`
      }
      return(ConsensusAnnotationsDeNovoObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ConsensusAnnotationsDeNovo
    #'
    #' @param input_json the JSON input
    #' @return the instance of ConsensusAnnotationsDeNovo
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
        self$`supportingFeatureIds` <- ApiClient$new()$deserializeObj(this_object$`supportingFeatureIds`, "array[character]", loadNamespace("RSirius"))
      }
      if (!is.null(this_object$`selectionCriterion`)) {
        if (!is.null(this_object$`selectionCriterion`) && !(this_object$`selectionCriterion` %in% c("MAJORITY_FORMULA", "TOP_FORMULA", "SINGLETON_FORMULA"))) {
          stop(paste("Error! \"", this_object$`selectionCriterion`, "\" cannot be assigned to `selectionCriterion`. Must be \"MAJORITY_FORMULA\", \"TOP_FORMULA\", \"SINGLETON_FORMULA\".", sep = ""))
        }
        self$`selectionCriterion` <- this_object$`selectionCriterion`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ConsensusAnnotationsDeNovo in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ConsensusAnnotationsDeNovo
    #'
    #' @param input_json the JSON input
    #' @return the instance of ConsensusAnnotationsDeNovo
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`molecularFormula` <- this_object$`molecularFormula`
      self$`compoundClasses` <- CompoundClasses$new()$fromJSON(jsonlite::toJSON(this_object$`compoundClasses`, auto_unbox = TRUE, digits = NA, null = 'null'))
      self$`supportingFeatureIds` <- ApiClient$new()$deserializeObj(this_object$`supportingFeatureIds`, "array[character]", loadNamespace("RSirius"))
      if (!is.null(this_object$`selectionCriterion`) && !(this_object$`selectionCriterion` %in% c("MAJORITY_FORMULA", "TOP_FORMULA", "SINGLETON_FORMULA"))) {
        stop(paste("Error! \"", this_object$`selectionCriterion`, "\" cannot be assigned to `selectionCriterion`. Must be \"MAJORITY_FORMULA\", \"TOP_FORMULA\", \"SINGLETON_FORMULA\".", sep = ""))
      }
      self$`selectionCriterion` <- this_object$`selectionCriterion`
      self
    },

    #' @description
    #' Validate JSON input with respect to ConsensusAnnotationsDeNovo and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ConsensusAnnotationsDeNovo
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
# ConsensusAnnotationsDeNovo$unlock()
#
## Below is an example to define the print function
# ConsensusAnnotationsDeNovo$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ConsensusAnnotationsDeNovo$lock()

