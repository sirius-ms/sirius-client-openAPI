#' Create a new CompoundImport
#'
#' @description
#' CompoundImport Class
#'
#' @docType class
#' @title CompoundImport
#' @description CompoundImport Class
#' @format An \code{R6Class} generator object
#' @field name Some (optional) human-readable name character [optional]
#' @field features The features this compound consists of. list(\link{FeatureImport})
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CompoundImport <- R6::R6Class(
  "CompoundImport",
  public = list(
    `name` = NULL,
    `features` = NULL,

    #' @description
    #' Initialize a new CompoundImport class.
    #'
    #' @param features The features this compound consists of.
    #' @param name Some (optional) human-readable name
    #' @param ... Other optional arguments.
    initialize = function(`features`, `name` = NULL, ...) {
      if (!missing(`features`)) {
        stopifnot(is.vector(`features`), length(`features`) != 0)
        sapply(`features`, function(x) stopifnot(R6::is.R6(x)))
        self$`features` <- `features`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
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
    #' @return CompoundImport as a base R list.
    #' @examples
    #' # convert array of CompoundImport (x) to a data frame
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
    #' Convert CompoundImport to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CompoundImportObject <- list()
      if (!is.null(self$`name`)) {
        CompoundImportObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`features`)) {
        CompoundImportObject[["features"]] <-
          lapply(self$`features`, function(x) x$toSimpleType())
      }
      return(CompoundImportObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CompoundImport
    #'
    #' @param input_json the JSON input
    #' @return the instance of CompoundImport
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`features`)) {
        self$`features` <- ApiClient$new()$deserializeObj(this_object$`features`, "array[FeatureImport]", loadNamespace("RSirius"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CompoundImport in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CompoundImport
    #'
    #' @param input_json the JSON input
    #' @return the instance of CompoundImport
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name` <- this_object$`name`
      self$`features` <- ApiClient$new()$deserializeObj(this_object$`features`, "array[FeatureImport]", loadNamespace("RSirius"))
      self
    },

    #' @description
    #' Validate JSON input with respect to CompoundImport and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `features`
      if (!is.null(input_json$`features`)) {
        stopifnot(is.vector(input_json$`features`), length(input_json$`features`) != 0)
        tmp <- sapply(input_json$`features`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CompoundImport: the required field `features` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CompoundImport
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `features` is null
      if (is.null(self$`features`)) {
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
      # check if the required `features` is null
      if (is.null(self$`features`)) {
        invalid_fields["features"] <- "Non-nullable required field `features` cannot be null."
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
# CompoundImport$unlock()
#
## Below is an example to define the print function
# CompoundImport$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CompoundImport$lock()

