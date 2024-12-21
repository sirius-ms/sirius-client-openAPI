#' Create a new ConnectionError
#'
#' @description
#' ConnectionError Class
#'
#' @docType class
#' @title ConnectionError
#' @description ConnectionError Class
#' @format An \code{R6Class} generator object
#' @field errorType  character
#' @field errorKlass  character
#' @field siriusErrorCode  integer
#' @field siriusMessage  character
#' @field serverResponseErrorCode  integer [optional]
#' @field serverResponseErrorMessage  character [optional]
#' @field error  character [optional]
#' @field warning  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ConnectionError <- R6::R6Class(
  "ConnectionError",
  public = list(
    `errorType` = NULL,
    `errorKlass` = NULL,
    `siriusErrorCode` = NULL,
    `siriusMessage` = NULL,
    `serverResponseErrorCode` = NULL,
    `serverResponseErrorMessage` = NULL,
    `error` = NULL,
    `warning` = NULL,

    #' @description
    #' Initialize a new ConnectionError class.
    #'
    #' @param errorType errorType
    #' @param errorKlass errorKlass
    #' @param siriusErrorCode siriusErrorCode
    #' @param siriusMessage siriusMessage
    #' @param serverResponseErrorCode serverResponseErrorCode
    #' @param serverResponseErrorMessage serverResponseErrorMessage
    #' @param error error
    #' @param warning warning
    #' @param ... Other optional arguments.
    initialize = function(`errorType`, `errorKlass`, `siriusErrorCode`, `siriusMessage`, `serverResponseErrorCode` = NULL, `serverResponseErrorMessage` = NULL, `error` = NULL, `warning` = NULL, ...) {
      if (!missing(`errorType`)) {
        if (!(`errorType` %in% c("WARNING", "ERROR"))) {
          stop(paste("Error! \"", `errorType`, "\" cannot be assigned to `errorType`. Must be \"WARNING\", \"ERROR\".", sep = ""))
        }
        if (!(is.character(`errorType`) && length(`errorType`) == 1)) {
          stop(paste("Error! Invalid data for `errorType`. Must be a string:", `errorType`))
        }
        self$`errorType` <- `errorType`
      }
      if (!missing(`errorKlass`)) {
        if (!(`errorKlass` %in% c("UNKNOWN", "INTERNET", "LOGIN_SERVER", "LICENSE_SERVER", "TOKEN", "LOGIN", "LICENSE", "TERMS", "APP_SERVER"))) {
          stop(paste("Error! \"", `errorKlass`, "\" cannot be assigned to `errorKlass`. Must be \"UNKNOWN\", \"INTERNET\", \"LOGIN_SERVER\", \"LICENSE_SERVER\", \"TOKEN\", \"LOGIN\", \"LICENSE\", \"TERMS\", \"APP_SERVER\".", sep = ""))
        }
        if (!(is.character(`errorKlass`) && length(`errorKlass`) == 1)) {
          stop(paste("Error! Invalid data for `errorKlass`. Must be a string:", `errorKlass`))
        }
        self$`errorKlass` <- `errorKlass`
      }
      if (!missing(`siriusErrorCode`)) {
        if (!(is.numeric(`siriusErrorCode`) && length(`siriusErrorCode`) == 1)) {
          stop(paste("Error! Invalid data for `siriusErrorCode`. Must be an integer:", `siriusErrorCode`))
        }
        self$`siriusErrorCode` <- `siriusErrorCode`
      }
      if (!missing(`siriusMessage`)) {
        if (!(is.character(`siriusMessage`) && length(`siriusMessage`) == 1)) {
          stop(paste("Error! Invalid data for `siriusMessage`. Must be a string:", `siriusMessage`))
        }
        self$`siriusMessage` <- `siriusMessage`
      }
      if (!is.null(`serverResponseErrorCode`)) {
        if (!(is.numeric(`serverResponseErrorCode`) && length(`serverResponseErrorCode`) == 1)) {
          stop(paste("Error! Invalid data for `serverResponseErrorCode`. Must be an integer:", `serverResponseErrorCode`))
        }
        self$`serverResponseErrorCode` <- `serverResponseErrorCode`
      }
      if (!is.null(`serverResponseErrorMessage`)) {
        if (!(is.character(`serverResponseErrorMessage`) && length(`serverResponseErrorMessage`) == 1)) {
          stop(paste("Error! Invalid data for `serverResponseErrorMessage`. Must be a string:", `serverResponseErrorMessage`))
        }
        self$`serverResponseErrorMessage` <- `serverResponseErrorMessage`
      }
      if (!is.null(`error`)) {
        if (!(is.logical(`error`) && length(`error`) == 1)) {
          stop(paste("Error! Invalid data for `error`. Must be a boolean:", `error`))
        }
        self$`error` <- `error`
      }
      if (!is.null(`warning`)) {
        if (!(is.logical(`warning`) && length(`warning`) == 1)) {
          stop(paste("Error! Invalid data for `warning`. Must be a boolean:", `warning`))
        }
        self$`warning` <- `warning`
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
    #' @return ConnectionError as a base R list.
    #' @examples
    #' # convert array of ConnectionError (x) to a data frame
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
    #' Convert ConnectionError to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ConnectionErrorObject <- list()
      if (!is.null(self$`errorType`)) {
        ConnectionErrorObject[["errorType"]] <-
          self$`errorType`
      }
      if (!is.null(self$`errorKlass`)) {
        ConnectionErrorObject[["errorKlass"]] <-
          self$`errorKlass`
      }
      if (!is.null(self$`siriusErrorCode`)) {
        ConnectionErrorObject[["siriusErrorCode"]] <-
          self$`siriusErrorCode`
      }
      if (!is.null(self$`siriusMessage`)) {
        ConnectionErrorObject[["siriusMessage"]] <-
          self$`siriusMessage`
      }
      if (!is.null(self$`serverResponseErrorCode`)) {
        ConnectionErrorObject[["serverResponseErrorCode"]] <-
          self$`serverResponseErrorCode`
      }
      if (!is.null(self$`serverResponseErrorMessage`)) {
        ConnectionErrorObject[["serverResponseErrorMessage"]] <-
          self$`serverResponseErrorMessage`
      }
      if (!is.null(self$`error`)) {
        ConnectionErrorObject[["error"]] <-
          self$`error`
      }
      if (!is.null(self$`warning`)) {
        ConnectionErrorObject[["warning"]] <-
          self$`warning`
      }
      return(ConnectionErrorObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ConnectionError
    #'
    #' @param input_json the JSON input
    #' @return the instance of ConnectionError
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`errorType`)) {
        if (!is.null(this_object$`errorType`) && !(this_object$`errorType` %in% c("WARNING", "ERROR"))) {
          stop(paste("Error! \"", this_object$`errorType`, "\" cannot be assigned to `errorType`. Must be \"WARNING\", \"ERROR\".", sep = ""))
        }
        self$`errorType` <- this_object$`errorType`
      }
      if (!is.null(this_object$`errorKlass`)) {
        if (!is.null(this_object$`errorKlass`) && !(this_object$`errorKlass` %in% c("UNKNOWN", "INTERNET", "LOGIN_SERVER", "LICENSE_SERVER", "TOKEN", "LOGIN", "LICENSE", "TERMS", "APP_SERVER"))) {
          stop(paste("Error! \"", this_object$`errorKlass`, "\" cannot be assigned to `errorKlass`. Must be \"UNKNOWN\", \"INTERNET\", \"LOGIN_SERVER\", \"LICENSE_SERVER\", \"TOKEN\", \"LOGIN\", \"LICENSE\", \"TERMS\", \"APP_SERVER\".", sep = ""))
        }
        self$`errorKlass` <- this_object$`errorKlass`
      }
      if (!is.null(this_object$`siriusErrorCode`)) {
        self$`siriusErrorCode` <- this_object$`siriusErrorCode`
      }
      if (!is.null(this_object$`siriusMessage`)) {
        self$`siriusMessage` <- this_object$`siriusMessage`
      }
      if (!is.null(this_object$`serverResponseErrorCode`)) {
        self$`serverResponseErrorCode` <- this_object$`serverResponseErrorCode`
      }
      if (!is.null(this_object$`serverResponseErrorMessage`)) {
        self$`serverResponseErrorMessage` <- this_object$`serverResponseErrorMessage`
      }
      if (!is.null(this_object$`error`)) {
        self$`error` <- this_object$`error`
      }
      if (!is.null(this_object$`warning`)) {
        self$`warning` <- this_object$`warning`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ConnectionError in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ConnectionError
    #'
    #' @param input_json the JSON input
    #' @return the instance of ConnectionError
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`errorType`) && !(this_object$`errorType` %in% c("WARNING", "ERROR"))) {
        stop(paste("Error! \"", this_object$`errorType`, "\" cannot be assigned to `errorType`. Must be \"WARNING\", \"ERROR\".", sep = ""))
      }
      self$`errorType` <- this_object$`errorType`
      if (!is.null(this_object$`errorKlass`) && !(this_object$`errorKlass` %in% c("UNKNOWN", "INTERNET", "LOGIN_SERVER", "LICENSE_SERVER", "TOKEN", "LOGIN", "LICENSE", "TERMS", "APP_SERVER"))) {
        stop(paste("Error! \"", this_object$`errorKlass`, "\" cannot be assigned to `errorKlass`. Must be \"UNKNOWN\", \"INTERNET\", \"LOGIN_SERVER\", \"LICENSE_SERVER\", \"TOKEN\", \"LOGIN\", \"LICENSE\", \"TERMS\", \"APP_SERVER\".", sep = ""))
      }
      self$`errorKlass` <- this_object$`errorKlass`
      self$`siriusErrorCode` <- this_object$`siriusErrorCode`
      self$`siriusMessage` <- this_object$`siriusMessage`
      self$`serverResponseErrorCode` <- this_object$`serverResponseErrorCode`
      self$`serverResponseErrorMessage` <- this_object$`serverResponseErrorMessage`
      self$`error` <- this_object$`error`
      self$`warning` <- this_object$`warning`
      self
    },

    #' @description
    #' Validate JSON input with respect to ConnectionError and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `errorType`
      if (!is.null(input_json$`errorType`)) {
        if (!(is.character(input_json$`errorType`) && length(input_json$`errorType`) == 1)) {
          stop(paste("Error! Invalid data for `errorType`. Must be a string:", input_json$`errorType`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ConnectionError: the required field `errorType` is missing."))
      }
      # check the required field `errorKlass`
      if (!is.null(input_json$`errorKlass`)) {
        if (!(is.character(input_json$`errorKlass`) && length(input_json$`errorKlass`) == 1)) {
          stop(paste("Error! Invalid data for `errorKlass`. Must be a string:", input_json$`errorKlass`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ConnectionError: the required field `errorKlass` is missing."))
      }
      # check the required field `siriusErrorCode`
      if (!is.null(input_json$`siriusErrorCode`)) {
        if (!(is.numeric(input_json$`siriusErrorCode`) && length(input_json$`siriusErrorCode`) == 1)) {
          stop(paste("Error! Invalid data for `siriusErrorCode`. Must be an integer:", input_json$`siriusErrorCode`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ConnectionError: the required field `siriusErrorCode` is missing."))
      }
      # check the required field `siriusMessage`
      if (!is.null(input_json$`siriusMessage`)) {
        if (!(is.character(input_json$`siriusMessage`) && length(input_json$`siriusMessage`) == 1)) {
          stop(paste("Error! Invalid data for `siriusMessage`. Must be a string:", input_json$`siriusMessage`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ConnectionError: the required field `siriusMessage` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ConnectionError
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `errorType` is null
      if (is.null(self$`errorType`)) {
        return(FALSE)
      }

      # check if the required `errorKlass` is null
      if (is.null(self$`errorKlass`)) {
        return(FALSE)
      }

      # check if the required `siriusErrorCode` is null
      if (is.null(self$`siriusErrorCode`)) {
        return(FALSE)
      }

      # check if the required `siriusMessage` is null
      if (is.null(self$`siriusMessage`)) {
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
      # check if the required `errorType` is null
      if (is.null(self$`errorType`)) {
        invalid_fields["errorType"] <- "Non-nullable required field `errorType` cannot be null."
      }

      # check if the required `errorKlass` is null
      if (is.null(self$`errorKlass`)) {
        invalid_fields["errorKlass"] <- "Non-nullable required field `errorKlass` cannot be null."
      }

      # check if the required `siriusErrorCode` is null
      if (is.null(self$`siriusErrorCode`)) {
        invalid_fields["siriusErrorCode"] <- "Non-nullable required field `siriusErrorCode` cannot be null."
      }

      # check if the required `siriusMessage` is null
      if (is.null(self$`siriusMessage`)) {
        invalid_fields["siriusMessage"] <- "Non-nullable required field `siriusMessage` cannot be null."
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
# ConnectionError$unlock()
#
## Below is an example to define the print function
# ConnectionError$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ConnectionError$lock()

