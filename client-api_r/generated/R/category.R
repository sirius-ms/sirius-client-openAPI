#' Create a new Category
#'
#' @description
#' Category Class
#'
#' @docType class
#' @title Category
#' @description Category Class
#' @format An \code{R6Class} generator object
#' @field categoryName  character [optional]
#' @field overallQuality  character [optional]
#' @field items  list(\link{QualityItem}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Category <- R6::R6Class(
  "Category",
  public = list(
    `categoryName` = NULL,
    `overallQuality` = NULL,
    `items` = NULL,

    #' @description
    #' Initialize a new Category class.
    #'
    #' @param categoryName categoryName
    #' @param overallQuality overallQuality
    #' @param items items
    #' @param ... Other optional arguments.
    initialize = function(`categoryName` = NULL, `overallQuality` = NULL, `items` = NULL, ...) {
      if (!is.null(`categoryName`)) {
        if (!(is.character(`categoryName`) && length(`categoryName`) == 1)) {
          stop(paste("Error! Invalid data for `categoryName`. Must be a string:", `categoryName`))
        }
        self$`categoryName` <- `categoryName`
      }
      if (!is.null(`overallQuality`)) {
        if (!(`overallQuality` %in% c("NOT_APPLICABLE", "LOWEST", "BAD", "DECENT", "GOOD"))) {
          stop(paste("Error! \"", `overallQuality`, "\" cannot be assigned to `overallQuality`. Must be \"NOT_APPLICABLE\", \"LOWEST\", \"BAD\", \"DECENT\", \"GOOD\".", sep = ""))
        }
        if (!(is.character(`overallQuality`) && length(`overallQuality`) == 1)) {
          stop(paste("Error! Invalid data for `overallQuality`. Must be a string:", `overallQuality`))
        }
        self$`overallQuality` <- `overallQuality`
      }
      if (!is.null(`items`)) {
        stopifnot(is.vector(`items`), length(`items`) != 0)
        sapply(`items`, function(x) stopifnot(R6::is.R6(x)))
        self$`items` <- `items`
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
    #' @return Category as a base R list.
    #' @examples
    #' # convert array of Category (x) to a data frame
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
    #' Convert Category to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CategoryObject <- list()
      if (!is.null(self$`categoryName`)) {
        CategoryObject[["categoryName"]] <-
          self$`categoryName`
      }
      if (!is.null(self$`overallQuality`)) {
        CategoryObject[["overallQuality"]] <-
          self$`overallQuality`
      }
      if (!is.null(self$`items`)) {
        CategoryObject[["items"]] <-
          lapply(self$`items`, function(x) x$toSimpleType())
      }
      return(CategoryObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of Category
    #'
    #' @param input_json the JSON input
    #' @return the instance of Category
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`categoryName`)) {
        self$`categoryName` <- this_object$`categoryName`
      }
      if (!is.null(this_object$`overallQuality`)) {
        if (!is.null(this_object$`overallQuality`) && !(this_object$`overallQuality` %in% c("NOT_APPLICABLE", "LOWEST", "BAD", "DECENT", "GOOD"))) {
          stop(paste("Error! \"", this_object$`overallQuality`, "\" cannot be assigned to `overallQuality`. Must be \"NOT_APPLICABLE\", \"LOWEST\", \"BAD\", \"DECENT\", \"GOOD\".", sep = ""))
        }
        self$`overallQuality` <- this_object$`overallQuality`
      }
      if (!is.null(this_object$`items`)) {
        self$`items` <- ApiClient$new()$deserializeObj(this_object$`items`, "array[QualityItem]", loadNamespace("Rsirius"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Category in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Category
    #'
    #' @param input_json the JSON input
    #' @return the instance of Category
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`categoryName` <- this_object$`categoryName`
      if (!is.null(this_object$`overallQuality`) && !(this_object$`overallQuality` %in% c("NOT_APPLICABLE", "LOWEST", "BAD", "DECENT", "GOOD"))) {
        stop(paste("Error! \"", this_object$`overallQuality`, "\" cannot be assigned to `overallQuality`. Must be \"NOT_APPLICABLE\", \"LOWEST\", \"BAD\", \"DECENT\", \"GOOD\".", sep = ""))
      }
      self$`overallQuality` <- this_object$`overallQuality`
      self$`items` <- ApiClient$new()$deserializeObj(this_object$`items`, "array[QualityItem]", loadNamespace("Rsirius"))
      self
    },

    #' @description
    #' Validate JSON input with respect to Category and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Category
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
# Category$unlock()
#
## Below is an example to define the print function
# Category$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Category$lock()

