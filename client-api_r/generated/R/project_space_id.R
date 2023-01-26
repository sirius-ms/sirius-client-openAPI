#' Create a new ProjectSpaceId
#'
#' @description
#' 
#'
#' @docType class
#' @title ProjectSpaceId
#' @description ProjectSpaceId Class
#' @format An \code{R6Class} generator object
#' @field name  character [optional]
#' @field path  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ProjectSpaceId <- R6::R6Class(
  "ProjectSpaceId",
  public = list(
    `name` = NULL,
    `path` = NULL,
    #' Initialize a new ProjectSpaceId class.
    #'
    #' @description
    #' Initialize a new ProjectSpaceId class.
    #'
    #' @param name name
    #' @param path path
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`name` = NULL, `path` = NULL, ...) {
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`path`)) {
        if (!(is.character(`path`) && length(`path`) == 1)) {
          stop(paste("Error! Invalid data for `path`. Must be a string:", `path`))
        }
        self$`path` <- `path`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ProjectSpaceId in JSON format
    #' @export
    toJSON = function() {
      ProjectSpaceIdObject <- list()
      if (!is.null(self$`name`)) {
        ProjectSpaceIdObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`path`)) {
        ProjectSpaceIdObject[["path"]] <-
          self$`path`
      }
      ProjectSpaceIdObject
    },
    #' Deserialize JSON string into an instance of ProjectSpaceId
    #'
    #' @description
    #' Deserialize JSON string into an instance of ProjectSpaceId
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProjectSpaceId
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`path`)) {
        self$`path` <- this_object$`path`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ProjectSpaceId in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`name`)) {
          sprintf(
          '"name":
            "%s"
                    ',
          self$`name`
          )
        },
        if (!is.null(self$`path`)) {
          sprintf(
          '"path":
            "%s"
                    ',
          self$`path`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of ProjectSpaceId
    #'
    #' @description
    #' Deserialize JSON string into an instance of ProjectSpaceId
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProjectSpaceId
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name` <- this_object$`name`
      self$`path` <- this_object$`path`
      self
    },
    #' Validate JSON input with respect to ProjectSpaceId
    #'
    #' @description
    #' Validate JSON input with respect to ProjectSpaceId and throw an exception if invalid
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
    #' @return String representation of ProjectSpaceId
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
# ProjectSpaceId$unlock()
#
## Below is an example to define the print function
# ProjectSpaceId$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ProjectSpaceId$lock()

