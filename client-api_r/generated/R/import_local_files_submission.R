#' Create a new ImportLocalFilesSubmission
#'
#' @description
#' 
#'
#' @docType class
#' @title ImportLocalFilesSubmission
#' @description ImportLocalFilesSubmission Class
#' @format An \code{R6Class} generator object
#' @field allowMs1OnlyData  character [optional]
#' @field ignoreFormulas  character [optional]
#' @field alignLCMSRuns  character [optional]
#' @field inputPaths  list(character)
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ImportLocalFilesSubmission <- R6::R6Class(
  "ImportLocalFilesSubmission",
  public = list(
    `allowMs1OnlyData` = NULL,
    `ignoreFormulas` = NULL,
    `alignLCMSRuns` = NULL,
    `inputPaths` = NULL,
    #' Initialize a new ImportLocalFilesSubmission class.
    #'
    #' @description
    #' Initialize a new ImportLocalFilesSubmission class.
    #'
    #' @param inputPaths inputPaths
    #' @param allowMs1OnlyData allowMs1OnlyData
    #' @param ignoreFormulas ignoreFormulas
    #' @param alignLCMSRuns alignLCMSRuns
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`inputPaths`, `allowMs1OnlyData` = NULL, `ignoreFormulas` = NULL, `alignLCMSRuns` = NULL, ...) {
      if (!missing(`inputPaths`)) {
        stopifnot(is.vector(`inputPaths`), length(`inputPaths`) != 0)
        sapply(`inputPaths`, function(x) stopifnot(is.character(x)))
        self$`inputPaths` <- `inputPaths`
      }
      if (!is.null(`allowMs1OnlyData`)) {
        if (!(is.logical(`allowMs1OnlyData`) && length(`allowMs1OnlyData`) == 1)) {
          stop(paste("Error! Invalid data for `allowMs1OnlyData`. Must be a boolean:", `allowMs1OnlyData`))
        }
        self$`allowMs1OnlyData` <- `allowMs1OnlyData`
      }
      if (!is.null(`ignoreFormulas`)) {
        if (!(is.logical(`ignoreFormulas`) && length(`ignoreFormulas`) == 1)) {
          stop(paste("Error! Invalid data for `ignoreFormulas`. Must be a boolean:", `ignoreFormulas`))
        }
        self$`ignoreFormulas` <- `ignoreFormulas`
      }
      if (!is.null(`alignLCMSRuns`)) {
        if (!(is.logical(`alignLCMSRuns`) && length(`alignLCMSRuns`) == 1)) {
          stop(paste("Error! Invalid data for `alignLCMSRuns`. Must be a boolean:", `alignLCMSRuns`))
        }
        self$`alignLCMSRuns` <- `alignLCMSRuns`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ImportLocalFilesSubmission in JSON format
    #' @export
    toJSON = function() {
      ImportLocalFilesSubmissionObject <- list()
      if (!is.null(self$`allowMs1OnlyData`)) {
        ImportLocalFilesSubmissionObject[["allowMs1OnlyData"]] <-
          self$`allowMs1OnlyData`
      }
      if (!is.null(self$`ignoreFormulas`)) {
        ImportLocalFilesSubmissionObject[["ignoreFormulas"]] <-
          self$`ignoreFormulas`
      }
      if (!is.null(self$`alignLCMSRuns`)) {
        ImportLocalFilesSubmissionObject[["alignLCMSRuns"]] <-
          self$`alignLCMSRuns`
      }
      if (!is.null(self$`inputPaths`)) {
        ImportLocalFilesSubmissionObject[["inputPaths"]] <-
          self$`inputPaths`
      }
      ImportLocalFilesSubmissionObject
    },
    #' Deserialize JSON string into an instance of ImportLocalFilesSubmission
    #'
    #' @description
    #' Deserialize JSON string into an instance of ImportLocalFilesSubmission
    #'
    #' @param input_json the JSON input
    #' @return the instance of ImportLocalFilesSubmission
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`allowMs1OnlyData`)) {
        self$`allowMs1OnlyData` <- this_object$`allowMs1OnlyData`
      }
      if (!is.null(this_object$`ignoreFormulas`)) {
        self$`ignoreFormulas` <- this_object$`ignoreFormulas`
      }
      if (!is.null(this_object$`alignLCMSRuns`)) {
        self$`alignLCMSRuns` <- this_object$`alignLCMSRuns`
      }
      if (!is.null(this_object$`inputPaths`)) {
        self$`inputPaths` <- ApiClient$new()$deserializeObj(this_object$`inputPaths`, "array[character]", loadNamespace("Rsirius"))
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ImportLocalFilesSubmission in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`allowMs1OnlyData`)) {
          sprintf(
          '"allowMs1OnlyData":
            %s
                    ',
          tolower(self$`allowMs1OnlyData`)
          )
        },
        if (!is.null(self$`ignoreFormulas`)) {
          sprintf(
          '"ignoreFormulas":
            %s
                    ',
          tolower(self$`ignoreFormulas`)
          )
        },
        if (!is.null(self$`alignLCMSRuns`)) {
          sprintf(
          '"alignLCMSRuns":
            %s
                    ',
          tolower(self$`alignLCMSRuns`)
          )
        },
        if (!is.null(self$`inputPaths`)) {
          sprintf(
          '"inputPaths":
             [%s]
          ',
          paste(unlist(lapply(self$`inputPaths`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of ImportLocalFilesSubmission
    #'
    #' @description
    #' Deserialize JSON string into an instance of ImportLocalFilesSubmission
    #'
    #' @param input_json the JSON input
    #' @return the instance of ImportLocalFilesSubmission
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`allowMs1OnlyData` <- this_object$`allowMs1OnlyData`
      self$`ignoreFormulas` <- this_object$`ignoreFormulas`
      self$`alignLCMSRuns` <- this_object$`alignLCMSRuns`
      self$`inputPaths` <- ApiClient$new()$deserializeObj(this_object$`inputPaths`, "array[character]", loadNamespace("Rsirius"))
      self
    },
    #' Validate JSON input with respect to ImportLocalFilesSubmission
    #'
    #' @description
    #' Validate JSON input with respect to ImportLocalFilesSubmission and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `inputPaths`
      if (!is.null(input_json$`inputPaths`)) {
        stopifnot(is.vector(input_json$`inputPaths`), length(input_json$`inputPaths`) != 0)
        tmp <- sapply(input_json$`inputPaths`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ImportLocalFilesSubmission: the required field `inputPaths` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ImportLocalFilesSubmission
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
      # check if the required `inputPaths` is null
      if (is.null(self$`inputPaths`)) {
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
      # check if the required `inputPaths` is null
      if (is.null(self$`inputPaths`)) {
        invalid_fields["inputPaths"] <- "Non-nullable required field `inputPaths` cannot be null."
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
# ImportLocalFilesSubmission$unlock()
#
## Below is an example to define the print function
# ImportLocalFilesSubmission$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ImportLocalFilesSubmission$lock()

