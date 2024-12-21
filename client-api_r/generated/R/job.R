#' Create a new Job
#'
#' @description
#' Identifier created by the SIRIUS Nightsky API for a newly created Job.  Object can be enriched with Job status/progress information ({@link JobProgress JobProgress}) and/or Job command information.  This is a return value of the API. So nullable values can also be NOT_REQUIRED to allow for easy removal.
#'
#' @docType class
#' @title Job
#' @description Job Class
#' @format An \code{R6Class} generator object
#' @field id Unique identifier to access the job via the API character [optional]
#' @field command Command string of the executed Task character [optional]
#' @field progress  \link{JobProgress} [optional]
#' @field affectedCompoundIds List of compoundIds that are affected by this job.  This lis will also contain compoundIds where not all features of the compound are affected by the job.  If this job is creating compounds (e.g. data import jobs) this value will be NULL until the jobs has finished list(character) [optional]
#' @field affectedAlignedFeatureIds List of alignedFeatureIds that are affected by this job.  If this job is creating features (e.g. data import jobs) this value will be NULL until the jobs has finished list(character) [optional]
#' @field jobEffect Effect this job has. The affected ids are added, removed or modified.  Null if job does not affect features/compounds  Not available/null if affected Ids are not requested character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Job <- R6::R6Class(
  "Job",
  public = list(
    `id` = NULL,
    `command` = NULL,
    `progress` = NULL,
    `affectedCompoundIds` = NULL,
    `affectedAlignedFeatureIds` = NULL,
    `jobEffect` = NULL,

    #' @description
    #' Initialize a new Job class.
    #'
    #' @param id Unique identifier to access the job via the API
    #' @param command Command string of the executed Task
    #' @param progress progress
    #' @param affectedCompoundIds List of compoundIds that are affected by this job.  This lis will also contain compoundIds where not all features of the compound are affected by the job.  If this job is creating compounds (e.g. data import jobs) this value will be NULL until the jobs has finished
    #' @param affectedAlignedFeatureIds List of alignedFeatureIds that are affected by this job.  If this job is creating features (e.g. data import jobs) this value will be NULL until the jobs has finished
    #' @param jobEffect Effect this job has. The affected ids are added, removed or modified.  Null if job does not affect features/compounds  Not available/null if affected Ids are not requested
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `command` = NULL, `progress` = NULL, `affectedCompoundIds` = NULL, `affectedAlignedFeatureIds` = NULL, `jobEffect` = NULL, ...) {
      if (!is.null(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`command`)) {
        if (!(is.character(`command`) && length(`command`) == 1)) {
          stop(paste("Error! Invalid data for `command`. Must be a string:", `command`))
        }
        self$`command` <- `command`
      }
      if (!is.null(`progress`)) {
        stopifnot(R6::is.R6(`progress`))
        self$`progress` <- `progress`
      }
      if (!is.null(`affectedCompoundIds`)) {
        stopifnot(is.vector(`affectedCompoundIds`), length(`affectedCompoundIds`) != 0)
        sapply(`affectedCompoundIds`, function(x) stopifnot(is.character(x)))
        self$`affectedCompoundIds` <- `affectedCompoundIds`
      }
      if (!is.null(`affectedAlignedFeatureIds`)) {
        stopifnot(is.vector(`affectedAlignedFeatureIds`), length(`affectedAlignedFeatureIds`) != 0)
        sapply(`affectedAlignedFeatureIds`, function(x) stopifnot(is.character(x)))
        self$`affectedAlignedFeatureIds` <- `affectedAlignedFeatureIds`
      }
      if (!is.null(`jobEffect`)) {
        if (!(`jobEffect` %in% c("IMPORT", "COMPUTATION", "DELETION"))) {
          stop(paste("Error! \"", `jobEffect`, "\" cannot be assigned to `jobEffect`. Must be \"IMPORT\", \"COMPUTATION\", \"DELETION\".", sep = ""))
        }
        if (!(is.character(`jobEffect`) && length(`jobEffect`) == 1)) {
          stop(paste("Error! Invalid data for `jobEffect`. Must be a string:", `jobEffect`))
        }
        self$`jobEffect` <- `jobEffect`
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
    #' @return Job as a base R list.
    #' @examples
    #' # convert array of Job (x) to a data frame
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
    #' Convert Job to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      JobObject <- list()
      if (!is.null(self$`id`)) {
        JobObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`command`)) {
        JobObject[["command"]] <-
          self$`command`
      }
      if (!is.null(self$`progress`)) {
        JobObject[["progress"]] <-
          self$`progress`$toSimpleType()
      }
      if (!is.null(self$`affectedCompoundIds`)) {
        JobObject[["affectedCompoundIds"]] <-
          self$`affectedCompoundIds`
      }
      if (!is.null(self$`affectedAlignedFeatureIds`)) {
        JobObject[["affectedAlignedFeatureIds"]] <-
          self$`affectedAlignedFeatureIds`
      }
      if (!is.null(self$`jobEffect`)) {
        JobObject[["jobEffect"]] <-
          self$`jobEffect`
      }
      return(JobObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of Job
    #'
    #' @param input_json the JSON input
    #' @return the instance of Job
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`command`)) {
        self$`command` <- this_object$`command`
      }
      if (!is.null(this_object$`progress`)) {
        `progress_object` <- JobProgress$new()
        `progress_object`$fromJSON(jsonlite::toJSON(this_object$`progress`, auto_unbox = TRUE, digits = NA, null = 'null'))
        self$`progress` <- `progress_object`
      }
      if (!is.null(this_object$`affectedCompoundIds`)) {
        self$`affectedCompoundIds` <- ApiClient$new()$deserializeObj(this_object$`affectedCompoundIds`, "array[character]", loadNamespace("Rsirius"))
      }
      if (!is.null(this_object$`affectedAlignedFeatureIds`)) {
        self$`affectedAlignedFeatureIds` <- ApiClient$new()$deserializeObj(this_object$`affectedAlignedFeatureIds`, "array[character]", loadNamespace("Rsirius"))
      }
      if (!is.null(this_object$`jobEffect`)) {
        if (!is.null(this_object$`jobEffect`) && !(this_object$`jobEffect` %in% c("IMPORT", "COMPUTATION", "DELETION"))) {
          stop(paste("Error! \"", this_object$`jobEffect`, "\" cannot be assigned to `jobEffect`. Must be \"IMPORT\", \"COMPUTATION\", \"DELETION\".", sep = ""))
        }
        self$`jobEffect` <- this_object$`jobEffect`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Job in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Job
    #'
    #' @param input_json the JSON input
    #' @return the instance of Job
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`command` <- this_object$`command`
      self$`progress` <- JobProgress$new()$fromJSON(jsonlite::toJSON(this_object$`progress`, auto_unbox = TRUE, digits = NA, null = 'null'))
      self$`affectedCompoundIds` <- ApiClient$new()$deserializeObj(this_object$`affectedCompoundIds`, "array[character]", loadNamespace("Rsirius"))
      self$`affectedAlignedFeatureIds` <- ApiClient$new()$deserializeObj(this_object$`affectedAlignedFeatureIds`, "array[character]", loadNamespace("Rsirius"))
      if (!is.null(this_object$`jobEffect`) && !(this_object$`jobEffect` %in% c("IMPORT", "COMPUTATION", "DELETION"))) {
        stop(paste("Error! \"", this_object$`jobEffect`, "\" cannot be assigned to `jobEffect`. Must be \"IMPORT\", \"COMPUTATION\", \"DELETION\".", sep = ""))
      }
      self$`jobEffect` <- this_object$`jobEffect`
      self
    },

    #' @description
    #' Validate JSON input with respect to Job and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Job
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
# Job$unlock()
#
## Below is an example to define the print function
# Job$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Job$lock()

