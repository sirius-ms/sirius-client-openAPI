#' Create a new CommandSubmission
#'
#' @description
#' CommandSubmission Class
#'
#' @docType class
#' @title CommandSubmission
#' @description CommandSubmission Class
#' @format An \code{R6Class} generator object
#' @field compoundIds Compounds that should be the input for this Job  Will be converted to the respective alignedFeatureIds for computation.   At least one compoundId or alignedFeatureId needs to be specified. list(character) [optional]
#' @field alignedFeatureIds Features (aligned over runs) that should be the input for this Job   At least one compoundId or alignedFeatureId needs to be specified. list(character) [optional]
#' @field command  list(character)
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CommandSubmission <- R6::R6Class(
  "CommandSubmission",
  public = list(
    `compoundIds` = NULL,
    `alignedFeatureIds` = NULL,
    `command` = NULL,
    #' Initialize a new CommandSubmission class.
    #'
    #' @description
    #' Initialize a new CommandSubmission class.
    #'
    #' @param command command
    #' @param compoundIds Compounds that should be the input for this Job  Will be converted to the respective alignedFeatureIds for computation.   At least one compoundId or alignedFeatureId needs to be specified.
    #' @param alignedFeatureIds Features (aligned over runs) that should be the input for this Job   At least one compoundId or alignedFeatureId needs to be specified.
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`command`, `compoundIds` = NULL, `alignedFeatureIds` = NULL, ...) {
      if (!missing(`command`)) {
        stopifnot(is.vector(`command`), length(`command`) != 0)
        sapply(`command`, function(x) stopifnot(is.character(x)))
        self$`command` <- `command`
      }
      if (!is.null(`compoundIds`)) {
        stopifnot(is.vector(`compoundIds`), length(`compoundIds`) != 0)
        sapply(`compoundIds`, function(x) stopifnot(is.character(x)))
        self$`compoundIds` <- `compoundIds`
      }
      if (!is.null(`alignedFeatureIds`)) {
        stopifnot(is.vector(`alignedFeatureIds`), length(`alignedFeatureIds`) != 0)
        sapply(`alignedFeatureIds`, function(x) stopifnot(is.character(x)))
        self$`alignedFeatureIds` <- `alignedFeatureIds`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return CommandSubmission in JSON format
    #' @export
    toJSON = function() {
      CommandSubmissionObject <- list()
      if (!is.null(self$`compoundIds`)) {
        CommandSubmissionObject[["compoundIds"]] <-
          self$`compoundIds`
      }
      if (!is.null(self$`alignedFeatureIds`)) {
        CommandSubmissionObject[["alignedFeatureIds"]] <-
          self$`alignedFeatureIds`
      }
      if (!is.null(self$`command`)) {
        CommandSubmissionObject[["command"]] <-
          self$`command`
      }
      CommandSubmissionObject
    },
    #' Deserialize JSON string into an instance of CommandSubmission
    #'
    #' @description
    #' Deserialize JSON string into an instance of CommandSubmission
    #'
    #' @param input_json the JSON input
    #' @return the instance of CommandSubmission
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`compoundIds`)) {
        self$`compoundIds` <- ApiClient$new()$deserializeObj(this_object$`compoundIds`, "array[character]", loadNamespace("Rsirius"))
      }
      if (!is.null(this_object$`alignedFeatureIds`)) {
        self$`alignedFeatureIds` <- ApiClient$new()$deserializeObj(this_object$`alignedFeatureIds`, "array[character]", loadNamespace("Rsirius"))
      }
      if (!is.null(this_object$`command`)) {
        self$`command` <- ApiClient$new()$deserializeObj(this_object$`command`, "array[character]", loadNamespace("Rsirius"))
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return CommandSubmission in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`compoundIds`)) {
          sprintf(
          '"compoundIds":
             [%s]
          ',
          paste(unlist(lapply(self$`compoundIds`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`alignedFeatureIds`)) {
          sprintf(
          '"alignedFeatureIds":
             [%s]
          ',
          paste(unlist(lapply(self$`alignedFeatureIds`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`command`)) {
          sprintf(
          '"command":
             [%s]
          ',
          paste(unlist(lapply(self$`command`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of CommandSubmission
    #'
    #' @description
    #' Deserialize JSON string into an instance of CommandSubmission
    #'
    #' @param input_json the JSON input
    #' @return the instance of CommandSubmission
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`compoundIds` <- ApiClient$new()$deserializeObj(this_object$`compoundIds`, "array[character]", loadNamespace("Rsirius"))
      self$`alignedFeatureIds` <- ApiClient$new()$deserializeObj(this_object$`alignedFeatureIds`, "array[character]", loadNamespace("Rsirius"))
      self$`command` <- ApiClient$new()$deserializeObj(this_object$`command`, "array[character]", loadNamespace("Rsirius"))
      self
    },
    #' Validate JSON input with respect to CommandSubmission
    #'
    #' @description
    #' Validate JSON input with respect to CommandSubmission and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `command`
      if (!is.null(input_json$`command`)) {
        stopifnot(is.vector(input_json$`command`), length(input_json$`command`) != 0)
        tmp <- sapply(input_json$`command`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CommandSubmission: the required field `command` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CommandSubmission
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
      # check if the required `command` is null
      if (is.null(self$`command`)) {
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
      # check if the required `command` is null
      if (is.null(self$`command`)) {
        invalid_fields["command"] <- "Non-nullable required field `command` cannot be null."
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
# CommandSubmission$unlock()
#
## Below is an example to define the print function
# CommandSubmission$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CommandSubmission$lock()

