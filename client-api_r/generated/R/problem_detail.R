#' Create a new ProblemDetail
#'
#' @description
#' ProblemDetail Class
#'
#' @docType class
#' @title ProblemDetail
#' @description ProblemDetail Class
#' @format An \code{R6Class} generator object
#' @field type  character [optional]
#' @field title  character [optional]
#' @field status  integer [optional]
#' @field detail  character [optional]
#' @field instance  character [optional]
#' @field properties  named list(object) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ProblemDetail <- R6::R6Class(
  "ProblemDetail",
  public = list(
    `type` = NULL,
    `title` = NULL,
    `status` = NULL,
    `detail` = NULL,
    `instance` = NULL,
    `properties` = NULL,

    #' @description
    #' Initialize a new ProblemDetail class.
    #'
    #' @param type type
    #' @param title title
    #' @param status status
    #' @param detail detail
    #' @param instance instance
    #' @param properties properties
    #' @param ... Other optional arguments.
    initialize = function(`type` = NULL, `title` = NULL, `status` = NULL, `detail` = NULL, `instance` = NULL, `properties` = NULL, ...) {
      if (!is.null(`type`)) {
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(`type`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid data for `type`. Must be a URL:", `type`))
        }
        self$`type` <- `type`
      }
      if (!is.null(`title`)) {
        if (!(is.character(`title`) && length(`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", `title`))
        }
        self$`title` <- `title`
      }
      if (!is.null(`status`)) {
        if (!(is.numeric(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be an integer:", `status`))
        }
        self$`status` <- `status`
      }
      if (!is.null(`detail`)) {
        if (!(is.character(`detail`) && length(`detail`) == 1)) {
          stop(paste("Error! Invalid data for `detail`. Must be a string:", `detail`))
        }
        self$`detail` <- `detail`
      }
      if (!is.null(`instance`)) {
        if (!(is.character(`instance`) && length(`instance`) == 1)) {
          stop(paste("Error! Invalid data for `instance`. Must be a string:", `instance`))
        }
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(`instance`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid data for `instance`. Must be a URL:", `instance`))
        }
        self$`instance` <- `instance`
      }
      if (!is.null(`properties`)) {
        stopifnot(is.vector(`properties`), length(`properties`) != 0)
        sapply(`properties`, function(x) stopifnot(is.character(x)))
        self$`properties` <- `properties`
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
    #' @return ProblemDetail as a base R list.
    #' @examples
    #' # convert array of ProblemDetail (x) to a data frame
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
    #' Convert ProblemDetail to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ProblemDetailObject <- list()
      if (!is.null(self$`type`)) {
        ProblemDetailObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`title`)) {
        ProblemDetailObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`status`)) {
        ProblemDetailObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`detail`)) {
        ProblemDetailObject[["detail"]] <-
          self$`detail`
      }
      if (!is.null(self$`instance`)) {
        ProblemDetailObject[["instance"]] <-
          self$`instance`
      }
      if (!is.null(self$`properties`)) {
        ProblemDetailObject[["properties"]] <-
          self$`properties`
      }
      return(ProblemDetailObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ProblemDetail
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProblemDetail
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`type`)) {
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(this_object$`type`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid data for `type`. Must be a URL:", this_object$`type`))
        }
        self$`type` <- this_object$`type`
      }
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      if (!is.null(this_object$`status`)) {
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`detail`)) {
        self$`detail` <- this_object$`detail`
      }
      if (!is.null(this_object$`instance`)) {
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(this_object$`instance`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid data for `instance`. Must be a URL:", this_object$`instance`))
        }
        self$`instance` <- this_object$`instance`
      }
      if (!is.null(this_object$`properties`)) {
        self$`properties` <- ApiClient$new()$deserializeObj(this_object$`properties`, "map(object)", loadNamespace("RSirius"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ProblemDetail in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ProblemDetail
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProblemDetail
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
      if (!stringr::str_detect(this_object$`type`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
        stop(paste("Error! Invalid data for `type`. Must be a URL:", this_object$`type`))
      }
      self$`type` <- this_object$`type`
      self$`title` <- this_object$`title`
      self$`status` <- this_object$`status`
      self$`detail` <- this_object$`detail`
      # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
      if (!stringr::str_detect(this_object$`instance`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
        stop(paste("Error! Invalid data for `instance`. Must be a URL:", this_object$`instance`))
      }
      self$`instance` <- this_object$`instance`
      self$`properties` <- ApiClient$new()$deserializeObj(this_object$`properties`, "map(object)", loadNamespace("RSirius"))
      self
    },

    #' @description
    #' Validate JSON input with respect to ProblemDetail and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ProblemDetail
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
# ProblemDetail$unlock()
#
## Below is an example to define the print function
# ProblemDetail$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ProblemDetail$lock()

