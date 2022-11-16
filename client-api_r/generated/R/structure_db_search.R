#' Create a new StructureDbSearch
#'
#' @description
#' User/developer friendly parameter subset for the CSI:FingerID structure db search tool.
#'
#' @docType class
#' @title StructureDbSearch
#' @description StructureDbSearch Class
#' @format An \code{R6Class} generator object
#' @field enabled tags whether the tool is enabled character [optional]
#' @field structureSearchDBs Structure databases to search in list(character) [optional]
#' @field tagLipids Candidates matching the lipid class estimated by El Gordo will be tagged.  The lipid class will only be available if El Gordo predicts that the MS/MS is a lipid spectrum.  If this parameter is set to 'false' El Gordo will still be executed and e.g. improve the fragmentation  tree, but the matching structure candidates will not be tagged if they match lipid class. character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
StructureDbSearch <- R6::R6Class(
  "StructureDbSearch",
  public = list(
    `enabled` = NULL,
    `structureSearchDBs` = NULL,
    `tagLipids` = NULL,
    #' Initialize a new StructureDbSearch class.
    #'
    #' @description
    #' Initialize a new StructureDbSearch class.
    #'
    #' @param enabled tags whether the tool is enabled
    #' @param structureSearchDBs Structure databases to search in
    #' @param tagLipids Candidates matching the lipid class estimated by El Gordo will be tagged.  The lipid class will only be available if El Gordo predicts that the MS/MS is a lipid spectrum.  If this parameter is set to 'false' El Gordo will still be executed and e.g. improve the fragmentation  tree, but the matching structure candidates will not be tagged if they match lipid class.
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`enabled` = NULL, `structureSearchDBs` = NULL, `tagLipids` = NULL, ...) {
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
      if (!is.null(`tagLipids`)) {
        if (!(is.logical(`tagLipids`) && length(`tagLipids`) == 1)) {
          stop(paste("Error! Invalid data for `tagLipids`. Must be a boolean:", `tagLipids`))
        }
        self$`tagLipids` <- `tagLipids`
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
      if (!is.null(self$`tagLipids`)) {
        StructureDbSearchObject[["tagLipids"]] <-
          self$`tagLipids`
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
      if (!is.null(this_object$`tagLipids`)) {
        self$`tagLipids` <- this_object$`tagLipids`
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
        if (!is.null(self$`tagLipids`)) {
          sprintf(
          '"tagLipids":
            %s
                    ',
          tolower(self$`tagLipids`)
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
      self$`tagLipids` <- this_object$`tagLipids`
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
## Below is an example to define the print fnuction
# StructureDbSearch$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# StructureDbSearch$lock()

