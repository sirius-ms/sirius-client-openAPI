#' Create a new ConnectionCheck
#'
#' @description
#' ConnectionCheck Class
#'
#' @docType class
#' @title ConnectionCheck
#' @description ConnectionCheck Class
#' @format An \code{R6Class} generator object
#' @field workerInfo  \link{WorkerList} [optional]
#' @field licenseInfo  \link{LicenseInfo}
#' @field errors List of errors ordered by significance. first error should be reported and addressed first.  Following errors might just be follow-up errors list(\link{ConnectionError})
#' @field supportsNegPredictorTypes  character
#' @field availableWorkers  list(character)
#' @field unAvailableWorkers  list(character)
#' @field supportsAllPredictorTypes  character
#' @field supportsPosPredictorTypes  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ConnectionCheck <- R6::R6Class(
  "ConnectionCheck",
  public = list(
    `workerInfo` = NULL,
    `licenseInfo` = NULL,
    `errors` = NULL,
    `supportsNegPredictorTypes` = NULL,
    `availableWorkers` = NULL,
    `unAvailableWorkers` = NULL,
    `supportsAllPredictorTypes` = NULL,
    `supportsPosPredictorTypes` = NULL,
    #' Initialize a new ConnectionCheck class.
    #'
    #' @description
    #' Initialize a new ConnectionCheck class.
    #'
    #' @param licenseInfo licenseInfo
    #' @param errors List of errors ordered by significance. first error should be reported and addressed first.  Following errors might just be follow-up errors
    #' @param supportsNegPredictorTypes supportsNegPredictorTypes
    #' @param availableWorkers availableWorkers
    #' @param unAvailableWorkers unAvailableWorkers
    #' @param supportsAllPredictorTypes supportsAllPredictorTypes
    #' @param supportsPosPredictorTypes supportsPosPredictorTypes
    #' @param workerInfo workerInfo
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`licenseInfo`, `errors`, `supportsNegPredictorTypes`, `availableWorkers`, `unAvailableWorkers`, `supportsAllPredictorTypes`, `supportsPosPredictorTypes`, `workerInfo` = NULL, ...) {
      if (!missing(`licenseInfo`)) {
        stopifnot(R6::is.R6(`licenseInfo`))
        self$`licenseInfo` <- `licenseInfo`
      }
      if (!missing(`errors`)) {
        stopifnot(is.vector(`errors`), length(`errors`) != 0)
        sapply(`errors`, function(x) stopifnot(R6::is.R6(x)))
        self$`errors` <- `errors`
      }
      if (!missing(`supportsNegPredictorTypes`)) {
        if (!(is.logical(`supportsNegPredictorTypes`) && length(`supportsNegPredictorTypes`) == 1)) {
          stop(paste("Error! Invalid data for `supportsNegPredictorTypes`. Must be a boolean:", `supportsNegPredictorTypes`))
        }
        self$`supportsNegPredictorTypes` <- `supportsNegPredictorTypes`
      }
      if (!missing(`availableWorkers`)) {
        stopifnot(is.vector(`availableWorkers`), length(`availableWorkers`) != 0)
        sapply(`availableWorkers`, function(x) stopifnot(is.character(x)))
        if (!identical(`availableWorkers`, unique(`availableWorkers`))) {
          stop("Error! Items in `availableWorkers` are not unique.")
        }
        self$`availableWorkers` <- `availableWorkers`
      }
      if (!missing(`unAvailableWorkers`)) {
        stopifnot(is.vector(`unAvailableWorkers`), length(`unAvailableWorkers`) != 0)
        sapply(`unAvailableWorkers`, function(x) stopifnot(is.character(x)))
        if (!identical(`unAvailableWorkers`, unique(`unAvailableWorkers`))) {
          stop("Error! Items in `unAvailableWorkers` are not unique.")
        }
        self$`unAvailableWorkers` <- `unAvailableWorkers`
      }
      if (!missing(`supportsAllPredictorTypes`)) {
        if (!(is.logical(`supportsAllPredictorTypes`) && length(`supportsAllPredictorTypes`) == 1)) {
          stop(paste("Error! Invalid data for `supportsAllPredictorTypes`. Must be a boolean:", `supportsAllPredictorTypes`))
        }
        self$`supportsAllPredictorTypes` <- `supportsAllPredictorTypes`
      }
      if (!missing(`supportsPosPredictorTypes`)) {
        if (!(is.logical(`supportsPosPredictorTypes`) && length(`supportsPosPredictorTypes`) == 1)) {
          stop(paste("Error! Invalid data for `supportsPosPredictorTypes`. Must be a boolean:", `supportsPosPredictorTypes`))
        }
        self$`supportsPosPredictorTypes` <- `supportsPosPredictorTypes`
      }
      if (!is.null(`workerInfo`)) {
        stopifnot(R6::is.R6(`workerInfo`))
        self$`workerInfo` <- `workerInfo`
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
      if (!is.null(self$`workerInfo`)) {
        ConnectionCheckObject[["workerInfo"]] <-
          if (is.list(self$`workerInfo`$toJSON()) && length(self$`workerInfo`$toJSON()) == 0L){
            NULL
          } else if (length(names(self$`workerInfo`$toJSON())) == 0L && is.character(jsonlite::fromJSON(self$`workerInfo`$toJSON()))) {
            jsonlite::fromJSON(self$`workerInfo`$toJSON())
          } else {
            self$`workerInfo`$toJSON()
          }
      }
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
      if (!is.null(self$`supportsNegPredictorTypes`)) {
        ConnectionCheckObject[["supportsNegPredictorTypes"]] <-
          self$`supportsNegPredictorTypes`
      }
      if (!is.null(self$`availableWorkers`)) {
        ConnectionCheckObject[["availableWorkers"]] <-
          self$`availableWorkers`
      }
      if (!is.null(self$`unAvailableWorkers`)) {
        ConnectionCheckObject[["unAvailableWorkers"]] <-
          self$`unAvailableWorkers`
      }
      if (!is.null(self$`supportsAllPredictorTypes`)) {
        ConnectionCheckObject[["supportsAllPredictorTypes"]] <-
          self$`supportsAllPredictorTypes`
      }
      if (!is.null(self$`supportsPosPredictorTypes`)) {
        ConnectionCheckObject[["supportsPosPredictorTypes"]] <-
          self$`supportsPosPredictorTypes`
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
      if (!is.null(this_object$`workerInfo`)) {
        `workerinfo_object` <- WorkerList$new()
        `workerinfo_object`$fromJSON(jsonlite::toJSON(this_object$`workerInfo`, auto_unbox = TRUE, digits = NA))
        self$`workerInfo` <- `workerinfo_object`
      }
      if (!is.null(this_object$`licenseInfo`)) {
        `licenseinfo_object` <- LicenseInfo$new()
        `licenseinfo_object`$fromJSON(jsonlite::toJSON(this_object$`licenseInfo`, auto_unbox = TRUE, digits = NA))
        self$`licenseInfo` <- `licenseinfo_object`
      }
      if (!is.null(this_object$`errors`)) {
        self$`errors` <- ApiClient$new()$deserializeObj(this_object$`errors`, "array[ConnectionError]", loadNamespace("Rsirius"))
      }
      if (!is.null(this_object$`supportsNegPredictorTypes`)) {
        self$`supportsNegPredictorTypes` <- this_object$`supportsNegPredictorTypes`
      }
      if (!is.null(this_object$`availableWorkers`)) {
        self$`availableWorkers` <- ApiClient$new()$deserializeObj(this_object$`availableWorkers`, "set[character]", loadNamespace("Rsirius"))
        if (!identical(self$`availableWorkers`, unique(self$`availableWorkers`))) {
          stop("Error! Items in `availableWorkers` are not unique.")
        }
      }
      if (!is.null(this_object$`unAvailableWorkers`)) {
        self$`unAvailableWorkers` <- ApiClient$new()$deserializeObj(this_object$`unAvailableWorkers`, "set[character]", loadNamespace("Rsirius"))
        if (!identical(self$`unAvailableWorkers`, unique(self$`unAvailableWorkers`))) {
          stop("Error! Items in `unAvailableWorkers` are not unique.")
        }
      }
      if (!is.null(this_object$`supportsAllPredictorTypes`)) {
        self$`supportsAllPredictorTypes` <- this_object$`supportsAllPredictorTypes`
      }
      if (!is.null(this_object$`supportsPosPredictorTypes`)) {
        self$`supportsPosPredictorTypes` <- this_object$`supportsPosPredictorTypes`
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
        if (!is.null(self$`workerInfo`)) {
          sprintf(
          '"workerInfo":
          %s
          ',
          jsonlite::toJSON(self$`workerInfo`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
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
        },
        if (!is.null(self$`supportsNegPredictorTypes`)) {
          sprintf(
          '"supportsNegPredictorTypes":
            %s
                    ',
          tolower(self$`supportsNegPredictorTypes`)
          )
        },
        if (!is.null(self$`availableWorkers`)) {
          sprintf(
          '"availableWorkers":
             [%s]
          ',
          paste(unlist(lapply(self$`availableWorkers`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`unAvailableWorkers`)) {
          sprintf(
          '"unAvailableWorkers":
             [%s]
          ',
          paste(unlist(lapply(self$`unAvailableWorkers`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`supportsAllPredictorTypes`)) {
          sprintf(
          '"supportsAllPredictorTypes":
            %s
                    ',
          tolower(self$`supportsAllPredictorTypes`)
          )
        },
        if (!is.null(self$`supportsPosPredictorTypes`)) {
          sprintf(
          '"supportsPosPredictorTypes":
            %s
                    ',
          tolower(self$`supportsPosPredictorTypes`)
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
      self$`workerInfo` <- WorkerList$new()$fromJSON(jsonlite::toJSON(this_object$`workerInfo`, auto_unbox = TRUE, digits = NA))
      self$`licenseInfo` <- LicenseInfo$new()$fromJSON(jsonlite::toJSON(this_object$`licenseInfo`, auto_unbox = TRUE, digits = NA))
      self$`errors` <- ApiClient$new()$deserializeObj(this_object$`errors`, "array[ConnectionError]", loadNamespace("Rsirius"))
      self$`supportsNegPredictorTypes` <- this_object$`supportsNegPredictorTypes`
      self$`availableWorkers` <- ApiClient$new()$deserializeObj(this_object$`availableWorkers`, "set[character]", loadNamespace("Rsirius"))
      if (!identical(self$`availableWorkers`, unique(self$`availableWorkers`))) {
        stop("Error! Items in `availableWorkers` are not unique.")
      }
      self$`unAvailableWorkers` <- ApiClient$new()$deserializeObj(this_object$`unAvailableWorkers`, "set[character]", loadNamespace("Rsirius"))
      if (!identical(self$`unAvailableWorkers`, unique(self$`unAvailableWorkers`))) {
        stop("Error! Items in `unAvailableWorkers` are not unique.")
      }
      self$`supportsAllPredictorTypes` <- this_object$`supportsAllPredictorTypes`
      self$`supportsPosPredictorTypes` <- this_object$`supportsPosPredictorTypes`
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
      # check the required field `supportsNegPredictorTypes`
      if (!is.null(input_json$`supportsNegPredictorTypes`)) {
        if (!(is.logical(input_json$`supportsNegPredictorTypes`) && length(input_json$`supportsNegPredictorTypes`) == 1)) {
          stop(paste("Error! Invalid data for `supportsNegPredictorTypes`. Must be a boolean:", input_json$`supportsNegPredictorTypes`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ConnectionCheck: the required field `supportsNegPredictorTypes` is missing."))
      }
      # check the required field `availableWorkers`
      if (!is.null(input_json$`availableWorkers`)) {
        stopifnot(is.vector(input_json$`availableWorkers`), length(input_json$`availableWorkers`) != 0)
        if (!identical(input_json$`availableWorkers`, unique(input_json$`availableWorkers`))) {
          stop("Error! Items in `availableWorkers` are not unique.")
        }
        tmp <- sapply(input_json$`availableWorkers`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ConnectionCheck: the required field `availableWorkers` is missing."))
      }
      # check the required field `unAvailableWorkers`
      if (!is.null(input_json$`unAvailableWorkers`)) {
        stopifnot(is.vector(input_json$`unAvailableWorkers`), length(input_json$`unAvailableWorkers`) != 0)
        if (!identical(input_json$`unAvailableWorkers`, unique(input_json$`unAvailableWorkers`))) {
          stop("Error! Items in `unAvailableWorkers` are not unique.")
        }
        tmp <- sapply(input_json$`unAvailableWorkers`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ConnectionCheck: the required field `unAvailableWorkers` is missing."))
      }
      # check the required field `supportsAllPredictorTypes`
      if (!is.null(input_json$`supportsAllPredictorTypes`)) {
        if (!(is.logical(input_json$`supportsAllPredictorTypes`) && length(input_json$`supportsAllPredictorTypes`) == 1)) {
          stop(paste("Error! Invalid data for `supportsAllPredictorTypes`. Must be a boolean:", input_json$`supportsAllPredictorTypes`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ConnectionCheck: the required field `supportsAllPredictorTypes` is missing."))
      }
      # check the required field `supportsPosPredictorTypes`
      if (!is.null(input_json$`supportsPosPredictorTypes`)) {
        if (!(is.logical(input_json$`supportsPosPredictorTypes`) && length(input_json$`supportsPosPredictorTypes`) == 1)) {
          stop(paste("Error! Invalid data for `supportsPosPredictorTypes`. Must be a boolean:", input_json$`supportsPosPredictorTypes`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ConnectionCheck: the required field `supportsPosPredictorTypes` is missing."))
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

      # check if the required `supportsNegPredictorTypes` is null
      if (is.null(self$`supportsNegPredictorTypes`)) {
        return(FALSE)
      }

      # check if the required `availableWorkers` is null
      if (is.null(self$`availableWorkers`)) {
        return(FALSE)
      }


      # check if the required `unAvailableWorkers` is null
      if (is.null(self$`unAvailableWorkers`)) {
        return(FALSE)
      }


      # check if the required `supportsAllPredictorTypes` is null
      if (is.null(self$`supportsAllPredictorTypes`)) {
        return(FALSE)
      }

      # check if the required `supportsPosPredictorTypes` is null
      if (is.null(self$`supportsPosPredictorTypes`)) {
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

      # check if the required `supportsNegPredictorTypes` is null
      if (is.null(self$`supportsNegPredictorTypes`)) {
        invalid_fields["supportsNegPredictorTypes"] <- "Non-nullable required field `supportsNegPredictorTypes` cannot be null."
      }

      # check if the required `availableWorkers` is null
      if (is.null(self$`availableWorkers`)) {
        invalid_fields["availableWorkers"] <- "Non-nullable required field `availableWorkers` cannot be null."
      }


      # check if the required `unAvailableWorkers` is null
      if (is.null(self$`unAvailableWorkers`)) {
        invalid_fields["unAvailableWorkers"] <- "Non-nullable required field `unAvailableWorkers` cannot be null."
      }


      # check if the required `supportsAllPredictorTypes` is null
      if (is.null(self$`supportsAllPredictorTypes`)) {
        invalid_fields["supportsAllPredictorTypes"] <- "Non-nullable required field `supportsAllPredictorTypes` cannot be null."
      }

      # check if the required `supportsPosPredictorTypes` is null
      if (is.null(self$`supportsPosPredictorTypes`)) {
        invalid_fields["supportsPosPredictorTypes"] <- "Non-nullable required field `supportsPosPredictorTypes` cannot be null."
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

