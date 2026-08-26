#' Create a new QuantTable
#'
#' @description
#' Quantification of features or compounds within the runs they have been detected in. Rows refer to the quantified objects, columns to the runs. Values that could not be quantified are NaN.
#'
#' @docType class
#' @title QuantTable
#' @description QuantTable Class
#' @format An \code{R6Class} generator object
#' @field quantificationMeasure  character [optional]
#' @field rowType  character [optional]
#' @field rowIds Ids of the quantified objects, features or compounds depending on the row type. list(character) [optional]
#' @field columnIds Ids of the runs the objects are quantified in. list(character) [optional]
#' @field columnNames Names of the runs the objects are quantified in, in the order of columnIds.  <p>  Optional field, only present if requested, since the table can be read by run id alone.  <p>  The name is the one the run carries in the project. It is either the sample name given when the data was  imported, or, if none was given, derived from the measurement itself: the run id inside the file, and only  failing that the file name. A name is therefore not necessarily the name of the file the run came from, and  it is not guaranteed to be unique. Use columnSources to identify the input file, and  columnIds to identify the run. list(character) [optional]
#' @field columnSources Files the runs were imported from, in the order of columnIds, to relate a column back to the input  data. Same value as the source of the corresponding run.  <p>  Optional field, only present if requested, since it is not needed to read the table. list(character) [optional]
#' @field values  list(list(numeric)) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
QuantTable <- R6::R6Class(
  "QuantTable",
  public = list(
    `quantificationMeasure` = NULL,
    `rowType` = NULL,
    `rowIds` = NULL,
    `columnIds` = NULL,
    `columnNames` = NULL,
    `columnSources` = NULL,
    `values` = NULL,

    #' @description
    #' Initialize a new QuantTable class.
    #'
    #' @param quantificationMeasure quantificationMeasure
    #' @param rowType rowType
    #' @param rowIds Ids of the quantified objects, features or compounds depending on the row type.
    #' @param columnIds Ids of the runs the objects are quantified in.
    #' @param columnNames Names of the runs the objects are quantified in, in the order of columnIds.  <p>  Optional field, only present if requested, since the table can be read by run id alone.  <p>  The name is the one the run carries in the project. It is either the sample name given when the data was  imported, or, if none was given, derived from the measurement itself: the run id inside the file, and only  failing that the file name. A name is therefore not necessarily the name of the file the run came from, and  it is not guaranteed to be unique. Use columnSources to identify the input file, and  columnIds to identify the run.
    #' @param columnSources Files the runs were imported from, in the order of columnIds, to relate a column back to the input  data. Same value as the source of the corresponding run.  <p>  Optional field, only present if requested, since it is not needed to read the table.
    #' @param values values
    #' @param ... Other optional arguments.
    initialize = function(`quantificationMeasure` = NULL, `rowType` = NULL, `rowIds` = NULL, `columnIds` = NULL, `columnNames` = NULL, `columnSources` = NULL, `values` = NULL, ...) {
      if (!is.null(`quantificationMeasure`)) {
        if (!(`quantificationMeasure` %in% c("APEX_INTENSITY", "AREA_UNDER_CURVE"))) {
          stop(paste("Error! \"", `quantificationMeasure`, "\" cannot be assigned to `quantificationMeasure`. Must be \"APEX_INTENSITY\", \"AREA_UNDER_CURVE\".", sep = ""))
        }
        if (!(is.character(`quantificationMeasure`) && length(`quantificationMeasure`) == 1)) {
          stop(paste("Error! Invalid data for `quantificationMeasure`. Must be a string:", `quantificationMeasure`))
        }
        self$`quantificationMeasure` <- `quantificationMeasure`
      }
      if (!is.null(`rowType`)) {
        if (!(`rowType` %in% c("FEATURES", "COMPOUNDS", "NPC_CLASSES", "CLASSYFIRE_CLASSES"))) {
          stop(paste("Error! \"", `rowType`, "\" cannot be assigned to `rowType`. Must be \"FEATURES\", \"COMPOUNDS\", \"NPC_CLASSES\", \"CLASSYFIRE_CLASSES\".", sep = ""))
        }
        if (!(is.character(`rowType`) && length(`rowType`) == 1)) {
          stop(paste("Error! Invalid data for `rowType`. Must be a string:", `rowType`))
        }
        self$`rowType` <- `rowType`
      }
      if (!is.null(`rowIds`)) {
        stopifnot(is.vector(`rowIds`), length(`rowIds`) != 0)
        sapply(`rowIds`, function(x) stopifnot(is.character(x)))
        self$`rowIds` <- `rowIds`
      }
      if (!is.null(`columnIds`)) {
        stopifnot(is.vector(`columnIds`), length(`columnIds`) != 0)
        sapply(`columnIds`, function(x) stopifnot(is.character(x)))
        self$`columnIds` <- `columnIds`
      }
      if (!is.null(`columnNames`)) {
        stopifnot(is.vector(`columnNames`), length(`columnNames`) != 0)
        sapply(`columnNames`, function(x) stopifnot(is.character(x)))
        self$`columnNames` <- `columnNames`
      }
      if (!is.null(`columnSources`)) {
        stopifnot(is.vector(`columnSources`), length(`columnSources`) != 0)
        sapply(`columnSources`, function(x) stopifnot(is.character(x)))
        self$`columnSources` <- `columnSources`
      }
      if (!is.null(`values`)) {
        stopifnot(is.vector(`values`), length(`values`) != 0)
        sapply(`values`, function(x) stopifnot(R6::is.R6(x)))
        self$`values` <- `values`
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
    #' @return QuantTable as a base R list.
    #' @examples
    #' # convert array of QuantTable (x) to a data frame
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
    #' Convert QuantTable to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      QuantTableObject <- list()
      if (!is.null(self$`quantificationMeasure`)) {
        QuantTableObject[["quantificationMeasure"]] <-
          self$`quantificationMeasure`
      }
      if (!is.null(self$`rowType`)) {
        QuantTableObject[["rowType"]] <-
          self$`rowType`
      }
      if (!is.null(self$`rowIds`)) {
        QuantTableObject[["rowIds"]] <-
          self$`rowIds`
      }
      if (!is.null(self$`columnIds`)) {
        QuantTableObject[["columnIds"]] <-
          self$`columnIds`
      }
      if (!is.null(self$`columnNames`)) {
        QuantTableObject[["columnNames"]] <-
          self$`columnNames`
      }
      if (!is.null(self$`columnSources`)) {
        QuantTableObject[["columnSources"]] <-
          self$`columnSources`
      }
      if (!is.null(self$`values`)) {
        QuantTableObject[["values"]] <-
          lapply(self$`values`, function(x) x$toSimpleType())
      }
      return(QuantTableObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of QuantTable
    #'
    #' @param input_json the JSON input
    #' @return the instance of QuantTable
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`quantificationMeasure`)) {
        if (!is.null(this_object$`quantificationMeasure`) && !(this_object$`quantificationMeasure` %in% c("APEX_INTENSITY", "AREA_UNDER_CURVE"))) {
          stop(paste("Error! \"", this_object$`quantificationMeasure`, "\" cannot be assigned to `quantificationMeasure`. Must be \"APEX_INTENSITY\", \"AREA_UNDER_CURVE\".", sep = ""))
        }
        self$`quantificationMeasure` <- this_object$`quantificationMeasure`
      }
      if (!is.null(this_object$`rowType`)) {
        if (!is.null(this_object$`rowType`) && !(this_object$`rowType` %in% c("FEATURES", "COMPOUNDS", "NPC_CLASSES", "CLASSYFIRE_CLASSES"))) {
          stop(paste("Error! \"", this_object$`rowType`, "\" cannot be assigned to `rowType`. Must be \"FEATURES\", \"COMPOUNDS\", \"NPC_CLASSES\", \"CLASSYFIRE_CLASSES\".", sep = ""))
        }
        self$`rowType` <- this_object$`rowType`
      }
      if (!is.null(this_object$`rowIds`)) {
        self$`rowIds` <- ApiClient$new()$deserializeObj(this_object$`rowIds`, "array[character]", loadNamespace("RSirius"))
      }
      if (!is.null(this_object$`columnIds`)) {
        self$`columnIds` <- ApiClient$new()$deserializeObj(this_object$`columnIds`, "array[character]", loadNamespace("RSirius"))
      }
      if (!is.null(this_object$`columnNames`)) {
        self$`columnNames` <- ApiClient$new()$deserializeObj(this_object$`columnNames`, "array[character]", loadNamespace("RSirius"))
      }
      if (!is.null(this_object$`columnSources`)) {
        self$`columnSources` <- ApiClient$new()$deserializeObj(this_object$`columnSources`, "array[character]", loadNamespace("RSirius"))
      }
      if (!is.null(this_object$`values`)) {
        self$`values` <- ApiClient$new()$deserializeObj(this_object$`values`, "array[array[numeric]]", loadNamespace("RSirius"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return QuantTable in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of QuantTable
    #'
    #' @param input_json the JSON input
    #' @return the instance of QuantTable
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`quantificationMeasure`) && !(this_object$`quantificationMeasure` %in% c("APEX_INTENSITY", "AREA_UNDER_CURVE"))) {
        stop(paste("Error! \"", this_object$`quantificationMeasure`, "\" cannot be assigned to `quantificationMeasure`. Must be \"APEX_INTENSITY\", \"AREA_UNDER_CURVE\".", sep = ""))
      }
      self$`quantificationMeasure` <- this_object$`quantificationMeasure`
      if (!is.null(this_object$`rowType`) && !(this_object$`rowType` %in% c("FEATURES", "COMPOUNDS", "NPC_CLASSES", "CLASSYFIRE_CLASSES"))) {
        stop(paste("Error! \"", this_object$`rowType`, "\" cannot be assigned to `rowType`. Must be \"FEATURES\", \"COMPOUNDS\", \"NPC_CLASSES\", \"CLASSYFIRE_CLASSES\".", sep = ""))
      }
      self$`rowType` <- this_object$`rowType`
      self$`rowIds` <- ApiClient$new()$deserializeObj(this_object$`rowIds`, "array[character]", loadNamespace("RSirius"))
      self$`columnIds` <- ApiClient$new()$deserializeObj(this_object$`columnIds`, "array[character]", loadNamespace("RSirius"))
      self$`columnNames` <- ApiClient$new()$deserializeObj(this_object$`columnNames`, "array[character]", loadNamespace("RSirius"))
      self$`columnSources` <- ApiClient$new()$deserializeObj(this_object$`columnSources`, "array[character]", loadNamespace("RSirius"))
      self$`values` <- ApiClient$new()$deserializeObj(this_object$`values`, "array[array[numeric]]", loadNamespace("RSirius"))
      self
    },

    #' @description
    #' Validate JSON input with respect to QuantTable and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of QuantTable
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
# QuantTable$unlock()
#
## Below is an example to define the print function
# QuantTable$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# QuantTable$lock()

