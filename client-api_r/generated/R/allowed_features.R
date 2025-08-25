#' Create a new AllowedFeatures
#'
#' @description
#' AllowedFeatures Class
#'
#' @docType class
#' @title AllowedFeatures
#' @description AllowedFeatures Class
#' @format An \code{R6Class} generator object
#' @field cli  character [optional]
#' @field api  character [optional]
#' @field deNovo  character [optional]
#' @field importMSRuns  character [optional]
#' @field importPeakLists  character [optional]
#' @field importCef  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AllowedFeatures <- R6::R6Class(
  "AllowedFeatures",
  public = list(
    `cli` = NULL,
    `api` = NULL,
    `deNovo` = NULL,
    `importMSRuns` = NULL,
    `importPeakLists` = NULL,
    `importCef` = NULL,

    #' @description
    #' Initialize a new AllowedFeatures class.
    #'
    #' @param cli cli
    #' @param api api
    #' @param deNovo deNovo
    #' @param importMSRuns importMSRuns
    #' @param importPeakLists importPeakLists
    #' @param importCef importCef
    #' @param ... Other optional arguments.
    initialize = function(`cli` = NULL, `api` = NULL, `deNovo` = NULL, `importMSRuns` = NULL, `importPeakLists` = NULL, `importCef` = NULL, ...) {
      if (!is.null(`cli`)) {
        if (!(is.logical(`cli`) && length(`cli`) == 1)) {
          stop(paste("Error! Invalid data for `cli`. Must be a boolean:", `cli`))
        }
        self$`cli` <- `cli`
      }
      if (!is.null(`api`)) {
        if (!(is.logical(`api`) && length(`api`) == 1)) {
          stop(paste("Error! Invalid data for `api`. Must be a boolean:", `api`))
        }
        self$`api` <- `api`
      }
      if (!is.null(`deNovo`)) {
        if (!(is.logical(`deNovo`) && length(`deNovo`) == 1)) {
          stop(paste("Error! Invalid data for `deNovo`. Must be a boolean:", `deNovo`))
        }
        self$`deNovo` <- `deNovo`
      }
      if (!is.null(`importMSRuns`)) {
        if (!(is.logical(`importMSRuns`) && length(`importMSRuns`) == 1)) {
          stop(paste("Error! Invalid data for `importMSRuns`. Must be a boolean:", `importMSRuns`))
        }
        self$`importMSRuns` <- `importMSRuns`
      }
      if (!is.null(`importPeakLists`)) {
        if (!(is.logical(`importPeakLists`) && length(`importPeakLists`) == 1)) {
          stop(paste("Error! Invalid data for `importPeakLists`. Must be a boolean:", `importPeakLists`))
        }
        self$`importPeakLists` <- `importPeakLists`
      }
      if (!is.null(`importCef`)) {
        if (!(is.logical(`importCef`) && length(`importCef`) == 1)) {
          stop(paste("Error! Invalid data for `importCef`. Must be a boolean:", `importCef`))
        }
        self$`importCef` <- `importCef`
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
    #' @return AllowedFeatures as a base R list.
    #' @examples
    #' # convert array of AllowedFeatures (x) to a data frame
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
    #' Convert AllowedFeatures to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AllowedFeaturesObject <- list()
      if (!is.null(self$`cli`)) {
        AllowedFeaturesObject[["cli"]] <-
          self$`cli`
      }
      if (!is.null(self$`api`)) {
        AllowedFeaturesObject[["api"]] <-
          self$`api`
      }
      if (!is.null(self$`deNovo`)) {
        AllowedFeaturesObject[["deNovo"]] <-
          self$`deNovo`
      }
      if (!is.null(self$`importMSRuns`)) {
        AllowedFeaturesObject[["importMSRuns"]] <-
          self$`importMSRuns`
      }
      if (!is.null(self$`importPeakLists`)) {
        AllowedFeaturesObject[["importPeakLists"]] <-
          self$`importPeakLists`
      }
      if (!is.null(self$`importCef`)) {
        AllowedFeaturesObject[["importCef"]] <-
          self$`importCef`
      }
      return(AllowedFeaturesObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AllowedFeatures
    #'
    #' @param input_json the JSON input
    #' @return the instance of AllowedFeatures
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`cli`)) {
        self$`cli` <- this_object$`cli`
      }
      if (!is.null(this_object$`api`)) {
        self$`api` <- this_object$`api`
      }
      if (!is.null(this_object$`deNovo`)) {
        self$`deNovo` <- this_object$`deNovo`
      }
      if (!is.null(this_object$`importMSRuns`)) {
        self$`importMSRuns` <- this_object$`importMSRuns`
      }
      if (!is.null(this_object$`importPeakLists`)) {
        self$`importPeakLists` <- this_object$`importPeakLists`
      }
      if (!is.null(this_object$`importCef`)) {
        self$`importCef` <- this_object$`importCef`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AllowedFeatures in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AllowedFeatures
    #'
    #' @param input_json the JSON input
    #' @return the instance of AllowedFeatures
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`cli` <- this_object$`cli`
      self$`api` <- this_object$`api`
      self$`deNovo` <- this_object$`deNovo`
      self$`importMSRuns` <- this_object$`importMSRuns`
      self$`importPeakLists` <- this_object$`importPeakLists`
      self$`importCef` <- this_object$`importCef`
      self
    },

    #' @description
    #' Validate JSON input with respect to AllowedFeatures and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AllowedFeatures
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
# AllowedFeatures$unlock()
#
## Below is an example to define the print function
# AllowedFeatures$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AllowedFeatures$lock()

