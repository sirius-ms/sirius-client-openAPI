#' Create a new UseHeuristic
#'
#' @description
#' 
#'
#' @docType class
#' @title UseHeuristic
#' @description UseHeuristic Class
#' @format An \code{R6Class} generator object
#' @field useHeuristicAboveMz  integer [optional]
#' @field useOnlyHeuristicAboveMz  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UseHeuristic <- R6::R6Class(
  "UseHeuristic",
  public = list(
    `useHeuristicAboveMz` = NULL,
    `useOnlyHeuristicAboveMz` = NULL,
    #' Initialize a new UseHeuristic class.
    #'
    #' @description
    #' Initialize a new UseHeuristic class.
    #'
    #' @param useHeuristicAboveMz useHeuristicAboveMz
    #' @param useOnlyHeuristicAboveMz useOnlyHeuristicAboveMz
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`useHeuristicAboveMz` = NULL, `useOnlyHeuristicAboveMz` = NULL, ...) {
      if (!is.null(`useHeuristicAboveMz`)) {
        if (!(is.numeric(`useHeuristicAboveMz`) && length(`useHeuristicAboveMz`) == 1)) {
          stop(paste("Error! Invalid data for `useHeuristicAboveMz`. Must be an integer:", `useHeuristicAboveMz`))
        }
        self$`useHeuristicAboveMz` <- `useHeuristicAboveMz`
      }
      if (!is.null(`useOnlyHeuristicAboveMz`)) {
        if (!(is.numeric(`useOnlyHeuristicAboveMz`) && length(`useOnlyHeuristicAboveMz`) == 1)) {
          stop(paste("Error! Invalid data for `useOnlyHeuristicAboveMz`. Must be an integer:", `useOnlyHeuristicAboveMz`))
        }
        self$`useOnlyHeuristicAboveMz` <- `useOnlyHeuristicAboveMz`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return UseHeuristic in JSON format
    #' @export
    toJSON = function() {
      UseHeuristicObject <- list()
      if (!is.null(self$`useHeuristicAboveMz`)) {
        UseHeuristicObject[["useHeuristicAboveMz"]] <-
          self$`useHeuristicAboveMz`
      }
      if (!is.null(self$`useOnlyHeuristicAboveMz`)) {
        UseHeuristicObject[["useOnlyHeuristicAboveMz"]] <-
          self$`useOnlyHeuristicAboveMz`
      }
      UseHeuristicObject
    },
    #' Deserialize JSON string into an instance of UseHeuristic
    #'
    #' @description
    #' Deserialize JSON string into an instance of UseHeuristic
    #'
    #' @param input_json the JSON input
    #' @return the instance of UseHeuristic
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`useHeuristicAboveMz`)) {
        self$`useHeuristicAboveMz` <- this_object$`useHeuristicAboveMz`
      }
      if (!is.null(this_object$`useOnlyHeuristicAboveMz`)) {
        self$`useOnlyHeuristicAboveMz` <- this_object$`useOnlyHeuristicAboveMz`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return UseHeuristic in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`useHeuristicAboveMz`)) {
          sprintf(
          '"useHeuristicAboveMz":
            %d
                    ',
          self$`useHeuristicAboveMz`
          )
        },
        if (!is.null(self$`useOnlyHeuristicAboveMz`)) {
          sprintf(
          '"useOnlyHeuristicAboveMz":
            %d
                    ',
          self$`useOnlyHeuristicAboveMz`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of UseHeuristic
    #'
    #' @description
    #' Deserialize JSON string into an instance of UseHeuristic
    #'
    #' @param input_json the JSON input
    #' @return the instance of UseHeuristic
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`useHeuristicAboveMz` <- this_object$`useHeuristicAboveMz`
      self$`useOnlyHeuristicAboveMz` <- this_object$`useOnlyHeuristicAboveMz`
      self
    },
    #' Validate JSON input with respect to UseHeuristic
    #'
    #' @description
    #' Validate JSON input with respect to UseHeuristic and throw an exception if invalid
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
    #' @return String representation of UseHeuristic
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
# UseHeuristic$unlock()
#
## Below is an example to define the print function
# UseHeuristic$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UseHeuristic$lock()

