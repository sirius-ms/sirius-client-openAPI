#' Create a new SearchableDatabaseParameters
#'
#' @description
#' SearchableDatabaseParameters Class
#'
#' @docType class
#' @title SearchableDatabaseParameters
#' @description SearchableDatabaseParameters Class
#' @format An \code{R6Class} generator object
#' @field displayName display name of the database  Should be short character [optional]
#' @field location Storage location of user database  Might be NULL for non-user databases or if default location is used. character [optional]
#' @field matchRtOfReferenceSpectra Indicates whether this database shall be used to use retention time information for library matching.  Typically used for in-house spectral libraries that have been measured on character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SearchableDatabaseParameters <- R6::R6Class(
  "SearchableDatabaseParameters",
  public = list(
    `displayName` = NULL,
    `location` = NULL,
    `matchRtOfReferenceSpectra` = NULL,
    #' Initialize a new SearchableDatabaseParameters class.
    #'
    #' @description
    #' Initialize a new SearchableDatabaseParameters class.
    #'
    #' @param displayName display name of the database  Should be short
    #' @param location Storage location of user database  Might be NULL for non-user databases or if default location is used.
    #' @param matchRtOfReferenceSpectra Indicates whether this database shall be used to use retention time information for library matching.  Typically used for in-house spectral libraries that have been measured on. Default to FALSE.
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`displayName` = NULL, `location` = NULL, `matchRtOfReferenceSpectra` = FALSE, ...) {
      if (!is.null(`displayName`)) {
        if (!(is.character(`displayName`) && length(`displayName`) == 1)) {
          stop(paste("Error! Invalid data for `displayName`. Must be a string:", `displayName`))
        }
        self$`displayName` <- `displayName`
      }
      if (!is.null(`location`)) {
        if (!(is.character(`location`) && length(`location`) == 1)) {
          stop(paste("Error! Invalid data for `location`. Must be a string:", `location`))
        }
        self$`location` <- `location`
      }
      if (!is.null(`matchRtOfReferenceSpectra`)) {
        if (!(is.logical(`matchRtOfReferenceSpectra`) && length(`matchRtOfReferenceSpectra`) == 1)) {
          stop(paste("Error! Invalid data for `matchRtOfReferenceSpectra`. Must be a boolean:", `matchRtOfReferenceSpectra`))
        }
        self$`matchRtOfReferenceSpectra` <- `matchRtOfReferenceSpectra`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return SearchableDatabaseParameters in JSON format
    #' @export
    toJSON = function() {
      SearchableDatabaseParametersObject <- list()
      if (!is.null(self$`displayName`)) {
        SearchableDatabaseParametersObject[["displayName"]] <-
          self$`displayName`
      }
      if (!is.null(self$`location`)) {
        SearchableDatabaseParametersObject[["location"]] <-
          self$`location`
      }
      if (!is.null(self$`matchRtOfReferenceSpectra`)) {
        SearchableDatabaseParametersObject[["matchRtOfReferenceSpectra"]] <-
          self$`matchRtOfReferenceSpectra`
      }
      SearchableDatabaseParametersObject
    },
    #' Deserialize JSON string into an instance of SearchableDatabaseParameters
    #'
    #' @description
    #' Deserialize JSON string into an instance of SearchableDatabaseParameters
    #'
    #' @param input_json the JSON input
    #' @return the instance of SearchableDatabaseParameters
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`displayName`)) {
        self$`displayName` <- this_object$`displayName`
      }
      if (!is.null(this_object$`location`)) {
        self$`location` <- this_object$`location`
      }
      if (!is.null(this_object$`matchRtOfReferenceSpectra`)) {
        self$`matchRtOfReferenceSpectra` <- this_object$`matchRtOfReferenceSpectra`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return SearchableDatabaseParameters in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`displayName`)) {
          sprintf(
          '"displayName":
            "%s"
                    ',
          self$`displayName`
          )
        },
        if (!is.null(self$`location`)) {
          sprintf(
          '"location":
            "%s"
                    ',
          self$`location`
          )
        },
        if (!is.null(self$`matchRtOfReferenceSpectra`)) {
          sprintf(
          '"matchRtOfReferenceSpectra":
            %s
                    ',
          tolower(self$`matchRtOfReferenceSpectra`)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of SearchableDatabaseParameters
    #'
    #' @description
    #' Deserialize JSON string into an instance of SearchableDatabaseParameters
    #'
    #' @param input_json the JSON input
    #' @return the instance of SearchableDatabaseParameters
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`displayName` <- this_object$`displayName`
      self$`location` <- this_object$`location`
      self$`matchRtOfReferenceSpectra` <- this_object$`matchRtOfReferenceSpectra`
      self
    },
    #' Validate JSON input with respect to SearchableDatabaseParameters
    #'
    #' @description
    #' Validate JSON input with respect to SearchableDatabaseParameters and throw an exception if invalid
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
    #' @return String representation of SearchableDatabaseParameters
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
      if (nchar(self$`displayName`) > 15) {
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
      if (nchar(self$`displayName`) > 15) {
        invalid_fields["displayName"] <- "Invalid length for `displayName`, must be smaller than or equal to 15."
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
# SearchableDatabaseParameters$unlock()
#
## Below is an example to define the print function
# SearchableDatabaseParameters$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SearchableDatabaseParameters$lock()

