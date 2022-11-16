#' Create a new AnnotatedSpectrum
#'
#' @description
#' 
#'
#' @docType class
#' @title AnnotatedSpectrum
#' @description AnnotatedSpectrum Class
#' @format An \code{R6Class} generator object
#' @field msLevel MS level of the measured spectrum.  Artificial spectra with no msLevel (e.g. Simulated Isotope patterns) use 0 integer [optional]
#' @field collisionEnergy  \link{CollisionEnergy} [optional]
#' @field peaks  list(\link{AnnotatedPeak}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AnnotatedSpectrum <- R6::R6Class(
  "AnnotatedSpectrum",
  public = list(
    `msLevel` = NULL,
    `collisionEnergy` = NULL,
    `peaks` = NULL,
    #' Initialize a new AnnotatedSpectrum class.
    #'
    #' @description
    #' Initialize a new AnnotatedSpectrum class.
    #'
    #' @param msLevel MS level of the measured spectrum.  Artificial spectra with no msLevel (e.g. Simulated Isotope patterns) use 0
    #' @param collisionEnergy collisionEnergy
    #' @param peaks peaks
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`msLevel` = NULL, `collisionEnergy` = NULL, `peaks` = NULL, ...) {
      if (!is.null(`msLevel`)) {
        if (!(is.numeric(`msLevel`) && length(`msLevel`) == 1)) {
          stop(paste("Error! Invalid data for `msLevel`. Must be an integer:", `msLevel`))
        }
        self$`msLevel` <- `msLevel`
      }
      if (!is.null(`collisionEnergy`)) {
        stopifnot(R6::is.R6(`collisionEnergy`))
        self$`collisionEnergy` <- `collisionEnergy`
      }
      if (!is.null(`peaks`)) {
        stopifnot(is.vector(`peaks`), length(`peaks`) != 0)
        sapply(`peaks`, function(x) stopifnot(R6::is.R6(x)))
        self$`peaks` <- `peaks`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return AnnotatedSpectrum in JSON format
    #' @export
    toJSON = function() {
      AnnotatedSpectrumObject <- list()
      if (!is.null(self$`msLevel`)) {
        AnnotatedSpectrumObject[["msLevel"]] <-
          self$`msLevel`
      }
      if (!is.null(self$`collisionEnergy`)) {
        AnnotatedSpectrumObject[["collisionEnergy"]] <-
          self$`collisionEnergy`$toJSON()
      }
      if (!is.null(self$`peaks`)) {
        AnnotatedSpectrumObject[["peaks"]] <-
          lapply(self$`peaks`, function(x) x$toJSON())
      }
      AnnotatedSpectrumObject
    },
    #' Deserialize JSON string into an instance of AnnotatedSpectrum
    #'
    #' @description
    #' Deserialize JSON string into an instance of AnnotatedSpectrum
    #'
    #' @param input_json the JSON input
    #' @return the instance of AnnotatedSpectrum
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`msLevel`)) {
        self$`msLevel` <- this_object$`msLevel`
      }
      if (!is.null(this_object$`collisionEnergy`)) {
        collisionenergy_object <- CollisionEnergy$new()
        collisionenergy_object$fromJSON(jsonlite::toJSON(this_object$collisionEnergy, auto_unbox = TRUE, digits = NA))
        self$`collisionEnergy` <- collisionenergy_object
      }
      if (!is.null(this_object$`peaks`)) {
        self$`peaks` <- ApiClient$new()$deserializeObj(this_object$`peaks`, "array[AnnotatedPeak]", loadNamespace("Rsirius"))
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return AnnotatedSpectrum in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`msLevel`)) {
          sprintf(
          '"msLevel":
            %d
                    ',
          self$`msLevel`
          )
        },
        if (!is.null(self$`collisionEnergy`)) {
          sprintf(
          '"collisionEnergy":
          %s
          ',
          jsonlite::toJSON(self$`collisionEnergy`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`peaks`)) {
          sprintf(
          '"peaks":
          [%s]
',
          paste(sapply(self$`peaks`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of AnnotatedSpectrum
    #'
    #' @description
    #' Deserialize JSON string into an instance of AnnotatedSpectrum
    #'
    #' @param input_json the JSON input
    #' @return the instance of AnnotatedSpectrum
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`msLevel` <- this_object$`msLevel`
      self$`collisionEnergy` <- CollisionEnergy$new()$fromJSON(jsonlite::toJSON(this_object$collisionEnergy, auto_unbox = TRUE, digits = NA))
      self$`peaks` <- ApiClient$new()$deserializeObj(this_object$`peaks`, "array[AnnotatedPeak]", loadNamespace("Rsirius"))
      self
    },
    #' Validate JSON input with respect to AnnotatedSpectrum
    #'
    #' @description
    #' Validate JSON input with respect to AnnotatedSpectrum and throw an exception if invalid
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
    #' @return String representation of AnnotatedSpectrum
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
# AnnotatedSpectrum$unlock()
#
## Below is an example to define the print fnuction
# AnnotatedSpectrum$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AnnotatedSpectrum$lock()

