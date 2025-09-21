#' Create a new PeakPair
#'
#' @description
#' PeakPair Class
#'
#' @docType class
#' @title PeakPair
#' @description PeakPair Class
#' @format An \code{R6Class} generator object
#' @field queryPeak  integer
#' @field referencePeak  integer
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PeakPair <- R6::R6Class(
  "PeakPair",
  public = list(
    `queryPeak` = NULL,
    `referencePeak` = NULL,

    #' @description
    #' Initialize a new PeakPair class.
    #'
    #' @param queryPeak queryPeak
    #' @param referencePeak referencePeak
    #' @param ... Other optional arguments.
    initialize = function(`queryPeak`, `referencePeak`, ...) {
      if (!missing(`queryPeak`)) {
        if (!(is.numeric(`queryPeak`) && length(`queryPeak`) == 1)) {
          stop(paste("Error! Invalid data for `queryPeak`. Must be an integer:", `queryPeak`))
        }
        self$`queryPeak` <- `queryPeak`
      }
      if (!missing(`referencePeak`)) {
        if (!(is.numeric(`referencePeak`) && length(`referencePeak`) == 1)) {
          stop(paste("Error! Invalid data for `referencePeak`. Must be an integer:", `referencePeak`))
        }
        self$`referencePeak` <- `referencePeak`
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
    #' @return PeakPair as a base R list.
    #' @examples
    #' # convert array of PeakPair (x) to a data frame
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
    #' Convert PeakPair to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PeakPairObject <- list()
      if (!is.null(self$`queryPeak`)) {
        PeakPairObject[["queryPeak"]] <-
          self$`queryPeak`
      }
      if (!is.null(self$`referencePeak`)) {
        PeakPairObject[["referencePeak"]] <-
          self$`referencePeak`
      }
      return(PeakPairObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of PeakPair
    #'
    #' @param input_json the JSON input
    #' @return the instance of PeakPair
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`queryPeak`)) {
        self$`queryPeak` <- this_object$`queryPeak`
      }
      if (!is.null(this_object$`referencePeak`)) {
        self$`referencePeak` <- this_object$`referencePeak`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PeakPair in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PeakPair
    #'
    #' @param input_json the JSON input
    #' @return the instance of PeakPair
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`queryPeak` <- this_object$`queryPeak`
      self$`referencePeak` <- this_object$`referencePeak`
      self
    },

    #' @description
    #' Validate JSON input with respect to PeakPair and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `queryPeak`
      if (!is.null(input_json$`queryPeak`)) {
        if (!(is.numeric(input_json$`queryPeak`) && length(input_json$`queryPeak`) == 1)) {
          stop(paste("Error! Invalid data for `queryPeak`. Must be an integer:", input_json$`queryPeak`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PeakPair: the required field `queryPeak` is missing."))
      }
      # check the required field `referencePeak`
      if (!is.null(input_json$`referencePeak`)) {
        if (!(is.numeric(input_json$`referencePeak`) && length(input_json$`referencePeak`) == 1)) {
          stop(paste("Error! Invalid data for `referencePeak`. Must be an integer:", input_json$`referencePeak`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PeakPair: the required field `referencePeak` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PeakPair
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `queryPeak` is null
      if (is.null(self$`queryPeak`)) {
        return(FALSE)
      }

      # check if the required `referencePeak` is null
      if (is.null(self$`referencePeak`)) {
        return(FALSE)
      }

      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
      # check if the required `queryPeak` is null
      if (is.null(self$`queryPeak`)) {
        invalid_fields["queryPeak"] <- "Non-nullable required field `queryPeak` cannot be null."
      }

      # check if the required `referencePeak` is null
      if (is.null(self$`referencePeak`)) {
        invalid_fields["referencePeak"] <- "Non-nullable required field `referencePeak` cannot be null."
      }

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
# PeakPair$unlock()
#
## Below is an example to define the print function
# PeakPair$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PeakPair$lock()

