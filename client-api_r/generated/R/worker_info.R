#' Create a new WorkerInfo
#'
#' @description
#' 
#'
#' @docType class
#' @title WorkerInfo
#' @description WorkerInfo Class
#' @format An \code{R6Class} generator object
#' @field id  integer
#' @field type  character
#' @field supportedPredictors  list(character)
#' @field version  character
#' @field host  character [optional]
#' @field prefix  character [optional]
#' @field state  integer
#' @field alive  integer
#' @field serverTime  integer
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
WorkerInfo <- R6::R6Class(
  "WorkerInfo",
  public = list(
    `id` = NULL,
    `type` = NULL,
    `supportedPredictors` = NULL,
    `version` = NULL,
    `host` = NULL,
    `prefix` = NULL,
    `state` = NULL,
    `alive` = NULL,
    `serverTime` = NULL,
    #' Initialize a new WorkerInfo class.
    #'
    #' @description
    #' Initialize a new WorkerInfo class.
    #'
    #' @param id id
    #' @param type type
    #' @param supportedPredictors supportedPredictors
    #' @param version version
    #' @param state state
    #' @param alive alive
    #' @param serverTime serverTime
    #' @param host host
    #' @param prefix prefix
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`id`, `type`, `supportedPredictors`, `version`, `state`, `alive`, `serverTime`, `host` = NULL, `prefix` = NULL, ...) {
      if (!missing(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!missing(`type`)) {
        if (!(`type` %in% c("FORMULA_ID", "FINGER_ID", "IOKR", "CANOPUS", "COVTREE"))) {
          stop(paste("Error! \"", `type`, "\" cannot be assigned to `type`. Must be \"FORMULA_ID\", \"FINGER_ID\", \"IOKR\", \"CANOPUS\", \"COVTREE\".", sep = ""))
        }
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
      }
      if (!missing(`supportedPredictors`)) {
        stopifnot(is.vector(`supportedPredictors`), length(`supportedPredictors`) != 0)
        sapply(`supportedPredictors`, function(x) stopifnot(is.character(x)))
        self$`supportedPredictors` <- `supportedPredictors`
      }
      if (!missing(`version`)) {
        if (!(is.character(`version`) && length(`version`) == 1)) {
          stop(paste("Error! Invalid data for `version`. Must be a string:", `version`))
        }
        self$`version` <- `version`
      }
      if (!missing(`state`)) {
        if (!(is.numeric(`state`) && length(`state`) == 1)) {
          stop(paste("Error! Invalid data for `state`. Must be an integer:", `state`))
        }
        self$`state` <- `state`
      }
      if (!missing(`alive`)) {
        if (!(is.numeric(`alive`) && length(`alive`) == 1)) {
          stop(paste("Error! Invalid data for `alive`. Must be an integer:", `alive`))
        }
        self$`alive` <- `alive`
      }
      if (!missing(`serverTime`)) {
        if (!(is.numeric(`serverTime`) && length(`serverTime`) == 1)) {
          stop(paste("Error! Invalid data for `serverTime`. Must be an integer:", `serverTime`))
        }
        self$`serverTime` <- `serverTime`
      }
      if (!is.null(`host`)) {
        if (!(is.character(`host`) && length(`host`) == 1)) {
          stop(paste("Error! Invalid data for `host`. Must be a string:", `host`))
        }
        self$`host` <- `host`
      }
      if (!is.null(`prefix`)) {
        if (!(is.character(`prefix`) && length(`prefix`) == 1)) {
          stop(paste("Error! Invalid data for `prefix`. Must be a string:", `prefix`))
        }
        self$`prefix` <- `prefix`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return WorkerInfo in JSON format
    #' @export
    toJSON = function() {
      WorkerInfoObject <- list()
      if (!is.null(self$`id`)) {
        WorkerInfoObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`type`)) {
        WorkerInfoObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`supportedPredictors`)) {
        WorkerInfoObject[["supportedPredictors"]] <-
          self$`supportedPredictors`
      }
      if (!is.null(self$`version`)) {
        WorkerInfoObject[["version"]] <-
          self$`version`
      }
      if (!is.null(self$`host`)) {
        WorkerInfoObject[["host"]] <-
          self$`host`
      }
      if (!is.null(self$`prefix`)) {
        WorkerInfoObject[["prefix"]] <-
          self$`prefix`
      }
      if (!is.null(self$`state`)) {
        WorkerInfoObject[["state"]] <-
          self$`state`
      }
      if (!is.null(self$`alive`)) {
        WorkerInfoObject[["alive"]] <-
          self$`alive`
      }
      if (!is.null(self$`serverTime`)) {
        WorkerInfoObject[["serverTime"]] <-
          self$`serverTime`
      }
      WorkerInfoObject
    },
    #' Deserialize JSON string into an instance of WorkerInfo
    #'
    #' @description
    #' Deserialize JSON string into an instance of WorkerInfo
    #'
    #' @param input_json the JSON input
    #' @return the instance of WorkerInfo
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`type`)) {
        if (!is.null(this_object$`type`) && !(this_object$`type` %in% c("FORMULA_ID", "FINGER_ID", "IOKR", "CANOPUS", "COVTREE"))) {
          stop(paste("Error! \"", this_object$`type`, "\" cannot be assigned to `type`. Must be \"FORMULA_ID\", \"FINGER_ID\", \"IOKR\", \"CANOPUS\", \"COVTREE\".", sep = ""))
        }
        self$`type` <- this_object$`type`
      }
      if (!is.null(this_object$`supportedPredictors`)) {
        self$`supportedPredictors` <- ApiClient$new()$deserializeObj(this_object$`supportedPredictors`, "array[character]", loadNamespace("Rsirius"))
      }
      if (!is.null(this_object$`version`)) {
        self$`version` <- this_object$`version`
      }
      if (!is.null(this_object$`host`)) {
        self$`host` <- this_object$`host`
      }
      if (!is.null(this_object$`prefix`)) {
        self$`prefix` <- this_object$`prefix`
      }
      if (!is.null(this_object$`state`)) {
        self$`state` <- this_object$`state`
      }
      if (!is.null(this_object$`alive`)) {
        self$`alive` <- this_object$`alive`
      }
      if (!is.null(this_object$`serverTime`)) {
        self$`serverTime` <- this_object$`serverTime`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return WorkerInfo in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`id`)) {
          sprintf(
          '"id":
            %d
                    ',
          self$`id`
          )
        },
        if (!is.null(self$`type`)) {
          sprintf(
          '"type":
            "%s"
                    ',
          self$`type`
          )
        },
        if (!is.null(self$`supportedPredictors`)) {
          sprintf(
          '"supportedPredictors":
             [%s]
          ',
          paste(unlist(lapply(self$`supportedPredictors`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`version`)) {
          sprintf(
          '"version":
            "%s"
                    ',
          self$`version`
          )
        },
        if (!is.null(self$`host`)) {
          sprintf(
          '"host":
            "%s"
                    ',
          self$`host`
          )
        },
        if (!is.null(self$`prefix`)) {
          sprintf(
          '"prefix":
            "%s"
                    ',
          self$`prefix`
          )
        },
        if (!is.null(self$`state`)) {
          sprintf(
          '"state":
            %d
                    ',
          self$`state`
          )
        },
        if (!is.null(self$`alive`)) {
          sprintf(
          '"alive":
            %d
                    ',
          self$`alive`
          )
        },
        if (!is.null(self$`serverTime`)) {
          sprintf(
          '"serverTime":
            %d
                    ',
          self$`serverTime`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of WorkerInfo
    #'
    #' @description
    #' Deserialize JSON string into an instance of WorkerInfo
    #'
    #' @param input_json the JSON input
    #' @return the instance of WorkerInfo
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      if (!is.null(this_object$`type`) && !(this_object$`type` %in% c("FORMULA_ID", "FINGER_ID", "IOKR", "CANOPUS", "COVTREE"))) {
        stop(paste("Error! \"", this_object$`type`, "\" cannot be assigned to `type`. Must be \"FORMULA_ID\", \"FINGER_ID\", \"IOKR\", \"CANOPUS\", \"COVTREE\".", sep = ""))
      }
      self$`type` <- this_object$`type`
      self$`supportedPredictors` <- ApiClient$new()$deserializeObj(this_object$`supportedPredictors`, "array[character]", loadNamespace("Rsirius"))
      self$`version` <- this_object$`version`
      self$`host` <- this_object$`host`
      self$`prefix` <- this_object$`prefix`
      self$`state` <- this_object$`state`
      self$`alive` <- this_object$`alive`
      self$`serverTime` <- this_object$`serverTime`
      self
    },
    #' Validate JSON input with respect to WorkerInfo
    #'
    #' @description
    #' Validate JSON input with respect to WorkerInfo and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `id`
      if (!is.null(input_json$`id`)) {
        if (!(is.numeric(input_json$`id`) && length(input_json$`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", input_json$`id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for WorkerInfo: the required field `id` is missing."))
      }
      # check the required field `type`
      if (!is.null(input_json$`type`)) {
        if (!(is.character(input_json$`type`) && length(input_json$`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", input_json$`type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for WorkerInfo: the required field `type` is missing."))
      }
      # check the required field `supportedPredictors`
      if (!is.null(input_json$`supportedPredictors`)) {
        stopifnot(is.vector(input_json$`supportedPredictors`), length(input_json$`supportedPredictors`) != 0)
        tmp <- sapply(input_json$`supportedPredictors`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for WorkerInfo: the required field `supportedPredictors` is missing."))
      }
      # check the required field `version`
      if (!is.null(input_json$`version`)) {
        if (!(is.character(input_json$`version`) && length(input_json$`version`) == 1)) {
          stop(paste("Error! Invalid data for `version`. Must be a string:", input_json$`version`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for WorkerInfo: the required field `version` is missing."))
      }
      # check the required field `state`
      if (!is.null(input_json$`state`)) {
        if (!(is.numeric(input_json$`state`) && length(input_json$`state`) == 1)) {
          stop(paste("Error! Invalid data for `state`. Must be an integer:", input_json$`state`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for WorkerInfo: the required field `state` is missing."))
      }
      # check the required field `alive`
      if (!is.null(input_json$`alive`)) {
        if (!(is.numeric(input_json$`alive`) && length(input_json$`alive`) == 1)) {
          stop(paste("Error! Invalid data for `alive`. Must be an integer:", input_json$`alive`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for WorkerInfo: the required field `alive` is missing."))
      }
      # check the required field `serverTime`
      if (!is.null(input_json$`serverTime`)) {
        if (!(is.numeric(input_json$`serverTime`) && length(input_json$`serverTime`) == 1)) {
          stop(paste("Error! Invalid data for `serverTime`. Must be an integer:", input_json$`serverTime`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for WorkerInfo: the required field `serverTime` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of WorkerInfo
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
      # check if the required `id` is null
      if (is.null(self$`id`)) {
        return(FALSE)
      }

      # check if the required `type` is null
      if (is.null(self$`type`)) {
        return(FALSE)
      }

      # check if the required `supportedPredictors` is null
      if (is.null(self$`supportedPredictors`)) {
        return(FALSE)
      }

      # check if the required `version` is null
      if (is.null(self$`version`)) {
        return(FALSE)
      }

      # check if the required `state` is null
      if (is.null(self$`state`)) {
        return(FALSE)
      }

      # check if the required `alive` is null
      if (is.null(self$`alive`)) {
        return(FALSE)
      }

      # check if the required `serverTime` is null
      if (is.null(self$`serverTime`)) {
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
      # check if the required `id` is null
      if (is.null(self$`id`)) {
        invalid_fields["id"] <- "Non-nullable required field `id` cannot be null."
      }

      # check if the required `type` is null
      if (is.null(self$`type`)) {
        invalid_fields["type"] <- "Non-nullable required field `type` cannot be null."
      }

      # check if the required `supportedPredictors` is null
      if (is.null(self$`supportedPredictors`)) {
        invalid_fields["supportedPredictors"] <- "Non-nullable required field `supportedPredictors` cannot be null."
      }

      # check if the required `version` is null
      if (is.null(self$`version`)) {
        invalid_fields["version"] <- "Non-nullable required field `version` cannot be null."
      }

      # check if the required `state` is null
      if (is.null(self$`state`)) {
        invalid_fields["state"] <- "Non-nullable required field `state` cannot be null."
      }

      # check if the required `alive` is null
      if (is.null(self$`alive`)) {
        invalid_fields["alive"] <- "Non-nullable required field `alive` cannot be null."
      }

      # check if the required `serverTime` is null
      if (is.null(self$`serverTime`)) {
        invalid_fields["serverTime"] <- "Non-nullable required field `serverTime` cannot be null."
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
# WorkerInfo$unlock()
#
## Below is an example to define the print function
# WorkerInfo$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# WorkerInfo$lock()

