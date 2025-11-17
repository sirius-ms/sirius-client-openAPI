#' Create a new DownloadableDatabase
#'
#' @description
#' DownloadableDatabase Class
#'
#' @docType class
#' @title DownloadableDatabase
#' @description DownloadableDatabase Class
#' @format An \code{R6Class} generator object
#' @field id  character [optional]
#' @field description  character [optional]
#' @field size  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DownloadableDatabase <- R6::R6Class(
  "DownloadableDatabase",
  public = list(
    `id` = NULL,
    `description` = NULL,
    `size` = NULL,

    #' @description
    #' Initialize a new DownloadableDatabase class.
    #'
    #' @param id id
    #' @param description description
    #' @param size size
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `description` = NULL, `size` = NULL, ...) {
      if (!is.null(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`size`)) {
        if (!(is.numeric(`size`) && length(`size`) == 1)) {
          stop(paste("Error! Invalid data for `size`. Must be an integer:", `size`))
        }
        self$`size` <- `size`
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
    #' @return DownloadableDatabase as a base R list.
    #' @examples
    #' # convert array of DownloadableDatabase (x) to a data frame
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
    #' Convert DownloadableDatabase to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      DownloadableDatabaseObject <- list()
      if (!is.null(self$`id`)) {
        DownloadableDatabaseObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`description`)) {
        DownloadableDatabaseObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`size`)) {
        DownloadableDatabaseObject[["size"]] <-
          self$`size`
      }
      return(DownloadableDatabaseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of DownloadableDatabase
    #'
    #' @param input_json the JSON input
    #' @return the instance of DownloadableDatabase
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`size`)) {
        self$`size` <- this_object$`size`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return DownloadableDatabase in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of DownloadableDatabase
    #'
    #' @param input_json the JSON input
    #' @return the instance of DownloadableDatabase
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`description` <- this_object$`description`
      self$`size` <- this_object$`size`
      self
    },

    #' @description
    #' Validate JSON input with respect to DownloadableDatabase and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of DownloadableDatabase
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
# DownloadableDatabase$unlock()
#
## Below is an example to define the print function
# DownloadableDatabase$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DownloadableDatabase$lock()

