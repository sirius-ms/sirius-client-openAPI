#' Create a new StructureCandidateScored
#'
#' @description
#' StructureCandidateScored Class
#'
#' @docType class
#' @title StructureCandidateScored
#' @description StructureCandidateScored Class
#' @format An \code{R6Class} generator object
#' @field inchiKey  character [optional]
#' @field smiles  character [optional]
#' @field structureName  character [optional]
#' @field xlogP  numeric [optional]
#' @field dbLinks List of structure database links belonging to this structure candidate  OPTIONAL: needs to be added by parameter list(\link{DBLink}) [optional]
#' @field spectralLibraryMatches List of spectral library matches belonging to this structure candidate  OPTIONAL: needs to be added by parameter list(\link{SpectralLibraryMatch}) [optional]
#' @field rank the overall rank of this candidate among all candidates of this feature integer [optional]
#' @field csiScore CSI:FingerID score of the fingerprint of this compound to the predicted fingerprint of CSI:FingerID  This is the score used for ranking structure candidates numeric [optional]
#' @field tanimotoSimilarity Tanimoto similarly of the fingerprint of this compound to the predicted fingerprint of CSI:FingerID numeric [optional]
#' @field mcesDistToTopHit Maximum Common Edge Subgraph (MCES) distance to the top scoring hit (CSI:FingerID) in a candidate list. numeric [optional]
#' @field fingerprint  \link{BinaryFingerprint} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
StructureCandidateScored <- R6::R6Class(
  "StructureCandidateScored",
  public = list(
    `inchiKey` = NULL,
    `smiles` = NULL,
    `structureName` = NULL,
    `xlogP` = NULL,
    `dbLinks` = NULL,
    `spectralLibraryMatches` = NULL,
    `rank` = NULL,
    `csiScore` = NULL,
    `tanimotoSimilarity` = NULL,
    `mcesDistToTopHit` = NULL,
    `fingerprint` = NULL,

    #' @description
    #' Initialize a new StructureCandidateScored class.
    #'
    #' @param inchiKey inchiKey
    #' @param smiles smiles
    #' @param structureName structureName
    #' @param xlogP xlogP
    #' @param dbLinks List of structure database links belonging to this structure candidate  OPTIONAL: needs to be added by parameter
    #' @param spectralLibraryMatches List of spectral library matches belonging to this structure candidate  OPTIONAL: needs to be added by parameter
    #' @param rank the overall rank of this candidate among all candidates of this feature
    #' @param csiScore CSI:FingerID score of the fingerprint of this compound to the predicted fingerprint of CSI:FingerID  This is the score used for ranking structure candidates
    #' @param tanimotoSimilarity Tanimoto similarly of the fingerprint of this compound to the predicted fingerprint of CSI:FingerID
    #' @param mcesDistToTopHit Maximum Common Edge Subgraph (MCES) distance to the top scoring hit (CSI:FingerID) in a candidate list.
    #' @param fingerprint fingerprint
    #' @param ... Other optional arguments.
    initialize = function(`inchiKey` = NULL, `smiles` = NULL, `structureName` = NULL, `xlogP` = NULL, `dbLinks` = NULL, `spectralLibraryMatches` = NULL, `rank` = NULL, `csiScore` = NULL, `tanimotoSimilarity` = NULL, `mcesDistToTopHit` = NULL, `fingerprint` = NULL, ...) {
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
      if (!is.null(`rank`)) {
        if (!(is.numeric(`rank`) && length(`rank`) == 1)) {
          stop(paste("Error! Invalid data for `rank`. Must be an integer:", `rank`))
        }
        self$`rank` <- `rank`
      }
      if (!is.null(`csiScore`)) {
        if (!(is.numeric(`csiScore`) && length(`csiScore`) == 1)) {
          stop(paste("Error! Invalid data for `csiScore`. Must be a number:", `csiScore`))
        }
        self$`csiScore` <- `csiScore`
      }
      if (!is.null(`tanimotoSimilarity`)) {
        if (!(is.numeric(`tanimotoSimilarity`) && length(`tanimotoSimilarity`) == 1)) {
          stop(paste("Error! Invalid data for `tanimotoSimilarity`. Must be a number:", `tanimotoSimilarity`))
        }
        self$`tanimotoSimilarity` <- `tanimotoSimilarity`
      }
      if (!is.null(`mcesDistToTopHit`)) {
        if (!(is.numeric(`mcesDistToTopHit`) && length(`mcesDistToTopHit`) == 1)) {
          stop(paste("Error! Invalid data for `mcesDistToTopHit`. Must be a number:", `mcesDistToTopHit`))
        }
        self$`mcesDistToTopHit` <- `mcesDistToTopHit`
      }
      if (!is.null(`fingerprint`)) {
        stopifnot(R6::is.R6(`fingerprint`))
        self$`fingerprint` <- `fingerprint`
      }
    },

    #' @description
    #' To JSON String
    #'
    #' @return StructureCandidateScored in JSON format
    toJSON = function() {
      StructureCandidateScoredObject <- list()
      if (!is.null(self$`inchiKey`)) {
        StructureCandidateScoredObject[["inchiKey"]] <-
          self$`inchiKey`
      }
      if (!is.null(self$`smiles`)) {
        StructureCandidateScoredObject[["smiles"]] <-
          self$`smiles`
      }
      if (!is.null(self$`structureName`)) {
        StructureCandidateScoredObject[["structureName"]] <-
          self$`structureName`
      }
      if (!is.null(self$`xlogP`)) {
        StructureCandidateScoredObject[["xlogP"]] <-
          self$`xlogP`
      }
      if (!is.null(self$`dbLinks`)) {
        StructureCandidateScoredObject[["dbLinks"]] <-
          lapply(self$`dbLinks`, function(x) x$toJSON())
      }
      if (!is.null(self$`spectralLibraryMatches`)) {
        StructureCandidateScoredObject[["spectralLibraryMatches"]] <-
          lapply(self$`spectralLibraryMatches`, function(x) x$toJSON())
      }
      if (!is.null(self$`rank`)) {
        StructureCandidateScoredObject[["rank"]] <-
          self$`rank`
      }
      if (!is.null(self$`csiScore`)) {
        StructureCandidateScoredObject[["csiScore"]] <-
          self$`csiScore`
      }
      if (!is.null(self$`tanimotoSimilarity`)) {
        StructureCandidateScoredObject[["tanimotoSimilarity"]] <-
          self$`tanimotoSimilarity`
      }
      if (!is.null(self$`mcesDistToTopHit`)) {
        StructureCandidateScoredObject[["mcesDistToTopHit"]] <-
          self$`mcesDistToTopHit`
      }
      if (!is.null(self$`fingerprint`)) {
        StructureCandidateScoredObject[["fingerprint"]] <-
          self$`fingerprint`$toJSON()
      }
      StructureCandidateScoredObject
    },

    #' @description
    #' Deserialize JSON string into an instance of StructureCandidateScored
    #'
    #' @param input_json the JSON input
    #' @return the instance of StructureCandidateScored
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
      if (!is.null(this_object$`rank`)) {
        self$`rank` <- this_object$`rank`
      }
      if (!is.null(this_object$`csiScore`)) {
        self$`csiScore` <- this_object$`csiScore`
      }
      if (!is.null(this_object$`tanimotoSimilarity`)) {
        self$`tanimotoSimilarity` <- this_object$`tanimotoSimilarity`
      }
      if (!is.null(this_object$`mcesDistToTopHit`)) {
        self$`mcesDistToTopHit` <- this_object$`mcesDistToTopHit`
      }
      if (!is.null(this_object$`fingerprint`)) {
        `fingerprint_object` <- BinaryFingerprint$new()
        `fingerprint_object`$fromJSON(jsonlite::toJSON(this_object$`fingerprint`, auto_unbox = TRUE, digits = NA))
        self$`fingerprint` <- `fingerprint_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return StructureCandidateScored in JSON format
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
        },
        if (!is.null(self$`rank`)) {
          sprintf(
          '"rank":
            %d
                    ',
          self$`rank`
          )
        },
        if (!is.null(self$`csiScore`)) {
          sprintf(
          '"csiScore":
            %d
                    ',
          self$`csiScore`
          )
        },
        if (!is.null(self$`tanimotoSimilarity`)) {
          sprintf(
          '"tanimotoSimilarity":
            %d
                    ',
          self$`tanimotoSimilarity`
          )
        },
        if (!is.null(self$`mcesDistToTopHit`)) {
          sprintf(
          '"mcesDistToTopHit":
            %d
                    ',
          self$`mcesDistToTopHit`
          )
        },
        if (!is.null(self$`fingerprint`)) {
          sprintf(
          '"fingerprint":
          %s
          ',
          jsonlite::toJSON(self$`fingerprint`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },

    #' @description
    #' Deserialize JSON string into an instance of StructureCandidateScored
    #'
    #' @param input_json the JSON input
    #' @return the instance of StructureCandidateScored
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`inchiKey` <- this_object$`inchiKey`
      self$`smiles` <- this_object$`smiles`
      self$`structureName` <- this_object$`structureName`
      self$`xlogP` <- this_object$`xlogP`
      self$`dbLinks` <- ApiClient$new()$deserializeObj(this_object$`dbLinks`, "array[DBLink]", loadNamespace("Rsirius"))
      self$`spectralLibraryMatches` <- ApiClient$new()$deserializeObj(this_object$`spectralLibraryMatches`, "array[SpectralLibraryMatch]", loadNamespace("Rsirius"))
      self$`rank` <- this_object$`rank`
      self$`csiScore` <- this_object$`csiScore`
      self$`tanimotoSimilarity` <- this_object$`tanimotoSimilarity`
      self$`mcesDistToTopHit` <- this_object$`mcesDistToTopHit`
      self$`fingerprint` <- BinaryFingerprint$new()$fromJSON(jsonlite::toJSON(this_object$`fingerprint`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to StructureCandidateScored and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of StructureCandidateScored
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
# StructureCandidateScored$unlock()
#
## Below is an example to define the print function
# StructureCandidateScored$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# StructureCandidateScored$lock()

