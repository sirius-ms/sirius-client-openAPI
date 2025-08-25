#' Create a new QuantTableExperimental
#'
#' @description
#' EXPERIMENTAL: This schema is experimental and may be changed (or even removed) without notice until it is declared stable.
#'
#' @docType class
#' @title QuantTableExperimental
#' @description QuantTableExperimental Class
#' @format An \code{R6Class} generator object
#' @field quantificationMeasure  character [optional]
#' @field rowType  character [optional]
#' @field rowIds  list(integer) [optional]
#' @field columnIds  list(integer) [optional]
#' @field rowNames  list(character) [optional]
#' @field columnNames  list(character) [optional]
#' @field values  list(list(numeric)) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
QuantTableExperimental <- R6::R6Class(
  "QuantTableExperimental",
  public = list(
    `quantificationMeasure` = NULL,
    `rowType` = NULL,
    `rowIds` = NULL,
    `columnIds` = NULL,
    `rowNames` = NULL,
    `columnNames` = NULL,
    `values` = NULL,

    #' @description
    #' Initialize a new QuantTableExperimental class.
    #'
    #' @param quantificationMeasure quantificationMeasure
    #' @param rowType rowType
    #' @param rowIds rowIds
    #' @param columnIds columnIds
    #' @param rowNames rowNames
    #' @param columnNames columnNames
    #' @param values values
    #' @param ... Other optional arguments.
    initialize = function(`quantificationMeasure` = NULL, `rowType` = NULL, `rowIds` = NULL, `columnIds` = NULL, `rowNames` = NULL, `columnNames` = NULL, `values` = NULL, ...) {
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
        if (!(`rowType` %in% c("FEATURES", "COMPOUNDS"))) {
          stop(paste("Error! \"", `rowType`, "\" cannot be assigned to `rowType`. Must be \"FEATURES\", \"COMPOUNDS\".", sep = ""))
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
      if (!is.null(`rowNames`)) {
        stopifnot(is.vector(`rowNames`), length(`rowNames`) != 0)
        sapply(`rowNames`, function(x) stopifnot(is.character(x)))
        self$`rowNames` <- `rowNames`
      }
      if (!is.null(`columnNames`)) {
        stopifnot(is.vector(`columnNames`), length(`columnNames`) != 0)
        sapply(`columnNames`, function(x) stopifnot(is.character(x)))
        self$`columnNames` <- `columnNames`
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
    #' @return QuantTableExperimental as a base R list.
    #' @examples
    #' # convert array of QuantTableExperimental (x) to a data frame
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
    #' Convert QuantTableExperimental to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      QuantTableExperimentalObject <- list()
      if (!is.null(self$`quantificationMeasure`)) {
        QuantTableExperimentalObject[["quantificationMeasure"]] <-
          self$`quantificationMeasure`
      }
      if (!is.null(self$`rowType`)) {
        QuantTableExperimentalObject[["rowType"]] <-
          self$`rowType`
      }
      if (!is.null(self$`rowIds`)) {
        QuantTableExperimentalObject[["rowIds"]] <-
          self$`rowIds`
      }
      if (!is.null(self$`columnIds`)) {
        QuantTableExperimentalObject[["columnIds"]] <-
          self$`columnIds`
      }
      if (!is.null(self$`rowNames`)) {
        QuantTableExperimentalObject[["rowNames"]] <-
          self$`rowNames`
      }
      if (!is.null(self$`columnNames`)) {
        QuantTableExperimentalObject[["columnNames"]] <-
          self$`columnNames`
      }
      if (!is.null(self$`values`)) {
        QuantTableExperimentalObject[["values"]] <-
          lapply(self$`values`, function(x) x$toSimpleType())
      }
      return(QuantTableExperimentalObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of QuantTableExperimental
    #'
    #' @param input_json the JSON input
    #' @return the instance of QuantTableExperimental
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`quantificationMeasure`)) {
        if (!is.null(this_object$`quantificationMeasure`) && !(this_object$`quantificationMeasure` %in% c("APEX_INTENSITY", "AREA_UNDER_CURVE"))) {
          stop(paste("Error! \"", this_object$`quantificationMeasure`, "\" cannot be assigned to `quantificationMeasure`. Must be \"APEX_INTENSITY\", \"AREA_UNDER_CURVE\".", sep = ""))
        }
        self$`quantificationMeasure` <- this_object$`quantificationMeasure`
      }
      if (!is.null(this_object$`rowType`)) {
        if (!is.null(this_object$`rowType`) && !(this_object$`rowType` %in% c("FEATURES", "COMPOUNDS"))) {
          stop(paste("Error! \"", this_object$`rowType`, "\" cannot be assigned to `rowType`. Must be \"FEATURES\", \"COMPOUNDS\".", sep = ""))
        }
        self$`rowType` <- this_object$`rowType`
      }
      if (!is.null(this_object$`rowIds`)) {
        self$`rowIds` <- ApiClient$new()$deserializeObj(this_object$`rowIds`, "array[integer]", loadNamespace("Rsirius"))
      }
      if (!is.null(this_object$`columnIds`)) {
        self$`columnIds` <- ApiClient$new()$deserializeObj(this_object$`columnIds`, "array[integer]", loadNamespace("Rsirius"))
      }
      if (!is.null(this_object$`rowNames`)) {
        self$`rowNames` <- ApiClient$new()$deserializeObj(this_object$`rowNames`, "array[character]", loadNamespace("Rsirius"))
      }
      if (!is.null(this_object$`columnNames`)) {
        self$`columnNames` <- ApiClient$new()$deserializeObj(this_object$`columnNames`, "array[character]", loadNamespace("Rsirius"))
      }
      if (!is.null(this_object$`values`)) {
        self$`values` <- ApiClient$new()$deserializeObj(this_object$`values`, "array[array[numeric]]", loadNamespace("Rsirius"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return QuantTableExperimental in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of QuantTableExperimental
    #'
    #' @param input_json the JSON input
    #' @return the instance of QuantTableExperimental
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`quantificationMeasure`) && !(this_object$`quantificationMeasure` %in% c("APEX_INTENSITY", "AREA_UNDER_CURVE"))) {
        stop(paste("Error! \"", this_object$`quantificationMeasure`, "\" cannot be assigned to `quantificationMeasure`. Must be \"APEX_INTENSITY\", \"AREA_UNDER_CURVE\".", sep = ""))
      }
      self$`quantificationMeasure` <- this_object$`quantificationMeasure`
      if (!is.null(this_object$`rowType`) && !(this_object$`rowType` %in% c("FEATURES", "COMPOUNDS"))) {
        stop(paste("Error! \"", this_object$`rowType`, "\" cannot be assigned to `rowType`. Must be \"FEATURES\", \"COMPOUNDS\".", sep = ""))
      }
      self$`rowType` <- this_object$`rowType`
      self$`rowIds` <- ApiClient$new()$deserializeObj(this_object$`rowIds`, "array[integer]", loadNamespace("Rsirius"))
      self$`columnIds` <- ApiClient$new()$deserializeObj(this_object$`columnIds`, "array[integer]", loadNamespace("Rsirius"))
      self$`rowNames` <- ApiClient$new()$deserializeObj(this_object$`rowNames`, "array[character]", loadNamespace("Rsirius"))
      self$`columnNames` <- ApiClient$new()$deserializeObj(this_object$`columnNames`, "array[character]", loadNamespace("Rsirius"))
      self$`values` <- ApiClient$new()$deserializeObj(this_object$`values`, "array[array[numeric]]", loadNamespace("Rsirius"))
      self
    },

    #' @description
    #' Validate JSON input with respect to QuantTableExperimental and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of QuantTableExperimental
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
# QuantTableExperimental$unlock()
#
## Below is an example to define the print function
# QuantTableExperimental$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# QuantTableExperimental$lock()

