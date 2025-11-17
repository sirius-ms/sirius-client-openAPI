#' Create a new FoldChangeJobSubmission
#'
#' @description
#' FoldChangeJobSubmission Class
#'
#' @docType class
#' @title FoldChangeJobSubmission
#' @description FoldChangeJobSubmission Class
#' @format An \code{R6Class} generator object
#' @field leftRunGroup  character [optional]
#' @field rightRunGroup  character [optional]
#' @field aggregationTypes  list(character) [optional]
#' @field quantificationMeasures  list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FoldChangeJobSubmission <- R6::R6Class(
  "FoldChangeJobSubmission",
  public = list(
    `leftRunGroup` = NULL,
    `rightRunGroup` = NULL,
    `aggregationTypes` = NULL,
    `quantificationMeasures` = NULL,

    #' @description
    #' Initialize a new FoldChangeJobSubmission class.
    #'
    #' @param leftRunGroup leftRunGroup
    #' @param rightRunGroup rightRunGroup
    #' @param aggregationTypes aggregationTypes
    #' @param quantificationMeasures quantificationMeasures
    #' @param ... Other optional arguments.
    initialize = function(`leftRunGroup` = NULL, `rightRunGroup` = NULL, `aggregationTypes` = NULL, `quantificationMeasures` = NULL, ...) {
      if (!is.null(`leftRunGroup`)) {
        if (!(is.character(`leftRunGroup`) && length(`leftRunGroup`) == 1)) {
          stop(paste("Error! Invalid data for `leftRunGroup`. Must be a string:", `leftRunGroup`))
        }
        self$`leftRunGroup` <- `leftRunGroup`
      }
      if (!is.null(`rightRunGroup`)) {
        if (!(is.character(`rightRunGroup`) && length(`rightRunGroup`) == 1)) {
          stop(paste("Error! Invalid data for `rightRunGroup`. Must be a string:", `rightRunGroup`))
        }
        self$`rightRunGroup` <- `rightRunGroup`
      }
      if (!is.null(`aggregationTypes`)) {
        stopifnot(is.vector(`aggregationTypes`), length(`aggregationTypes`) != 0)
        sapply(`aggregationTypes`, function(x) stopifnot(is.character(x)))
        self$`aggregationTypes` <- `aggregationTypes`
      }
      if (!is.null(`quantificationMeasures`)) {
        stopifnot(is.vector(`quantificationMeasures`), length(`quantificationMeasures`) != 0)
        sapply(`quantificationMeasures`, function(x) stopifnot(is.character(x)))
        self$`quantificationMeasures` <- `quantificationMeasures`
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
    #' @return FoldChangeJobSubmission as a base R list.
    #' @examples
    #' # convert array of FoldChangeJobSubmission (x) to a data frame
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
    #' Convert FoldChangeJobSubmission to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      FoldChangeJobSubmissionObject <- list()
      if (!is.null(self$`leftRunGroup`)) {
        FoldChangeJobSubmissionObject[["leftRunGroup"]] <-
          self$`leftRunGroup`
      }
      if (!is.null(self$`rightRunGroup`)) {
        FoldChangeJobSubmissionObject[["rightRunGroup"]] <-
          self$`rightRunGroup`
      }
      if (!is.null(self$`aggregationTypes`)) {
        FoldChangeJobSubmissionObject[["aggregationTypes"]] <-
          self$`aggregationTypes`
      }
      if (!is.null(self$`quantificationMeasures`)) {
        FoldChangeJobSubmissionObject[["quantificationMeasures"]] <-
          self$`quantificationMeasures`
      }
      return(FoldChangeJobSubmissionObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of FoldChangeJobSubmission
    #'
    #' @param input_json the JSON input
    #' @return the instance of FoldChangeJobSubmission
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`leftRunGroup`)) {
        self$`leftRunGroup` <- this_object$`leftRunGroup`
      }
      if (!is.null(this_object$`rightRunGroup`)) {
        self$`rightRunGroup` <- this_object$`rightRunGroup`
      }
      if (!is.null(this_object$`aggregationTypes`)) {
        self$`aggregationTypes` <- ApiClient$new()$deserializeObj(this_object$`aggregationTypes`, "array[character]", loadNamespace("RSirius"))
      }
      if (!is.null(this_object$`quantificationMeasures`)) {
        self$`quantificationMeasures` <- ApiClient$new()$deserializeObj(this_object$`quantificationMeasures`, "array[character]", loadNamespace("RSirius"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return FoldChangeJobSubmission in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of FoldChangeJobSubmission
    #'
    #' @param input_json the JSON input
    #' @return the instance of FoldChangeJobSubmission
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`leftRunGroup` <- this_object$`leftRunGroup`
      self$`rightRunGroup` <- this_object$`rightRunGroup`
      self$`aggregationTypes` <- ApiClient$new()$deserializeObj(this_object$`aggregationTypes`, "array[character]", loadNamespace("RSirius"))
      self$`quantificationMeasures` <- ApiClient$new()$deserializeObj(this_object$`quantificationMeasures`, "array[character]", loadNamespace("RSirius"))
      self
    },

    #' @description
    #' Validate JSON input with respect to FoldChangeJobSubmission and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of FoldChangeJobSubmission
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
# FoldChangeJobSubmission$unlock()
#
## Below is an example to define the print function
# FoldChangeJobSubmission$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# FoldChangeJobSubmission$lock()

