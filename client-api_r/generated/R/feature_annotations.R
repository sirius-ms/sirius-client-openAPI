#' Create a new FeatureAnnotations
#'
#' @description
#' Summary of the results of a feature (aligned over runs). Can be added to a AlignedFeature.  The different annotation fields within this summary object are null if the corresponding  feature does not contain the represented results. If fields are non-null  the corresponding result has been computed but might still be empty.
#'
#' @docType class
#' @title FeatureAnnotations
#' @description FeatureAnnotations Class
#' @format An \code{R6Class} generator object
#' @field formulaAnnotation  \link{FormulaCandidate} [optional]
#' @field structureAnnotation  \link{StructureCandidateScored} [optional]
#' @field compoundClassAnnotation  \link{CompoundClasses} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FeatureAnnotations <- R6::R6Class(
  "FeatureAnnotations",
  public = list(
    `formulaAnnotation` = NULL,
    `structureAnnotation` = NULL,
    `compoundClassAnnotation` = NULL,
    #' Initialize a new FeatureAnnotations class.
    #'
    #' @description
    #' Initialize a new FeatureAnnotations class.
    #'
    #' @param formulaAnnotation formulaAnnotation
    #' @param structureAnnotation structureAnnotation
    #' @param compoundClassAnnotation compoundClassAnnotation
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`formulaAnnotation` = NULL, `structureAnnotation` = NULL, `compoundClassAnnotation` = NULL, ...) {
      if (!is.null(`formulaAnnotation`)) {
        stopifnot(R6::is.R6(`formulaAnnotation`))
        self$`formulaAnnotation` <- `formulaAnnotation`
      }
      if (!is.null(`structureAnnotation`)) {
        stopifnot(R6::is.R6(`structureAnnotation`))
        self$`structureAnnotation` <- `structureAnnotation`
      }
      if (!is.null(`compoundClassAnnotation`)) {
        stopifnot(R6::is.R6(`compoundClassAnnotation`))
        self$`compoundClassAnnotation` <- `compoundClassAnnotation`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return FeatureAnnotations in JSON format
    #' @export
    toJSON = function() {
      FeatureAnnotationsObject <- list()
      if (!is.null(self$`formulaAnnotation`)) {
        FeatureAnnotationsObject[["formulaAnnotation"]] <-
          self$`formulaAnnotation`$toJSON()
      }
      if (!is.null(self$`structureAnnotation`)) {
        FeatureAnnotationsObject[["structureAnnotation"]] <-
          self$`structureAnnotation`$toJSON()
      }
      if (!is.null(self$`compoundClassAnnotation`)) {
        FeatureAnnotationsObject[["compoundClassAnnotation"]] <-
          self$`compoundClassAnnotation`$toJSON()
      }
      FeatureAnnotationsObject
    },
    #' Deserialize JSON string into an instance of FeatureAnnotations
    #'
    #' @description
    #' Deserialize JSON string into an instance of FeatureAnnotations
    #'
    #' @param input_json the JSON input
    #' @return the instance of FeatureAnnotations
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`formulaAnnotation`)) {
        `formulaannotation_object` <- FormulaCandidate$new()
        `formulaannotation_object`$fromJSON(jsonlite::toJSON(this_object$`formulaAnnotation`, auto_unbox = TRUE, digits = NA))
        self$`formulaAnnotation` <- `formulaannotation_object`
      }
      if (!is.null(this_object$`structureAnnotation`)) {
        `structureannotation_object` <- StructureCandidateScored$new()
        `structureannotation_object`$fromJSON(jsonlite::toJSON(this_object$`structureAnnotation`, auto_unbox = TRUE, digits = NA))
        self$`structureAnnotation` <- `structureannotation_object`
      }
      if (!is.null(this_object$`compoundClassAnnotation`)) {
        `compoundclassannotation_object` <- CompoundClasses$new()
        `compoundclassannotation_object`$fromJSON(jsonlite::toJSON(this_object$`compoundClassAnnotation`, auto_unbox = TRUE, digits = NA))
        self$`compoundClassAnnotation` <- `compoundclassannotation_object`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return FeatureAnnotations in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`formulaAnnotation`)) {
          sprintf(
          '"formulaAnnotation":
          %s
          ',
          jsonlite::toJSON(self$`formulaAnnotation`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`structureAnnotation`)) {
          sprintf(
          '"structureAnnotation":
          %s
          ',
          jsonlite::toJSON(self$`structureAnnotation`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`compoundClassAnnotation`)) {
          sprintf(
          '"compoundClassAnnotation":
          %s
          ',
          jsonlite::toJSON(self$`compoundClassAnnotation`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of FeatureAnnotations
    #'
    #' @description
    #' Deserialize JSON string into an instance of FeatureAnnotations
    #'
    #' @param input_json the JSON input
    #' @return the instance of FeatureAnnotations
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`formulaAnnotation` <- FormulaCandidate$new()$fromJSON(jsonlite::toJSON(this_object$`formulaAnnotation`, auto_unbox = TRUE, digits = NA))
      self$`structureAnnotation` <- StructureCandidateScored$new()$fromJSON(jsonlite::toJSON(this_object$`structureAnnotation`, auto_unbox = TRUE, digits = NA))
      self$`compoundClassAnnotation` <- CompoundClasses$new()$fromJSON(jsonlite::toJSON(this_object$`compoundClassAnnotation`, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to FeatureAnnotations
    #'
    #' @description
    #' Validate JSON input with respect to FeatureAnnotations and throw an exception if invalid
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
    #' @return String representation of FeatureAnnotations
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
# FeatureAnnotations$unlock()
#
## Below is an example to define the print function
# FeatureAnnotations$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# FeatureAnnotations$lock()

