#' Create a new SpectralLibraryMatchSummary
#'
#' @description
#' SpectralLibraryMatchSummary Class
#'
#' @docType class
#' @title SpectralLibraryMatchSummary
#' @description SpectralLibraryMatchSummary Class
#' @format An \code{R6Class} generator object
#' @field bestMatch  \link{SpectralLibraryMatch} [optional]
#' @field spectralMatchCount  integer
#' @field referenceSpectraCount  integer
#' @field databaseCompoundCount  integer
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SpectralLibraryMatchSummary <- R6::R6Class(
  "SpectralLibraryMatchSummary",
  public = list(
    `bestMatch` = NULL,
    `spectralMatchCount` = NULL,
    `referenceSpectraCount` = NULL,
    `databaseCompoundCount` = NULL,
    #' Initialize a new SpectralLibraryMatchSummary class.
    #'
    #' @description
    #' Initialize a new SpectralLibraryMatchSummary class.
    #'
    #' @param spectralMatchCount spectralMatchCount
    #' @param referenceSpectraCount referenceSpectraCount
    #' @param databaseCompoundCount databaseCompoundCount
    #' @param bestMatch bestMatch
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`spectralMatchCount`, `referenceSpectraCount`, `databaseCompoundCount`, `bestMatch` = NULL, ...) {
      if (!missing(`spectralMatchCount`)) {
        if (!(is.numeric(`spectralMatchCount`) && length(`spectralMatchCount`) == 1)) {
          stop(paste("Error! Invalid data for `spectralMatchCount`. Must be an integer:", `spectralMatchCount`))
        }
        self$`spectralMatchCount` <- `spectralMatchCount`
      }
      if (!missing(`referenceSpectraCount`)) {
        if (!(is.numeric(`referenceSpectraCount`) && length(`referenceSpectraCount`) == 1)) {
          stop(paste("Error! Invalid data for `referenceSpectraCount`. Must be an integer:", `referenceSpectraCount`))
        }
        self$`referenceSpectraCount` <- `referenceSpectraCount`
      }
      if (!missing(`databaseCompoundCount`)) {
        if (!(is.numeric(`databaseCompoundCount`) && length(`databaseCompoundCount`) == 1)) {
          stop(paste("Error! Invalid data for `databaseCompoundCount`. Must be an integer:", `databaseCompoundCount`))
        }
        self$`databaseCompoundCount` <- `databaseCompoundCount`
      }
      if (!is.null(`bestMatch`)) {
        stopifnot(R6::is.R6(`bestMatch`))
        self$`bestMatch` <- `bestMatch`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return SpectralLibraryMatchSummary in JSON format
    #' @export
    toJSON = function() {
      SpectralLibraryMatchSummaryObject <- list()
      if (!is.null(self$`bestMatch`)) {
        SpectralLibraryMatchSummaryObject[["bestMatch"]] <-
          if (is.list(self$`bestMatch`$toJSON()) && length(self$`bestMatch`$toJSON()) == 0L){
            NULL
          } else if (length(names(self$`bestMatch`$toJSON())) == 0L && is.character(jsonlite::fromJSON(self$`bestMatch`$toJSON()))) {
            jsonlite::fromJSON(self$`bestMatch`$toJSON())
          } else {
            self$`bestMatch`$toJSON()
          }
      }
      if (!is.null(self$`spectralMatchCount`)) {
        SpectralLibraryMatchSummaryObject[["spectralMatchCount"]] <-
          self$`spectralMatchCount`
      }
      if (!is.null(self$`referenceSpectraCount`)) {
        SpectralLibraryMatchSummaryObject[["referenceSpectraCount"]] <-
          self$`referenceSpectraCount`
      }
      if (!is.null(self$`databaseCompoundCount`)) {
        SpectralLibraryMatchSummaryObject[["databaseCompoundCount"]] <-
          self$`databaseCompoundCount`
      }
      SpectralLibraryMatchSummaryObject
    },
    #' Deserialize JSON string into an instance of SpectralLibraryMatchSummary
    #'
    #' @description
    #' Deserialize JSON string into an instance of SpectralLibraryMatchSummary
    #'
    #' @param input_json the JSON input
    #' @return the instance of SpectralLibraryMatchSummary
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`bestMatch`)) {
        `bestmatch_object` <- SpectralLibraryMatch$new()
        `bestmatch_object`$fromJSON(jsonlite::toJSON(this_object$`bestMatch`, auto_unbox = TRUE, digits = NA))
        self$`bestMatch` <- `bestmatch_object`
      }
      if (!is.null(this_object$`spectralMatchCount`)) {
        self$`spectralMatchCount` <- this_object$`spectralMatchCount`
      }
      if (!is.null(this_object$`referenceSpectraCount`)) {
        self$`referenceSpectraCount` <- this_object$`referenceSpectraCount`
      }
      if (!is.null(this_object$`databaseCompoundCount`)) {
        self$`databaseCompoundCount` <- this_object$`databaseCompoundCount`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return SpectralLibraryMatchSummary in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`bestMatch`)) {
          sprintf(
          '"bestMatch":
          %s
          ',
          jsonlite::toJSON(self$`bestMatch`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`spectralMatchCount`)) {
          sprintf(
          '"spectralMatchCount":
            %f
                    ',
          self$`spectralMatchCount`
          )
        },
        if (!is.null(self$`referenceSpectraCount`)) {
          sprintf(
          '"referenceSpectraCount":
            %f
                    ',
          self$`referenceSpectraCount`
          )
        },
        if (!is.null(self$`databaseCompoundCount`)) {
          sprintf(
          '"databaseCompoundCount":
            %f
                    ',
          self$`databaseCompoundCount`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      # remove c() occurences
      jsoncontent <- gsub('c\\((.*?)\\)', '\\1', jsoncontent)
      # reduce resulting double escaped quotes \"\" into \"
      jsoncontent <- gsub('\\\"\\\"+', '\\\"', jsoncontent)
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of SpectralLibraryMatchSummary
    #'
    #' @description
    #' Deserialize JSON string into an instance of SpectralLibraryMatchSummary
    #'
    #' @param input_json the JSON input
    #' @return the instance of SpectralLibraryMatchSummary
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`bestMatch` <- SpectralLibraryMatch$new()$fromJSON(jsonlite::toJSON(this_object$`bestMatch`, auto_unbox = TRUE, digits = NA))
      self$`spectralMatchCount` <- this_object$`spectralMatchCount`
      self$`referenceSpectraCount` <- this_object$`referenceSpectraCount`
      self$`databaseCompoundCount` <- this_object$`databaseCompoundCount`
      self
    },
    #' Validate JSON input with respect to SpectralLibraryMatchSummary
    #'
    #' @description
    #' Validate JSON input with respect to SpectralLibraryMatchSummary and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `spectralMatchCount`
      if (!is.null(input_json$`spectralMatchCount`)) {
        if (!(is.numeric(input_json$`spectralMatchCount`) && length(input_json$`spectralMatchCount`) == 1)) {
          stop(paste("Error! Invalid data for `spectralMatchCount`. Must be an integer:", input_json$`spectralMatchCount`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SpectralLibraryMatchSummary: the required field `spectralMatchCount` is missing."))
      }
      # check the required field `referenceSpectraCount`
      if (!is.null(input_json$`referenceSpectraCount`)) {
        if (!(is.numeric(input_json$`referenceSpectraCount`) && length(input_json$`referenceSpectraCount`) == 1)) {
          stop(paste("Error! Invalid data for `referenceSpectraCount`. Must be an integer:", input_json$`referenceSpectraCount`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SpectralLibraryMatchSummary: the required field `referenceSpectraCount` is missing."))
      }
      # check the required field `databaseCompoundCount`
      if (!is.null(input_json$`databaseCompoundCount`)) {
        if (!(is.numeric(input_json$`databaseCompoundCount`) && length(input_json$`databaseCompoundCount`) == 1)) {
          stop(paste("Error! Invalid data for `databaseCompoundCount`. Must be an integer:", input_json$`databaseCompoundCount`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SpectralLibraryMatchSummary: the required field `databaseCompoundCount` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SpectralLibraryMatchSummary
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
      # check if the required `spectralMatchCount` is null
      if (is.null(self$`spectralMatchCount`)) {
        return(FALSE)
      }

      # check if the required `referenceSpectraCount` is null
      if (is.null(self$`referenceSpectraCount`)) {
        return(FALSE)
      }

      # check if the required `databaseCompoundCount` is null
      if (is.null(self$`databaseCompoundCount`)) {
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
      # check if the required `spectralMatchCount` is null
      if (is.null(self$`spectralMatchCount`)) {
        invalid_fields["spectralMatchCount"] <- "Non-nullable required field `spectralMatchCount` cannot be null."
      }

      # check if the required `referenceSpectraCount` is null
      if (is.null(self$`referenceSpectraCount`)) {
        invalid_fields["referenceSpectraCount"] <- "Non-nullable required field `referenceSpectraCount` cannot be null."
      }

      # check if the required `databaseCompoundCount` is null
      if (is.null(self$`databaseCompoundCount`)) {
        invalid_fields["databaseCompoundCount"] <- "Non-nullable required field `databaseCompoundCount` cannot be null."
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
# SpectralLibraryMatchSummary$unlock()
#
## Below is an example to define the print function
# SpectralLibraryMatchSummary$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SpectralLibraryMatchSummary$lock()

