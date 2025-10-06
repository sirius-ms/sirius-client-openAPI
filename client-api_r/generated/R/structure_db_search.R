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
#' @field structureSearchDBs Structure databases to search in, If expansive search is enabled this DB selection will be expanded to PubChem  if not high confidence hit was found in the selected databases.  <p>  Defaults to BIO + Custom Databases. Possible values are available to Database API. list(character) [optional]
#' @field tagStructuresWithLipidClass Candidates matching the lipid class estimated by El Gordo will be tagged.  The lipid class will only be available if El Gordo predicts that the MS/MS is a lipid spectrum.  If this parameter is set to 'false' El Gordo will still be executed and e.g. improve the fragmentation  tree, but the matching structure candidates will not be tagged if they match lipid class. character [optional]
#' @field expansiveSearchConfidenceMode Expansive search mode.  Expansive search will expand the search space to whole PubChem in case no hit with reasonable confidence was  found in one of the specified databases (structureSearchDBs).  <p>  Possible Values  OFF - No expansive search is performed  EXACT - Use confidence score in exact mode: Only molecular structures identical to the true structure should count as correct identification.  APPROXIMATE - Use confidence score in approximate mode: Molecular structures hits that are close to the true structure should count as correct identification. character [optional]
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

    #' @description
    #' Initialize a new StructureDbSearch class.
    #'
    #' @param enabled tags whether the tool is enabled
    #' @param structureSearchDBs Structure databases to search in, If expansive search is enabled this DB selection will be expanded to PubChem  if not high confidence hit was found in the selected databases.  <p>  Defaults to BIO + Custom Databases. Possible values are available to Database API.
    #' @param tagStructuresWithLipidClass Candidates matching the lipid class estimated by El Gordo will be tagged.  The lipid class will only be available if El Gordo predicts that the MS/MS is a lipid spectrum.  If this parameter is set to 'false' El Gordo will still be executed and e.g. improve the fragmentation  tree, but the matching structure candidates will not be tagged if they match lipid class.
    #' @param expansiveSearchConfidenceMode Expansive search mode.  Expansive search will expand the search space to whole PubChem in case no hit with reasonable confidence was  found in one of the specified databases (structureSearchDBs).  <p>  Possible Values  OFF - No expansive search is performed  EXACT - Use confidence score in exact mode: Only molecular structures identical to the true structure should count as correct identification.  APPROXIMATE - Use confidence score in approximate mode: Molecular structures hits that are close to the true structure should count as correct identification.
    #' @param ... Other optional arguments.
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
        if (!(`expansiveSearchConfidenceMode` %in% c("OFF", "EXACT", "APPROXIMATE"))) {
          stop(paste("Error! \"", `expansiveSearchConfidenceMode`, "\" cannot be assigned to `expansiveSearchConfidenceMode`. Must be \"OFF\", \"EXACT\", \"APPROXIMATE\".", sep = ""))
        }
        if (!(is.character(`expansiveSearchConfidenceMode`) && length(`expansiveSearchConfidenceMode`) == 1)) {
          stop(paste("Error! Invalid data for `expansiveSearchConfidenceMode`. Must be a string:", `expansiveSearchConfidenceMode`))
        }
        self$`expansiveSearchConfidenceMode` <- `expansiveSearchConfidenceMode`
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
    #' @return StructureDbSearch as a base R list.
    #' @examples
    #' # convert array of StructureDbSearch (x) to a data frame
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
    #' Convert StructureDbSearch to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
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
          self$`expansiveSearchConfidenceMode`
      }
      return(StructureDbSearchObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of StructureDbSearch
    #'
    #' @param input_json the JSON input
    #' @return the instance of StructureDbSearch
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`enabled`)) {
        self$`enabled` <- this_object$`enabled`
      }
      if (!is.null(this_object$`structureSearchDBs`)) {
        self$`structureSearchDBs` <- ApiClient$new()$deserializeObj(this_object$`structureSearchDBs`, "array[character]", loadNamespace("RSirius"))
      }
      if (!is.null(this_object$`tagStructuresWithLipidClass`)) {
        self$`tagStructuresWithLipidClass` <- this_object$`tagStructuresWithLipidClass`
      }
      if (!is.null(this_object$`expansiveSearchConfidenceMode`)) {
        if (!is.null(this_object$`expansiveSearchConfidenceMode`) && !(this_object$`expansiveSearchConfidenceMode` %in% c("OFF", "EXACT", "APPROXIMATE"))) {
          stop(paste("Error! \"", this_object$`expansiveSearchConfidenceMode`, "\" cannot be assigned to `expansiveSearchConfidenceMode`. Must be \"OFF\", \"EXACT\", \"APPROXIMATE\".", sep = ""))
        }
        self$`expansiveSearchConfidenceMode` <- this_object$`expansiveSearchConfidenceMode`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return StructureDbSearch in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of StructureDbSearch
    #'
    #' @param input_json the JSON input
    #' @return the instance of StructureDbSearch
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`enabled` <- this_object$`enabled`
      self$`structureSearchDBs` <- ApiClient$new()$deserializeObj(this_object$`structureSearchDBs`, "array[character]", loadNamespace("RSirius"))
      self$`tagStructuresWithLipidClass` <- this_object$`tagStructuresWithLipidClass`
      if (!is.null(this_object$`expansiveSearchConfidenceMode`) && !(this_object$`expansiveSearchConfidenceMode` %in% c("OFF", "EXACT", "APPROXIMATE"))) {
        stop(paste("Error! \"", this_object$`expansiveSearchConfidenceMode`, "\" cannot be assigned to `expansiveSearchConfidenceMode`. Must be \"OFF\", \"EXACT\", \"APPROXIMATE\".", sep = ""))
      }
      self$`expansiveSearchConfidenceMode` <- this_object$`expansiveSearchConfidenceMode`
      self
    },

    #' @description
    #' Validate JSON input with respect to StructureDbSearch and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of StructureDbSearch
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
# StructureDbSearch$unlock()
#
## Below is an example to define the print function
# StructureDbSearch$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# StructureDbSearch$lock()

