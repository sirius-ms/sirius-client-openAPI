#' Create a new CanopusPrediction
#'
#' @description
#' Container class that holds the CANOPUS compound class predictions for alle predictable compound classes.  This is the full CANOPUS result.
#'
#' @docType class
#' @title CanopusPrediction
#' @description CanopusPrediction Class
#' @format An \code{R6Class} generator object
#' @field classyFireClasses All predicted ClassyFire classes list(\link{CompoundClass}) [optional]
#' @field npcClasses All predicted NPC classes list(\link{CompoundClass}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CanopusPrediction <- R6::R6Class(
  "CanopusPrediction",
  public = list(
    `classyFireClasses` = NULL,
    `npcClasses` = NULL,

    #' @description
    #' Initialize a new CanopusPrediction class.
    #'
    #' @param classyFireClasses All predicted ClassyFire classes
    #' @param npcClasses All predicted NPC classes
    #' @param ... Other optional arguments.
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
    #' @return CanopusPrediction as a base R list.
    #' @examples
    #' # convert array of CanopusPrediction (x) to a data frame
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
    #' Convert CanopusPrediction to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CanopusPredictionObject <- list()
      if (!is.null(self$`classyFireClasses`)) {
        CanopusPredictionObject[["classyFireClasses"]] <-
          lapply(self$`classyFireClasses`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`npcClasses`)) {
        CanopusPredictionObject[["npcClasses"]] <-
          lapply(self$`npcClasses`, function(x) x$toSimpleType())
      }
      return(CanopusPredictionObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CanopusPrediction
    #'
    #' @param input_json the JSON input
    #' @return the instance of CanopusPrediction
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

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CanopusPrediction in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CanopusPrediction
    #'
    #' @param input_json the JSON input
    #' @return the instance of CanopusPrediction
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`classyFireClasses` <- ApiClient$new()$deserializeObj(this_object$`classyFireClasses`, "array[CompoundClass]", loadNamespace("Rsirius"))
      self$`npcClasses` <- ApiClient$new()$deserializeObj(this_object$`npcClasses`, "array[CompoundClass]", loadNamespace("Rsirius"))
      self
    },

    #' @description
    #' Validate JSON input with respect to CanopusPrediction and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CanopusPrediction
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
# CanopusPrediction$unlock()
#
## Below is an example to define the print function
# CanopusPrediction$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CanopusPrediction$lock()

