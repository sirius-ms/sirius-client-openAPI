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
    #' Initialize a new StructureCandidate class.
    #'
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
    #' @export
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
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return StructureCandidate in JSON format
    #' @export
    toJSON = function() {
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
          lapply(self$`dbLinks`, function(x) x$toJSON())
      }
      if (!is.null(self$`spectralLibraryMatches`)) {
        StructureCandidateObject[["spectralLibraryMatches"]] <-
          lapply(self$`spectralLibraryMatches`, function(x) x$toJSON())
      }
      StructureCandidateObject
    },
    #' Deserialize JSON string into an instance of StructureCandidate
    #'
    #' @description
    #' Deserialize JSON string into an instance of StructureCandidate
    #'
    #' @param input_json the JSON input
    #' @return the instance of StructureCandidate
    #' @export
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
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return StructureCandidate in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`inchiKey`)) {
          sprintf(
          '"inchiKey":
            "%s"
                    ',
          self$`inchiKey`
          )
        },
        if (!is.null(self$`smiles`)) {
          sprintf(
          '"smiles":
            "%s"
                    ',
          self$`smiles`
          )
        },
        if (!is.null(self$`structureName`)) {
          sprintf(
          '"structureName":
            "%s"
                    ',
          self$`structureName`
          )
        },
        if (!is.null(self$`xlogP`)) {
          sprintf(
          '"xlogP":
            %d
                    ',
          self$`xlogP`
          )
        },
        if (!is.null(self$`dbLinks`)) {
          sprintf(
          '"dbLinks":
          [%s]
',
          paste(sapply(self$`dbLinks`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        },
        if (!is.null(self$`spectralLibraryMatches`)) {
          sprintf(
          '"spectralLibraryMatches":
          [%s]
',
          paste(sapply(self$`spectralLibraryMatches`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of StructureCandidate
    #'
    #' @description
    #' Deserialize JSON string into an instance of StructureCandidate
    #'
    #' @param input_json the JSON input
    #' @return the instance of StructureCandidate
    #' @export
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
    #' Validate JSON input with respect to StructureCandidate
    #'
    #' @description
    #' Validate JSON input with respect to StructureCandidate and throw an exception if invalid
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
    #' @return String representation of StructureCandidate
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
# StructureCandidate$unlock()
#
## Below is an example to define the print function
# StructureCandidate$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# StructureCandidate$lock()

