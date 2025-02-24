#' Create a new StructureCandidate
#'
#' @description
#' StructureCandidate Class
#'
#' @docType class
#' @title StructureCandidate
#' @description StructureCandidate Class
#' @format An \code{R6Class} generator object
#' @field inchiKey  character [optional]
#' @field smiles  character [optional]
#' @field structureName  character [optional]
#' @field xlogP  numeric [optional]
#' @field dbLinks List of structure database links belonging to this structure candidate  OPTIONAL: needs to be added by parameter list(\link{DBLink}) [optional]
#' @field spectralLibraryMatches List of spectral library matches belonging to this structure candidate  OPTIONAL: needs to be added by parameter list(\link{SpectralLibraryMatch}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
StructureCandidate <- R6::R6Class(
  "StructureCandidate",
  public = list(
    `inchiKey` = NULL,
    `smiles` = NULL,
    `structureName` = NULL,
    `xlogP` = NULL,
    `dbLinks` = NULL,
    `spectralLibraryMatches` = NULL,

    #' @description
    #' Initialize a new StructureCandidate class.
    #'
    #' @param inchiKey inchiKey
    #' @param smiles smiles
    #' @param structureName structureName
    #' @param xlogP xlogP
    #' @param dbLinks List of structure database links belonging to this structure candidate  OPTIONAL: needs to be added by parameter
    #' @param spectralLibraryMatches List of spectral library matches belonging to this structure candidate  OPTIONAL: needs to be added by parameter
    #' @param ... Other optional arguments.
    initialize = function(`inchiKey` = NULL, `smiles` = NULL, `structureName` = NULL, `xlogP` = NULL, `dbLinks` = NULL, `spectralLibraryMatches` = NULL, ...) {
      if (!is.null(`inchiKey`)) {
        if (!(is.character(`inchiKey`) && length(`inchiKey`) == 1)) {
          stop(paste("Error! Invalid data for `inchiKey`. Must be a string:", `inchiKey`))
        }
        self$`inchiKey` <- `inchiKey`
      }
      if (!is.null(`smiles`)) {
        if (!(is.character(`smiles`) && length(`smiles`) == 1)) {
          stop(paste("Error! Invalid data for `smiles`. Must be a string:", `smiles`))
        }
        self$`smiles` <- `smiles`
      }
      if (!is.null(`structureName`)) {
        if (!(is.character(`structureName`) && length(`structureName`) == 1)) {
          stop(paste("Error! Invalid data for `structureName`. Must be a string:", `structureName`))
        }
        self$`structureName` <- `structureName`
      }
      if (!is.null(`xlogP`)) {
        if (!(is.numeric(`xlogP`) && length(`xlogP`) == 1)) {
          stop(paste("Error! Invalid data for `xlogP`. Must be a number:", `xlogP`))
        }
        self$`xlogP` <- `xlogP`
      }
      if (!is.null(`dbLinks`)) {
        stopifnot(is.vector(`dbLinks`), length(`dbLinks`) != 0)
        sapply(`dbLinks`, function(x) stopifnot(R6::is.R6(x)))
        self$`dbLinks` <- `dbLinks`
      }
      if (!is.null(`spectralLibraryMatches`)) {
        stopifnot(is.vector(`spectralLibraryMatches`), length(`spectralLibraryMatches`) != 0)
        sapply(`spectralLibraryMatches`, function(x) stopifnot(R6::is.R6(x)))
        self$`spectralLibraryMatches` <- `spectralLibraryMatches`
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
    #' @return StructureCandidate as a base R list.
    #' @examples
    #' # convert array of StructureCandidate (x) to a data frame
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
    #' Convert StructureCandidate to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      StructureCandidateObject <- list()
      if (!is.null(self$`inchiKey`)) {
        StructureCandidateObject[["inchiKey"]] <-
          self$`inchiKey`
      }
      if (!is.null(self$`smiles`)) {
        StructureCandidateObject[["smiles"]] <-
          self$`smiles`
      }
      if (!is.null(self$`structureName`)) {
        StructureCandidateObject[["structureName"]] <-
          self$`structureName`
      }
      if (!is.null(self$`xlogP`)) {
        StructureCandidateObject[["xlogP"]] <-
          self$`xlogP`
      }
      if (!is.null(self$`dbLinks`)) {
        StructureCandidateObject[["dbLinks"]] <-
          lapply(self$`dbLinks`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`spectralLibraryMatches`)) {
        StructureCandidateObject[["spectralLibraryMatches"]] <-
          lapply(self$`spectralLibraryMatches`, function(x) x$toSimpleType())
      }
      return(StructureCandidateObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of StructureCandidate
    #'
    #' @param input_json the JSON input
    #' @return the instance of StructureCandidate
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`inchiKey`)) {
        self$`inchiKey` <- this_object$`inchiKey`
      }
      if (!is.null(this_object$`smiles`)) {
        self$`smiles` <- this_object$`smiles`
      }
      if (!is.null(this_object$`structureName`)) {
        self$`structureName` <- this_object$`structureName`
      }
      if (!is.null(this_object$`xlogP`)) {
        self$`xlogP` <- this_object$`xlogP`
      }
      if (!is.null(this_object$`dbLinks`)) {
        self$`dbLinks` <- ApiClient$new()$deserializeObj(this_object$`dbLinks`, "array[DBLink]", loadNamespace("Rsirius"))
      }
      if (!is.null(this_object$`spectralLibraryMatches`)) {
        self$`spectralLibraryMatches` <- ApiClient$new()$deserializeObj(this_object$`spectralLibraryMatches`, "array[SpectralLibraryMatch]", loadNamespace("Rsirius"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return StructureCandidate in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of StructureCandidate
    #'
    #' @param input_json the JSON input
    #' @return the instance of StructureCandidate
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`inchiKey` <- this_object$`inchiKey`
      self$`smiles` <- this_object$`smiles`
      self$`structureName` <- this_object$`structureName`
      self$`xlogP` <- this_object$`xlogP`
      self$`dbLinks` <- ApiClient$new()$deserializeObj(this_object$`dbLinks`, "array[DBLink]", loadNamespace("Rsirius"))
      self$`spectralLibraryMatches` <- ApiClient$new()$deserializeObj(this_object$`spectralLibraryMatches`, "array[SpectralLibraryMatch]", loadNamespace("Rsirius"))
      self
    },

    #' @description
    #' Validate JSON input with respect to StructureCandidate and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of StructureCandidate
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
# StructureCandidate$unlock()
#
## Below is an example to define the print function
# StructureCandidate$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# StructureCandidate$lock()

