#' Create a new ConnectionError
#'
#' @description
#' 
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
    #' Initialize a new ConnectionError class.
    #'
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
    #' @export
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
        if (!(`errorKlass` %in% c("UNKNOWN", "INTERNET", "LOGIN_SERVER", "LICENSE_SERVER", "TOKEN", "LOGIN", "LICENSE", "TERMS", "APP_SERVER", "WORKER"))) {
          stop(paste("Error! \"", `errorKlass`, "\" cannot be assigned to `errorKlass`. Must be \"UNKNOWN\", \"INTERNET\", \"LOGIN_SERVER\", \"LICENSE_SERVER\", \"TOKEN\", \"LOGIN\", \"LICENSE\", \"TERMS\", \"APP_SERVER\", \"WORKER\".", sep = ""))
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
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ConnectionError in JSON format
    #' @export
    toJSON = function() {
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
      ConnectionErrorObject
    },
    #' Deserialize JSON string into an instance of ConnectionError
    #'
    #' @description
    #' Deserialize JSON string into an instance of ConnectionError
    #'
    #' @param input_json the JSON input
    #' @return the instance of ConnectionError
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`errorType`)) {
        if (!is.null(this_object$`errorType`) && !(this_object$`errorType` %in% c("WARNING", "ERROR"))) {
          stop(paste("Error! \"", this_object$`errorType`, "\" cannot be assigned to `errorType`. Must be \"WARNING\", \"ERROR\".", sep = ""))
        }
        self$`errorType` <- this_object$`errorType`
      }
      if (!is.null(this_object$`errorKlass`)) {
        if (!is.null(this_object$`errorKlass`) && !(this_object$`errorKlass` %in% c("UNKNOWN", "INTERNET", "LOGIN_SERVER", "LICENSE_SERVER", "TOKEN", "LOGIN", "LICENSE", "TERMS", "APP_SERVER", "WORKER"))) {
          stop(paste("Error! \"", this_object$`errorKlass`, "\" cannot be assigned to `errorKlass`. Must be \"UNKNOWN\", \"INTERNET\", \"LOGIN_SERVER\", \"LICENSE_SERVER\", \"TOKEN\", \"LOGIN\", \"LICENSE\", \"TERMS\", \"APP_SERVER\", \"WORKER\".", sep = ""))
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
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ConnectionError in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`errorType`)) {
          sprintf(
          '"errorType":
            "%s"
                    ',
          self$`errorType`
          )
        },
        if (!is.null(self$`errorKlass`)) {
          sprintf(
          '"errorKlass":
            "%s"
                    ',
          self$`errorKlass`
          )
        },
        if (!is.null(self$`siriusErrorCode`)) {
          sprintf(
          '"siriusErrorCode":
            %d
                    ',
          self$`siriusErrorCode`
          )
        },
        if (!is.null(self$`siriusMessage`)) {
          sprintf(
          '"siriusMessage":
            "%s"
                    ',
          self$`siriusMessage`
          )
        },
        if (!is.null(self$`serverResponseErrorCode`)) {
          sprintf(
          '"serverResponseErrorCode":
            %d
                    ',
          self$`serverResponseErrorCode`
          )
        },
        if (!is.null(self$`serverResponseErrorMessage`)) {
          sprintf(
          '"serverResponseErrorMessage":
            "%s"
                    ',
          self$`serverResponseErrorMessage`
          )
        },
        if (!is.null(self$`error`)) {
          sprintf(
          '"error":
            %s
                    ',
          tolower(self$`error`)
          )
        },
        if (!is.null(self$`warning`)) {
          sprintf(
          '"warning":
            %s
                    ',
          tolower(self$`warning`)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of ConnectionError
    #'
    #' @description
    #' Deserialize JSON string into an instance of ConnectionError
    #'
    #' @param input_json the JSON input
    #' @return the instance of ConnectionError
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`errorType`) && !(this_object$`errorType` %in% c("WARNING", "ERROR"))) {
        stop(paste("Error! \"", this_object$`errorType`, "\" cannot be assigned to `errorType`. Must be \"WARNING\", \"ERROR\".", sep = ""))
      }
      self$`errorType` <- this_object$`errorType`
      if (!is.null(this_object$`errorKlass`) && !(this_object$`errorKlass` %in% c("UNKNOWN", "INTERNET", "LOGIN_SERVER", "LICENSE_SERVER", "TOKEN", "LOGIN", "LICENSE", "TERMS", "APP_SERVER", "WORKER"))) {
        stop(paste("Error! \"", this_object$`errorKlass`, "\" cannot be assigned to `errorKlass`. Must be \"UNKNOWN\", \"INTERNET\", \"LOGIN_SERVER\", \"LICENSE_SERVER\", \"TOKEN\", \"LOGIN\", \"LICENSE\", \"TERMS\", \"APP_SERVER\", \"WORKER\".", sep = ""))
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
    #' Validate JSON input with respect to ConnectionError
    #'
    #' @description
    #' Validate JSON input with respect to ConnectionError and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
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
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ConnectionError
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
    #' Return a list of invalid fields (if any).
    #'
    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    #' @export
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
# ConnectionError$unlock()
#
## Below is an example to define the print function
# ConnectionError$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ConnectionError$lock()

