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
#' @field sampleId  character [optional]
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

    #' @description
    #' Initialize a new TraceSetExperimental class.
    #'
    #' @param adductNetwork adductNetwork
    #' @param sampleId sampleId
    #' @param sampleName sampleName
    #' @param axes axes
    #' @param traces traces
    #' @param ... Other optional arguments.
    initialize = function(`adductNetwork` = NULL, `sampleId` = NULL, `sampleName` = NULL, `axes` = NULL, `traces` = NULL, ...) {
      if (!is.null(`adductNetwork`)) {
        stopifnot(R6::is.R6(`adductNetwork`))
        self$`adductNetwork` <- `adductNetwork`
      }
      if (!is.null(`sampleId`)) {
        if (!(is.character(`sampleId`) && length(`sampleId`) == 1)) {
          stop(paste("Error! Invalid data for `sampleId`. Must be a string:", `sampleId`))
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
    #' @return TraceSetExperimental as a base R list.
    #' @examples
    #' # convert array of TraceSetExperimental (x) to a data frame
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
    #' Convert TraceSetExperimental to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      TraceSetExperimentalObject <- list()
      if (!is.null(self$`adductNetwork`)) {
        TraceSetExperimentalObject[["adductNetwork"]] <-
          self$`adductNetwork`$toSimpleType()
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
          self$`axes`$toSimpleType()
      }
      if (!is.null(self$`traces`)) {
        TraceSetExperimentalObject[["traces"]] <-
          lapply(self$`traces`, function(x) x$toSimpleType())
      }
      return(TraceSetExperimentalObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of TraceSetExperimental
    #'
    #' @param input_json the JSON input
    #' @return the instance of TraceSetExperimental
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`adductNetwork`)) {
        `adductnetwork_object` <- AdductNetworkExperimental$new()
        `adductnetwork_object`$fromJSON(jsonlite::toJSON(this_object$`adductNetwork`, auto_unbox = TRUE, digits = NA, null = 'null'))
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
        `axes_object`$fromJSON(jsonlite::toJSON(this_object$`axes`, auto_unbox = TRUE, digits = NA, null = 'null'))
        self$`axes` <- `axes_object`
      }
      if (!is.null(this_object$`traces`)) {
        self$`traces` <- ApiClient$new()$deserializeObj(this_object$`traces`, "array[TraceExperimental]", loadNamespace("RSirius"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return TraceSetExperimental in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of TraceSetExperimental
    #'
    #' @param input_json the JSON input
    #' @return the instance of TraceSetExperimental
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`adductNetwork` <- AdductNetworkExperimental$new()$fromJSON(jsonlite::toJSON(this_object$`adductNetwork`, auto_unbox = TRUE, digits = NA, null = 'null'))
      self$`sampleId` <- this_object$`sampleId`
      self$`sampleName` <- this_object$`sampleName`
      self$`axes` <- Axes$new()$fromJSON(jsonlite::toJSON(this_object$`axes`, auto_unbox = TRUE, digits = NA, null = 'null'))
      self$`traces` <- ApiClient$new()$deserializeObj(this_object$`traces`, "array[TraceExperimental]", loadNamespace("RSirius"))
      self
    },

    #' @description
    #' Validate JSON input with respect to TraceSetExperimental and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TraceSetExperimental
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
# TraceSetExperimental$unlock()
#
## Below is an example to define the print function
# TraceSetExperimental$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TraceSetExperimental$lock()

