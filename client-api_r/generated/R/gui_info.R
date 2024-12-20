#' Create a new GuiInfo
#'
#' @description
#' GuiInfo Class
#'
#' @docType class
#' @title GuiInfo
#' @description GuiInfo Class
#' @format An \code{R6Class} generator object
#' @field projectId The project this instance is running on character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GuiInfo <- R6::R6Class(
  "GuiInfo",
  public = list(
    `projectId` = NULL,

    #' @description
    #' Initialize a new GuiInfo class.
    #'
    #' @param projectId The project this instance is running on
    #' @param ... Other optional arguments.
    initialize = function(`projectId` = NULL, ...) {
      if (!is.null(`projectId`)) {
        if (!(is.character(`projectId`) && length(`projectId`) == 1)) {
          stop(paste("Error! Invalid data for `projectId`. Must be a string:", `projectId`))
        }
        self$`projectId` <- `projectId`
      }
    },

    #' @description
    #' To JSON String
    #'
    #' @return GuiInfo in JSON format
    toJSON = function() {
      GuiInfoObject <- list()
      if (!is.null(self$`projectId`)) {
        GuiInfoObject[["projectId"]] <-
          self$`projectId`
      }
      GuiInfoObject
    },

    #' @description
    #' Deserialize JSON string into an instance of GuiInfo
    #'
    #' @param input_json the JSON input
    #' @return the instance of GuiInfo
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`projectId`)) {
        self$`projectId` <- this_object$`projectId`
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return GuiInfo in JSON format
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`projectId`)) {
          sprintf(
          '"projectId":
            "%s"
                    ',
          self$`projectId`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },

    #' @description
    #' Deserialize JSON string into an instance of GuiInfo
    #'
    #' @param input_json the JSON input
    #' @return the instance of GuiInfo
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`projectId` <- this_object$`projectId`
      self
    },

    #' @description
    #' Validate JSON input with respect to GuiInfo and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GuiInfo
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
# GuiInfo$unlock()
#
## Below is an example to define the print function
# GuiInfo$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GuiInfo$lock()

