#' Create a new IsotopePatternAnnotation
#'
#' @description
#' IsotopePatternAnnotation Class
#'
#' @docType class
#' @title IsotopePatternAnnotation
#' @description IsotopePatternAnnotation Class
#' @format An \code{R6Class} generator object
#' @field isotopePattern  \link{BasicSpectrum} [optional]
#' @field simulatedPattern  \link{BasicSpectrum} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
IsotopePatternAnnotation <- R6::R6Class(
  "IsotopePatternAnnotation",
  public = list(
    `isotopePattern` = NULL,
    `simulatedPattern` = NULL,
    #' Initialize a new IsotopePatternAnnotation class.
    #'
    #' @description
    #' Initialize a new IsotopePatternAnnotation class.
    #'
    #' @param isotopePattern isotopePattern
    #' @param simulatedPattern simulatedPattern
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`isotopePattern` = NULL, `simulatedPattern` = NULL, ...) {
      if (!is.null(`isotopePattern`)) {
        stopifnot(R6::is.R6(`isotopePattern`))
        self$`isotopePattern` <- `isotopePattern`
      }
      if (!is.null(`simulatedPattern`)) {
        stopifnot(R6::is.R6(`simulatedPattern`))
        self$`simulatedPattern` <- `simulatedPattern`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return IsotopePatternAnnotation in JSON format
    #' @export
    toJSON = function() {
      IsotopePatternAnnotationObject <- list()
      if (!is.null(self$`isotopePattern`)) {
        IsotopePatternAnnotationObject[["isotopePattern"]] <-
          if !is.numeric(self$`isotopePattern`$toJSON()) && (length(names(self$`isotopePattern`$toJSON())) == 0L && is.character(jsonlite::fromJSON(self$`isotopePattern`$toJSON()))) {
            jsonlite::fromJSON(self$`isotopePattern`$toJSON())
          } else {
            self$`isotopePattern`$toJSON()
          }
      }
      if (!is.null(self$`simulatedPattern`)) {
        IsotopePatternAnnotationObject[["simulatedPattern"]] <-
          if !is.numeric(self$`simulatedPattern`$toJSON()) && (length(names(self$`simulatedPattern`$toJSON())) == 0L && is.character(jsonlite::fromJSON(self$`simulatedPattern`$toJSON()))) {
            jsonlite::fromJSON(self$`simulatedPattern`$toJSON())
          } else {
            self$`simulatedPattern`$toJSON()
          }
      }
      IsotopePatternAnnotationObject
    },
    #' Deserialize JSON string into an instance of IsotopePatternAnnotation
    #'
    #' @description
    #' Deserialize JSON string into an instance of IsotopePatternAnnotation
    #'
    #' @param input_json the JSON input
    #' @return the instance of IsotopePatternAnnotation
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`isotopePattern`)) {
        `isotopepattern_object` <- BasicSpectrum$new()
        `isotopepattern_object`$fromJSON(jsonlite::toJSON(this_object$`isotopePattern`, auto_unbox = TRUE, digits = NA))
        self$`isotopePattern` <- `isotopepattern_object`
      }
      if (!is.null(this_object$`simulatedPattern`)) {
        `simulatedpattern_object` <- BasicSpectrum$new()
        `simulatedpattern_object`$fromJSON(jsonlite::toJSON(this_object$`simulatedPattern`, auto_unbox = TRUE, digits = NA))
        self$`simulatedPattern` <- `simulatedpattern_object`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return IsotopePatternAnnotation in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`isotopePattern`)) {
          sprintf(
          '"isotopePattern":
          %s
          ',
          jsonlite::toJSON(self$`isotopePattern`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`simulatedPattern`)) {
          sprintf(
          '"simulatedPattern":
          %s
          ',
          jsonlite::toJSON(self$`simulatedPattern`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of IsotopePatternAnnotation
    #'
    #' @description
    #' Deserialize JSON string into an instance of IsotopePatternAnnotation
    #'
    #' @param input_json the JSON input
    #' @return the instance of IsotopePatternAnnotation
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`isotopePattern` <- BasicSpectrum$new()$fromJSON(jsonlite::toJSON(this_object$`isotopePattern`, auto_unbox = TRUE, digits = NA))
      self$`simulatedPattern` <- BasicSpectrum$new()$fromJSON(jsonlite::toJSON(this_object$`simulatedPattern`, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to IsotopePatternAnnotation
    #'
    #' @description
    #' Validate JSON input with respect to IsotopePatternAnnotation and throw an exception if invalid
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
    #' @return String representation of IsotopePatternAnnotation
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
# IsotopePatternAnnotation$unlock()
#
## Below is an example to define the print function
# IsotopePatternAnnotation$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# IsotopePatternAnnotation$lock()

