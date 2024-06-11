#' Create a new TraceSet
#'
#' @description
#' TraceSet Class
#'
#' @docType class
#' @title TraceSet
#' @description TraceSet Class
#' @format An \code{R6Class} generator object
#' @field sampleId  integer [optional]
#' @field sampleName  character [optional]
#' @field axes  \link{Axes} [optional]
#' @field traces  list(\link{Trace}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TraceSet <- R6::R6Class(
  "TraceSet",
  public = list(
    `sampleId` = NULL,
    `sampleName` = NULL,
    `axes` = NULL,
    `traces` = NULL,
    #' Initialize a new TraceSet class.
    #'
    #' @description
    #' Initialize a new TraceSet class.
    #'
    #' @param sampleId sampleId
    #' @param sampleName sampleName
    #' @param axes axes
    #' @param traces traces
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`sampleId` = NULL, `sampleName` = NULL, `axes` = NULL, `traces` = NULL, ...) {
      if (!is.null(`sampleId`)) {
        if (!(is.numeric(`sampleId`) && length(`sampleId`) == 1)) {
          stop(paste("Error! Invalid data for `sampleId`. Must be an integer:", `sampleId`))
        }
        self$`sampleId` <- `sampleId`
      }
      if (!is.null(`sampleName`)) {
        if (!(is.character(`sampleName`) && length(`sampleName`) == 1)) {
          stop(paste("Error! Invalid data for `sampleName`. Must be a string:", `sampleName`))
        }
        self$`sampleName` <- `sampleName`
      }
      if (!is.null(`axes`)) {
        stopifnot(R6::is.R6(`axes`))
        self$`axes` <- `axes`
      }
      if (!is.null(`traces`)) {
        stopifnot(is.vector(`traces`), length(`traces`) != 0)
        sapply(`traces`, function(x) stopifnot(R6::is.R6(x)))
        self$`traces` <- `traces`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return TraceSet in JSON format
    #' @export
    toJSON = function() {
      TraceSetObject <- list()
      if (!is.null(self$`sampleId`)) {
        TraceSetObject[["sampleId"]] <-
          self$`sampleId`
      }
      if (!is.null(self$`sampleName`)) {
        TraceSetObject[["sampleName"]] <-
          self$`sampleName`
      }
      if (!is.null(self$`axes`)) {
        TraceSetObject[["axes"]] <-
          if (is.list(self$`axes`$toJSON()) && length(self$`axes`$toJSON()) == 0L){
            NULL
          } else if (length(names(self$`axes`$toJSON())) == 0L && is.character(jsonlite::fromJSON(self$`axes`$toJSON()))) {
            jsonlite::fromJSON(self$`axes`$toJSON())
          } else {
            self$`axes`$toJSON()
          }
      }
      if (!is.null(self$`traces`)) {
        TraceSetObject[["traces"]] <-
          lapply(self$`traces`, function(x) x$toJSON())
      }
      TraceSetObject
    },
    #' Deserialize JSON string into an instance of TraceSet
    #'
    #' @description
    #' Deserialize JSON string into an instance of TraceSet
    #'
    #' @param input_json the JSON input
    #' @return the instance of TraceSet
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`sampleId`)) {
        self$`sampleId` <- this_object$`sampleId`
      }
      if (!is.null(this_object$`sampleName`)) {
        self$`sampleName` <- this_object$`sampleName`
      }
      if (!is.null(this_object$`axes`)) {
        `axes_object` <- Axes$new()
        `axes_object`$fromJSON(jsonlite::toJSON(this_object$`axes`, auto_unbox = TRUE, digits = NA))
        self$`axes` <- `axes_object`
      }
      if (!is.null(this_object$`traces`)) {
        self$`traces` <- ApiClient$new()$deserializeObj(this_object$`traces`, "array[Trace]", loadNamespace("Rsirius"))
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return TraceSet in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`sampleId`)) {
          sprintf(
          '"sampleId":
            %d
                    ',
          self$`sampleId`
          )
        },
        if (!is.null(self$`sampleName`)) {
          sprintf(
          '"sampleName":
            "%s"
                    ',
          self$`sampleName`
          )
        },
        if (!is.null(self$`axes`)) {
          sprintf(
          '"axes":
          %s
          ',
          jsonlite::toJSON(self$`axes`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`traces`)) {
          sprintf(
          '"traces":
          [%s]
',
          paste(sapply(self$`traces`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of TraceSet
    #'
    #' @description
    #' Deserialize JSON string into an instance of TraceSet
    #'
    #' @param input_json the JSON input
    #' @return the instance of TraceSet
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`sampleId` <- this_object$`sampleId`
      self$`sampleName` <- this_object$`sampleName`
      self$`axes` <- Axes$new()$fromJSON(jsonlite::toJSON(this_object$`axes`, auto_unbox = TRUE, digits = NA))
      self$`traces` <- ApiClient$new()$deserializeObj(this_object$`traces`, "array[Trace]", loadNamespace("Rsirius"))
      self
    },
    #' Validate JSON input with respect to TraceSet
    #'
    #' @description
    #' Validate JSON input with respect to TraceSet and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TraceSet
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
# TraceSet$unlock()
#
## Below is an example to define the print function
# TraceSet$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TraceSet$lock()

