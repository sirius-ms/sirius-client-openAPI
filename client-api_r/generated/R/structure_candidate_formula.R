#' Create a new StructureCandidateFormula
#'
#' @description
#' StructureCandidateFormula Class
#'
#' @docType class
#' @title StructureCandidateFormula
#' @description StructureCandidateFormula Class
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
#' @field molecularFormula Molecular formula of this candidate character [optional]
#' @field adduct Adduct of this candidate character [optional]
#' @field formulaId Id of the corresponding Formula candidate character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
StructureCandidateFormula <- R6::R6Class(
  "StructureCandidateFormula",
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
    `molecularFormula` = NULL,
    `adduct` = NULL,
    `formulaId` = NULL,
    #' Initialize a new StructureCandidateFormula class.
    #'
    #' @description
    #' Initialize a new StructureCandidateFormula class.
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
    #' @param molecularFormula Molecular formula of this candidate
    #' @param adduct Adduct of this candidate
    #' @param formulaId Id of the corresponding Formula candidate
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`inchiKey` = NULL, `smiles` = NULL, `structureName` = NULL, `xlogP` = NULL, `dbLinks` = NULL, `spectralLibraryMatches` = NULL, `rank` = NULL, `csiScore` = NULL, `tanimotoSimilarity` = NULL, `mcesDistToTopHit` = NULL, `fingerprint` = NULL, `molecularFormula` = NULL, `adduct` = NULL, `formulaId` = NULL, ...) {
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
      if (!is.null(`molecularFormula`)) {
        if (!(is.character(`molecularFormula`) && length(`molecularFormula`) == 1)) {
          stop(paste("Error! Invalid data for `molecularFormula`. Must be a string:", `molecularFormula`))
        }
        self$`molecularFormula` <- `molecularFormula`
      }
      if (!is.null(`adduct`)) {
        if (!(is.character(`adduct`) && length(`adduct`) == 1)) {
          stop(paste("Error! Invalid data for `adduct`. Must be a string:", `adduct`))
        }
        self$`adduct` <- `adduct`
      }
      if (!is.null(`formulaId`)) {
        if (!(is.character(`formulaId`) && length(`formulaId`) == 1)) {
          stop(paste("Error! Invalid data for `formulaId`. Must be a string:", `formulaId`))
        }
        self$`formulaId` <- `formulaId`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return StructureCandidateFormula in JSON format
    #' @export
    toJSON = function() {
      StructureCandidateFormulaObject <- list()
      if (!is.null(self$`inchiKey`)) {
        StructureCandidateFormulaObject[["inchiKey"]] <-
          self$`inchiKey`
      }
      if (!is.null(self$`smiles`)) {
        StructureCandidateFormulaObject[["smiles"]] <-
          self$`smiles`
      }
      if (!is.null(self$`structureName`)) {
        StructureCandidateFormulaObject[["structureName"]] <-
          self$`structureName`
      }
      if (!is.null(self$`xlogP`)) {
        StructureCandidateFormulaObject[["xlogP"]] <-
          self$`xlogP`
      }
      if (!is.null(self$`dbLinks`)) {
        StructureCandidateFormulaObject[["dbLinks"]] <-
          lapply(self$`dbLinks`, function(x) x$toJSON())
      }
      if (!is.null(self$`spectralLibraryMatches`)) {
        StructureCandidateFormulaObject[["spectralLibraryMatches"]] <-
          lapply(self$`spectralLibraryMatches`, function(x) x$toJSON())
      }
      if (!is.null(self$`rank`)) {
        StructureCandidateFormulaObject[["rank"]] <-
          self$`rank`
      }
      if (!is.null(self$`csiScore`)) {
        StructureCandidateFormulaObject[["csiScore"]] <-
          self$`csiScore`
      }
      if (!is.null(self$`tanimotoSimilarity`)) {
        StructureCandidateFormulaObject[["tanimotoSimilarity"]] <-
          self$`tanimotoSimilarity`
      }
      if (!is.null(self$`mcesDistToTopHit`)) {
        StructureCandidateFormulaObject[["mcesDistToTopHit"]] <-
          self$`mcesDistToTopHit`
      }
      if (!is.null(self$`fingerprint`)) {
        StructureCandidateFormulaObject[["fingerprint"]] <-
          if (is.list(self$`fingerprint`$toJSON()) && length(self$`fingerprint`$toJSON()) == 0L){
            NULL
          } else if (length(names(self$`fingerprint`$toJSON())) == 0L && is.character(jsonlite::fromJSON(self$`fingerprint`$toJSON()))) {
            jsonlite::fromJSON(self$`fingerprint`$toJSON())
          } else {
            self$`fingerprint`$toJSON()
          }
      }
      if (!is.null(self$`molecularFormula`)) {
        StructureCandidateFormulaObject[["molecularFormula"]] <-
          self$`molecularFormula`
      }
      if (!is.null(self$`adduct`)) {
        StructureCandidateFormulaObject[["adduct"]] <-
          self$`adduct`
      }
      if (!is.null(self$`formulaId`)) {
        StructureCandidateFormulaObject[["formulaId"]] <-
          self$`formulaId`
      }
      StructureCandidateFormulaObject
    },
    #' Deserialize JSON string into an instance of StructureCandidateFormula
    #'
    #' @description
    #' Deserialize JSON string into an instance of StructureCandidateFormula
    #'
    #' @param input_json the JSON input
    #' @return the instance of StructureCandidateFormula
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
      if (!is.null(this_object$`molecularFormula`)) {
        self$`molecularFormula` <- this_object$`molecularFormula`
      }
      if (!is.null(this_object$`adduct`)) {
        self$`adduct` <- this_object$`adduct`
      }
      if (!is.null(this_object$`formulaId`)) {
        self$`formulaId` <- this_object$`formulaId`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return StructureCandidateFormula in JSON format
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
            %f
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
            %f
                    ',
          self$`rank`
          )
        },
        if (!is.null(self$`csiScore`)) {
          sprintf(
          '"csiScore":
            %f
                    ',
          self$`csiScore`
          )
        },
        if (!is.null(self$`tanimotoSimilarity`)) {
          sprintf(
          '"tanimotoSimilarity":
            %f
                    ',
          self$`tanimotoSimilarity`
          )
        },
        if (!is.null(self$`mcesDistToTopHit`)) {
          sprintf(
          '"mcesDistToTopHit":
            %f
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
        },
        if (!is.null(self$`molecularFormula`)) {
          sprintf(
          '"molecularFormula":
            "%s"
                    ',
          self$`molecularFormula`
          )
        },
        if (!is.null(self$`adduct`)) {
          sprintf(
          '"adduct":
            "%s"
                    ',
          self$`adduct`
          )
        },
        if (!is.null(self$`formulaId`)) {
          sprintf(
          '"formulaId":
            "%s"
                    ',
          self$`formulaId`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      # remove c() occurences and reduce resulting double escaped quotes \"\" into \"
      jsoncontent <- gsub('\\\"c\\((.*?)\\\"\\)', '\\1', jsoncontent)
      # fix wrong serialization of "\"ENUM\"" to "ENUM"
      jsoncontent <- gsub("\\\\\"([A-Z]+)\\\\\"", "\\1", jsoncontent)
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of StructureCandidateFormula
    #'
    #' @description
    #' Deserialize JSON string into an instance of StructureCandidateFormula
    #'
    #' @param input_json the JSON input
    #' @return the instance of StructureCandidateFormula
    #' @export
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
      self$`molecularFormula` <- this_object$`molecularFormula`
      self$`adduct` <- this_object$`adduct`
      self$`formulaId` <- this_object$`formulaId`
      self
    },
    #' Validate JSON input with respect to StructureCandidateFormula
    #'
    #' @description
    #' Validate JSON input with respect to StructureCandidateFormula and throw an exception if invalid
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
    #' @return String representation of StructureCandidateFormula
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
# StructureCandidateFormula$unlock()
#
## Below is an example to define the print function
# StructureCandidateFormula$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# StructureCandidateFormula$lock()

