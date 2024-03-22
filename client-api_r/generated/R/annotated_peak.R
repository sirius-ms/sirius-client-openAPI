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
    #' Initialize a new AnnotatedPeak class.
    #'
    #' @description
    #' Initialize a new AnnotatedPeak class.
    #'
    #' @param mz mz
    #' @param intensity intensity
    #' @param peakAnnotation peakAnnotation
    #' @param ... Other optional arguments.
    #' @export
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
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return AnnotatedPeak in JSON format
    #' @export
    toJSON = function() {
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
          if (length(names(self$`peakAnnotation`$toJSON())) == 0L && is.character(jsonlite::fromJSON(self$`peakAnnotation`$toJSON()))) {
            jsonlite::fromJSON(self$`peakAnnotation`$toJSON())
          } else {
            self$`peakAnnotation`$toJSON()
          }
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
      if (!is.null(this_object$`mz`)) {
        self$`mz` <- this_object$`mz`
      }
      if (!is.null(this_object$`intensity`)) {
        self$`intensity` <- this_object$`intensity`
      }
      if (!is.null(this_object$`peakAnnotation`)) {
        `peakannotation_object` <- PeakAnnotation$new()
        `peakannotation_object`$fromJSON(jsonlite::toJSON(this_object$`peakAnnotation`, auto_unbox = TRUE, digits = NA))
        self$`peakAnnotation` <- `peakannotation_object`
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
        if (!is.null(self$`mz`)) {
          sprintf(
          '"mz":
            %d
                    ',
          self$`mz`
          )
        },
        if (!is.null(self$`intensity`)) {
          sprintf(
          '"intensity":
            %d
                    ',
          self$`intensity`
          )
        },
        if (!is.null(self$`peakAnnotation`)) {
          sprintf(
          '"peakAnnotation":
          %s
          ',
          jsonlite::toJSON(self$`peakAnnotation`$toJSON(), auto_unbox = TRUE, digits = NA)
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
      self$`mz` <- this_object$`mz`
      self$`intensity` <- this_object$`intensity`
      self$`peakAnnotation` <- PeakAnnotation$new()$fromJSON(jsonlite::toJSON(this_object$`peakAnnotation`, auto_unbox = TRUE, digits = NA))
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

