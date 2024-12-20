#' Create a new TraceSetExperimental
#'
#' @description
#' EXPERIMENTAL: This schema is experimental and may be changed (or even removed) without notice until it is declared stable.
#'
#' @docType class
#' @title TraceSetExperimental
#' @description TraceSetExperimental Class
#' @format An \code{R6Class} generator object
#' @field adductNetwork  \link{AdductNetworkExperimental} [optional]
#' @field sampleId  integer [optional]
#' @field sampleName  character [optional]
#' @field axes  \link{Axes} [optional]
#' @field traces  list(\link{TraceExperimental}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TraceSetExperimental <- R6::R6Class(
  "TraceSetExperimental",
  public = list(
    `adductNetwork` = NULL,
    `sampleId` = NULL,
    `sampleName` = NULL,
    `axes` = NULL,
    `traces` = NULL,
    #' Initialize a new TraceSetExperimental class.
    #'
    #' @description
    #' Initialize a new TraceSetExperimental class.
    #'
    #' @param adductNetwork adductNetwork
    #' @param sampleId sampleId
    #' @param sampleName sampleName
    #' @param axes axes
    #' @param traces traces
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`adductNetwork` = NULL, `sampleId` = NULL, `sampleName` = NULL, `axes` = NULL, `traces` = NULL, ...) {
      if (!is.null(`adductNetwork`)) {
        stopifnot(R6::is.R6(`adductNetwork`))
        self$`adductNetwork` <- `adductNetwork`
      }
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
    #' @return TraceSetExperimental in JSON format
    #' @export
    toJSON = function() {
      TraceSetExperimentalObject <- list()
      if (!is.null(self$`adductNetwork`)) {
        TraceSetExperimentalObject[["adductNetwork"]] <-
          if (is.list(self$`adductNetwork`$toJSON()) && length(self$`adductNetwork`$toJSON()) == 0L){
            NULL
          } else if (length(names(self$`adductNetwork`$toJSON())) == 0L && is.character(jsonlite::fromJSON(self$`adductNetwork`$toJSON()))) {
            jsonlite::fromJSON(self$`adductNetwork`$toJSON())
          } else {
            self$`adductNetwork`$toJSON()
          }
      }
      if (!is.null(self$`sampleId`)) {
        TraceSetExperimentalObject[["sampleId"]] <-
          self$`sampleId`
      }
      if (!is.null(self$`sampleName`)) {
        TraceSetExperimentalObject[["sampleName"]] <-
          self$`sampleName`
      }
      if (!is.null(self$`axes`)) {
        TraceSetExperimentalObject[["axes"]] <-
          if (is.list(self$`axes`$toJSON()) && length(self$`axes`$toJSON()) == 0L){
            NULL
          } else if (length(names(self$`axes`$toJSON())) == 0L && is.character(jsonlite::fromJSON(self$`axes`$toJSON()))) {
            jsonlite::fromJSON(self$`axes`$toJSON())
          } else {
            self$`axes`$toJSON()
          }
      }
      if (!is.null(self$`traces`)) {
        TraceSetExperimentalObject[["traces"]] <-
          lapply(self$`traces`, function(x) x$toJSON())
      }
      TraceSetExperimentalObject
    },
    #' Deserialize JSON string into an instance of TraceSetExperimental
    #'
    #' @description
    #' Deserialize JSON string into an instance of TraceSetExperimental
    #'
    #' @param input_json the JSON input
    #' @return the instance of TraceSetExperimental
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`adductNetwork`)) {
        `adductnetwork_object` <- AdductNetworkExperimental$new()
        `adductnetwork_object`$fromJSON(jsonlite::toJSON(this_object$`adductNetwork`, auto_unbox = TRUE, digits = NA))
        self$`adductNetwork` <- `adductnetwork_object`
      }
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
        self$`traces` <- ApiClient$new()$deserializeObj(this_object$`traces`, "array[TraceExperimental]", loadNamespace("Rsirius"))
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return TraceSetExperimental in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`adductNetwork`)) {
          sprintf(
          '"adductNetwork":
          %s
          ',
          jsonlite::toJSON(self$`adductNetwork`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`sampleId`)) {
          sprintf(
          '"sampleId":
            %f
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
      # remove c() occurences and reduce resulting double escaped quotes \"\" into \"
      jsoncontent <- gsub('\\\"c\\((.*?)\\\"\\)', '\\1', jsoncontent)
      # fix wrong serialization of "\"ENUM\"" to "ENUM"
      jsoncontent <- gsub("\\\\\"([A-Z]+)\\\\\"", "\\1", jsoncontent)
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of TraceSetExperimental
    #'
    #' @description
    #' Deserialize JSON string into an instance of TraceSetExperimental
    #'
    #' @param input_json the JSON input
    #' @return the instance of TraceSetExperimental
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`adductNetwork` <- AdductNetworkExperimental$new()$fromJSON(jsonlite::toJSON(this_object$`adductNetwork`, auto_unbox = TRUE, digits = NA))
      self$`sampleId` <- this_object$`sampleId`
      self$`sampleName` <- this_object$`sampleName`
      self$`axes` <- Axes$new()$fromJSON(jsonlite::toJSON(this_object$`axes`, auto_unbox = TRUE, digits = NA))
      self$`traces` <- ApiClient$new()$deserializeObj(this_object$`traces`, "array[TraceExperimental]", loadNamespace("Rsirius"))
      self
    },
    #' Validate JSON input with respect to TraceSetExperimental
    #'
    #' @description
    #' Validate JSON input with respect to TraceSetExperimental and throw an exception if invalid
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
    #' @return String representation of TraceSetExperimental
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
# TraceSetExperimental$unlock()
#
## Below is an example to define the print function
# TraceSetExperimental$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TraceSetExperimental$lock()

