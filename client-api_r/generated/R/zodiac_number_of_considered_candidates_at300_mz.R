#' Create a new ZodiacNumberOfConsideredCandidatesAt300Mz
#'
#' @description
#' 
#'
#' @docType class
#' @title ZodiacNumberOfConsideredCandidatesAt300Mz
#' @description ZodiacNumberOfConsideredCandidatesAt300Mz Class
#' @format An \code{R6Class} generator object
#' @field value  integer [optional]
#' @field identifier  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ZodiacNumberOfConsideredCandidatesAt300Mz <- R6::R6Class(
  "ZodiacNumberOfConsideredCandidatesAt300Mz",
  public = list(
    `value` = NULL,
    `identifier` = NULL,
    #' Initialize a new ZodiacNumberOfConsideredCandidatesAt300Mz class.
    #'
    #' @description
    #' Initialize a new ZodiacNumberOfConsideredCandidatesAt300Mz class.
    #'
    #' @param value value
    #' @param identifier identifier
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`value` = NULL, `identifier` = NULL, ...) {
      if (!is.null(`value`)) {
        if (!(is.numeric(`value`) && length(`value`) == 1)) {
          stop(paste("Error! Invalid data for `value`. Must be an integer:", `value`))
        }
        self$`value` <- `value`
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
    #' @return ZodiacNumberOfConsideredCandidatesAt300Mz in JSON format
    #' @export
    toJSON = function() {
      ZodiacNumberOfConsideredCandidatesAt300MzObject <- list()
      if (!is.null(self$`value`)) {
        ZodiacNumberOfConsideredCandidatesAt300MzObject[["value"]] <-
          self$`value`
      }
      if (!is.null(self$`identifier`)) {
        ZodiacNumberOfConsideredCandidatesAt300MzObject[["identifier"]] <-
          self$`identifier`
      }
      ZodiacNumberOfConsideredCandidatesAt300MzObject
    },
    #' Deserialize JSON string into an instance of ZodiacNumberOfConsideredCandidatesAt300Mz
    #'
    #' @description
    #' Deserialize JSON string into an instance of ZodiacNumberOfConsideredCandidatesAt300Mz
    #'
    #' @param input_json the JSON input
    #' @return the instance of ZodiacNumberOfConsideredCandidatesAt300Mz
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`value`)) {
        self$`value` <- this_object$`value`
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
    #' @return ZodiacNumberOfConsideredCandidatesAt300Mz in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`value`)) {
          sprintf(
          '"value":
            %d
                    ',
          self$`value`
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
    #' Deserialize JSON string into an instance of ZodiacNumberOfConsideredCandidatesAt300Mz
    #'
    #' @description
    #' Deserialize JSON string into an instance of ZodiacNumberOfConsideredCandidatesAt300Mz
    #'
    #' @param input_json the JSON input
    #' @return the instance of ZodiacNumberOfConsideredCandidatesAt300Mz
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`value` <- this_object$`value`
      self$`identifier` <- this_object$`identifier`
      self
    },
    #' Validate JSON input with respect to ZodiacNumberOfConsideredCandidatesAt300Mz
    #'
    #' @description
    #' Validate JSON input with respect to ZodiacNumberOfConsideredCandidatesAt300Mz and throw an exception if invalid
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
    #' @return String representation of ZodiacNumberOfConsideredCandidatesAt300Mz
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
# ZodiacNumberOfConsideredCandidatesAt300Mz$unlock()
#
## Below is an example to define the print fnuction
# ZodiacNumberOfConsideredCandidatesAt300Mz$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ZodiacNumberOfConsideredCandidatesAt300Mz$lock()

