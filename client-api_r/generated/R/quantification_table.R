#' Create a new QuantificationTable
#'
#' @description
#' QuantificationTable Class
#'
#' @docType class
#' @title QuantificationTable
#' @description QuantificationTable Class
#' @format An \code{R6Class} generator object
#' @field quantificationType  character [optional]
#' @field rowType  character [optional]
#' @field columnType  character [optional]
#' @field rowIds  list(integer) [optional]
#' @field columnIds  list(integer) [optional]
#' @field rowNames  list(character) [optional]
#' @field columnNames  list(character) [optional]
#' @field values  list(list(numeric)) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
QuantificationTable <- R6::R6Class(
  "QuantificationTable",
  public = list(
    `quantificationType` = NULL,
    `rowType` = NULL,
    `columnType` = NULL,
    `rowIds` = NULL,
    `columnIds` = NULL,
    `rowNames` = NULL,
    `columnNames` = NULL,
    `values` = NULL,
    #' Initialize a new QuantificationTable class.
    #'
    #' @description
    #' Initialize a new QuantificationTable class.
    #'
    #' @param quantificationType quantificationType
    #' @param rowType rowType
    #' @param columnType columnType
    #' @param rowIds rowIds
    #' @param columnIds columnIds
    #' @param rowNames rowNames
    #' @param columnNames columnNames
    #' @param values values
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`quantificationType` = NULL, `rowType` = NULL, `columnType` = NULL, `rowIds` = NULL, `columnIds` = NULL, `rowNames` = NULL, `columnNames` = NULL, `values` = NULL, ...) {
      if (!is.null(`quantificationType`)) {
        if (!(`quantificationType` %in% c("APEX_HEIGHT"))) {
          stop(paste("Error! \"", `quantificationType`, "\" cannot be assigned to `quantificationType`. Must be \"APEX_HEIGHT\".", sep = ""))
        }
        if (!(is.character(`quantificationType`) && length(`quantificationType`) == 1)) {
          stop(paste("Error! Invalid data for `quantificationType`. Must be a string:", `quantificationType`))
        }
        self$`quantificationType` <- `quantificationType`
      }
      if (!is.null(`rowType`)) {
        if (!(`rowType` %in% c("FEATURES"))) {
          stop(paste("Error! \"", `rowType`, "\" cannot be assigned to `rowType`. Must be \"FEATURES\".", sep = ""))
        }
        if (!(is.character(`rowType`) && length(`rowType`) == 1)) {
          stop(paste("Error! Invalid data for `rowType`. Must be a string:", `rowType`))
        }
        self$`rowType` <- `rowType`
      }
      if (!is.null(`columnType`)) {
        if (!(`columnType` %in% c("SAMPLES"))) {
          stop(paste("Error! \"", `columnType`, "\" cannot be assigned to `columnType`. Must be \"SAMPLES\".", sep = ""))
        }
        if (!(is.character(`columnType`) && length(`columnType`) == 1)) {
          stop(paste("Error! Invalid data for `columnType`. Must be a string:", `columnType`))
        }
        self$`columnType` <- `columnType`
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
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return QuantificationTable in JSON format
    #' @export
    toJSON = function() {
      QuantificationTableObject <- list()
      if (!is.null(self$`quantificationType`)) {
        QuantificationTableObject[["quantificationType"]] <-
          self$`quantificationType`
      }
      if (!is.null(self$`rowType`)) {
        QuantificationTableObject[["rowType"]] <-
          self$`rowType`
      }
      if (!is.null(self$`columnType`)) {
        QuantificationTableObject[["columnType"]] <-
          self$`columnType`
      }
      if (!is.null(self$`rowIds`)) {
        QuantificationTableObject[["rowIds"]] <-
          self$`rowIds`
      }
      if (!is.null(self$`columnIds`)) {
        QuantificationTableObject[["columnIds"]] <-
          self$`columnIds`
      }
      if (!is.null(self$`rowNames`)) {
        QuantificationTableObject[["rowNames"]] <-
          self$`rowNames`
      }
      if (!is.null(self$`columnNames`)) {
        QuantificationTableObject[["columnNames"]] <-
          self$`columnNames`
      }
      if (!is.null(self$`values`)) {
        QuantificationTableObject[["values"]] <-
          lapply(self$`values`, function(x) x$toJSON())
      }
      QuantificationTableObject
    },
    #' Deserialize JSON string into an instance of QuantificationTable
    #'
    #' @description
    #' Deserialize JSON string into an instance of QuantificationTable
    #'
    #' @param input_json the JSON input
    #' @return the instance of QuantificationTable
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`quantificationType`)) {
        if (!is.null(this_object$`quantificationType`) && !(this_object$`quantificationType` %in% c("APEX_HEIGHT"))) {
          stop(paste("Error! \"", this_object$`quantificationType`, "\" cannot be assigned to `quantificationType`. Must be \"APEX_HEIGHT\".", sep = ""))
        }
        self$`quantificationType` <- this_object$`quantificationType`
      }
      if (!is.null(this_object$`rowType`)) {
        if (!is.null(this_object$`rowType`) && !(this_object$`rowType` %in% c("FEATURES"))) {
          stop(paste("Error! \"", this_object$`rowType`, "\" cannot be assigned to `rowType`. Must be \"FEATURES\".", sep = ""))
        }
        self$`rowType` <- this_object$`rowType`
      }
      if (!is.null(this_object$`columnType`)) {
        if (!is.null(this_object$`columnType`) && !(this_object$`columnType` %in% c("SAMPLES"))) {
          stop(paste("Error! \"", this_object$`columnType`, "\" cannot be assigned to `columnType`. Must be \"SAMPLES\".", sep = ""))
        }
        self$`columnType` <- this_object$`columnType`
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
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return QuantificationTable in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`quantificationType`)) {
          sprintf(
          '"quantificationType":
            "%s"
                    ',
          self$`quantificationType`
          )
        },
        if (!is.null(self$`rowType`)) {
          sprintf(
          '"rowType":
            "%s"
                    ',
          self$`rowType`
          )
        },
        if (!is.null(self$`columnType`)) {
          sprintf(
          '"columnType":
            "%s"
                    ',
          self$`columnType`
          )
        },
        if (!is.null(self$`rowIds`)) {
          sprintf(
          '"rowIds":
             [%s]
          ',
          paste(unlist(lapply(self$`rowIds`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`columnIds`)) {
          sprintf(
          '"columnIds":
             [%s]
          ',
          paste(unlist(lapply(self$`columnIds`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`rowNames`)) {
          sprintf(
          '"rowNames":
             [%s]
          ',
          paste(unlist(lapply(self$`rowNames`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`columnNames`)) {
          sprintf(
          '"columnNames":
             [%s]
          ',
          paste(unlist(lapply(self$`columnNames`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`values`)) {
          sprintf(
          '"values":
          [%s]
',
          paste(sapply(self$`values`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of QuantificationTable
    #'
    #' @description
    #' Deserialize JSON string into an instance of QuantificationTable
    #'
    #' @param input_json the JSON input
    #' @return the instance of QuantificationTable
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`quantificationType`) && !(this_object$`quantificationType` %in% c("APEX_HEIGHT"))) {
        stop(paste("Error! \"", this_object$`quantificationType`, "\" cannot be assigned to `quantificationType`. Must be \"APEX_HEIGHT\".", sep = ""))
      }
      self$`quantificationType` <- this_object$`quantificationType`
      if (!is.null(this_object$`rowType`) && !(this_object$`rowType` %in% c("FEATURES"))) {
        stop(paste("Error! \"", this_object$`rowType`, "\" cannot be assigned to `rowType`. Must be \"FEATURES\".", sep = ""))
      }
      self$`rowType` <- this_object$`rowType`
      if (!is.null(this_object$`columnType`) && !(this_object$`columnType` %in% c("SAMPLES"))) {
        stop(paste("Error! \"", this_object$`columnType`, "\" cannot be assigned to `columnType`. Must be \"SAMPLES\".", sep = ""))
      }
      self$`columnType` <- this_object$`columnType`
      self$`rowIds` <- ApiClient$new()$deserializeObj(this_object$`rowIds`, "array[integer]", loadNamespace("Rsirius"))
      self$`columnIds` <- ApiClient$new()$deserializeObj(this_object$`columnIds`, "array[integer]", loadNamespace("Rsirius"))
      self$`rowNames` <- ApiClient$new()$deserializeObj(this_object$`rowNames`, "array[character]", loadNamespace("Rsirius"))
      self$`columnNames` <- ApiClient$new()$deserializeObj(this_object$`columnNames`, "array[character]", loadNamespace("Rsirius"))
      self$`values` <- ApiClient$new()$deserializeObj(this_object$`values`, "array[array[numeric]]", loadNamespace("Rsirius"))
      self
    },
    #' Validate JSON input with respect to QuantificationTable
    #'
    #' @description
    #' Validate JSON input with respect to QuantificationTable and throw an exception if invalid
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
    #' @return String representation of QuantificationTable
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
# QuantificationTable$unlock()
#
## Below is an example to define the print function
# QuantificationTable$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# QuantificationTable$lock()

