#' Create a new AnnotatedPeak
#'
#' @description
#' 
#'
#' @docType class
#' @title AnnotatedPeak
#' @description AnnotatedPeak Class
#' @format An \code{R6Class} generator object
#' @field mass  numeric [optional]
#' @field intensity  numeric [optional]
#' @field peakAnnotation  object [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AnnotatedPeak <- R6::R6Class(
  "AnnotatedPeak",
  public = list(
    `mass` = NULL,
    `intensity` = NULL,
    `peakAnnotation` = NULL,
    #' Initialize a new AnnotatedPeak class.
    #'
    #' @description
    #' Initialize a new AnnotatedPeak class.
    #'
    #' @param mass mass
    #' @param intensity intensity
    #' @param peakAnnotation peakAnnotation
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`mass` = NULL, `intensity` = NULL, `peakAnnotation` = NULL, ...) {
      if (!is.null(`mass`)) {
        if (!(is.numeric(`mass`) && length(`mass`) == 1)) {
          stop(paste("Error! Invalid data for `mass`. Must be a number:", `mass`))
        }
        self$`mass` <- `mass`
      }
      if (!is.null(`intensity`)) {
        if (!(is.numeric(`intensity`) && length(`intensity`) == 1)) {
          stop(paste("Error! Invalid data for `intensity`. Must be a number:", `intensity`))
        }
        self$`intensity` <- `intensity`
      }
      if (!is.null(`peakAnnotation`)) {
        self$`peakAnnotation` <- `peakAnnotation`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return AnnotatedPeak in JSON format
    #' @export
    toJSON = function() {
      AnnotatedPeakObject <- list()
      if (!is.null(self$`mass`)) {
        AnnotatedPeakObject[["mass"]] <-
          self$`mass`
      }
      if (!is.null(self$`intensity`)) {
        AnnotatedPeakObject[["intensity"]] <-
          self$`intensity`
      }
      if (!is.null(self$`peakAnnotation`)) {
        AnnotatedPeakObject[["peakAnnotation"]] <-
          self$`peakAnnotation`
      }
      AnnotatedPeakObject
    },
    #' Deserialize JSON string into an instance of AnnotatedPeak
    #'
    #' @description
    #' Deserialize JSON string into an instance of AnnotatedPeak
    #'
    #' @param input_json the JSON input
    #' @return the instance of AnnotatedPeak
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`mass`)) {
        self$`mass` <- this_object$`mass`
      }
      if (!is.null(this_object$`intensity`)) {
        self$`intensity` <- this_object$`intensity`
      }
      if (!is.null(this_object$`peakAnnotation`)) {
        self$`peakAnnotation` <- this_object$`peakAnnotation`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return AnnotatedPeak in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`mass`)) {
          sprintf(
          '"mass":
            %f
                    ',
          self$`mass`
          )
        },
        if (!is.null(self$`intensity`)) {
          sprintf(
          '"intensity":
            %f
                    ',
          self$`intensity`
          )
        },
        if (!is.null(self$`peakAnnotation`)) {
          sprintf(
          '"peakAnnotation":
            "%s"
                    ',
          self$`peakAnnotation`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of AnnotatedPeak
    #'
    #' @description
    #' Deserialize JSON string into an instance of AnnotatedPeak
    #'
    #' @param input_json the JSON input
    #' @return the instance of AnnotatedPeak
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`mass` <- this_object$`mass`
      self$`intensity` <- this_object$`intensity`
      self$`peakAnnotation` <- this_object$`peakAnnotation`
      self
    },
    #' Validate JSON input with respect to AnnotatedPeak
    #'
    #' @description
    #' Validate JSON input with respect to AnnotatedPeak and throw an exception if invalid
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
    #' @return String representation of AnnotatedPeak
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
# AnnotatedPeak$unlock()
#
## Below is an example to define the print function
# AnnotatedPeak$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AnnotatedPeak$lock()

