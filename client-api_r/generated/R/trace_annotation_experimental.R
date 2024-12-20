#' Create a new TraceAnnotationExperimental
#'
#' @description
#' EXPERIMENTAL: This schema is experimental and may be changed (or even removed) without notice until it is declared stable.
#'
#' @docType class
#' @title TraceAnnotationExperimental
#' @description TraceAnnotationExperimental Class
#' @format An \code{R6Class} generator object
#' @field type EXPERIMENTAL: This schema is experimental and may be changed (or even removed) without notice until it is declared stable. character [optional]
#' @field description  character [optional]
#' @field index  integer [optional]
#' @field from  integer [optional]
#' @field to  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TraceAnnotationExperimental <- R6::R6Class(
  "TraceAnnotationExperimental",
  public = list(
    `type` = NULL,
    `description` = NULL,
    `index` = NULL,
    `from` = NULL,
    `to` = NULL,

    #' @description
    #' Initialize a new TraceAnnotationExperimental class.
    #'
    #' @param type EXPERIMENTAL: This schema is experimental and may be changed (or even removed) without notice until it is declared stable.
    #' @param description description
    #' @param index index
    #' @param from from
    #' @param to to
    #' @param ... Other optional arguments.
    initialize = function(`type` = NULL, `description` = NULL, `index` = NULL, `from` = NULL, `to` = NULL, ...) {
      if (!is.null(`type`)) {
        if (!(`type` %in% c("FEATURE", "MS2"))) {
          stop(paste("Error! \"", `type`, "\" cannot be assigned to `type`. Must be \"FEATURE\", \"MS2\".", sep = ""))
        }
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`index`)) {
        if (!(is.numeric(`index`) && length(`index`) == 1)) {
          stop(paste("Error! Invalid data for `index`. Must be an integer:", `index`))
        }
        self$`index` <- `index`
      }
      if (!is.null(`from`)) {
        if (!(is.numeric(`from`) && length(`from`) == 1)) {
          stop(paste("Error! Invalid data for `from`. Must be an integer:", `from`))
        }
        self$`from` <- `from`
      }
      if (!is.null(`to`)) {
        if (!(is.numeric(`to`) && length(`to`) == 1)) {
          stop(paste("Error! Invalid data for `to`. Must be an integer:", `to`))
        }
        self$`to` <- `to`
      }
    },

    #' @description
    #' To JSON String
    #'
    #' @return TraceAnnotationExperimental in JSON format
    toJSON = function() {
      TraceAnnotationExperimentalObject <- list()
      if (!is.null(self$`type`)) {
        TraceAnnotationExperimentalObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`description`)) {
        TraceAnnotationExperimentalObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`index`)) {
        TraceAnnotationExperimentalObject[["index"]] <-
          self$`index`
      }
      if (!is.null(self$`from`)) {
        TraceAnnotationExperimentalObject[["from"]] <-
          self$`from`
      }
      if (!is.null(self$`to`)) {
        TraceAnnotationExperimentalObject[["to"]] <-
          self$`to`
      }
      TraceAnnotationExperimentalObject
    },

    #' @description
    #' Deserialize JSON string into an instance of TraceAnnotationExperimental
    #'
    #' @param input_json the JSON input
    #' @return the instance of TraceAnnotationExperimental
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`type`)) {
        if (!is.null(this_object$`type`) && !(this_object$`type` %in% c("FEATURE", "MS2"))) {
          stop(paste("Error! \"", this_object$`type`, "\" cannot be assigned to `type`. Must be \"FEATURE\", \"MS2\".", sep = ""))
        }
        self$`type` <- this_object$`type`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`index`)) {
        self$`index` <- this_object$`index`
      }
      if (!is.null(this_object$`from`)) {
        self$`from` <- this_object$`from`
      }
      if (!is.null(this_object$`to`)) {
        self$`to` <- this_object$`to`
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return TraceAnnotationExperimental in JSON format
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`type`)) {
          sprintf(
          '"type":
            "%s"
                    ',
          self$`type`
          )
        },
        if (!is.null(self$`description`)) {
          sprintf(
          '"description":
            "%s"
                    ',
          self$`description`
          )
        },
        if (!is.null(self$`index`)) {
          sprintf(
          '"index":
            %d
                    ',
          self$`index`
          )
        },
        if (!is.null(self$`from`)) {
          sprintf(
          '"from":
            %d
                    ',
          self$`from`
          )
        },
        if (!is.null(self$`to`)) {
          sprintf(
          '"to":
            %d
                    ',
          self$`to`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },

    #' @description
    #' Deserialize JSON string into an instance of TraceAnnotationExperimental
    #'
    #' @param input_json the JSON input
    #' @return the instance of TraceAnnotationExperimental
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`type`) && !(this_object$`type` %in% c("FEATURE", "MS2"))) {
        stop(paste("Error! \"", this_object$`type`, "\" cannot be assigned to `type`. Must be \"FEATURE\", \"MS2\".", sep = ""))
      }
      self$`type` <- this_object$`type`
      self$`description` <- this_object$`description`
      self$`index` <- this_object$`index`
      self$`from` <- this_object$`from`
      self$`to` <- this_object$`to`
      self
    },

    #' @description
    #' Validate JSON input with respect to TraceAnnotationExperimental and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TraceAnnotationExperimental
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
# TraceAnnotationExperimental$unlock()
#
## Below is an example to define the print function
# TraceAnnotationExperimental$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TraceAnnotationExperimental$lock()

