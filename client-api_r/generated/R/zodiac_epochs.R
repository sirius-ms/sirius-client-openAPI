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
    #' Initialize a new ZodiacEpochs class.
    #'
    #' @description
    #' Initialize a new ZodiacEpochs class.
    #'
    #' @param iterations iterations
    #' @param burnInPeriod burnInPeriod
    #' @param numberOfMarkovChains numberOfMarkovChains
    #' @param ... Other optional arguments.
    #' @export
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
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ZodiacEpochs in JSON format
    #' @export
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
    #' Deserialize JSON string into an instance of ZodiacEpochs
    #'
    #' @description
    #' Deserialize JSON string into an instance of ZodiacEpochs
    #'
    #' @param input_json the JSON input
    #' @return the instance of ZodiacEpochs
    #' @export
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
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ZodiacEpochs in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`iterations`)) {
          sprintf(
          '"iterations":
            %f
                    ',
          self$`iterations`
          )
        },
        if (!is.null(self$`burnInPeriod`)) {
          sprintf(
          '"burnInPeriod":
            %f
                    ',
          self$`burnInPeriod`
          )
        },
        if (!is.null(self$`numberOfMarkovChains`)) {
          sprintf(
          '"numberOfMarkovChains":
            %f
                    ',
          self$`numberOfMarkovChains`
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
    #' Deserialize JSON string into an instance of ZodiacEpochs
    #'
    #' @description
    #' Deserialize JSON string into an instance of ZodiacEpochs
    #'
    #' @param input_json the JSON input
    #' @return the instance of ZodiacEpochs
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`iterations` <- this_object$`iterations`
      self$`burnInPeriod` <- this_object$`burnInPeriod`
      self$`numberOfMarkovChains` <- this_object$`numberOfMarkovChains`
      self
    },
    #' Validate JSON input with respect to ZodiacEpochs
    #'
    #' @description
    #' Validate JSON input with respect to ZodiacEpochs and throw an exception if invalid
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
    #' @return String representation of ZodiacEpochs
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
# ZodiacEpochs$unlock()
#
## Below is an example to define the print function
# ZodiacEpochs$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ZodiacEpochs$lock()

