#' Create a new ConnectionCheck
#'
#' @description
#' ConnectionCheck Class
#'
#' @docType class
#' @title ConnectionCheck
#' @description ConnectionCheck Class
#' @format An \code{R6Class} generator object
#' @field licenseInfo  \link{LicenseInfo}
#' @field errors List of errors ordered by significance. first error should be reported and addressed first.  Following errors might just be follow-up errors list(\link{ConnectionError})
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ConnectionCheck <- R6::R6Class(
  "ConnectionCheck",
  public = list(
    `licenseInfo` = NULL,
    `errors` = NULL,

    #' @description
    #' Initialize a new ConnectionCheck class.
    #'
    #' @param licenseInfo licenseInfo
    #' @param errors List of errors ordered by significance. first error should be reported and addressed first.  Following errors might just be follow-up errors
    #' @param ... Other optional arguments.
    initialize = function(`licenseInfo`, `errors`, ...) {
      if (!missing(`licenseInfo`)) {
        stopifnot(R6::is.R6(`licenseInfo`))
        self$`licenseInfo` <- `licenseInfo`
      }
      if (!missing(`errors`)) {
        stopifnot(is.vector(`errors`), length(`errors`) != 0)
        sapply(`errors`, function(x) stopifnot(R6::is.R6(x)))
        self$`errors` <- `errors`
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
    #' @return ConnectionCheck as a base R list.
    #' @examples
    #' # convert array of ConnectionCheck (x) to a data frame
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
    #' Convert ConnectionCheck to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ConnectionCheckObject <- list()
      if (!is.null(self$`licenseInfo`)) {
        ConnectionCheckObject[["licenseInfo"]] <-
          self$`licenseInfo`$toSimpleType()
      }
      if (!is.null(self$`errors`)) {
        ConnectionCheckObject[["errors"]] <-
          lapply(self$`errors`, function(x) x$toSimpleType())
      }
      return(ConnectionCheckObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ConnectionCheck
    #'
    #' @param input_json the JSON input
    #' @return the instance of ConnectionCheck
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`licenseInfo`)) {
        `licenseinfo_object` <- LicenseInfo$new()
        `licenseinfo_object`$fromJSON(jsonlite::toJSON(this_object$`licenseInfo`, auto_unbox = TRUE, digits = NA, null = 'null'))
        self$`licenseInfo` <- `licenseinfo_object`
      }
      if (!is.null(this_object$`errors`)) {
        self$`errors` <- ApiClient$new()$deserializeObj(this_object$`errors`, "array[ConnectionError]", loadNamespace("RSirius"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ConnectionCheck in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ConnectionCheck
    #'
    #' @param input_json the JSON input
    #' @return the instance of ConnectionCheck
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`licenseInfo` <- LicenseInfo$new()$fromJSON(jsonlite::toJSON(this_object$`licenseInfo`, auto_unbox = TRUE, digits = NA, null = 'null'))
      self$`errors` <- ApiClient$new()$deserializeObj(this_object$`errors`, "array[ConnectionError]", loadNamespace("RSirius"))
      self
    },

    #' @description
    #' Validate JSON input with respect to ConnectionCheck and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `licenseInfo`
      if (!is.null(input_json$`licenseInfo`)) {
        stopifnot(R6::is.R6(input_json$`licenseInfo`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ConnectionCheck: the required field `licenseInfo` is missing."))
      }
      # check the required field `errors`
      if (!is.null(input_json$`errors`)) {
        stopifnot(is.vector(input_json$`errors`), length(input_json$`errors`) != 0)
        tmp <- sapply(input_json$`errors`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ConnectionCheck: the required field `errors` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ConnectionCheck
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `licenseInfo` is null
      if (is.null(self$`licenseInfo`)) {
        return(FALSE)
      }

      # check if the required `errors` is null
      if (is.null(self$`errors`)) {
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
      # check if the required `licenseInfo` is null
      if (is.null(self$`licenseInfo`)) {
        invalid_fields["licenseInfo"] <- "Non-nullable required field `licenseInfo` cannot be null."
      }

      # check if the required `errors` is null
      if (is.null(self$`errors`)) {
        invalid_fields["errors"] <- "Non-nullable required field `errors` cannot be null."
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
# ConnectionCheck$unlock()
#
## Below is an example to define the print function
# ConnectionCheck$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ConnectionCheck$lock()

