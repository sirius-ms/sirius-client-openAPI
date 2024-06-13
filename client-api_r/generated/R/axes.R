#' Create a new Axes
#'
#' @description
#' Axes Class
#'
#' @docType class
#' @title Axes
#' @description Axes Class
#' @format An \code{R6Class} generator object
#' @field scanNumber  list(integer) [optional]
#' @field scanIds  list(character) [optional]
#' @field retentionTimeInSeconds  list(numeric) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Axes <- R6::R6Class(
  "Axes",
  public = list(
    `scanNumber` = NULL,
    `scanIds` = NULL,
    `retentionTimeInSeconds` = NULL,
    #' Initialize a new Axes class.
    #'
    #' @description
    #' Initialize a new Axes class.
    #'
    #' @param scanNumber scanNumber
    #' @param scanIds scanIds
    #' @param retentionTimeInSeconds retentionTimeInSeconds
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`scanNumber` = NULL, `scanIds` = NULL, `retentionTimeInSeconds` = NULL, ...) {
      if (!is.null(`scanNumber`)) {
        stopifnot(is.vector(`scanNumber`), length(`scanNumber`) != 0)
        sapply(`scanNumber`, function(x) stopifnot(is.character(x)))
        self$`scanNumber` <- `scanNumber`
      }
      if (!is.null(`scanIds`)) {
        stopifnot(is.vector(`scanIds`), length(`scanIds`) != 0)
        sapply(`scanIds`, function(x) stopifnot(is.character(x)))
        self$`scanIds` <- `scanIds`
      }
      if (!is.null(`retentionTimeInSeconds`)) {
        stopifnot(is.vector(`retentionTimeInSeconds`), length(`retentionTimeInSeconds`) != 0)
        sapply(`retentionTimeInSeconds`, function(x) stopifnot(is.character(x)))
        self$`retentionTimeInSeconds` <- `retentionTimeInSeconds`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return Axes in JSON format
    #' @export
    toJSON = function() {
      AxesObject <- list()
      if (!is.null(self$`scanNumber`)) {
        AxesObject[["scanNumber"]] <-
          self$`scanNumber`
      }
      if (!is.null(self$`scanIds`)) {
        AxesObject[["scanIds"]] <-
          self$`scanIds`
      }
      if (!is.null(self$`retentionTimeInSeconds`)) {
        AxesObject[["retentionTimeInSeconds"]] <-
          self$`retentionTimeInSeconds`
      }
      AxesObject
    },
    #' Deserialize JSON string into an instance of Axes
    #'
    #' @description
    #' Deserialize JSON string into an instance of Axes
    #'
    #' @param input_json the JSON input
    #' @return the instance of Axes
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`scanNumber`)) {
        self$`scanNumber` <- ApiClient$new()$deserializeObj(this_object$`scanNumber`, "array[integer]", loadNamespace("Rsirius"))
      }
      if (!is.null(this_object$`scanIds`)) {
        self$`scanIds` <- ApiClient$new()$deserializeObj(this_object$`scanIds`, "array[character]", loadNamespace("Rsirius"))
      }
      if (!is.null(this_object$`retentionTimeInSeconds`)) {
        self$`retentionTimeInSeconds` <- ApiClient$new()$deserializeObj(this_object$`retentionTimeInSeconds`, "array[numeric]", loadNamespace("Rsirius"))
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return Axes in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`scanNumber`)) {
          sprintf(
          '"scanNumber":
             [%s]
          ',
          paste(unlist(lapply(self$`scanNumber`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`scanIds`)) {
          sprintf(
          '"scanIds":
             [%s]
          ',
          paste(unlist(lapply(self$`scanIds`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`retentionTimeInSeconds`)) {
          sprintf(
          '"retentionTimeInSeconds":
             [%s]
          ',
          paste(unlist(lapply(self$`retentionTimeInSeconds`, function(x) paste0('"', x, '"'))), collapse = ",")
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
    #' Deserialize JSON string into an instance of Axes
    #'
    #' @description
    #' Deserialize JSON string into an instance of Axes
    #'
    #' @param input_json the JSON input
    #' @return the instance of Axes
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`scanNumber` <- ApiClient$new()$deserializeObj(this_object$`scanNumber`, "array[integer]", loadNamespace("Rsirius"))
      self$`scanIds` <- ApiClient$new()$deserializeObj(this_object$`scanIds`, "array[character]", loadNamespace("Rsirius"))
      self$`retentionTimeInSeconds` <- ApiClient$new()$deserializeObj(this_object$`retentionTimeInSeconds`, "array[numeric]", loadNamespace("Rsirius"))
      self
    },
    #' Validate JSON input with respect to Axes
    #'
    #' @description
    #' Validate JSON input with respect to Axes and throw an exception if invalid
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
    #' @return String representation of Axes
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
# Axes$unlock()
#
## Below is an example to define the print function
# Axes$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Axes$lock()

