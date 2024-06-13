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
    #' Initialize a new GuiInfo class.
    #'
    #' @description
    #' Initialize a new GuiInfo class.
    #'
    #' @param projectId The project this instance is running on
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`projectId` = NULL, ...) {
      if (!is.null(`projectId`)) {
        if (!(is.character(`projectId`) && length(`projectId`) == 1)) {
          stop(paste("Error! Invalid data for `projectId`. Must be a string:", `projectId`))
        }
        self$`projectId` <- `projectId`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return GuiInfo in JSON format
    #' @export
    toJSON = function() {
      GuiInfoObject <- list()
      if (!is.null(self$`projectId`)) {
        GuiInfoObject[["projectId"]] <-
          self$`projectId`
      }
      GuiInfoObject
    },
    #' Deserialize JSON string into an instance of GuiInfo
    #'
    #' @description
    #' Deserialize JSON string into an instance of GuiInfo
    #'
    #' @param input_json the JSON input
    #' @return the instance of GuiInfo
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`projectId`)) {
        self$`projectId` <- this_object$`projectId`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return GuiInfo in JSON format
    #' @export
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
      # remove c() occurences and reduce resulting double escaped quotes \"\" into \"
      jsoncontent <- gsub('\\\"c\\((.*?)\\\"\\)', '\\1', jsoncontent)
      # fix wrong serialization of "\"ENUM\"" to "ENUM"
      jsoncontent <- gsub("\\\\\"([A-Z]+)\\\\\"", "\\1", jsoncontent)
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of GuiInfo
    #'
    #' @description
    #' Deserialize JSON string into an instance of GuiInfo
    #'
    #' @param input_json the JSON input
    #' @return the instance of GuiInfo
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`projectId` <- this_object$`projectId`
      self
    },
    #' Validate JSON input with respect to GuiInfo
    #'
    #' @description
    #' Validate JSON input with respect to GuiInfo and throw an exception if invalid
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
    #' @return String representation of GuiInfo
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
# GuiInfo$unlock()
#
## Below is an example to define the print function
# GuiInfo$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GuiInfo$lock()

