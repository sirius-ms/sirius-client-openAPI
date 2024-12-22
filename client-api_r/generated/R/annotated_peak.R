#' Create a new AnnotatedPeak
#'
#' @description
#' AnnotatedPeak Class
#'
#' @docType class
#' @title AnnotatedPeak
#' @description AnnotatedPeak Class
#' @format An \code{R6Class} generator object
#' @field mz  numeric [optional]
#' @field intensity  numeric [optional]
#' @field peakAnnotation  \link{PeakAnnotation} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AnnotatedPeak <- R6::R6Class(
  "AnnotatedPeak",
  public = list(
    `mz` = NULL,
    `intensity` = NULL,
    `peakAnnotation` = NULL,

    #' @description
    #' Initialize a new AnnotatedPeak class.
    #'
    #' @param mz mz
    #' @param intensity intensity
    #' @param peakAnnotation peakAnnotation
    #' @param ... Other optional arguments.
    initialize = function(`mz` = NULL, `intensity` = NULL, `peakAnnotation` = NULL, ...) {
      if (!is.null(`mz`)) {
        if (!(is.numeric(`mz`) && length(`mz`) == 1)) {
          stop(paste("Error! Invalid data for `mz`. Must be a number:", `mz`))
        }
        self$`mz` <- `mz`
      }
      if (!is.null(`intensity`)) {
        if (!(is.numeric(`intensity`) && length(`intensity`) == 1)) {
          stop(paste("Error! Invalid data for `intensity`. Must be a number:", `intensity`))
        }
        self$`intensity` <- `intensity`
      }
      if (!is.null(`peakAnnotation`)) {
        stopifnot(R6::is.R6(`peakAnnotation`))
        self$`peakAnnotation` <- `peakAnnotation`
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
    #' @return AnnotatedPeak as a base R list.
    #' @examples
    #' # convert array of AnnotatedPeak (x) to a data frame
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
    #' Convert AnnotatedPeak to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AnnotatedPeakObject <- list()
      if (!is.null(self$`mz`)) {
        AnnotatedPeakObject[["mz"]] <-
          self$`mz`
      }
      if (!is.null(self$`intensity`)) {
        AnnotatedPeakObject[["intensity"]] <-
          self$`intensity`
      }
      if (!is.null(self$`peakAnnotation`)) {
        AnnotatedPeakObject[["peakAnnotation"]] <-
          self$`peakAnnotation`$toSimpleType()
      }
      return(AnnotatedPeakObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AnnotatedPeak
    #'
    #' @param input_json the JSON input
    #' @return the instance of AnnotatedPeak
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`mz`)) {
        self$`mz` <- this_object$`mz`
      }
      if (!is.null(this_object$`intensity`)) {
        self$`intensity` <- this_object$`intensity`
      }
      if (!is.null(this_object$`peakAnnotation`)) {
        `peakannotation_object` <- PeakAnnotation$new()
        `peakannotation_object`$fromJSON(jsonlite::toJSON(this_object$`peakAnnotation`, auto_unbox = TRUE, digits = NA, null = 'null'))
        self$`peakAnnotation` <- `peakannotation_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AnnotatedPeak in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AnnotatedPeak
    #'
    #' @param input_json the JSON input
    #' @return the instance of AnnotatedPeak
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`mz` <- this_object$`mz`
      self$`intensity` <- this_object$`intensity`
      self$`peakAnnotation` <- PeakAnnotation$new()$fromJSON(jsonlite::toJSON(this_object$`peakAnnotation`, auto_unbox = TRUE, digits = NA, null = 'null'))
      self
    },

    #' @description
    #' Validate JSON input with respect to AnnotatedPeak and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AnnotatedPeak
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
# AnnotatedPeak$unlock()
#
## Below is an example to define the print function
# AnnotatedPeak$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AnnotatedPeak$lock()

