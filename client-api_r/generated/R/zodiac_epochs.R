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
    #' Convert to an R object. This method is deprecated. Use `toSimpleType()` instead.
    toJSON = function() {
      .Deprecated(new = "toSimpleType", msg = "Use the '$toSimpleType()' method instead since that is more clearly named. Use '$toJSONString()' to get a JSON string")
      return(self$toSimpleType())
    },

    #' @description
    #' Convert to a List
    #'
    #' Convert the R6 object to a list to work more easily with other tooling.
    #'
    #' @return ZodiacEpochs as a base R list.
    #' @examples
    #' # convert array of ZodiacEpochs (x) to a data frame
    #' \dontrun{
    #' library(purrr)
    #' library(tibble)
    #' df <- x |> map(\(y)y$toList()) |> map(as_tibble) |> list_rbind()
    #' df
    #' }
    toList = function() {
      return(self$toSimpleType())
    },

    #' @description
    #' Convert ZodiacEpochs to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
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
      return(ZodiacEpochsObject)
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
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ZodiacEpochs in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
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

