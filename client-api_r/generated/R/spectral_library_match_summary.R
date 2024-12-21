#' Create a new SpectralLibraryMatchSummary
#'
#' @description
#' SpectralLibraryMatchSummary Class
#'
#' @docType class
#' @title SpectralLibraryMatchSummary
#' @description SpectralLibraryMatchSummary Class
#' @format An \code{R6Class} generator object
#' @field bestMatch  \link{SpectralLibraryMatch} [optional]
#' @field spectralMatchCount  integer
#' @field referenceSpectraCount  integer
#' @field databaseCompoundCount  integer
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SpectralLibraryMatchSummary <- R6::R6Class(
  "SpectralLibraryMatchSummary",
  public = list(
    `bestMatch` = NULL,
    `spectralMatchCount` = NULL,
    `referenceSpectraCount` = NULL,
    `databaseCompoundCount` = NULL,

    #' @description
    #' Initialize a new SpectralLibraryMatchSummary class.
    #'
    #' @param spectralMatchCount spectralMatchCount
    #' @param referenceSpectraCount referenceSpectraCount
    #' @param databaseCompoundCount databaseCompoundCount
    #' @param bestMatch bestMatch
    #' @param ... Other optional arguments.
    initialize = function(`spectralMatchCount`, `referenceSpectraCount`, `databaseCompoundCount`, `bestMatch` = NULL, ...) {
      if (!missing(`spectralMatchCount`)) {
        if (!(is.numeric(`spectralMatchCount`) && length(`spectralMatchCount`) == 1)) {
          stop(paste("Error! Invalid data for `spectralMatchCount`. Must be an integer:", `spectralMatchCount`))
        }
        self$`spectralMatchCount` <- `spectralMatchCount`
      }
      if (!missing(`referenceSpectraCount`)) {
        if (!(is.numeric(`referenceSpectraCount`) && length(`referenceSpectraCount`) == 1)) {
          stop(paste("Error! Invalid data for `referenceSpectraCount`. Must be an integer:", `referenceSpectraCount`))
        }
        self$`referenceSpectraCount` <- `referenceSpectraCount`
      }
      if (!missing(`databaseCompoundCount`)) {
        if (!(is.numeric(`databaseCompoundCount`) && length(`databaseCompoundCount`) == 1)) {
          stop(paste("Error! Invalid data for `databaseCompoundCount`. Must be an integer:", `databaseCompoundCount`))
        }
        self$`databaseCompoundCount` <- `databaseCompoundCount`
      }
      if (!is.null(`bestMatch`)) {
        stopifnot(R6::is.R6(`bestMatch`))
        self$`bestMatch` <- `bestMatch`
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
    #' @return SpectralLibraryMatchSummary as a base R list.
    #' @examples
    #' # convert array of SpectralLibraryMatchSummary (x) to a data frame
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
    #' Convert SpectralLibraryMatchSummary to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SpectralLibraryMatchSummaryObject <- list()
      if (!is.null(self$`bestMatch`)) {
        SpectralLibraryMatchSummaryObject[["bestMatch"]] <-
          self$`bestMatch`$toSimpleType()
      }
      if (!is.null(self$`spectralMatchCount`)) {
        SpectralLibraryMatchSummaryObject[["spectralMatchCount"]] <-
          self$`spectralMatchCount`
      }
      if (!is.null(self$`referenceSpectraCount`)) {
        SpectralLibraryMatchSummaryObject[["referenceSpectraCount"]] <-
          self$`referenceSpectraCount`
      }
      if (!is.null(self$`databaseCompoundCount`)) {
        SpectralLibraryMatchSummaryObject[["databaseCompoundCount"]] <-
          self$`databaseCompoundCount`
      }
      return(SpectralLibraryMatchSummaryObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of SpectralLibraryMatchSummary
    #'
    #' @param input_json the JSON input
    #' @return the instance of SpectralLibraryMatchSummary
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`bestMatch`)) {
        `bestmatch_object` <- SpectralLibraryMatch$new()
        `bestmatch_object`$fromJSON(jsonlite::toJSON(this_object$`bestMatch`, auto_unbox = TRUE, digits = NA, null = 'null'))
        self$`bestMatch` <- `bestmatch_object`
      }
      if (!is.null(this_object$`spectralMatchCount`)) {
        self$`spectralMatchCount` <- this_object$`spectralMatchCount`
      }
      if (!is.null(this_object$`referenceSpectraCount`)) {
        self$`referenceSpectraCount` <- this_object$`referenceSpectraCount`
      }
      if (!is.null(this_object$`databaseCompoundCount`)) {
        self$`databaseCompoundCount` <- this_object$`databaseCompoundCount`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SpectralLibraryMatchSummary in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SpectralLibraryMatchSummary
    #'
    #' @param input_json the JSON input
    #' @return the instance of SpectralLibraryMatchSummary
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`bestMatch` <- SpectralLibraryMatch$new()$fromJSON(jsonlite::toJSON(this_object$`bestMatch`, auto_unbox = TRUE, digits = NA, null = 'null'))
      self$`spectralMatchCount` <- this_object$`spectralMatchCount`
      self$`referenceSpectraCount` <- this_object$`referenceSpectraCount`
      self$`databaseCompoundCount` <- this_object$`databaseCompoundCount`
      self
    },

    #' @description
    #' Validate JSON input with respect to SpectralLibraryMatchSummary and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `spectralMatchCount`
      if (!is.null(input_json$`spectralMatchCount`)) {
        if (!(is.numeric(input_json$`spectralMatchCount`) && length(input_json$`spectralMatchCount`) == 1)) {
          stop(paste("Error! Invalid data for `spectralMatchCount`. Must be an integer:", input_json$`spectralMatchCount`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SpectralLibraryMatchSummary: the required field `spectralMatchCount` is missing."))
      }
      # check the required field `referenceSpectraCount`
      if (!is.null(input_json$`referenceSpectraCount`)) {
        if (!(is.numeric(input_json$`referenceSpectraCount`) && length(input_json$`referenceSpectraCount`) == 1)) {
          stop(paste("Error! Invalid data for `referenceSpectraCount`. Must be an integer:", input_json$`referenceSpectraCount`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SpectralLibraryMatchSummary: the required field `referenceSpectraCount` is missing."))
      }
      # check the required field `databaseCompoundCount`
      if (!is.null(input_json$`databaseCompoundCount`)) {
        if (!(is.numeric(input_json$`databaseCompoundCount`) && length(input_json$`databaseCompoundCount`) == 1)) {
          stop(paste("Error! Invalid data for `databaseCompoundCount`. Must be an integer:", input_json$`databaseCompoundCount`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SpectralLibraryMatchSummary: the required field `databaseCompoundCount` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SpectralLibraryMatchSummary
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `spectralMatchCount` is null
      if (is.null(self$`spectralMatchCount`)) {
        return(FALSE)
      }

      # check if the required `referenceSpectraCount` is null
      if (is.null(self$`referenceSpectraCount`)) {
        return(FALSE)
      }

      # check if the required `databaseCompoundCount` is null
      if (is.null(self$`databaseCompoundCount`)) {
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
      # check if the required `spectralMatchCount` is null
      if (is.null(self$`spectralMatchCount`)) {
        invalid_fields["spectralMatchCount"] <- "Non-nullable required field `spectralMatchCount` cannot be null."
      }

      # check if the required `referenceSpectraCount` is null
      if (is.null(self$`referenceSpectraCount`)) {
        invalid_fields["referenceSpectraCount"] <- "Non-nullable required field `referenceSpectraCount` cannot be null."
      }

      # check if the required `databaseCompoundCount` is null
      if (is.null(self$`databaseCompoundCount`)) {
        invalid_fields["databaseCompoundCount"] <- "Non-nullable required field `databaseCompoundCount` cannot be null."
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
# SpectralLibraryMatchSummary$unlock()
#
## Below is an example to define the print function
# SpectralLibraryMatchSummary$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SpectralLibraryMatchSummary$lock()

