#' Create a new ImportResult
#'
#' @description
#' ImportResult Class
#'
#' @docType class
#' @title ImportResult
#' @description ImportResult Class
#' @format An \code{R6Class} generator object
#' @field affectedCompoundIds List of compoundIds that have been imported. list(character)
#' @field affectedAlignedFeatureIds List of alignedFeatureIds that have been imported.. list(character)
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ImportResult <- R6::R6Class(
  "ImportResult",
  public = list(
    `affectedCompoundIds` = NULL,
    `affectedAlignedFeatureIds` = NULL,

    #' @description
    #' Initialize a new ImportResult class.
    #'
    #' @param affectedCompoundIds List of compoundIds that have been imported.
    #' @param affectedAlignedFeatureIds List of alignedFeatureIds that have been imported..
    #' @param ... Other optional arguments.
    initialize = function(`affectedCompoundIds`, `affectedAlignedFeatureIds`, ...) {
      if (!missing(`affectedCompoundIds`)) {
        stopifnot(is.vector(`affectedCompoundIds`), length(`affectedCompoundIds`) != 0)
        sapply(`affectedCompoundIds`, function(x) stopifnot(is.character(x)))
        self$`affectedCompoundIds` <- `affectedCompoundIds`
      }
      if (!missing(`affectedAlignedFeatureIds`)) {
        stopifnot(is.vector(`affectedAlignedFeatureIds`), length(`affectedAlignedFeatureIds`) != 0)
        sapply(`affectedAlignedFeatureIds`, function(x) stopifnot(is.character(x)))
        self$`affectedAlignedFeatureIds` <- `affectedAlignedFeatureIds`
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
    #' @return ImportResult as a base R list.
    #' @examples
    #' # convert array of ImportResult (x) to a data frame
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
    #' Convert ImportResult to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ImportResultObject <- list()
      if (!is.null(self$`affectedCompoundIds`)) {
        ImportResultObject[["affectedCompoundIds"]] <-
          self$`affectedCompoundIds`
      }
      if (!is.null(self$`affectedAlignedFeatureIds`)) {
        ImportResultObject[["affectedAlignedFeatureIds"]] <-
          self$`affectedAlignedFeatureIds`
      }
      return(ImportResultObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ImportResult
    #'
    #' @param input_json the JSON input
    #' @return the instance of ImportResult
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`affectedCompoundIds`)) {
        self$`affectedCompoundIds` <- ApiClient$new()$deserializeObj(this_object$`affectedCompoundIds`, "array[character]", loadNamespace("RSirius"))
      }
      if (!is.null(this_object$`affectedAlignedFeatureIds`)) {
        self$`affectedAlignedFeatureIds` <- ApiClient$new()$deserializeObj(this_object$`affectedAlignedFeatureIds`, "array[character]", loadNamespace("RSirius"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ImportResult in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ImportResult
    #'
    #' @param input_json the JSON input
    #' @return the instance of ImportResult
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`affectedCompoundIds` <- ApiClient$new()$deserializeObj(this_object$`affectedCompoundIds`, "array[character]", loadNamespace("RSirius"))
      self$`affectedAlignedFeatureIds` <- ApiClient$new()$deserializeObj(this_object$`affectedAlignedFeatureIds`, "array[character]", loadNamespace("RSirius"))
      self
    },

    #' @description
    #' Validate JSON input with respect to ImportResult and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `affectedCompoundIds`
      if (!is.null(input_json$`affectedCompoundIds`)) {
        stopifnot(is.vector(input_json$`affectedCompoundIds`), length(input_json$`affectedCompoundIds`) != 0)
        tmp <- sapply(input_json$`affectedCompoundIds`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ImportResult: the required field `affectedCompoundIds` is missing."))
      }
      # check the required field `affectedAlignedFeatureIds`
      if (!is.null(input_json$`affectedAlignedFeatureIds`)) {
        stopifnot(is.vector(input_json$`affectedAlignedFeatureIds`), length(input_json$`affectedAlignedFeatureIds`) != 0)
        tmp <- sapply(input_json$`affectedAlignedFeatureIds`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ImportResult: the required field `affectedAlignedFeatureIds` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ImportResult
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `affectedCompoundIds` is null
      if (is.null(self$`affectedCompoundIds`)) {
        return(FALSE)
      }

      # check if the required `affectedAlignedFeatureIds` is null
      if (is.null(self$`affectedAlignedFeatureIds`)) {
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
      # check if the required `affectedCompoundIds` is null
      if (is.null(self$`affectedCompoundIds`)) {
        invalid_fields["affectedCompoundIds"] <- "Non-nullable required field `affectedCompoundIds` cannot be null."
      }

      # check if the required `affectedAlignedFeatureIds` is null
      if (is.null(self$`affectedAlignedFeatureIds`)) {
        invalid_fields["affectedAlignedFeatureIds"] <- "Non-nullable required field `affectedAlignedFeatureIds` cannot be null."
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
# ImportResult$unlock()
#
## Below is an example to define the print function
# ImportResult$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ImportResult$lock()

