#' Create a new CanopusPredictions
#'
#' @description
#' Container class that holds the CANOPUS compound class predictions for alle predictable compound classes.  This is the full CANOPUS result.
#'
#' @docType class
#' @title CanopusPredictions
#' @description CanopusPredictions Class
#' @format An \code{R6Class} generator object
#' @field classyFireClasses All predicted ClassyFire classes list(\link{CompoundClass}) [optional]
#' @field npcClasses All predicted NPC classes list(\link{CompoundClass}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CanopusPredictions <- R6::R6Class(
  "CanopusPredictions",
  public = list(
    `classyFireClasses` = NULL,
    `npcClasses` = NULL,
    #' Initialize a new CanopusPredictions class.
    #'
    #' @description
    #' Initialize a new CanopusPredictions class.
    #'
    #' @param classyFireClasses All predicted ClassyFire classes
    #' @param npcClasses All predicted NPC classes
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`classyFireClasses` = NULL, `npcClasses` = NULL, ...) {
      if (!is.null(`classyFireClasses`)) {
        stopifnot(is.vector(`classyFireClasses`), length(`classyFireClasses`) != 0)
        sapply(`classyFireClasses`, function(x) stopifnot(R6::is.R6(x)))
        self$`classyFireClasses` <- `classyFireClasses`
      }
      if (!is.null(`npcClasses`)) {
        stopifnot(is.vector(`npcClasses`), length(`npcClasses`) != 0)
        sapply(`npcClasses`, function(x) stopifnot(R6::is.R6(x)))
        self$`npcClasses` <- `npcClasses`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return CanopusPredictions in JSON format
    #' @export
    toJSON = function() {
      CanopusPredictionsObject <- list()
      if (!is.null(self$`classyFireClasses`)) {
        CanopusPredictionsObject[["classyFireClasses"]] <-
          lapply(self$`classyFireClasses`, function(x) x$toJSON())
      }
      if (!is.null(self$`npcClasses`)) {
        CanopusPredictionsObject[["npcClasses"]] <-
          lapply(self$`npcClasses`, function(x) x$toJSON())
      }
      CanopusPredictionsObject
    },
    #' Deserialize JSON string into an instance of CanopusPredictions
    #'
    #' @description
    #' Deserialize JSON string into an instance of CanopusPredictions
    #'
    #' @param input_json the JSON input
    #' @return the instance of CanopusPredictions
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`classyFireClasses`)) {
        self$`classyFireClasses` <- ApiClient$new()$deserializeObj(this_object$`classyFireClasses`, "array[CompoundClass]", loadNamespace("Rsirius"))
      }
      if (!is.null(this_object$`npcClasses`)) {
        self$`npcClasses` <- ApiClient$new()$deserializeObj(this_object$`npcClasses`, "array[CompoundClass]", loadNamespace("Rsirius"))
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return CanopusPredictions in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`classyFireClasses`)) {
          sprintf(
          '"classyFireClasses":
          [%s]
',
          paste(sapply(self$`classyFireClasses`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        },
        if (!is.null(self$`npcClasses`)) {
          sprintf(
          '"npcClasses":
          [%s]
',
          paste(sapply(self$`npcClasses`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of CanopusPredictions
    #'
    #' @description
    #' Deserialize JSON string into an instance of CanopusPredictions
    #'
    #' @param input_json the JSON input
    #' @return the instance of CanopusPredictions
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`classyFireClasses` <- ApiClient$new()$deserializeObj(this_object$`classyFireClasses`, "array[CompoundClass]", loadNamespace("Rsirius"))
      self$`npcClasses` <- ApiClient$new()$deserializeObj(this_object$`npcClasses`, "array[CompoundClass]", loadNamespace("Rsirius"))
      self
    },
    #' Validate JSON input with respect to CanopusPredictions
    #'
    #' @description
    #' Validate JSON input with respect to CanopusPredictions and throw an exception if invalid
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
    #' @return String representation of CanopusPredictions
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
# CanopusPredictions$unlock()
#
## Below is an example to define the print function
# CanopusPredictions$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CanopusPredictions$lock()

