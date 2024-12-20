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
#' @field confidenceExactMatch Confidence Score that represents the confidence whether the top hit is correct. numeric [optional]
#' @field confidenceApproxMatch Confidence Score that represents the confidence whether the top hit or a very similar hit (estimated by MCES distance) is correct. numeric [optional]
#' @field expansiveSearchState Result that shows if structure annotation was expanded by using PubChem as fallback and if so, which confidence mode was used (as per input paramter) character [optional]
#' @field specifiedDatabases List of databases that have been specified by for structure db search. Null if no structure db search has been performed. list(character) [optional]
#' @field expandedDatabases List of databases that have been used to expand search space during expansive search. Null if no structure db search has been performed. list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FeatureAnnotations <- R6::R6Class(
  "FeatureAnnotations",
  public = list(
    `formulaAnnotation` = NULL,
    `structureAnnotation` = NULL,
    `compoundClassAnnotation` = NULL,
    `confidenceExactMatch` = NULL,
    `confidenceApproxMatch` = NULL,
    `expansiveSearchState` = NULL,
    `specifiedDatabases` = NULL,
    `expandedDatabases` = NULL,
    #' Initialize a new FeatureAnnotations class.
    #'
    #' @description
    #' Initialize a new FeatureAnnotations class.
    #'
    #' @param formulaAnnotation formulaAnnotation
    #' @param structureAnnotation structureAnnotation
    #' @param compoundClassAnnotation compoundClassAnnotation
    #' @param confidenceExactMatch Confidence Score that represents the confidence whether the top hit is correct.
    #' @param confidenceApproxMatch Confidence Score that represents the confidence whether the top hit or a very similar hit (estimated by MCES distance) is correct.
    #' @param expansiveSearchState Result that shows if structure annotation was expanded by using PubChem as fallback and if so, which confidence mode was used (as per input paramter)
    #' @param specifiedDatabases List of databases that have been specified by for structure db search. Null if no structure db search has been performed.
    #' @param expandedDatabases List of databases that have been used to expand search space during expansive search. Null if no structure db search has been performed.
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`formulaAnnotation` = NULL, `structureAnnotation` = NULL, `compoundClassAnnotation` = NULL, `confidenceExactMatch` = NULL, `confidenceApproxMatch` = NULL, `expansiveSearchState` = NULL, `specifiedDatabases` = NULL, `expandedDatabases` = NULL, ...) {
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
      if (!is.null(`expansiveSearchState`)) {
        # disabled, as it is broken and checks for `expansiveSearchState` %in% c()
        # if (!(`expansiveSearchState` %in% c("OFF", "EXACT", "APPROXIMATE"))) {
        #  stop(paste("Error! \"", `expansiveSearchState`, "\" cannot be assigned to `expansiveSearchState`. Must be \"OFF\", \"EXACT\", \"APPROXIMATE\".", sep = ""))
        # }
        if (!(is.character(`expansiveSearchState`) && length(`expansiveSearchState`) == 1)) {
          stop(paste("Error! Invalid data for `expansiveSearchState`. Must be a string:", `expansiveSearchState`))
        }
        self$`expansiveSearchState` <- `expansiveSearchState`
      }
      if (!is.null(`specifiedDatabases`)) {
        stopifnot(is.vector(`specifiedDatabases`), length(`specifiedDatabases`) != 0)
        sapply(`specifiedDatabases`, function(x) stopifnot(is.character(x)))
        self$`specifiedDatabases` <- `specifiedDatabases`
      }
      if (!is.null(`expandedDatabases`)) {
        stopifnot(is.vector(`expandedDatabases`), length(`expandedDatabases`) != 0)
        sapply(`expandedDatabases`, function(x) stopifnot(is.character(x)))
        self$`expandedDatabases` <- `expandedDatabases`
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
          if (is.list(self$`formulaAnnotation`$toJSON()) && length(self$`formulaAnnotation`$toJSON()) == 0L){
            NULL
          } else if (length(names(self$`formulaAnnotation`$toJSON())) == 0L && is.character(jsonlite::fromJSON(self$`formulaAnnotation`$toJSON()))) {
            jsonlite::fromJSON(self$`formulaAnnotation`$toJSON())
          } else {
            self$`formulaAnnotation`$toJSON()
          }
      }
      if (!is.null(self$`structureAnnotation`)) {
        FeatureAnnotationsObject[["structureAnnotation"]] <-
          if (is.list(self$`structureAnnotation`$toJSON()) && length(self$`structureAnnotation`$toJSON()) == 0L){
            NULL
          } else if (length(names(self$`structureAnnotation`$toJSON())) == 0L && is.character(jsonlite::fromJSON(self$`structureAnnotation`$toJSON()))) {
            jsonlite::fromJSON(self$`structureAnnotation`$toJSON())
          } else {
            self$`structureAnnotation`$toJSON()
          }
      }
      if (!is.null(self$`compoundClassAnnotation`)) {
        FeatureAnnotationsObject[["compoundClassAnnotation"]] <-
          if (is.list(self$`compoundClassAnnotation`$toJSON()) && length(self$`compoundClassAnnotation`$toJSON()) == 0L){
            NULL
          } else if (length(names(self$`compoundClassAnnotation`$toJSON())) == 0L && is.character(jsonlite::fromJSON(self$`compoundClassAnnotation`$toJSON()))) {
            jsonlite::fromJSON(self$`compoundClassAnnotation`$toJSON())
          } else {
            self$`compoundClassAnnotation`$toJSON()
          }
      }
      if (!is.null(self$`confidenceExactMatch`)) {
        FeatureAnnotationsObject[["confidenceExactMatch"]] <-
          self$`confidenceExactMatch`
      }
      if (!is.null(self$`confidenceApproxMatch`)) {
        FeatureAnnotationsObject[["confidenceApproxMatch"]] <-
          self$`confidenceApproxMatch`
      }
      if (!is.null(self$`expansiveSearchState`)) {
        FeatureAnnotationsObject[["expansiveSearchState"]] <-
          self$`expansiveSearchState`
      }
      if (!is.null(self$`specifiedDatabases`)) {
        FeatureAnnotationsObject[["specifiedDatabases"]] <-
          self$`specifiedDatabases`
      }
      if (!is.null(self$`expandedDatabases`)) {
        FeatureAnnotationsObject[["expandedDatabases"]] <-
          self$`expandedDatabases`
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
      if (!is.null(this_object$`confidenceExactMatch`)) {
        self$`confidenceExactMatch` <- this_object$`confidenceExactMatch`
      }
      if (!is.null(this_object$`confidenceApproxMatch`)) {
        self$`confidenceApproxMatch` <- this_object$`confidenceApproxMatch`
      }
      if (!is.null(this_object$`expansiveSearchState`)) {
        if (!is.null(this_object$`expansiveSearchState`) && !(this_object$`expansiveSearchState` %in% c("OFF", "EXACT", "APPROXIMATE"))) {
          stop(paste("Error! \"", this_object$`expansiveSearchState`, "\" cannot be assigned to `expansiveSearchState`. Must be \"OFF\", \"EXACT\", \"APPROXIMATE\".", sep = ""))
        }
        self$`expansiveSearchState` <- this_object$`expansiveSearchState`
      }
      if (!is.null(this_object$`specifiedDatabases`)) {
        self$`specifiedDatabases` <- ApiClient$new()$deserializeObj(this_object$`specifiedDatabases`, "array[character]", loadNamespace("Rsirius"))
      }
      if (!is.null(this_object$`expandedDatabases`)) {
        self$`expandedDatabases` <- ApiClient$new()$deserializeObj(this_object$`expandedDatabases`, "array[character]", loadNamespace("Rsirius"))
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
        },
        if (!is.null(self$`confidenceExactMatch`)) {
          sprintf(
          '"confidenceExactMatch":
            %f
                    ',
          self$`confidenceExactMatch`
          )
        },
        if (!is.null(self$`confidenceApproxMatch`)) {
          sprintf(
          '"confidenceApproxMatch":
            %f
                    ',
          self$`confidenceApproxMatch`
          )
        },
        if (!is.null(self$`expansiveSearchState`)) {
          sprintf(
          '"expansiveSearchState":
            "%s"
                    ',
          self$`expansiveSearchState`
          )
        },
        if (!is.null(self$`specifiedDatabases`)) {
          sprintf(
          '"specifiedDatabases":
             [%s]
          ',
          paste(unlist(lapply(self$`specifiedDatabases`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`expandedDatabases`)) {
          sprintf(
          '"expandedDatabases":
             [%s]
          ',
          paste(unlist(lapply(self$`expandedDatabases`, function(x) paste0('"', x, '"'))), collapse = ",")
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
      self$`confidenceExactMatch` <- this_object$`confidenceExactMatch`
      self$`confidenceApproxMatch` <- this_object$`confidenceApproxMatch`
      if (!is.null(this_object$`expansiveSearchState`) && !(this_object$`expansiveSearchState` %in% c("OFF", "EXACT", "APPROXIMATE"))) {
        stop(paste("Error! \"", this_object$`expansiveSearchState`, "\" cannot be assigned to `expansiveSearchState`. Must be \"OFF\", \"EXACT\", \"APPROXIMATE\".", sep = ""))
      }
      self$`expansiveSearchState` <- this_object$`expansiveSearchState`
      self$`specifiedDatabases` <- ApiClient$new()$deserializeObj(this_object$`specifiedDatabases`, "array[character]", loadNamespace("Rsirius"))
      self$`expandedDatabases` <- ApiClient$new()$deserializeObj(this_object$`expandedDatabases`, "array[character]", loadNamespace("Rsirius"))
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

