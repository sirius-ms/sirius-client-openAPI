#' Create a new SpectralLibrarySearch
#'
#' @description
#' 
#'
#' @docType class
#' @title SpectralLibrarySearch
#' @description SpectralLibrarySearch Class
#' @format An \code{R6Class} generator object
#' @field enabled tags whether the tool is enabled character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SpectralLibrarySearch <- R6::R6Class(
  "SpectralLibrarySearch",
  public = list(
    `enabled` = NULL,
    #' Initialize a new SpectralLibrarySearch class.
    #'
    #' @description
    #' Initialize a new SpectralLibrarySearch class.
    #'
    #' @param enabled tags whether the tool is enabled
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`enabled` = NULL, ...) {
      if (!is.null(`enabled`)) {
        if (!(is.logical(`enabled`) && length(`enabled`) == 1)) {
          stop(paste("Error! Invalid data for `enabled`. Must be a boolean:", `enabled`))
        }
        self$`enabled` <- `enabled`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return SpectralLibrarySearch in JSON format
    #' @export
    toJSON = function() {
      SpectralLibrarySearchObject <- list()
      if (!is.null(self$`enabled`)) {
        SpectralLibrarySearchObject[["enabled"]] <-
          self$`enabled`
      }
      SpectralLibrarySearchObject
    },
    #' Deserialize JSON string into an instance of SpectralLibrarySearch
    #'
    #' @description
    #' Deserialize JSON string into an instance of SpectralLibrarySearch
    #'
    #' @param input_json the JSON input
    #' @return the instance of SpectralLibrarySearch
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`enabled`)) {
        self$`enabled` <- this_object$`enabled`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return SpectralLibrarySearch in JSON format
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
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of SpectralLibrarySearch
    #'
    #' @description
    #' Deserialize JSON string into an instance of SpectralLibrarySearch
    #'
    #' @param input_json the JSON input
    #' @return the instance of SpectralLibrarySearch
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`enabled` <- this_object$`enabled`
      self
    },
    #' Validate JSON input with respect to SpectralLibrarySearch
    #'
    #' @description
    #' Validate JSON input with respect to SpectralLibrarySearch and throw an exception if invalid
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
    #' @return String representation of SpectralLibrarySearch
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
# SpectralLibrarySearch$unlock()
#
## Below is an example to define the print function
# SpectralLibrarySearch$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SpectralLibrarySearch$lock()

