#' Create a new StructureDbSearch
#'
#' @description
#' User/developer friendly parameter subset for the CSI:FingerID structure db search tool.  Needs results from FingerprintPrediction and Canopus Tool.  Non-Null parameters in this Object well override their equivalent value in the config map.
#'
#' @docType class
#' @title StructureDbSearch
#' @description StructureDbSearch Class
#' @format An \code{R6Class} generator object
#' @field enabled tags whether the tool is enabled character [optional]
#' @field structureSearchDBs Structure databases to search in, If expansive search is enabled this DB selection will be expanded to PubChem  if not high confidence hit was found in the selected databases.   Defaults to BIO + Custom Databases. Possible values are available to Database API. list(character) [optional]
#' @field tagStructuresWithLipidClass Candidates matching the lipid class estimated by El Gordo will be tagged.  The lipid class will only be available if El Gordo predicts that the MS/MS is a lipid spectrum.  If this parameter is set to 'false' El Gordo will still be executed and e.g. improve the fragmentation  tree, but the matching structure candidates will not be tagged if they match lipid class. character [optional]
#' @field expansiveSearchConfidenceMode  \link{ConfidenceMode} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
StructureDbSearch <- R6::R6Class(
  "StructureDbSearch",
  public = list(
    `enabled` = NULL,
    `structureSearchDBs` = NULL,
    `tagStructuresWithLipidClass` = NULL,
    `expansiveSearchConfidenceMode` = NULL,
    #' Initialize a new StructureDbSearch class.
    #'
    #' @description
    #' Initialize a new StructureDbSearch class.
    #'
    #' @param enabled tags whether the tool is enabled
    #' @param structureSearchDBs Structure databases to search in, If expansive search is enabled this DB selection will be expanded to PubChem  if not high confidence hit was found in the selected databases.   Defaults to BIO + Custom Databases. Possible values are available to Database API.
    #' @param tagStructuresWithLipidClass Candidates matching the lipid class estimated by El Gordo will be tagged.  The lipid class will only be available if El Gordo predicts that the MS/MS is a lipid spectrum.  If this parameter is set to 'false' El Gordo will still be executed and e.g. improve the fragmentation  tree, but the matching structure candidates will not be tagged if they match lipid class.
    #' @param expansiveSearchConfidenceMode expansiveSearchConfidenceMode
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`enabled` = NULL, `structureSearchDBs` = NULL, `tagStructuresWithLipidClass` = NULL, `expansiveSearchConfidenceMode` = NULL, ...) {
      if (!is.null(`enabled`)) {
        if (!(is.logical(`enabled`) && length(`enabled`) == 1)) {
          stop(paste("Error! Invalid data for `enabled`. Must be a boolean:", `enabled`))
        }
        self$`enabled` <- `enabled`
      }
      if (!is.null(`structureSearchDBs`)) {
        stopifnot(is.vector(`structureSearchDBs`), length(`structureSearchDBs`) != 0)
        sapply(`structureSearchDBs`, function(x) stopifnot(is.character(x)))
        self$`structureSearchDBs` <- `structureSearchDBs`
      }
      if (!is.null(`tagStructuresWithLipidClass`)) {
        if (!(is.logical(`tagStructuresWithLipidClass`) && length(`tagStructuresWithLipidClass`) == 1)) {
          stop(paste("Error! Invalid data for `tagStructuresWithLipidClass`. Must be a boolean:", `tagStructuresWithLipidClass`))
        }
        self$`tagStructuresWithLipidClass` <- `tagStructuresWithLipidClass`
      }
      if (!is.null(`expansiveSearchConfidenceMode`)) {
        if (!(`expansiveSearchConfidenceMode` %in% c())) {
          stop(paste("Error! \"", `expansiveSearchConfidenceMode`, "\" cannot be assigned to `expansiveSearchConfidenceMode`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`expansiveSearchConfidenceMode`))
        self$`expansiveSearchConfidenceMode` <- `expansiveSearchConfidenceMode`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return StructureDbSearch in JSON format
    #' @export
    toJSON = function() {
      StructureDbSearchObject <- list()
      if (!is.null(self$`enabled`)) {
        StructureDbSearchObject[["enabled"]] <-
          self$`enabled`
      }
      if (!is.null(self$`structureSearchDBs`)) {
        StructureDbSearchObject[["structureSearchDBs"]] <-
          self$`structureSearchDBs`
      }
      if (!is.null(self$`tagStructuresWithLipidClass`)) {
        StructureDbSearchObject[["tagStructuresWithLipidClass"]] <-
          self$`tagStructuresWithLipidClass`
      }
      if (!is.null(self$`expansiveSearchConfidenceMode`)) {
        StructureDbSearchObject[["expansiveSearchConfidenceMode"]] <-
          if !is.numeric(self$`expansiveSearchConfidenceMode`$toJSON()) && (length(names(self$`expansiveSearchConfidenceMode`$toJSON())) == 0L && is.character(jsonlite::fromJSON(self$`expansiveSearchConfidenceMode`$toJSON()))) {
            jsonlite::fromJSON(self$`expansiveSearchConfidenceMode`$toJSON())
          } else {
            self$`expansiveSearchConfidenceMode`$toJSON()
          }
      }
      StructureDbSearchObject
    },
    #' Deserialize JSON string into an instance of StructureDbSearch
    #'
    #' @description
    #' Deserialize JSON string into an instance of StructureDbSearch
    #'
    #' @param input_json the JSON input
    #' @return the instance of StructureDbSearch
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`enabled`)) {
        self$`enabled` <- this_object$`enabled`
      }
      if (!is.null(this_object$`structureSearchDBs`)) {
        self$`structureSearchDBs` <- ApiClient$new()$deserializeObj(this_object$`structureSearchDBs`, "array[character]", loadNamespace("Rsirius"))
      }
      if (!is.null(this_object$`tagStructuresWithLipidClass`)) {
        self$`tagStructuresWithLipidClass` <- this_object$`tagStructuresWithLipidClass`
      }
      if (!is.null(this_object$`expansiveSearchConfidenceMode`)) {
        `expansivesearchconfidencemode_object` <- ConfidenceMode$new()
        `expansivesearchconfidencemode_object`$fromJSON(jsonlite::toJSON(this_object$`expansiveSearchConfidenceMode`, auto_unbox = TRUE, digits = NA))
        self$`expansiveSearchConfidenceMode` <- `expansivesearchconfidencemode_object`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return StructureDbSearch in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`enabled`)) {
          sprintf(
          '"enabled":
            %s
                    ',
          tolower(self$`enabled`)
          )
        },
        if (!is.null(self$`structureSearchDBs`)) {
          sprintf(
          '"structureSearchDBs":
             [%s]
          ',
          paste(unlist(lapply(self$`structureSearchDBs`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`tagStructuresWithLipidClass`)) {
          sprintf(
          '"tagStructuresWithLipidClass":
            %s
                    ',
          tolower(self$`tagStructuresWithLipidClass`)
          )
        },
        if (!is.null(self$`expansiveSearchConfidenceMode`)) {
          sprintf(
          '"expansiveSearchConfidenceMode":
          %s
          ',
          jsonlite::toJSON(self$`expansiveSearchConfidenceMode`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of StructureDbSearch
    #'
    #' @description
    #' Deserialize JSON string into an instance of StructureDbSearch
    #'
    #' @param input_json the JSON input
    #' @return the instance of StructureDbSearch
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`enabled` <- this_object$`enabled`
      self$`structureSearchDBs` <- ApiClient$new()$deserializeObj(this_object$`structureSearchDBs`, "array[character]", loadNamespace("Rsirius"))
      self$`tagStructuresWithLipidClass` <- this_object$`tagStructuresWithLipidClass`
      self$`expansiveSearchConfidenceMode` <- ConfidenceMode$new()$fromJSON(jsonlite::toJSON(this_object$`expansiveSearchConfidenceMode`, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to StructureDbSearch
    #'
    #' @description
    #' Validate JSON input with respect to StructureDbSearch and throw an exception if invalid
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
    #' @return String representation of StructureDbSearch
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
# StructureDbSearch$unlock()
#
## Below is an example to define the print function
# StructureDbSearch$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# StructureDbSearch$lock()

