#' Create a new StructureCandidate
#'
#' @description
#' 
#'
#' @docType class
#' @title StructureCandidate
#' @description StructureCandidate Class
#' @format An \code{R6Class} generator object
#' @field structureName  character [optional]
#' @field smiles  character [optional]
#' @field csiScore  numeric [optional]
#' @field tanimotoSimilarity  numeric [optional]
#' @field confidenceScore  numeric [optional]
#' @field numOfPubMedIds  integer [optional]
#' @field xlogP  numeric [optional]
#' @field inchiKey  character [optional]
#' @field fpBitsSet Array containing the indices of the molecular fingerprint that are available in the structure (1)  OPTIONAL: needs to be added by parameter list(integer) [optional]
#' @field dbLinks List of structure database links belonging to this structure candidate  OPTIONAL: needs to be added by parameter list(\link{DBLink}) [optional]
#' @field pubmedIds PubMed IDs belonging to this structure candidate  OPTIONAL: needs to be added by parameter list(integer) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
StructureCandidate <- R6::R6Class(
  "StructureCandidate",
  public = list(
    `structureName` = NULL,
    `smiles` = NULL,
    `csiScore` = NULL,
    `tanimotoSimilarity` = NULL,
    `confidenceScore` = NULL,
    `numOfPubMedIds` = NULL,
    `xlogP` = NULL,
    `inchiKey` = NULL,
    `fpBitsSet` = NULL,
    `dbLinks` = NULL,
    `pubmedIds` = NULL,
    #' Initialize a new StructureCandidate class.
    #'
    #' @description
    #' Initialize a new StructureCandidate class.
    #'
    #' @param structureName structureName
    #' @param smiles smiles
    #' @param csiScore csiScore
    #' @param tanimotoSimilarity tanimotoSimilarity
    #' @param confidenceScore confidenceScore
    #' @param numOfPubMedIds numOfPubMedIds
    #' @param xlogP xlogP
    #' @param inchiKey inchiKey
    #' @param fpBitsSet Array containing the indices of the molecular fingerprint that are available in the structure (1)  OPTIONAL: needs to be added by parameter
    #' @param dbLinks List of structure database links belonging to this structure candidate  OPTIONAL: needs to be added by parameter
    #' @param pubmedIds PubMed IDs belonging to this structure candidate  OPTIONAL: needs to be added by parameter
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`structureName` = NULL, `smiles` = NULL, `csiScore` = NULL, `tanimotoSimilarity` = NULL, `confidenceScore` = NULL, `numOfPubMedIds` = NULL, `xlogP` = NULL, `inchiKey` = NULL, `fpBitsSet` = NULL, `dbLinks` = NULL, `pubmedIds` = NULL, ...) {
      if (!is.null(`structureName`)) {
        if (!(is.character(`structureName`) && length(`structureName`) == 1)) {
          stop(paste("Error! Invalid data for `structureName`. Must be a string:", `structureName`))
        }
        self$`structureName` <- `structureName`
      }
      if (!is.null(`smiles`)) {
        if (!(is.character(`smiles`) && length(`smiles`) == 1)) {
          stop(paste("Error! Invalid data for `smiles`. Must be a string:", `smiles`))
        }
        self$`smiles` <- `smiles`
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
      if (!is.null(`confidenceScore`)) {
        if (!(is.numeric(`confidenceScore`) && length(`confidenceScore`) == 1)) {
          stop(paste("Error! Invalid data for `confidenceScore`. Must be a number:", `confidenceScore`))
        }
        self$`confidenceScore` <- `confidenceScore`
      }
      if (!is.null(`numOfPubMedIds`)) {
        if (!(is.numeric(`numOfPubMedIds`) && length(`numOfPubMedIds`) == 1)) {
          stop(paste("Error! Invalid data for `numOfPubMedIds`. Must be an integer:", `numOfPubMedIds`))
        }
        self$`numOfPubMedIds` <- `numOfPubMedIds`
      }
      if (!is.null(`xlogP`)) {
        if (!(is.numeric(`xlogP`) && length(`xlogP`) == 1)) {
          stop(paste("Error! Invalid data for `xlogP`. Must be a number:", `xlogP`))
        }
        self$`xlogP` <- `xlogP`
      }
      if (!is.null(`inchiKey`)) {
        if (!(is.character(`inchiKey`) && length(`inchiKey`) == 1)) {
          stop(paste("Error! Invalid data for `inchiKey`. Must be a string:", `inchiKey`))
        }
        self$`inchiKey` <- `inchiKey`
      }
      if (!is.null(`fpBitsSet`)) {
        stopifnot(is.vector(`fpBitsSet`), length(`fpBitsSet`) != 0)
        sapply(`fpBitsSet`, function(x) stopifnot(is.character(x)))
        self$`fpBitsSet` <- `fpBitsSet`
      }
      if (!is.null(`dbLinks`)) {
        stopifnot(is.vector(`dbLinks`), length(`dbLinks`) != 0)
        sapply(`dbLinks`, function(x) stopifnot(R6::is.R6(x)))
        self$`dbLinks` <- `dbLinks`
      }
      if (!is.null(`pubmedIds`)) {
        stopifnot(is.vector(`pubmedIds`), length(`pubmedIds`) != 0)
        sapply(`pubmedIds`, function(x) stopifnot(is.character(x)))
        self$`pubmedIds` <- `pubmedIds`
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
      if (!is.null(self$`structureName`)) {
        StructureCandidateObject[["structureName"]] <-
          self$`structureName`
      }
      if (!is.null(self$`smiles`)) {
        StructureCandidateObject[["smiles"]] <-
          self$`smiles`
      }
      if (!is.null(self$`csiScore`)) {
        StructureCandidateObject[["csiScore"]] <-
          self$`csiScore`
      }
      if (!is.null(self$`tanimotoSimilarity`)) {
        StructureCandidateObject[["tanimotoSimilarity"]] <-
          self$`tanimotoSimilarity`
      }
      if (!is.null(self$`confidenceScore`)) {
        StructureCandidateObject[["confidenceScore"]] <-
          self$`confidenceScore`
      }
      if (!is.null(self$`numOfPubMedIds`)) {
        StructureCandidateObject[["numOfPubMedIds"]] <-
          self$`numOfPubMedIds`
      }
      if (!is.null(self$`xlogP`)) {
        StructureCandidateObject[["xlogP"]] <-
          self$`xlogP`
      }
      if (!is.null(self$`inchiKey`)) {
        StructureCandidateObject[["inchiKey"]] <-
          self$`inchiKey`
      }
      if (!is.null(self$`fpBitsSet`)) {
        StructureCandidateObject[["fpBitsSet"]] <-
          self$`fpBitsSet`
      }
      if (!is.null(self$`dbLinks`)) {
        StructureCandidateObject[["dbLinks"]] <-
          lapply(self$`dbLinks`, function(x) x$toJSON())
      }
      if (!is.null(self$`pubmedIds`)) {
        StructureCandidateObject[["pubmedIds"]] <-
          self$`pubmedIds`
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
      if (!is.null(this_object$`structureName`)) {
        self$`structureName` <- this_object$`structureName`
      }
      if (!is.null(this_object$`smiles`)) {
        self$`smiles` <- this_object$`smiles`
      }
      if (!is.null(this_object$`csiScore`)) {
        self$`csiScore` <- this_object$`csiScore`
      }
      if (!is.null(this_object$`tanimotoSimilarity`)) {
        self$`tanimotoSimilarity` <- this_object$`tanimotoSimilarity`
      }
      if (!is.null(this_object$`confidenceScore`)) {
        self$`confidenceScore` <- this_object$`confidenceScore`
      }
      if (!is.null(this_object$`numOfPubMedIds`)) {
        self$`numOfPubMedIds` <- this_object$`numOfPubMedIds`
      }
      if (!is.null(this_object$`xlogP`)) {
        self$`xlogP` <- this_object$`xlogP`
      }
      if (!is.null(this_object$`inchiKey`)) {
        self$`inchiKey` <- this_object$`inchiKey`
      }
      if (!is.null(this_object$`fpBitsSet`)) {
        self$`fpBitsSet` <- ApiClient$new()$deserializeObj(this_object$`fpBitsSet`, "array[integer]", loadNamespace("Rsirius"))
      }
      if (!is.null(this_object$`dbLinks`)) {
        self$`dbLinks` <- ApiClient$new()$deserializeObj(this_object$`dbLinks`, "array[DBLink]", loadNamespace("Rsirius"))
      }
      if (!is.null(this_object$`pubmedIds`)) {
        self$`pubmedIds` <- ApiClient$new()$deserializeObj(this_object$`pubmedIds`, "array[integer]", loadNamespace("Rsirius"))
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
        if (!is.null(self$`structureName`)) {
          sprintf(
          '"structureName":
            "%s"
                    ',
          self$`structureName`
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
        if (!is.null(self$`confidenceScore`)) {
          sprintf(
          '"confidenceScore":
            %d
                    ',
          self$`confidenceScore`
          )
        },
        if (!is.null(self$`numOfPubMedIds`)) {
          sprintf(
          '"numOfPubMedIds":
            %d
                    ',
          self$`numOfPubMedIds`
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
        if (!is.null(self$`inchiKey`)) {
          sprintf(
          '"inchiKey":
            "%s"
                    ',
          self$`inchiKey`
          )
        },
        if (!is.null(self$`fpBitsSet`)) {
          sprintf(
          '"fpBitsSet":
             [%s]
          ',
          paste(unlist(lapply(self$`fpBitsSet`, function(x) paste0('"', x, '"'))), collapse = ",")
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
        if (!is.null(self$`pubmedIds`)) {
          sprintf(
          '"pubmedIds":
             [%s]
          ',
          paste(unlist(lapply(self$`pubmedIds`, function(x) paste0('"', x, '"'))), collapse = ",")
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
      self$`structureName` <- this_object$`structureName`
      self$`smiles` <- this_object$`smiles`
      self$`csiScore` <- this_object$`csiScore`
      self$`tanimotoSimilarity` <- this_object$`tanimotoSimilarity`
      self$`confidenceScore` <- this_object$`confidenceScore`
      self$`numOfPubMedIds` <- this_object$`numOfPubMedIds`
      self$`xlogP` <- this_object$`xlogP`
      self$`inchiKey` <- this_object$`inchiKey`
      self$`fpBitsSet` <- ApiClient$new()$deserializeObj(this_object$`fpBitsSet`, "array[integer]", loadNamespace("Rsirius"))
      self$`dbLinks` <- ApiClient$new()$deserializeObj(this_object$`dbLinks`, "array[DBLink]", loadNamespace("Rsirius"))
      self$`pubmedIds` <- ApiClient$new()$deserializeObj(this_object$`pubmedIds`, "array[integer]", loadNamespace("Rsirius"))
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
## Below is an example to define the print fnuction
# StructureCandidate$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# StructureCandidate$lock()

