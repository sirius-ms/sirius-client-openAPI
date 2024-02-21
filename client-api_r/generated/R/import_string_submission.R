#' Create a new ImportStringSubmission
#'
#' @description
#' Parameter Object to submit a job that imports ms/ms data from the given format into the specified project  Supported formats (ms, mgf, cef, msp, mzML, mzXML)
#'
#' @docType class
#' @title ImportStringSubmission
#' @description ImportStringSubmission Class
#' @format An \code{R6Class} generator object
#' @field allowMs1OnlyData  character [optional]
#' @field ignoreFormulas  character [optional]
#' @field alignLCMSRuns  character [optional]
#' @field sourceName Name that specifies the data source. Can e.g. be a file path  or just a name. character [optional]
#' @field format  \link{ImportFormat}
#' @field data Data content in specified format character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ImportStringSubmission <- R6::R6Class(
  "ImportStringSubmission",
  public = list(
    `allowMs1OnlyData` = NULL,
    `ignoreFormulas` = NULL,
    `alignLCMSRuns` = NULL,
    `sourceName` = NULL,
    `format` = NULL,
    `data` = NULL,
    #' Initialize a new ImportStringSubmission class.
    #'
    #' @description
    #' Initialize a new ImportStringSubmission class.
    #'
    #' @param format format
    #' @param data Data content in specified format
    #' @param allowMs1OnlyData allowMs1OnlyData
    #' @param ignoreFormulas ignoreFormulas
    #' @param alignLCMSRuns alignLCMSRuns
    #' @param sourceName Name that specifies the data source. Can e.g. be a file path  or just a name.
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`format`, `data`, `allowMs1OnlyData` = NULL, `ignoreFormulas` = NULL, `alignLCMSRuns` = NULL, `sourceName` = NULL, ...) {
      if (!missing(`format`)) {
        if (!(`format` %in% c())) {
          stop(paste("Error! \"", `format`, "\" cannot be assigned to `format`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`format`))
        self$`format` <- `format`
      }
      if (!missing(`data`)) {
        if (!(is.character(`data`) && length(`data`) == 1)) {
          stop(paste("Error! Invalid data for `data`. Must be a string:", `data`))
        }
        self$`data` <- `data`
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
      if (!is.null(`sourceName`)) {
        if (!(is.character(`sourceName`) && length(`sourceName`) == 1)) {
          stop(paste("Error! Invalid data for `sourceName`. Must be a string:", `sourceName`))
        }
        self$`sourceName` <- `sourceName`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ImportStringSubmission in JSON format
    #' @export
    toJSON = function() {
      ImportStringSubmissionObject <- list()
      if (!is.null(self$`allowMs1OnlyData`)) {
        ImportStringSubmissionObject[["allowMs1OnlyData"]] <-
          self$`allowMs1OnlyData`
      }
      if (!is.null(self$`ignoreFormulas`)) {
        ImportStringSubmissionObject[["ignoreFormulas"]] <-
          self$`ignoreFormulas`
      }
      if (!is.null(self$`alignLCMSRuns`)) {
        ImportStringSubmissionObject[["alignLCMSRuns"]] <-
          self$`alignLCMSRuns`
      }
      if (!is.null(self$`sourceName`)) {
        ImportStringSubmissionObject[["sourceName"]] <-
          self$`sourceName`
      }
      if (!is.null(self$`format`)) {
        ImportStringSubmissionObject[["format"]] <-
          self$`format`$toJSON()
      }
      if (!is.null(self$`data`)) {
        ImportStringSubmissionObject[["data"]] <-
          self$`data`
      }
      ImportStringSubmissionObject
    },
    #' Deserialize JSON string into an instance of ImportStringSubmission
    #'
    #' @description
    #' Deserialize JSON string into an instance of ImportStringSubmission
    #'
    #' @param input_json the JSON input
    #' @return the instance of ImportStringSubmission
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
      if (!is.null(this_object$`sourceName`)) {
        self$`sourceName` <- this_object$`sourceName`
      }
      if (!is.null(this_object$`format`)) {
        `format_object` <- ImportFormat$new()
        `format_object`$fromJSON(jsonlite::toJSON(this_object$`format`, auto_unbox = TRUE, digits = NA))
        self$`format` <- `format_object`
      }
      if (!is.null(this_object$`data`)) {
        self$`data` <- this_object$`data`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ImportStringSubmission in JSON format
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
        if (!is.null(self$`sourceName`)) {
          sprintf(
          '"sourceName":
            "%s"
                    ',
          self$`sourceName`
          )
        },
        if (!is.null(self$`format`)) {
          sprintf(
          '"format":
          %s
          ',
          jsonlite::toJSON(self$`format`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`data`)) {
          sprintf(
          '"data":
            "%s"
                    ',
          self$`data`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of ImportStringSubmission
    #'
    #' @description
    #' Deserialize JSON string into an instance of ImportStringSubmission
    #'
    #' @param input_json the JSON input
    #' @return the instance of ImportStringSubmission
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`allowMs1OnlyData` <- this_object$`allowMs1OnlyData`
      self$`ignoreFormulas` <- this_object$`ignoreFormulas`
      self$`alignLCMSRuns` <- this_object$`alignLCMSRuns`
      self$`sourceName` <- this_object$`sourceName`
      self$`format` <- ImportFormat$new()$fromJSON(jsonlite::toJSON(this_object$`format`, auto_unbox = TRUE, digits = NA))
      self$`data` <- this_object$`data`
      self
    },
    #' Validate JSON input with respect to ImportStringSubmission
    #'
    #' @description
    #' Validate JSON input with respect to ImportStringSubmission and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `format`
      if (!is.null(input_json$`format`)) {
        stopifnot(R6::is.R6(input_json$`format`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ImportStringSubmission: the required field `format` is missing."))
      }
      # check the required field `data`
      if (!is.null(input_json$`data`)) {
        if (!(is.character(input_json$`data`) && length(input_json$`data`) == 1)) {
          stop(paste("Error! Invalid data for `data`. Must be a string:", input_json$`data`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ImportStringSubmission: the required field `data` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ImportStringSubmission
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
      # check if the required `data` is null
      if (is.null(self$`data`)) {
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
      # check if the required `data` is null
      if (is.null(self$`data`)) {
        invalid_fields["data"] <- "Non-nullable required field `data` cannot be null."
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
# ImportStringSubmission$unlock()
#
## Below is an example to define the print function
# ImportStringSubmission$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ImportStringSubmission$lock()

