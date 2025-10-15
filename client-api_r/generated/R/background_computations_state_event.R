#' Create a new BackgroundComputationsStateEvent
#'
#' @description
#' BackgroundComputationsStateEvent Class
#'
#' @docType class
#' @title BackgroundComputationsStateEvent
#' @description BackgroundComputationsStateEvent Class
#' @format An \code{R6Class} generator object
#' @field affectedJobs  list(\link{Job})
#' @field numberOfJobs  integer
#' @field numberOfRunningJobs  integer
#' @field numberOfFinishedJobs  integer
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BackgroundComputationsStateEvent <- R6::R6Class(
  "BackgroundComputationsStateEvent",
  public = list(
    `affectedJobs` = NULL,
    `numberOfJobs` = NULL,
    `numberOfRunningJobs` = NULL,
    `numberOfFinishedJobs` = NULL,

    #' @description
    #' Initialize a new BackgroundComputationsStateEvent class.
    #'
    #' @param affectedJobs affectedJobs
    #' @param numberOfJobs numberOfJobs
    #' @param numberOfRunningJobs numberOfRunningJobs
    #' @param numberOfFinishedJobs numberOfFinishedJobs
    #' @param ... Other optional arguments.
    initialize = function(`affectedJobs`, `numberOfJobs`, `numberOfRunningJobs`, `numberOfFinishedJobs`, ...) {
      if (!missing(`affectedJobs`)) {
        stopifnot(is.vector(`affectedJobs`), length(`affectedJobs`) != 0)
        sapply(`affectedJobs`, function(x) stopifnot(R6::is.R6(x)))
        self$`affectedJobs` <- `affectedJobs`
      }
      if (!missing(`numberOfJobs`)) {
        if (!(is.numeric(`numberOfJobs`) && length(`numberOfJobs`) == 1)) {
          stop(paste("Error! Invalid data for `numberOfJobs`. Must be an integer:", `numberOfJobs`))
        }
        self$`numberOfJobs` <- `numberOfJobs`
      }
      if (!missing(`numberOfRunningJobs`)) {
        if (!(is.numeric(`numberOfRunningJobs`) && length(`numberOfRunningJobs`) == 1)) {
          stop(paste("Error! Invalid data for `numberOfRunningJobs`. Must be an integer:", `numberOfRunningJobs`))
        }
        self$`numberOfRunningJobs` <- `numberOfRunningJobs`
      }
      if (!missing(`numberOfFinishedJobs`)) {
        if (!(is.numeric(`numberOfFinishedJobs`) && length(`numberOfFinishedJobs`) == 1)) {
          stop(paste("Error! Invalid data for `numberOfFinishedJobs`. Must be an integer:", `numberOfFinishedJobs`))
        }
        self$`numberOfFinishedJobs` <- `numberOfFinishedJobs`
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
    #' @return BackgroundComputationsStateEvent as a base R list.
    #' @examples
    #' # convert array of BackgroundComputationsStateEvent (x) to a data frame
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
    #' Convert BackgroundComputationsStateEvent to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      BackgroundComputationsStateEventObject <- list()
      if (!is.null(self$`affectedJobs`)) {
        BackgroundComputationsStateEventObject[["affectedJobs"]] <-
          lapply(self$`affectedJobs`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`numberOfJobs`)) {
        BackgroundComputationsStateEventObject[["numberOfJobs"]] <-
          self$`numberOfJobs`
      }
      if (!is.null(self$`numberOfRunningJobs`)) {
        BackgroundComputationsStateEventObject[["numberOfRunningJobs"]] <-
          self$`numberOfRunningJobs`
      }
      if (!is.null(self$`numberOfFinishedJobs`)) {
        BackgroundComputationsStateEventObject[["numberOfFinishedJobs"]] <-
          self$`numberOfFinishedJobs`
      }
      return(BackgroundComputationsStateEventObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of BackgroundComputationsStateEvent
    #'
    #' @param input_json the JSON input
    #' @return the instance of BackgroundComputationsStateEvent
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`affectedJobs`)) {
        self$`affectedJobs` <- ApiClient$new()$deserializeObj(this_object$`affectedJobs`, "array[Job]", loadNamespace("RSirius"))
      }
      if (!is.null(this_object$`numberOfJobs`)) {
        self$`numberOfJobs` <- this_object$`numberOfJobs`
      }
      if (!is.null(this_object$`numberOfRunningJobs`)) {
        self$`numberOfRunningJobs` <- this_object$`numberOfRunningJobs`
      }
      if (!is.null(this_object$`numberOfFinishedJobs`)) {
        self$`numberOfFinishedJobs` <- this_object$`numberOfFinishedJobs`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return BackgroundComputationsStateEvent in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of BackgroundComputationsStateEvent
    #'
    #' @param input_json the JSON input
    #' @return the instance of BackgroundComputationsStateEvent
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`affectedJobs` <- ApiClient$new()$deserializeObj(this_object$`affectedJobs`, "array[Job]", loadNamespace("RSirius"))
      self$`numberOfJobs` <- this_object$`numberOfJobs`
      self$`numberOfRunningJobs` <- this_object$`numberOfRunningJobs`
      self$`numberOfFinishedJobs` <- this_object$`numberOfFinishedJobs`
      self
    },

    #' @description
    #' Validate JSON input with respect to BackgroundComputationsStateEvent and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `affectedJobs`
      if (!is.null(input_json$`affectedJobs`)) {
        stopifnot(is.vector(input_json$`affectedJobs`), length(input_json$`affectedJobs`) != 0)
        tmp <- sapply(input_json$`affectedJobs`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BackgroundComputationsStateEvent: the required field `affectedJobs` is missing."))
      }
      # check the required field `numberOfJobs`
      if (!is.null(input_json$`numberOfJobs`)) {
        if (!(is.numeric(input_json$`numberOfJobs`) && length(input_json$`numberOfJobs`) == 1)) {
          stop(paste("Error! Invalid data for `numberOfJobs`. Must be an integer:", input_json$`numberOfJobs`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BackgroundComputationsStateEvent: the required field `numberOfJobs` is missing."))
      }
      # check the required field `numberOfRunningJobs`
      if (!is.null(input_json$`numberOfRunningJobs`)) {
        if (!(is.numeric(input_json$`numberOfRunningJobs`) && length(input_json$`numberOfRunningJobs`) == 1)) {
          stop(paste("Error! Invalid data for `numberOfRunningJobs`. Must be an integer:", input_json$`numberOfRunningJobs`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BackgroundComputationsStateEvent: the required field `numberOfRunningJobs` is missing."))
      }
      # check the required field `numberOfFinishedJobs`
      if (!is.null(input_json$`numberOfFinishedJobs`)) {
        if (!(is.numeric(input_json$`numberOfFinishedJobs`) && length(input_json$`numberOfFinishedJobs`) == 1)) {
          stop(paste("Error! Invalid data for `numberOfFinishedJobs`. Must be an integer:", input_json$`numberOfFinishedJobs`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BackgroundComputationsStateEvent: the required field `numberOfFinishedJobs` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of BackgroundComputationsStateEvent
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `affectedJobs` is null
      if (is.null(self$`affectedJobs`)) {
        return(FALSE)
      }

      # check if the required `numberOfJobs` is null
      if (is.null(self$`numberOfJobs`)) {
        return(FALSE)
      }

      # check if the required `numberOfRunningJobs` is null
      if (is.null(self$`numberOfRunningJobs`)) {
        return(FALSE)
      }

      # check if the required `numberOfFinishedJobs` is null
      if (is.null(self$`numberOfFinishedJobs`)) {
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
      # check if the required `affectedJobs` is null
      if (is.null(self$`affectedJobs`)) {
        invalid_fields["affectedJobs"] <- "Non-nullable required field `affectedJobs` cannot be null."
      }

      # check if the required `numberOfJobs` is null
      if (is.null(self$`numberOfJobs`)) {
        invalid_fields["numberOfJobs"] <- "Non-nullable required field `numberOfJobs` cannot be null."
      }

      # check if the required `numberOfRunningJobs` is null
      if (is.null(self$`numberOfRunningJobs`)) {
        invalid_fields["numberOfRunningJobs"] <- "Non-nullable required field `numberOfRunningJobs` cannot be null."
      }

      # check if the required `numberOfFinishedJobs` is null
      if (is.null(self$`numberOfFinishedJobs`)) {
        invalid_fields["numberOfFinishedJobs"] <- "Non-nullable required field `numberOfFinishedJobs` cannot be null."
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
# BackgroundComputationsStateEvent$unlock()
#
## Below is an example to define the print function
# BackgroundComputationsStateEvent$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# BackgroundComputationsStateEvent$lock()

