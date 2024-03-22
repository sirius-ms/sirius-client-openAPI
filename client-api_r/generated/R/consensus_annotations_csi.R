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
#' @field compoundClasses  \link{CompoundClasses} [optional]
#' @field supportingFeatureIds FeatureIds where the topAnnotation supports this annotation. list(character) [optional]
#' @field selectionCriterion  \link{ConsensusCriterionCSI} [optional]
#' @field csiFingerIdStructure  \link{StructureCandidate} [optional]
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
    #' Initialize a new ConsensusAnnotationsCSI class.
    #'
    #' @description
    #' Initialize a new ConsensusAnnotationsCSI class.
    #'
    #' @param molecularFormula Molecular formula of the consensus annotation  Might be null if no consensus formula is available.
    #' @param compoundClasses compoundClasses
    #' @param supportingFeatureIds FeatureIds where the topAnnotation supports this annotation.
    #' @param selectionCriterion selectionCriterion
    #' @param csiFingerIdStructure csiFingerIdStructure
    #' @param confidenceExactMatch Confidence value that represents the certainty that reported consensus structure is exactly the measured one  If multiple features support this consensus structure the maximum confidence is reported
    #' @param confidenceApproxMatch Confidence value that represents the certainty that the exact consensus structure or a very similar  structure (e.g. measured by Maximum Common Edge Subgraph Distance) is the measured one.  If multiple features support this consensus structure the maximum confidence is reported
    #' @param ... Other optional arguments.
    #' @export
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
        if (!(`selectionCriterion` %in% c())) {
          stop(paste("Error! \"", `selectionCriterion`, "\" cannot be assigned to `selectionCriterion`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`selectionCriterion`))
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
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ConsensusAnnotationsCSI in JSON format
    #' @export
    toJSON = function() {
      ConsensusAnnotationsCSIObject <- list()
      if (!is.null(self$`molecularFormula`)) {
        ConsensusAnnotationsCSIObject[["molecularFormula"]] <-
          self$`molecularFormula`
      }
      if (!is.null(self$`compoundClasses`)) {
        ConsensusAnnotationsCSIObject[["compoundClasses"]] <-
          if (length(names(self$`compoundClasses`$toJSON())) == 0L && is.character(jsonlite::fromJSON(self$`compoundClasses`$toJSON()))) {
            jsonlite::fromJSON(self$`compoundClasses`$toJSON())
          } else {
            self$`compoundClasses`$toJSON()
          }
      }
      if (!is.null(self$`supportingFeatureIds`)) {
        ConsensusAnnotationsCSIObject[["supportingFeatureIds"]] <-
          self$`supportingFeatureIds`
      }
      if (!is.null(self$`selectionCriterion`)) {
        ConsensusAnnotationsCSIObject[["selectionCriterion"]] <-
          if (length(names(self$`selectionCriterion`$toJSON())) == 0L && is.character(jsonlite::fromJSON(self$`selectionCriterion`$toJSON()))) {
            jsonlite::fromJSON(self$`selectionCriterion`$toJSON())
          } else {
            self$`selectionCriterion`$toJSON()
          }
      }
      if (!is.null(self$`csiFingerIdStructure`)) {
        ConsensusAnnotationsCSIObject[["csiFingerIdStructure"]] <-
          if (length(names(self$`csiFingerIdStructure`$toJSON())) == 0L && is.character(jsonlite::fromJSON(self$`csiFingerIdStructure`$toJSON()))) {
            jsonlite::fromJSON(self$`csiFingerIdStructure`$toJSON())
          } else {
            self$`csiFingerIdStructure`$toJSON()
          }
      }
      if (!is.null(self$`confidenceExactMatch`)) {
        ConsensusAnnotationsCSIObject[["confidenceExactMatch"]] <-
          self$`confidenceExactMatch`
      }
      if (!is.null(self$`confidenceApproxMatch`)) {
        ConsensusAnnotationsCSIObject[["confidenceApproxMatch"]] <-
          self$`confidenceApproxMatch`
      }
      ConsensusAnnotationsCSIObject
    },
    #' Deserialize JSON string into an instance of ConsensusAnnotationsCSI
    #'
    #' @description
    #' Deserialize JSON string into an instance of ConsensusAnnotationsCSI
    #'
    #' @param input_json the JSON input
    #' @return the instance of ConsensusAnnotationsCSI
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
        `selectioncriterion_object` <- ConsensusCriterionCSI$new()
        `selectioncriterion_object`$fromJSON(jsonlite::toJSON(this_object$`selectionCriterion`, auto_unbox = TRUE, digits = NA))
        self$`selectionCriterion` <- `selectioncriterion_object`
      }
      if (!is.null(this_object$`csiFingerIdStructure`)) {
        `csifingeridstructure_object` <- StructureCandidate$new()
        `csifingeridstructure_object`$fromJSON(jsonlite::toJSON(this_object$`csiFingerIdStructure`, auto_unbox = TRUE, digits = NA))
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
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ConsensusAnnotationsCSI in JSON format
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
          %s
          ',
          jsonlite::toJSON(self$`selectionCriterion`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`csiFingerIdStructure`)) {
          sprintf(
          '"csiFingerIdStructure":
          %s
          ',
          jsonlite::toJSON(self$`csiFingerIdStructure`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`confidenceExactMatch`)) {
          sprintf(
          '"confidenceExactMatch":
            %d
                    ',
          self$`confidenceExactMatch`
          )
        },
        if (!is.null(self$`confidenceApproxMatch`)) {
          sprintf(
          '"confidenceApproxMatch":
            %d
                    ',
          self$`confidenceApproxMatch`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of ConsensusAnnotationsCSI
    #'
    #' @description
    #' Deserialize JSON string into an instance of ConsensusAnnotationsCSI
    #'
    #' @param input_json the JSON input
    #' @return the instance of ConsensusAnnotationsCSI
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`molecularFormula` <- this_object$`molecularFormula`
      self$`compoundClasses` <- CompoundClasses$new()$fromJSON(jsonlite::toJSON(this_object$`compoundClasses`, auto_unbox = TRUE, digits = NA))
      self$`supportingFeatureIds` <- ApiClient$new()$deserializeObj(this_object$`supportingFeatureIds`, "array[character]", loadNamespace("Rsirius"))
      self$`selectionCriterion` <- ConsensusCriterionCSI$new()$fromJSON(jsonlite::toJSON(this_object$`selectionCriterion`, auto_unbox = TRUE, digits = NA))
      self$`csiFingerIdStructure` <- StructureCandidate$new()$fromJSON(jsonlite::toJSON(this_object$`csiFingerIdStructure`, auto_unbox = TRUE, digits = NA))
      self$`confidenceExactMatch` <- this_object$`confidenceExactMatch`
      self$`confidenceApproxMatch` <- this_object$`confidenceApproxMatch`
      self
    },
    #' Validate JSON input with respect to ConsensusAnnotationsCSI
    #'
    #' @description
    #' Validate JSON input with respect to ConsensusAnnotationsCSI and throw an exception if invalid
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
    #' @return String representation of ConsensusAnnotationsCSI
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
# ConsensusAnnotationsCSI$unlock()
#
## Below is an example to define the print function
# ConsensusAnnotationsCSI$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ConsensusAnnotationsCSI$lock()

