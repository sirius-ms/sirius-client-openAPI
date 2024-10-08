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
    #' Initialize a new ConnectionCheck class.
    #'
    #' @description
    #' Initialize a new ConnectionCheck class.
    #'
    #' @param licenseInfo licenseInfo
    #' @param errors List of errors ordered by significance. first error should be reported and addressed first.  Following errors might just be follow-up errors
    #' @param ... Other optional arguments.
    #' @export
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
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ConnectionCheck in JSON format
    #' @export
    toJSON = function() {
      ConnectionCheckObject <- list()
      if (!is.null(self$`licenseInfo`)) {
        ConnectionCheckObject[["licenseInfo"]] <-
          if (is.list(self$`licenseInfo`$toJSON()) && length(self$`licenseInfo`$toJSON()) == 0L){
            NULL
          } else if (length(names(self$`licenseInfo`$toJSON())) == 0L && is.character(jsonlite::fromJSON(self$`licenseInfo`$toJSON()))) {
            jsonlite::fromJSON(self$`licenseInfo`$toJSON())
          } else {
            self$`licenseInfo`$toJSON()
          }
      }
      if (!is.null(self$`errors`)) {
        ConnectionCheckObject[["errors"]] <-
          lapply(self$`errors`, function(x) x$toJSON())
      }
      ConnectionCheckObject
    },
    #' Deserialize JSON string into an instance of ConnectionCheck
    #'
    #' @description
    #' Deserialize JSON string into an instance of ConnectionCheck
    #'
    #' @param input_json the JSON input
    #' @return the instance of ConnectionCheck
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`licenseInfo`)) {
        `licenseinfo_object` <- LicenseInfo$new()
        `licenseinfo_object`$fromJSON(jsonlite::toJSON(this_object$`licenseInfo`, auto_unbox = TRUE, digits = NA))
        self$`licenseInfo` <- `licenseinfo_object`
      }
      if (!is.null(this_object$`errors`)) {
        self$`errors` <- ApiClient$new()$deserializeObj(this_object$`errors`, "array[ConnectionError]", loadNamespace("Rsirius"))
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ConnectionCheck in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`licenseInfo`)) {
          sprintf(
          '"licenseInfo":
          %s
          ',
          jsonlite::toJSON(self$`licenseInfo`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`errors`)) {
          sprintf(
          '"errors":
          [%s]
',
          paste(sapply(self$`errors`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      # remove c() occurences and reduce resulting double escaped quotes \"\" into \"
      jsoncontent <- gsub('\\\"c\\((.*?)\\\"\\)', '\\1', jsoncontent)
      # fix wrong serialization of "\"ENUM\"" to "ENUM"
      jsoncontent <- gsub("\\\\\"([A-Z]+)\\\\\"", "\\1", jsoncontent)
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of ConnectionCheck
    #'
    #' @description
    #' Deserialize JSON string into an instance of ConnectionCheck
    #'
    #' @param input_json the JSON input
    #' @return the instance of ConnectionCheck
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`licenseInfo` <- LicenseInfo$new()$fromJSON(jsonlite::toJSON(this_object$`licenseInfo`, auto_unbox = TRUE, digits = NA))
      self$`errors` <- ApiClient$new()$deserializeObj(this_object$`errors`, "array[ConnectionError]", loadNamespace("Rsirius"))
      self
    },
    #' Validate JSON input with respect to ConnectionCheck
    #'
    #' @description
    #' Validate JSON input with respect to ConnectionCheck and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
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
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ConnectionCheck
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
    #' Return a list of invalid fields (if any).
    #'
    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    #' @export
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
# ConnectionCheck$unlock()
#
## Below is an example to define the print function
# ConnectionCheck$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ConnectionCheck$lock()

