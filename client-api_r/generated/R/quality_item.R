#' Create a new QualityItem
#'
#' @description
#' QualityItem Class
#'
#' @docType class
#' @title QualityItem
#' @description QualityItem Class
#' @format An \code{R6Class} generator object
#' @field description  character [optional]
#' @field quality  character [optional]
#' @field weight  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
QualityItem <- R6::R6Class(
  "QualityItem",
  public = list(
    `description` = NULL,
    `quality` = NULL,
    `weight` = NULL,

    #' @description
    #' Initialize a new QualityItem class.
    #'
    #' @param description description
    #' @param quality quality
    #' @param weight weight
    #' @param ... Other optional arguments.
    initialize = function(`description` = NULL, `quality` = NULL, `weight` = NULL, ...) {
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`quality`)) {
        if (!(`quality` %in% c("NOT_APPLICABLE", "LOWEST", "BAD", "DECENT", "GOOD"))) {
          stop(paste("Error! \"", `quality`, "\" cannot be assigned to `quality`. Must be \"NOT_APPLICABLE\", \"LOWEST\", \"BAD\", \"DECENT\", \"GOOD\".", sep = ""))
        }
        if (!(is.character(`quality`) && length(`quality`) == 1)) {
          stop(paste("Error! Invalid data for `quality`. Must be a string:", `quality`))
        }
        self$`quality` <- `quality`
      }
      if (!is.null(`weight`)) {
        if (!(`weight` %in% c("MINOR", "MAJOR", "CRITICAL"))) {
          stop(paste("Error! \"", `weight`, "\" cannot be assigned to `weight`. Must be \"MINOR\", \"MAJOR\", \"CRITICAL\".", sep = ""))
        }
        if (!(is.character(`weight`) && length(`weight`) == 1)) {
          stop(paste("Error! Invalid data for `weight`. Must be a string:", `weight`))
        }
        self$`weight` <- `weight`
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
    #' @return QualityItem as a base R list.
    #' @examples
    #' # convert array of QualityItem (x) to a data frame
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
    #' Convert QualityItem to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      QualityItemObject <- list()
      if (!is.null(self$`description`)) {
        QualityItemObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`quality`)) {
        QualityItemObject[["quality"]] <-
          self$`quality`
      }
      if (!is.null(self$`weight`)) {
        QualityItemObject[["weight"]] <-
          self$`weight`
      }
      return(QualityItemObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of QualityItem
    #'
    #' @param input_json the JSON input
    #' @return the instance of QualityItem
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`quality`)) {
        if (!is.null(this_object$`quality`) && !(this_object$`quality` %in% c("NOT_APPLICABLE", "LOWEST", "BAD", "DECENT", "GOOD"))) {
          stop(paste("Error! \"", this_object$`quality`, "\" cannot be assigned to `quality`. Must be \"NOT_APPLICABLE\", \"LOWEST\", \"BAD\", \"DECENT\", \"GOOD\".", sep = ""))
        }
        self$`quality` <- this_object$`quality`
      }
      if (!is.null(this_object$`weight`)) {
        if (!is.null(this_object$`weight`) && !(this_object$`weight` %in% c("MINOR", "MAJOR", "CRITICAL"))) {
          stop(paste("Error! \"", this_object$`weight`, "\" cannot be assigned to `weight`. Must be \"MINOR\", \"MAJOR\", \"CRITICAL\".", sep = ""))
        }
        self$`weight` <- this_object$`weight`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return QualityItem in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of QualityItem
    #'
    #' @param input_json the JSON input
    #' @return the instance of QualityItem
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`description` <- this_object$`description`
      if (!is.null(this_object$`quality`) && !(this_object$`quality` %in% c("NOT_APPLICABLE", "LOWEST", "BAD", "DECENT", "GOOD"))) {
        stop(paste("Error! \"", this_object$`quality`, "\" cannot be assigned to `quality`. Must be \"NOT_APPLICABLE\", \"LOWEST\", \"BAD\", \"DECENT\", \"GOOD\".", sep = ""))
      }
      self$`quality` <- this_object$`quality`
      if (!is.null(this_object$`weight`) && !(this_object$`weight` %in% c("MINOR", "MAJOR", "CRITICAL"))) {
        stop(paste("Error! \"", this_object$`weight`, "\" cannot be assigned to `weight`. Must be \"MINOR\", \"MAJOR\", \"CRITICAL\".", sep = ""))
      }
      self$`weight` <- this_object$`weight`
      self
    },

    #' @description
    #' Validate JSON input with respect to QualityItem and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of QualityItem
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
# QualityItem$unlock()
#
## Below is an example to define the print function
# QualityItem$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# QualityItem$lock()

