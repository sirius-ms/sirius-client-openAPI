#' Create a new DatabaseImportSubmission
#'
#' @description
#' 
#'
#' @docType class
#' @title DatabaseImportSubmission
#' @description DatabaseImportSubmission Class
#' @format An \code{R6Class} generator object
#' @field databaseId  character
#' @field filesToImport  list(character)
#' @field writeBuffer  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DatabaseImportSubmission <- R6::R6Class(
  "DatabaseImportSubmission",
  public = list(
    `databaseId` = NULL,
    `filesToImport` = NULL,
    `writeBuffer` = NULL,
    #' Initialize a new DatabaseImportSubmission class.
    #'
    #' @description
    #' Initialize a new DatabaseImportSubmission class.
    #'
    #' @param databaseId databaseId
    #' @param filesToImport filesToImport
    #' @param writeBuffer writeBuffer
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`databaseId`, `filesToImport`, `writeBuffer` = NULL, ...) {
      if (!missing(`databaseId`)) {
        if (!(is.character(`databaseId`) && length(`databaseId`) == 1)) {
          stop(paste("Error! Invalid data for `databaseId`. Must be a string:", `databaseId`))
        }
        self$`databaseId` <- `databaseId`
      }
      if (!missing(`filesToImport`)) {
        stopifnot(is.vector(`filesToImport`), length(`filesToImport`) != 0)
        sapply(`filesToImport`, function(x) stopifnot(is.character(x)))
        self$`filesToImport` <- `filesToImport`
      }
      if (!is.null(`writeBuffer`)) {
        if (!(is.numeric(`writeBuffer`) && length(`writeBuffer`) == 1)) {
          stop(paste("Error! Invalid data for `writeBuffer`. Must be an integer:", `writeBuffer`))
        }
        self$`writeBuffer` <- `writeBuffer`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return DatabaseImportSubmission in JSON format
    #' @export
    toJSON = function() {
      DatabaseImportSubmissionObject <- list()
      if (!is.null(self$`databaseId`)) {
        DatabaseImportSubmissionObject[["databaseId"]] <-
          self$`databaseId`
      }
      if (!is.null(self$`filesToImport`)) {
        DatabaseImportSubmissionObject[["filesToImport"]] <-
          self$`filesToImport`
      }
      if (!is.null(self$`writeBuffer`)) {
        DatabaseImportSubmissionObject[["writeBuffer"]] <-
          self$`writeBuffer`
      }
      DatabaseImportSubmissionObject
    },
    #' Deserialize JSON string into an instance of DatabaseImportSubmission
    #'
    #' @description
    #' Deserialize JSON string into an instance of DatabaseImportSubmission
    #'
    #' @param input_json the JSON input
    #' @return the instance of DatabaseImportSubmission
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`databaseId`)) {
        self$`databaseId` <- this_object$`databaseId`
      }
      if (!is.null(this_object$`filesToImport`)) {
        self$`filesToImport` <- ApiClient$new()$deserializeObj(this_object$`filesToImport`, "array[character]", loadNamespace("Rsirius"))
      }
      if (!is.null(this_object$`writeBuffer`)) {
        self$`writeBuffer` <- this_object$`writeBuffer`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return DatabaseImportSubmission in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`databaseId`)) {
          sprintf(
          '"databaseId":
            "%s"
                    ',
          self$`databaseId`
          )
        },
        if (!is.null(self$`filesToImport`)) {
          sprintf(
          '"filesToImport":
             [%s]
          ',
          paste(unlist(lapply(self$`filesToImport`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`writeBuffer`)) {
          sprintf(
          '"writeBuffer":
            %d
                    ',
          self$`writeBuffer`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of DatabaseImportSubmission
    #'
    #' @description
    #' Deserialize JSON string into an instance of DatabaseImportSubmission
    #'
    #' @param input_json the JSON input
    #' @return the instance of DatabaseImportSubmission
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`databaseId` <- this_object$`databaseId`
      self$`filesToImport` <- ApiClient$new()$deserializeObj(this_object$`filesToImport`, "array[character]", loadNamespace("Rsirius"))
      self$`writeBuffer` <- this_object$`writeBuffer`
      self
    },
    #' Validate JSON input with respect to DatabaseImportSubmission
    #'
    #' @description
    #' Validate JSON input with respect to DatabaseImportSubmission and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `databaseId`
      if (!is.null(input_json$`databaseId`)) {
        if (!(is.character(input_json$`databaseId`) && length(input_json$`databaseId`) == 1)) {
          stop(paste("Error! Invalid data for `databaseId`. Must be a string:", input_json$`databaseId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DatabaseImportSubmission: the required field `databaseId` is missing."))
      }
      # check the required field `filesToImport`
      if (!is.null(input_json$`filesToImport`)) {
        stopifnot(is.vector(input_json$`filesToImport`), length(input_json$`filesToImport`) != 0)
        tmp <- sapply(input_json$`filesToImport`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DatabaseImportSubmission: the required field `filesToImport` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of DatabaseImportSubmission
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
      # check if the required `databaseId` is null
      if (is.null(self$`databaseId`)) {
        return(FALSE)
      }

      # check if the required `filesToImport` is null
      if (is.null(self$`filesToImport`)) {
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
      # check if the required `databaseId` is null
      if (is.null(self$`databaseId`)) {
        invalid_fields["databaseId"] <- "Non-nullable required field `databaseId` cannot be null."
      }

      # check if the required `filesToImport` is null
      if (is.null(self$`filesToImport`)) {
        invalid_fields["filesToImport"] <- "Non-nullable required field `filesToImport` cannot be null."
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
# DatabaseImportSubmission$unlock()
#
## Below is an example to define the print function
# DatabaseImportSubmission$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DatabaseImportSubmission$lock()

