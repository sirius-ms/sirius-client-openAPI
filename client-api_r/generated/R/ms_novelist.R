#' Create a new MsNovelist
#'
#' @description
#' MsNovelist Class
#'
#' @docType class
#' @title MsNovelist
#' @description MsNovelist Class
#' @format An \code{R6Class} generator object
#' @field enabled tags whether the tool is enabled character [optional]
#' @field numberOfCandidateToPredict Number of structure candidates to be predicted by MsNovelist.  Max Value 128. Values > 128 will be set to 128.  Actual number of returned candidate might be lower du to duplicates being created by MsNovelist. integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MsNovelist <- R6::R6Class(
  "MsNovelist",
  public = list(
    `enabled` = NULL,
    `numberOfCandidateToPredict` = NULL,

    #' @description
    #' Initialize a new MsNovelist class.
    #'
    #' @param enabled tags whether the tool is enabled
    #' @param numberOfCandidateToPredict Number of structure candidates to be predicted by MsNovelist.  Max Value 128. Values > 128 will be set to 128.  Actual number of returned candidate might be lower du to duplicates being created by MsNovelist.
    #' @param ... Other optional arguments.
    initialize = function(`enabled` = NULL, `numberOfCandidateToPredict` = NULL, ...) {
      if (!is.null(`enabled`)) {
        if (!(is.logical(`enabled`) && length(`enabled`) == 1)) {
          stop(paste("Error! Invalid data for `enabled`. Must be a boolean:", `enabled`))
        }
        self$`enabled` <- `enabled`
      }
      if (!is.null(`numberOfCandidateToPredict`)) {
        if (!(is.numeric(`numberOfCandidateToPredict`) && length(`numberOfCandidateToPredict`) == 1)) {
          stop(paste("Error! Invalid data for `numberOfCandidateToPredict`. Must be an integer:", `numberOfCandidateToPredict`))
        }
        self$`numberOfCandidateToPredict` <- `numberOfCandidateToPredict`
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
    #' @return MsNovelist as a base R list.
    #' @examples
    #' # convert array of MsNovelist (x) to a data frame
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
    #' Convert MsNovelist to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      MsNovelistObject <- list()
      if (!is.null(self$`enabled`)) {
        MsNovelistObject[["enabled"]] <-
          self$`enabled`
      }
      if (!is.null(self$`numberOfCandidateToPredict`)) {
        MsNovelistObject[["numberOfCandidateToPredict"]] <-
          self$`numberOfCandidateToPredict`
      }
      return(MsNovelistObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of MsNovelist
    #'
    #' @param input_json the JSON input
    #' @return the instance of MsNovelist
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`enabled`)) {
        self$`enabled` <- this_object$`enabled`
      }
      if (!is.null(this_object$`numberOfCandidateToPredict`)) {
        self$`numberOfCandidateToPredict` <- this_object$`numberOfCandidateToPredict`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return MsNovelist in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of MsNovelist
    #'
    #' @param input_json the JSON input
    #' @return the instance of MsNovelist
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`enabled` <- this_object$`enabled`
      self$`numberOfCandidateToPredict` <- this_object$`numberOfCandidateToPredict`
      self
    },

    #' @description
    #' Validate JSON input with respect to MsNovelist and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of MsNovelist
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
# MsNovelist$unlock()
#
## Below is an example to define the print function
# MsNovelist$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# MsNovelist$lock()

