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
    #' Initialize a new ConsensusAnnotationsDeNovo class.
    #'
    #' @description
    #' Initialize a new ConsensusAnnotationsDeNovo class.
    #'
    #' @param molecularFormula Molecular formula of the consensus annotation  Might be null if no consensus formula is available.
    #' @param compoundClasses compoundClasses
    #' @param supportingFeatureIds FeatureIds where the topAnnotation supports this annotation.
    #' @param selectionCriterion Criterion that was used to select the consensus annotation.
    #' @param ... Other optional arguments.
    #' @export
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
        # disabled, as it is broken and checks for `selectionCriterion` %in% c()
        # if (!(`selectionCriterion` %in% c("MAJORITY_FORMULA", "TOP_FORMULA", "SINGLETON_FORMULA"))) {
        #  stop(paste("Error! \"", `selectionCriterion`, "\" cannot be assigned to `selectionCriterion`. Must be \"MAJORITY_FORMULA\", \"TOP_FORMULA\", \"SINGLETON_FORMULA\".", sep = ""))
        # }
        if (!(is.character(`selectionCriterion`) && length(`selectionCriterion`) == 1)) {
          stop(paste("Error! Invalid data for `selectionCriterion`. Must be a string:", `selectionCriterion`))
        }
        self$`selectionCriterion` <- `selectionCriterion`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ConsensusAnnotationsDeNovo in JSON format
    #' @export
    toJSON = function() {
      ConsensusAnnotationsDeNovoObject <- list()
      if (!is.null(self$`molecularFormula`)) {
        ConsensusAnnotationsDeNovoObject[["molecularFormula"]] <-
          self$`molecularFormula`
      }
      if (!is.null(self$`compoundClasses`)) {
        ConsensusAnnotationsDeNovoObject[["compoundClasses"]] <-
          if (is.list(self$`compoundClasses`$toJSON()) && length(self$`compoundClasses`$toJSON()) == 0L){
            NULL
          } else if (length(names(self$`compoundClasses`$toJSON())) == 0L && is.character(jsonlite::fromJSON(self$`compoundClasses`$toJSON()))) {
            jsonlite::fromJSON(self$`compoundClasses`$toJSON())
          } else {
            self$`compoundClasses`$toJSON()
          }
      }
      if (!is.null(self$`supportingFeatureIds`)) {
        ConsensusAnnotationsDeNovoObject[["supportingFeatureIds"]] <-
          self$`supportingFeatureIds`
      }
      if (!is.null(self$`selectionCriterion`)) {
        ConsensusAnnotationsDeNovoObject[["selectionCriterion"]] <-
          self$`selectionCriterion`
      }
      ConsensusAnnotationsDeNovoObject
    },
    #' Deserialize JSON string into an instance of ConsensusAnnotationsDeNovo
    #'
    #' @description
    #' Deserialize JSON string into an instance of ConsensusAnnotationsDeNovo
    #'
    #' @param input_json the JSON input
    #' @return the instance of ConsensusAnnotationsDeNovo
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`molecularFormula`)) {
        self$`molecularFormula` <- this_object$`molecularFormula`
      }
      if (!is.null(this_object$`compoundClasses`)) {
        `compoundclasses_object` <- CompoundClasses$new()
        `compoundclasses_object`$fromJSON(jsonlite::toJSON(this_object$`compoundClasses`, auto_unbox = TRUE, digits = NA))
        self$`compoundClasses` <- `compoundclasses_object`
      }
      if (!is.null(this_object$`supportingFeatureIds`)) {
        self$`supportingFeatureIds` <- ApiClient$new()$deserializeObj(this_object$`supportingFeatureIds`, "array[character]", loadNamespace("Rsirius"))
      }
      if (!is.null(this_object$`selectionCriterion`)) {
        if (!is.null(this_object$`selectionCriterion`) && !(this_object$`selectionCriterion` %in% c("MAJORITY_FORMULA", "TOP_FORMULA", "SINGLETON_FORMULA"))) {
          stop(paste("Error! \"", this_object$`selectionCriterion`, "\" cannot be assigned to `selectionCriterion`. Must be \"MAJORITY_FORMULA\", \"TOP_FORMULA\", \"SINGLETON_FORMULA\".", sep = ""))
        }
        self$`selectionCriterion` <- this_object$`selectionCriterion`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ConsensusAnnotationsDeNovo in JSON format
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
        if (!is.null(self$`compoundClasses`)) {
          sprintf(
          '"compoundClasses":
          %s
          ',
          jsonlite::toJSON(self$`compoundClasses`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`supportingFeatureIds`)) {
          sprintf(
          '"supportingFeatureIds":
             [%s]
          ',
          paste(unlist(lapply(self$`supportingFeatureIds`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`selectionCriterion`)) {
          sprintf(
          '"selectionCriterion":
            "%s"
                    ',
          self$`selectionCriterion`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      # remove c() occurences and reduce resulting double escaped quotes \"\" into \"
      jsoncontent <- gsub('\\\"c\\((.*?)\\\"\\)', '\\1', jsoncontent)
      # fix wrong serialization of "\"ENUM\"" to "ENUM"
      jsoncontent <- gsub("\\\\\"([A-Z]+)\\\\\"", "\\1", jsoncontent)
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of ConsensusAnnotationsDeNovo
    #'
    #' @description
    #' Deserialize JSON string into an instance of ConsensusAnnotationsDeNovo
    #'
    #' @param input_json the JSON input
    #' @return the instance of ConsensusAnnotationsDeNovo
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`molecularFormula` <- this_object$`molecularFormula`
      self$`compoundClasses` <- CompoundClasses$new()$fromJSON(jsonlite::toJSON(this_object$`compoundClasses`, auto_unbox = TRUE, digits = NA))
      self$`supportingFeatureIds` <- ApiClient$new()$deserializeObj(this_object$`supportingFeatureIds`, "array[character]", loadNamespace("Rsirius"))
      if (!is.null(this_object$`selectionCriterion`) && !(this_object$`selectionCriterion` %in% c("MAJORITY_FORMULA", "TOP_FORMULA", "SINGLETON_FORMULA"))) {
        stop(paste("Error! \"", this_object$`selectionCriterion`, "\" cannot be assigned to `selectionCriterion`. Must be \"MAJORITY_FORMULA\", \"TOP_FORMULA\", \"SINGLETON_FORMULA\".", sep = ""))
      }
      self$`selectionCriterion` <- this_object$`selectionCriterion`
      self
    },
    #' Validate JSON input with respect to ConsensusAnnotationsDeNovo
    #'
    #' @description
    #' Validate JSON input with respect to ConsensusAnnotationsDeNovo and throw an exception if invalid
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
    #' @return String representation of ConsensusAnnotationsDeNovo
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
# ConsensusAnnotationsDeNovo$unlock()
#
## Below is an example to define the print function
# ConsensusAnnotationsDeNovo$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ConsensusAnnotationsDeNovo$lock()

