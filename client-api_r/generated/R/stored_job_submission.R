#' Create a new StoredJobSubmission
#'
#' @description
#' StoredJobSubmission Class
#'
#' @docType class
#' @title StoredJobSubmission
#' @description StoredJobSubmission Class
#' @format An \code{R6Class} generator object
#' @field name Unique name to identify this JobSubmission (job config). character
#' @field jobSubmission  \link{JobSubmission}
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
StoredJobSubmission <- R6::R6Class(
  "StoredJobSubmission",
  public = list(
    `name` = NULL,
    `jobSubmission` = NULL,

    #' @description
    #' Initialize a new StoredJobSubmission class.
    #'
    #' @param name Unique name to identify this JobSubmission (job config).
    #' @param jobSubmission jobSubmission
    #' @param ... Other optional arguments.
    initialize = function(`name`, `jobSubmission`, ...) {
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`jobSubmission`)) {
        stopifnot(R6::is.R6(`jobSubmission`))
        self$`jobSubmission` <- `jobSubmission`
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
    #' @return StoredJobSubmission as a base R list.
    #' @examples
    #' # convert array of StoredJobSubmission (x) to a data frame
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
    #' Convert StoredJobSubmission to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      StoredJobSubmissionObject <- list()
      if (!is.null(self$`name`)) {
        StoredJobSubmissionObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`jobSubmission`)) {
        StoredJobSubmissionObject[["jobSubmission"]] <-
          self$`jobSubmission`$toSimpleType()
      }
      return(StoredJobSubmissionObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of StoredJobSubmission
    #'
    #' @param input_json the JSON input
    #' @return the instance of StoredJobSubmission
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`jobSubmission`)) {
        `jobsubmission_object` <- JobSubmission$new()
        `jobsubmission_object`$fromJSON(jsonlite::toJSON(this_object$`jobSubmission`, auto_unbox = TRUE, digits = NA, null = 'null'))
        self$`jobSubmission` <- `jobsubmission_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return StoredJobSubmission in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of StoredJobSubmission
    #'
    #' @param input_json the JSON input
    #' @return the instance of StoredJobSubmission
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name` <- this_object$`name`
      self$`jobSubmission` <- JobSubmission$new()$fromJSON(jsonlite::toJSON(this_object$`jobSubmission`, auto_unbox = TRUE, digits = NA, null = 'null'))
      self
    },

    #' @description
    #' Validate JSON input with respect to StoredJobSubmission and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StoredJobSubmission: the required field `name` is missing."))
      }
      # check the required field `jobSubmission`
      if (!is.null(input_json$`jobSubmission`)) {
        stopifnot(R6::is.R6(input_json$`jobSubmission`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StoredJobSubmission: the required field `jobSubmission` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of StoredJobSubmission
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `name` is null
      if (is.null(self$`name`)) {
        return(FALSE)
      }

      # check if the required `jobSubmission` is null
      if (is.null(self$`jobSubmission`)) {
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
      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      # check if the required `jobSubmission` is null
      if (is.null(self$`jobSubmission`)) {
        invalid_fields["jobSubmission"] <- "Non-nullable required field `jobSubmission` cannot be null."
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
# StoredJobSubmission$unlock()
#
## Below is an example to define the print function
# StoredJobSubmission$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# StoredJobSubmission$lock()

