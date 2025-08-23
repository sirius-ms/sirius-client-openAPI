#' Create a new StatisticsTable
#'
#' @description
#' StatisticsTable Class
#'
#' @docType class
#' @title StatisticsTable
#' @description StatisticsTable Class
#' @format An \code{R6Class} generator object
#' @field statisticsType  character [optional]
#' @field aggregationType  character [optional]
#' @field quantificationMeasure  character [optional]
#' @field rowType  character [optional]
#' @field rowIds  list(character) [optional]
#' @field columnNames  list(character) [optional]
#' @field columnLeftGroups  list(character) [optional]
#' @field columnRightGroups  list(character) [optional]
#' @field values  list(list(numeric)) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
StatisticsTable <- R6::R6Class(
  "StatisticsTable",
  public = list(
    `statisticsType` = NULL,
    `aggregationType` = NULL,
    `quantificationMeasure` = NULL,
    `rowType` = NULL,
    `rowIds` = NULL,
    `columnNames` = NULL,
    `columnLeftGroups` = NULL,
    `columnRightGroups` = NULL,
    `values` = NULL,

    #' @description
    #' Initialize a new StatisticsTable class.
    #'
    #' @param statisticsType statisticsType
    #' @param aggregationType aggregationType
    #' @param quantificationMeasure quantificationMeasure
    #' @param rowType rowType
    #' @param rowIds rowIds
    #' @param columnNames columnNames
    #' @param columnLeftGroups columnLeftGroups
    #' @param columnRightGroups columnRightGroups
    #' @param values values
    #' @param ... Other optional arguments.
    initialize = function(`statisticsType` = NULL, `aggregationType` = NULL, `quantificationMeasure` = NULL, `rowType` = NULL, `rowIds` = NULL, `columnNames` = NULL, `columnLeftGroups` = NULL, `columnRightGroups` = NULL, `values` = NULL, ...) {
      if (!is.null(`statisticsType`)) {
        if (!(`statisticsType` %in% c("FOLD_CHANGE"))) {
          stop(paste("Error! \"", `statisticsType`, "\" cannot be assigned to `statisticsType`. Must be \"FOLD_CHANGE\".", sep = ""))
        }
        if (!(is.character(`statisticsType`) && length(`statisticsType`) == 1)) {
          stop(paste("Error! Invalid data for `statisticsType`. Must be a string:", `statisticsType`))
        }
        self$`statisticsType` <- `statisticsType`
      }
      if (!is.null(`aggregationType`)) {
        if (!(`aggregationType` %in% c("AVG", "MIN", "MAX"))) {
          stop(paste("Error! \"", `aggregationType`, "\" cannot be assigned to `aggregationType`. Must be \"AVG\", \"MIN\", \"MAX\".", sep = ""))
        }
        if (!(is.character(`aggregationType`) && length(`aggregationType`) == 1)) {
          stop(paste("Error! Invalid data for `aggregationType`. Must be a string:", `aggregationType`))
        }
        self$`aggregationType` <- `aggregationType`
      }
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
      if (!is.null(`columnNames`)) {
        stopifnot(is.vector(`columnNames`), length(`columnNames`) != 0)
        sapply(`columnNames`, function(x) stopifnot(is.character(x)))
        self$`columnNames` <- `columnNames`
      }
      if (!is.null(`columnLeftGroups`)) {
        stopifnot(is.vector(`columnLeftGroups`), length(`columnLeftGroups`) != 0)
        sapply(`columnLeftGroups`, function(x) stopifnot(is.character(x)))
        self$`columnLeftGroups` <- `columnLeftGroups`
      }
      if (!is.null(`columnRightGroups`)) {
        stopifnot(is.vector(`columnRightGroups`), length(`columnRightGroups`) != 0)
        sapply(`columnRightGroups`, function(x) stopifnot(is.character(x)))
        self$`columnRightGroups` <- `columnRightGroups`
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
    #' @return StatisticsTable as a base R list.
    #' @examples
    #' # convert array of StatisticsTable (x) to a data frame
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
    #' Convert StatisticsTable to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      StatisticsTableObject <- list()
      if (!is.null(self$`statisticsType`)) {
        StatisticsTableObject[["statisticsType"]] <-
          self$`statisticsType`
      }
      if (!is.null(self$`aggregationType`)) {
        StatisticsTableObject[["aggregationType"]] <-
          self$`aggregationType`
      }
      if (!is.null(self$`quantificationMeasure`)) {
        StatisticsTableObject[["quantificationMeasure"]] <-
          self$`quantificationMeasure`
      }
      if (!is.null(self$`rowType`)) {
        StatisticsTableObject[["rowType"]] <-
          self$`rowType`
      }
      if (!is.null(self$`rowIds`)) {
        StatisticsTableObject[["rowIds"]] <-
          self$`rowIds`
      }
      if (!is.null(self$`columnNames`)) {
        StatisticsTableObject[["columnNames"]] <-
          self$`columnNames`
      }
      if (!is.null(self$`columnLeftGroups`)) {
        StatisticsTableObject[["columnLeftGroups"]] <-
          self$`columnLeftGroups`
      }
      if (!is.null(self$`columnRightGroups`)) {
        StatisticsTableObject[["columnRightGroups"]] <-
          self$`columnRightGroups`
      }
      if (!is.null(self$`values`)) {
        StatisticsTableObject[["values"]] <-
          lapply(self$`values`, function(x) x$toSimpleType())
      }
      return(StatisticsTableObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of StatisticsTable
    #'
    #' @param input_json the JSON input
    #' @return the instance of StatisticsTable
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`statisticsType`)) {
        if (!is.null(this_object$`statisticsType`) && !(this_object$`statisticsType` %in% c("FOLD_CHANGE"))) {
          stop(paste("Error! \"", this_object$`statisticsType`, "\" cannot be assigned to `statisticsType`. Must be \"FOLD_CHANGE\".", sep = ""))
        }
        self$`statisticsType` <- this_object$`statisticsType`
      }
      if (!is.null(this_object$`aggregationType`)) {
        if (!is.null(this_object$`aggregationType`) && !(this_object$`aggregationType` %in% c("AVG", "MIN", "MAX"))) {
          stop(paste("Error! \"", this_object$`aggregationType`, "\" cannot be assigned to `aggregationType`. Must be \"AVG\", \"MIN\", \"MAX\".", sep = ""))
        }
        self$`aggregationType` <- this_object$`aggregationType`
      }
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
        self$`rowIds` <- ApiClient$new()$deserializeObj(this_object$`rowIds`, "array[character]", loadNamespace("Rsirius"))
      }
      if (!is.null(this_object$`columnNames`)) {
        self$`columnNames` <- ApiClient$new()$deserializeObj(this_object$`columnNames`, "array[character]", loadNamespace("Rsirius"))
      }
      if (!is.null(this_object$`columnLeftGroups`)) {
        self$`columnLeftGroups` <- ApiClient$new()$deserializeObj(this_object$`columnLeftGroups`, "array[character]", loadNamespace("Rsirius"))
      }
      if (!is.null(this_object$`columnRightGroups`)) {
        self$`columnRightGroups` <- ApiClient$new()$deserializeObj(this_object$`columnRightGroups`, "array[character]", loadNamespace("Rsirius"))
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
    #' @return StatisticsTable in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of StatisticsTable
    #'
    #' @param input_json the JSON input
    #' @return the instance of StatisticsTable
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`statisticsType`) && !(this_object$`statisticsType` %in% c("FOLD_CHANGE"))) {
        stop(paste("Error! \"", this_object$`statisticsType`, "\" cannot be assigned to `statisticsType`. Must be \"FOLD_CHANGE\".", sep = ""))
      }
      self$`statisticsType` <- this_object$`statisticsType`
      if (!is.null(this_object$`aggregationType`) && !(this_object$`aggregationType` %in% c("AVG", "MIN", "MAX"))) {
        stop(paste("Error! \"", this_object$`aggregationType`, "\" cannot be assigned to `aggregationType`. Must be \"AVG\", \"MIN\", \"MAX\".", sep = ""))
      }
      self$`aggregationType` <- this_object$`aggregationType`
      if (!is.null(this_object$`quantificationMeasure`) && !(this_object$`quantificationMeasure` %in% c("APEX_INTENSITY", "AREA_UNDER_CURVE"))) {
        stop(paste("Error! \"", this_object$`quantificationMeasure`, "\" cannot be assigned to `quantificationMeasure`. Must be \"APEX_INTENSITY\", \"AREA_UNDER_CURVE\".", sep = ""))
      }
      self$`quantificationMeasure` <- this_object$`quantificationMeasure`
      if (!is.null(this_object$`rowType`) && !(this_object$`rowType` %in% c("FEATURES", "COMPOUNDS"))) {
        stop(paste("Error! \"", this_object$`rowType`, "\" cannot be assigned to `rowType`. Must be \"FEATURES\", \"COMPOUNDS\".", sep = ""))
      }
      self$`rowType` <- this_object$`rowType`
      self$`rowIds` <- ApiClient$new()$deserializeObj(this_object$`rowIds`, "array[character]", loadNamespace("Rsirius"))
      self$`columnNames` <- ApiClient$new()$deserializeObj(this_object$`columnNames`, "array[character]", loadNamespace("Rsirius"))
      self$`columnLeftGroups` <- ApiClient$new()$deserializeObj(this_object$`columnLeftGroups`, "array[character]", loadNamespace("Rsirius"))
      self$`columnRightGroups` <- ApiClient$new()$deserializeObj(this_object$`columnRightGroups`, "array[character]", loadNamespace("Rsirius"))
      self$`values` <- ApiClient$new()$deserializeObj(this_object$`values`, "array[array[numeric]]", loadNamespace("Rsirius"))
      self
    },

    #' @description
    #' Validate JSON input with respect to StatisticsTable and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of StatisticsTable
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
# StatisticsTable$unlock()
#
## Below is an example to define the print function
# StatisticsTable$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# StatisticsTable$lock()

