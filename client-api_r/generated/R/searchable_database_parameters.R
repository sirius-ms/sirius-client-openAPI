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

    #' @description
    #' Initialize a new SearchableDatabaseParameters class.
    #'
    #' @param displayName display name of the database  Should be short
    #' @param location Storage location of user database  Might be NULL for non-user databases or if default location is used.
    #' @param matchRtOfReferenceSpectra Indicates whether this database shall be used to use retention time information for library matching.  Typically used for in-house spectral libraries that have been measured on. Default to FALSE.
    #' @param ... Other optional arguments.
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
    #' @return SearchableDatabaseParameters as a base R list.
    #' @examples
    #' # convert array of SearchableDatabaseParameters (x) to a data frame
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
    #' Convert SearchableDatabaseParameters to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
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
      return(SearchableDatabaseParametersObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of SearchableDatabaseParameters
    #'
    #' @param input_json the JSON input
    #' @return the instance of SearchableDatabaseParameters
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

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SearchableDatabaseParameters in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SearchableDatabaseParameters
    #'
    #' @param input_json the JSON input
    #' @return the instance of SearchableDatabaseParameters
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`displayName` <- this_object$`displayName`
      self$`location` <- this_object$`location`
      self$`matchRtOfReferenceSpectra` <- this_object$`matchRtOfReferenceSpectra`
      self
    },

    #' @description
    #' Validate JSON input with respect to SearchableDatabaseParameters and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SearchableDatabaseParameters
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
# SearchableDatabaseParameters$unlock()
#
## Below is an example to define the print function
# SearchableDatabaseParameters$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SearchableDatabaseParameters$lock()

