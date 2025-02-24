#' Create a new AnnotatedMsMsData
#'
#' @description
#' AnnotatedMsMsData Class
#'
#' @docType class
#' @title AnnotatedMsMsData
#' @description AnnotatedMsMsData Class
#' @format An \code{R6Class} generator object
#' @field mergedMs2  \link{AnnotatedSpectrum}
#' @field ms2Spectra  list(\link{AnnotatedSpectrum})
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AnnotatedMsMsData <- R6::R6Class(
  "AnnotatedMsMsData",
  public = list(
    `mergedMs2` = NULL,
    `ms2Spectra` = NULL,

    #' @description
    #' Initialize a new AnnotatedMsMsData class.
    #'
    #' @param mergedMs2 mergedMs2
    #' @param ms2Spectra ms2Spectra
    #' @param ... Other optional arguments.
    initialize = function(`mergedMs2`, `ms2Spectra`, ...) {
      if (!missing(`mergedMs2`)) {
        stopifnot(R6::is.R6(`mergedMs2`))
        self$`mergedMs2` <- `mergedMs2`
      }
      if (!missing(`ms2Spectra`)) {
        stopifnot(is.vector(`ms2Spectra`), length(`ms2Spectra`) != 0)
        sapply(`ms2Spectra`, function(x) stopifnot(R6::is.R6(x)))
        self$`ms2Spectra` <- `ms2Spectra`
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
    #' @return AnnotatedMsMsData as a base R list.
    #' @examples
    #' # convert array of AnnotatedMsMsData (x) to a data frame
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
    #' Convert AnnotatedMsMsData to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AnnotatedMsMsDataObject <- list()
      if (!is.null(self$`mergedMs2`)) {
        AnnotatedMsMsDataObject[["mergedMs2"]] <-
          self$`mergedMs2`$toSimpleType()
      }
      if (!is.null(self$`ms2Spectra`)) {
        AnnotatedMsMsDataObject[["ms2Spectra"]] <-
          lapply(self$`ms2Spectra`, function(x) x$toSimpleType())
      }
      return(AnnotatedMsMsDataObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AnnotatedMsMsData
    #'
    #' @param input_json the JSON input
    #' @return the instance of AnnotatedMsMsData
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`mergedMs2`)) {
        `mergedms2_object` <- AnnotatedSpectrum$new()
        `mergedms2_object`$fromJSON(jsonlite::toJSON(this_object$`mergedMs2`, auto_unbox = TRUE, digits = NA, null = 'null'))
        self$`mergedMs2` <- `mergedms2_object`
      }
      if (!is.null(this_object$`ms2Spectra`)) {
        self$`ms2Spectra` <- ApiClient$new()$deserializeObj(this_object$`ms2Spectra`, "array[AnnotatedSpectrum]", loadNamespace("Rsirius"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AnnotatedMsMsData in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AnnotatedMsMsData
    #'
    #' @param input_json the JSON input
    #' @return the instance of AnnotatedMsMsData
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`mergedMs2` <- AnnotatedSpectrum$new()$fromJSON(jsonlite::toJSON(this_object$`mergedMs2`, auto_unbox = TRUE, digits = NA, null = 'null'))
      self$`ms2Spectra` <- ApiClient$new()$deserializeObj(this_object$`ms2Spectra`, "array[AnnotatedSpectrum]", loadNamespace("Rsirius"))
      self
    },

    #' @description
    #' Validate JSON input with respect to AnnotatedMsMsData and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `mergedMs2`
      if (!is.null(input_json$`mergedMs2`)) {
        stopifnot(R6::is.R6(input_json$`mergedMs2`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AnnotatedMsMsData: the required field `mergedMs2` is missing."))
      }
      # check the required field `ms2Spectra`
      if (!is.null(input_json$`ms2Spectra`)) {
        stopifnot(is.vector(input_json$`ms2Spectra`), length(input_json$`ms2Spectra`) != 0)
        tmp <- sapply(input_json$`ms2Spectra`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AnnotatedMsMsData: the required field `ms2Spectra` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AnnotatedMsMsData
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `ms2Spectra` is null
      if (is.null(self$`ms2Spectra`)) {
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
      # check if the required `ms2Spectra` is null
      if (is.null(self$`ms2Spectra`)) {
        invalid_fields["ms2Spectra"] <- "Non-nullable required field `ms2Spectra` cannot be null."
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
# AnnotatedMsMsData$unlock()
#
## Below is an example to define the print function
# AnnotatedMsMsData$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AnnotatedMsMsData$lock()

