#' Create a new JobProgress
#'
#' @description
#' Progress information of a computation job that has already been submitted to SIRIUS.  if  currentProgress == maxProgress job is finished and should change to state done soon.  if a job is DONE all results can be accessed via the Project-Spaces api.
#'
#' @docType class
#' @title JobProgress
#' @description JobProgress Class
#' @format An \code{R6Class} generator object
#' @field indeterminate Is the progress indeterminate or not character [optional]
#' @field state Current state of the Jobs in the SIRIUS internal Job scheduler           WAITING: Waiting for submission to ExecutorService (e.g. due to dependent jobs)          READY: Ready for submission but not yet enqueued for submission to ExecutorService.          QUEUED: Enqueued for submission to ExecutorService.          SUBMITTED: Submitted and waiting to be executed.          RUNNING: Job is running.          CANCELED: Jobs is finished due to cancellation by user or dependent jobs.          FAILED: Job is finished but failed.          DONE: Job finished successfully. character [optional]
#' @field currentProgress Current progress value of the job. integer [optional]
#' @field maxProgress Progress value to reach (might also change during execution) integer [optional]
#' @field message Progress information and warnings. character [optional]
#' @field errorMessage Error message if the job did not finish successfully failed. character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
JobProgress <- R6::R6Class(
  "JobProgress",
  public = list(
    `indeterminate` = NULL,
    `state` = NULL,
    `currentProgress` = NULL,
    `maxProgress` = NULL,
    `message` = NULL,
    `errorMessage` = NULL,

    #' @description
    #' Initialize a new JobProgress class.
    #'
    #' @param indeterminate Is the progress indeterminate or not
    #' @param state Current state of the Jobs in the SIRIUS internal Job scheduler           WAITING: Waiting for submission to ExecutorService (e.g. due to dependent jobs)          READY: Ready for submission but not yet enqueued for submission to ExecutorService.          QUEUED: Enqueued for submission to ExecutorService.          SUBMITTED: Submitted and waiting to be executed.          RUNNING: Job is running.          CANCELED: Jobs is finished due to cancellation by user or dependent jobs.          FAILED: Job is finished but failed.          DONE: Job finished successfully.
    #' @param currentProgress Current progress value of the job.
    #' @param maxProgress Progress value to reach (might also change during execution)
    #' @param message Progress information and warnings.
    #' @param errorMessage Error message if the job did not finish successfully failed.
    #' @param ... Other optional arguments.
    initialize = function(`indeterminate` = NULL, `state` = NULL, `currentProgress` = NULL, `maxProgress` = NULL, `message` = NULL, `errorMessage` = NULL, ...) {
      if (!is.null(`indeterminate`)) {
        if (!(is.logical(`indeterminate`) && length(`indeterminate`) == 1)) {
          stop(paste("Error! Invalid data for `indeterminate`. Must be a boolean:", `indeterminate`))
        }
        self$`indeterminate` <- `indeterminate`
      }
      if (!is.null(`state`)) {
        if (!(`state` %in% c("WAITING", "READY", "QUEUED", "SUBMITTED", "RUNNING", "CANCELED", "FAILED", "DONE"))) {
          stop(paste("Error! \"", `state`, "\" cannot be assigned to `state`. Must be \"WAITING\", \"READY\", \"QUEUED\", \"SUBMITTED\", \"RUNNING\", \"CANCELED\", \"FAILED\", \"DONE\".", sep = ""))
        }
        if (!(is.character(`state`) && length(`state`) == 1)) {
          stop(paste("Error! Invalid data for `state`. Must be a string:", `state`))
        }
        self$`state` <- `state`
      }
      if (!is.null(`currentProgress`)) {
        if (!(is.numeric(`currentProgress`) && length(`currentProgress`) == 1)) {
          stop(paste("Error! Invalid data for `currentProgress`. Must be an integer:", `currentProgress`))
        }
        self$`currentProgress` <- `currentProgress`
      }
      if (!is.null(`maxProgress`)) {
        if (!(is.numeric(`maxProgress`) && length(`maxProgress`) == 1)) {
          stop(paste("Error! Invalid data for `maxProgress`. Must be an integer:", `maxProgress`))
        }
        self$`maxProgress` <- `maxProgress`
      }
      if (!is.null(`message`)) {
        if (!(is.character(`message`) && length(`message`) == 1)) {
          stop(paste("Error! Invalid data for `message`. Must be a string:", `message`))
        }
        self$`message` <- `message`
      }
      if (!is.null(`errorMessage`)) {
        if (!(is.character(`errorMessage`) && length(`errorMessage`) == 1)) {
          stop(paste("Error! Invalid data for `errorMessage`. Must be a string:", `errorMessage`))
        }
        self$`errorMessage` <- `errorMessage`
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
    #' @return JobProgress as a base R list.
    #' @examples
    #' # convert array of JobProgress (x) to a data frame
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
    #' Convert JobProgress to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      JobProgressObject <- list()
      if (!is.null(self$`indeterminate`)) {
        JobProgressObject[["indeterminate"]] <-
          self$`indeterminate`
      }
      if (!is.null(self$`state`)) {
        JobProgressObject[["state"]] <-
          self$`state`
      }
      if (!is.null(self$`currentProgress`)) {
        JobProgressObject[["currentProgress"]] <-
          self$`currentProgress`
      }
      if (!is.null(self$`maxProgress`)) {
        JobProgressObject[["maxProgress"]] <-
          self$`maxProgress`
      }
      if (!is.null(self$`message`)) {
        JobProgressObject[["message"]] <-
          self$`message`
      }
      if (!is.null(self$`errorMessage`)) {
        JobProgressObject[["errorMessage"]] <-
          self$`errorMessage`
      }
      return(JobProgressObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of JobProgress
    #'
    #' @param input_json the JSON input
    #' @return the instance of JobProgress
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`indeterminate`)) {
        self$`indeterminate` <- this_object$`indeterminate`
      }
      if (!is.null(this_object$`state`)) {
        if (!is.null(this_object$`state`) && !(this_object$`state` %in% c("WAITING", "READY", "QUEUED", "SUBMITTED", "RUNNING", "CANCELED", "FAILED", "DONE"))) {
          stop(paste("Error! \"", this_object$`state`, "\" cannot be assigned to `state`. Must be \"WAITING\", \"READY\", \"QUEUED\", \"SUBMITTED\", \"RUNNING\", \"CANCELED\", \"FAILED\", \"DONE\".", sep = ""))
        }
        self$`state` <- this_object$`state`
      }
      if (!is.null(this_object$`currentProgress`)) {
        self$`currentProgress` <- this_object$`currentProgress`
      }
      if (!is.null(this_object$`maxProgress`)) {
        self$`maxProgress` <- this_object$`maxProgress`
      }
      if (!is.null(this_object$`message`)) {
        self$`message` <- this_object$`message`
      }
      if (!is.null(this_object$`errorMessage`)) {
        self$`errorMessage` <- this_object$`errorMessage`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return JobProgress in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of JobProgress
    #'
    #' @param input_json the JSON input
    #' @return the instance of JobProgress
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`indeterminate` <- this_object$`indeterminate`
      if (!is.null(this_object$`state`) && !(this_object$`state` %in% c("WAITING", "READY", "QUEUED", "SUBMITTED", "RUNNING", "CANCELED", "FAILED", "DONE"))) {
        stop(paste("Error! \"", this_object$`state`, "\" cannot be assigned to `state`. Must be \"WAITING\", \"READY\", \"QUEUED\", \"SUBMITTED\", \"RUNNING\", \"CANCELED\", \"FAILED\", \"DONE\".", sep = ""))
      }
      self$`state` <- this_object$`state`
      self$`currentProgress` <- this_object$`currentProgress`
      self$`maxProgress` <- this_object$`maxProgress`
      self$`message` <- this_object$`message`
      self$`errorMessage` <- this_object$`errorMessage`
      self
    },

    #' @description
    #' Validate JSON input with respect to JobProgress and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of JobProgress
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
# JobProgress$unlock()
#
## Below is an example to define the print function
# JobProgress$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# JobProgress$lock()

