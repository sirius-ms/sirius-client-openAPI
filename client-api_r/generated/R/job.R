#' Create a new Job
#'
#' @description
#' Identifier created by the SIRIUS Nightsky API for a newly created Job.  Object can be enriched with Job status/progress information ({@link JobProgress JobProgress}) and/or Job command information.
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
    #' Initialize a new Job class.
    #'
    #' @description
    #' Initialize a new Job class.
    #'
    #' @param id Unique identifier to access the job via the API
    #' @param command Command string of the executed Task
    #' @param progress progress
    #' @param affectedCompoundIds List of compoundIds that are affected by this job.  This lis will also contain compoundIds where not all features of the compound are affected by the job.  If this job is creating compounds (e.g. data import jobs) this value will be NULL until the jobs has finished
    #' @param affectedAlignedFeatureIds List of alignedFeatureIds that are affected by this job.  If this job is creating features (e.g. data import jobs) this value will be NULL until the jobs has finished
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`id` = NULL, `command` = NULL, `progress` = NULL, `affectedCompoundIds` = NULL, `affectedAlignedFeatureIds` = NULL, ...) {
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
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return Job in JSON format
    #' @export
    toJSON = function() {
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
          if (length(names(self$`progress`$toJSON())) == 0L && is.character(jsonlite::fromJSON(self$`progress`$toJSON()))) {
            jsonlite::fromJSON(self$`progress`$toJSON())
          } else {
            self$`progress`$toJSON()
          }
      }
      if (!is.null(self$`affectedCompoundIds`)) {
        JobObject[["affectedCompoundIds"]] <-
          self$`affectedCompoundIds`
      }
      if (!is.null(self$`affectedAlignedFeatureIds`)) {
        JobObject[["affectedAlignedFeatureIds"]] <-
          self$`affectedAlignedFeatureIds`
      }
      JobObject
    },
    #' Deserialize JSON string into an instance of Job
    #'
    #' @description
    #' Deserialize JSON string into an instance of Job
    #'
    #' @param input_json the JSON input
    #' @return the instance of Job
    #' @export
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
        `progress_object`$fromJSON(jsonlite::toJSON(this_object$`progress`, auto_unbox = TRUE, digits = NA))
        self$`progress` <- `progress_object`
      }
      if (!is.null(this_object$`affectedCompoundIds`)) {
        self$`affectedCompoundIds` <- ApiClient$new()$deserializeObj(this_object$`affectedCompoundIds`, "array[character]", loadNamespace("Rsirius"))
      }
      if (!is.null(this_object$`affectedAlignedFeatureIds`)) {
        self$`affectedAlignedFeatureIds` <- ApiClient$new()$deserializeObj(this_object$`affectedAlignedFeatureIds`, "array[character]", loadNamespace("Rsirius"))
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return Job in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`id`)) {
          sprintf(
          '"id":
            "%s"
                    ',
          self$`id`
          )
        },
        if (!is.null(self$`command`)) {
          sprintf(
          '"command":
            "%s"
                    ',
          self$`command`
          )
        },
        if (!is.null(self$`progress`)) {
          sprintf(
          '"progress":
          %s
          ',
          jsonlite::toJSON(self$`progress`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`affectedCompoundIds`)) {
          sprintf(
          '"affectedCompoundIds":
             [%s]
          ',
          paste(unlist(lapply(self$`affectedCompoundIds`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`affectedAlignedFeatureIds`)) {
          sprintf(
          '"affectedAlignedFeatureIds":
             [%s]
          ',
          paste(unlist(lapply(self$`affectedAlignedFeatureIds`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of Job
    #'
    #' @description
    #' Deserialize JSON string into an instance of Job
    #'
    #' @param input_json the JSON input
    #' @return the instance of Job
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`command` <- this_object$`command`
      self$`progress` <- JobProgress$new()$fromJSON(jsonlite::toJSON(this_object$`progress`, auto_unbox = TRUE, digits = NA))
      self$`affectedCompoundIds` <- ApiClient$new()$deserializeObj(this_object$`affectedCompoundIds`, "array[character]", loadNamespace("Rsirius"))
      self$`affectedAlignedFeatureIds` <- ApiClient$new()$deserializeObj(this_object$`affectedAlignedFeatureIds`, "array[character]", loadNamespace("Rsirius"))
      self
    },
    #' Validate JSON input with respect to Job
    #'
    #' @description
    #' Validate JSON input with respect to Job and throw an exception if invalid
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
    #' @return String representation of Job
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
# Job$unlock()
#
## Below is an example to define the print function
# Job$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Job$lock()

