#' Create a new UseHeuristic
#'
#' @description
#' 
#'
#' @docType class
#' @title UseHeuristic
#' @description UseHeuristic Class
#' @format An \code{R6Class} generator object
#' @field mzToUseHeuristic  integer [optional]
#' @field mzToUseHeuristicOnly  integer [optional]
#' @field identifier  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UseHeuristic <- R6::R6Class(
  "UseHeuristic",
  public = list(
    `mzToUseHeuristic` = NULL,
    `mzToUseHeuristicOnly` = NULL,
    `identifier` = NULL,
    #' Initialize a new UseHeuristic class.
    #'
    #' @description
    #' Initialize a new UseHeuristic class.
    #'
    #' @param mzToUseHeuristic mzToUseHeuristic
    #' @param mzToUseHeuristicOnly mzToUseHeuristicOnly
    #' @param identifier identifier
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`mzToUseHeuristic` = NULL, `mzToUseHeuristicOnly` = NULL, `identifier` = NULL, ...) {
      if (!is.null(`mzToUseHeuristic`)) {
        if (!(is.numeric(`mzToUseHeuristic`) && length(`mzToUseHeuristic`) == 1)) {
          stop(paste("Error! Invalid data for `mzToUseHeuristic`. Must be an integer:", `mzToUseHeuristic`))
        }
        self$`mzToUseHeuristic` <- `mzToUseHeuristic`
      }
      if (!is.null(`mzToUseHeuristicOnly`)) {
        if (!(is.numeric(`mzToUseHeuristicOnly`) && length(`mzToUseHeuristicOnly`) == 1)) {
          stop(paste("Error! Invalid data for `mzToUseHeuristicOnly`. Must be an integer:", `mzToUseHeuristicOnly`))
        }
        self$`mzToUseHeuristicOnly` <- `mzToUseHeuristicOnly`
      }
      if (!is.null(`identifier`)) {
        if (!(is.character(`identifier`) && length(`identifier`) == 1)) {
          stop(paste("Error! Invalid data for `identifier`. Must be a string:", `identifier`))
        }
        self$`identifier` <- `identifier`
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
      if (!is.null(self$`mzToUseHeuristic`)) {
        UseHeuristicObject[["mzToUseHeuristic"]] <-
          self$`mzToUseHeuristic`
      }
      if (!is.null(self$`mzToUseHeuristicOnly`)) {
        UseHeuristicObject[["mzToUseHeuristicOnly"]] <-
          self$`mzToUseHeuristicOnly`
      }
      if (!is.null(self$`identifier`)) {
        UseHeuristicObject[["identifier"]] <-
          self$`identifier`
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
      if (!is.null(this_object$`mzToUseHeuristic`)) {
        self$`mzToUseHeuristic` <- this_object$`mzToUseHeuristic`
      }
      if (!is.null(this_object$`mzToUseHeuristicOnly`)) {
        self$`mzToUseHeuristicOnly` <- this_object$`mzToUseHeuristicOnly`
      }
      if (!is.null(this_object$`identifier`)) {
        self$`identifier` <- this_object$`identifier`
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
        if (!is.null(self$`mzToUseHeuristic`)) {
          sprintf(
          '"mzToUseHeuristic":
            %d
                    ',
          self$`mzToUseHeuristic`
          )
        },
        if (!is.null(self$`mzToUseHeuristicOnly`)) {
          sprintf(
          '"mzToUseHeuristicOnly":
            %d
                    ',
          self$`mzToUseHeuristicOnly`
          )
        },
        if (!is.null(self$`identifier`)) {
          sprintf(
          '"identifier":
            "%s"
                    ',
          self$`identifier`
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
      self$`mzToUseHeuristic` <- this_object$`mzToUseHeuristic`
      self$`mzToUseHeuristicOnly` <- this_object$`mzToUseHeuristicOnly`
      self$`identifier` <- this_object$`identifier`
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
## Below is an example to define the print fnuction
# UseHeuristic$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UseHeuristic$lock()

