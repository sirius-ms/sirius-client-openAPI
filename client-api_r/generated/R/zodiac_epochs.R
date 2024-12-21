#' Create a new ZodiacEpochs
#'
#' @description
#' ZodiacEpochs Class
#'
#' @docType class
#' @title ZodiacEpochs
#' @description ZodiacEpochs Class
#' @format An \code{R6Class} generator object
#' @field iterations  integer [optional]
#' @field burnInPeriod  integer [optional]
#' @field numberOfMarkovChains  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ZodiacEpochs <- R6::R6Class(
  "ZodiacEpochs",
  public = list(
    `iterations` = NULL,
    `burnInPeriod` = NULL,
    `numberOfMarkovChains` = NULL,

    #' @description
    #' Initialize a new ZodiacEpochs class.
    #'
    #' @param iterations iterations
    #' @param burnInPeriod burnInPeriod
    #' @param numberOfMarkovChains numberOfMarkovChains
    #' @param ... Other optional arguments.
    initialize = function(`iterations` = NULL, `burnInPeriod` = NULL, `numberOfMarkovChains` = NULL, ...) {
      if (!is.null(`iterations`)) {
        if (!(is.numeric(`iterations`) && length(`iterations`) == 1)) {
          stop(paste("Error! Invalid data for `iterations`. Must be an integer:", `iterations`))
        }
        self$`iterations` <- `iterations`
      }
      if (!is.null(`burnInPeriod`)) {
        if (!(is.numeric(`burnInPeriod`) && length(`burnInPeriod`) == 1)) {
          stop(paste("Error! Invalid data for `burnInPeriod`. Must be an integer:", `burnInPeriod`))
        }
        self$`burnInPeriod` <- `burnInPeriod`
      }
      if (!is.null(`numberOfMarkovChains`)) {
        if (!(is.numeric(`numberOfMarkovChains`) && length(`numberOfMarkovChains`) == 1)) {
          stop(paste("Error! Invalid data for `numberOfMarkovChains`. Must be an integer:", `numberOfMarkovChains`))
        }
        self$`numberOfMarkovChains` <- `numberOfMarkovChains`
      }
    },

    #' @description
    #' To JSON String
    #'
    #' @return ZodiacEpochs in JSON format
    toJSON = function() {
      ZodiacEpochsObject <- list()
      if (!is.null(self$`iterations`)) {
        ZodiacEpochsObject[["iterations"]] <-
          self$`iterations`
      }
      if (!is.null(self$`burnInPeriod`)) {
        ZodiacEpochsObject[["burnInPeriod"]] <-
          self$`burnInPeriod`
      }
      if (!is.null(self$`numberOfMarkovChains`)) {
        ZodiacEpochsObject[["numberOfMarkovChains"]] <-
          self$`numberOfMarkovChains`
      }
      ZodiacEpochsObject
    },

    #' @description
    #' Deserialize JSON string into an instance of ZodiacEpochs
    #'
    #' @param input_json the JSON input
    #' @return the instance of ZodiacEpochs
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`iterations`)) {
        self$`iterations` <- this_object$`iterations`
      }
      if (!is.null(this_object$`burnInPeriod`)) {
        self$`burnInPeriod` <- this_object$`burnInPeriod`
      }
      if (!is.null(this_object$`numberOfMarkovChains`)) {
        self$`numberOfMarkovChains` <- this_object$`numberOfMarkovChains`
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return ZodiacEpochs in JSON format
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`iterations`)) {
          sprintf(
          '"iterations":
            %d
                    ',
          self$`iterations`
          )
        },
        if (!is.null(self$`burnInPeriod`)) {
          sprintf(
          '"burnInPeriod":
            %d
                    ',
          self$`burnInPeriod`
          )
        },
        if (!is.null(self$`numberOfMarkovChains`)) {
          sprintf(
          '"numberOfMarkovChains":
            %d
                    ',
          self$`numberOfMarkovChains`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },

    #' @description
    #' Deserialize JSON string into an instance of ZodiacEpochs
    #'
    #' @param input_json the JSON input
    #' @return the instance of ZodiacEpochs
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`iterations` <- this_object$`iterations`
      self$`burnInPeriod` <- this_object$`burnInPeriod`
      self$`numberOfMarkovChains` <- this_object$`numberOfMarkovChains`
      self
    },

    #' @description
    #' Validate JSON input with respect to ZodiacEpochs and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ZodiacEpochs
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
# ZodiacEpochs$unlock()
#
## Below is an example to define the print function
# ZodiacEpochs$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ZodiacEpochs$lock()

