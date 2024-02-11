#' Create a new CollisionEnergy
#'
#' @description
#' 
#'
#' @docType class
#' @title CollisionEnergy
#' @description CollisionEnergy Class
#' @format An \code{R6Class} generator object
#' @field minEnergy  numeric [optional]
#' @field maxEnergy  numeric [optional]
#' @field corrected  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CollisionEnergy <- R6::R6Class(
  "CollisionEnergy",
  public = list(
    `minEnergy` = NULL,
    `maxEnergy` = NULL,
    `corrected` = NULL,
    #' Initialize a new CollisionEnergy class.
    #'
    #' @description
    #' Initialize a new CollisionEnergy class.
    #'
    #' @param minEnergy minEnergy
    #' @param maxEnergy maxEnergy
    #' @param corrected corrected
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`minEnergy` = NULL, `maxEnergy` = NULL, `corrected` = NULL, ...) {
      if (!is.null(`minEnergy`)) {
        if (!(is.numeric(`minEnergy`) && length(`minEnergy`) == 1)) {
          stop(paste("Error! Invalid data for `minEnergy`. Must be a number:", `minEnergy`))
        }
        self$`minEnergy` <- `minEnergy`
      }
      if (!is.null(`maxEnergy`)) {
        if (!(is.numeric(`maxEnergy`) && length(`maxEnergy`) == 1)) {
          stop(paste("Error! Invalid data for `maxEnergy`. Must be a number:", `maxEnergy`))
        }
        self$`maxEnergy` <- `maxEnergy`
      }
      if (!is.null(`corrected`)) {
        if (!(is.logical(`corrected`) && length(`corrected`) == 1)) {
          stop(paste("Error! Invalid data for `corrected`. Must be a boolean:", `corrected`))
        }
        self$`corrected` <- `corrected`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return CollisionEnergy in JSON format
    #' @export
    toJSON = function() {
      CollisionEnergyObject <- list()
      if (!is.null(self$`minEnergy`)) {
        CollisionEnergyObject[["minEnergy"]] <-
          self$`minEnergy`
      }
      if (!is.null(self$`maxEnergy`)) {
        CollisionEnergyObject[["maxEnergy"]] <-
          self$`maxEnergy`
      }
      if (!is.null(self$`corrected`)) {
        CollisionEnergyObject[["corrected"]] <-
          self$`corrected`
      }
      CollisionEnergyObject
    },
    #' Deserialize JSON string into an instance of CollisionEnergy
    #'
    #' @description
    #' Deserialize JSON string into an instance of CollisionEnergy
    #'
    #' @param input_json the JSON input
    #' @return the instance of CollisionEnergy
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`minEnergy`)) {
        self$`minEnergy` <- this_object$`minEnergy`
      }
      if (!is.null(this_object$`maxEnergy`)) {
        self$`maxEnergy` <- this_object$`maxEnergy`
      }
      if (!is.null(this_object$`corrected`)) {
        self$`corrected` <- this_object$`corrected`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return CollisionEnergy in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`minEnergy`)) {
          sprintf(
          '"minEnergy":
            %d
                    ',
          self$`minEnergy`
          )
        },
        if (!is.null(self$`maxEnergy`)) {
          sprintf(
          '"maxEnergy":
            %d
                    ',
          self$`maxEnergy`
          )
        },
        if (!is.null(self$`corrected`)) {
          sprintf(
          '"corrected":
            %s
                    ',
          tolower(self$`corrected`)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of CollisionEnergy
    #'
    #' @description
    #' Deserialize JSON string into an instance of CollisionEnergy
    #'
    #' @param input_json the JSON input
    #' @return the instance of CollisionEnergy
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`minEnergy` <- this_object$`minEnergy`
      self$`maxEnergy` <- this_object$`maxEnergy`
      self$`corrected` <- this_object$`corrected`
      self
    },
    #' Validate JSON input with respect to CollisionEnergy
    #'
    #' @description
    #' Validate JSON input with respect to CollisionEnergy and throw an exception if invalid
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
    #' @return String representation of CollisionEnergy
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
# CollisionEnergy$unlock()
#
## Below is an example to define the print function
# CollisionEnergy$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CollisionEnergy$lock()

