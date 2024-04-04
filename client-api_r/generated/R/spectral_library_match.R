#' Create a new SpectralLibraryMatch
#'
#' @description
#' SpectralLibraryMatch Class
#'
#' @docType class
#' @title SpectralLibraryMatch
#' @description SpectralLibraryMatch Class
#' @format An \code{R6Class} generator object
#' @field similarity  numeric
#' @field sharedPeaks  integer [optional]
#' @field querySpectrumIndex  integer
#' @field dbName  character [optional]
#' @field dbId  character [optional]
#' @field uuid  integer
#' @field splash  character [optional]
#' @field molecularFormula  character [optional]
#' @field adduct  character [optional]
#' @field exactMass  character [optional]
#' @field smiles  character [optional]
#' @field candidateInChiKey  character
#' @field referenceSpectrum  \link{BasicSpectrum} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SpectralLibraryMatch <- R6::R6Class(
  "SpectralLibraryMatch",
  public = list(
    `similarity` = NULL,
    `sharedPeaks` = NULL,
    `querySpectrumIndex` = NULL,
    `dbName` = NULL,
    `dbId` = NULL,
    `uuid` = NULL,
    `splash` = NULL,
    `molecularFormula` = NULL,
    `adduct` = NULL,
    `exactMass` = NULL,
    `smiles` = NULL,
    `candidateInChiKey` = NULL,
    `referenceSpectrum` = NULL,
    #' Initialize a new SpectralLibraryMatch class.
    #'
    #' @description
    #' Initialize a new SpectralLibraryMatch class.
    #'
    #' @param similarity similarity
    #' @param querySpectrumIndex querySpectrumIndex
    #' @param uuid uuid
    #' @param candidateInChiKey candidateInChiKey
    #' @param sharedPeaks sharedPeaks
    #' @param dbName dbName
    #' @param dbId dbId
    #' @param splash splash
    #' @param molecularFormula molecularFormula
    #' @param adduct adduct
    #' @param exactMass exactMass
    #' @param smiles smiles
    #' @param referenceSpectrum referenceSpectrum
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`similarity`, `querySpectrumIndex`, `uuid`, `candidateInChiKey`, `sharedPeaks` = NULL, `dbName` = NULL, `dbId` = NULL, `splash` = NULL, `molecularFormula` = NULL, `adduct` = NULL, `exactMass` = NULL, `smiles` = NULL, `referenceSpectrum` = NULL, ...) {
      if (!missing(`similarity`)) {
        if (!(is.numeric(`similarity`) && length(`similarity`) == 1)) {
          stop(paste("Error! Invalid data for `similarity`. Must be a number:", `similarity`))
        }
        self$`similarity` <- `similarity`
      }
      if (!missing(`querySpectrumIndex`)) {
        if (!(is.numeric(`querySpectrumIndex`) && length(`querySpectrumIndex`) == 1)) {
          stop(paste("Error! Invalid data for `querySpectrumIndex`. Must be an integer:", `querySpectrumIndex`))
        }
        self$`querySpectrumIndex` <- `querySpectrumIndex`
      }
      if (!missing(`uuid`)) {
        if (!(is.numeric(`uuid`) && length(`uuid`) == 1)) {
          stop(paste("Error! Invalid data for `uuid`. Must be an integer:", `uuid`))
        }
        self$`uuid` <- `uuid`
      }
      if (!missing(`candidateInChiKey`)) {
        if (!(is.character(`candidateInChiKey`) && length(`candidateInChiKey`) == 1)) {
          stop(paste("Error! Invalid data for `candidateInChiKey`. Must be a string:", `candidateInChiKey`))
        }
        self$`candidateInChiKey` <- `candidateInChiKey`
      }
      if (!is.null(`sharedPeaks`)) {
        if (!(is.numeric(`sharedPeaks`) && length(`sharedPeaks`) == 1)) {
          stop(paste("Error! Invalid data for `sharedPeaks`. Must be an integer:", `sharedPeaks`))
        }
        self$`sharedPeaks` <- `sharedPeaks`
      }
      if (!is.null(`dbName`)) {
        if (!(is.character(`dbName`) && length(`dbName`) == 1)) {
          stop(paste("Error! Invalid data for `dbName`. Must be a string:", `dbName`))
        }
        self$`dbName` <- `dbName`
      }
      if (!is.null(`dbId`)) {
        if (!(is.character(`dbId`) && length(`dbId`) == 1)) {
          stop(paste("Error! Invalid data for `dbId`. Must be a string:", `dbId`))
        }
        self$`dbId` <- `dbId`
      }
      if (!is.null(`splash`)) {
        if (!(is.character(`splash`) && length(`splash`) == 1)) {
          stop(paste("Error! Invalid data for `splash`. Must be a string:", `splash`))
        }
        self$`splash` <- `splash`
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
      if (!is.null(`exactMass`)) {
        if (!(is.character(`exactMass`) && length(`exactMass`) == 1)) {
          stop(paste("Error! Invalid data for `exactMass`. Must be a string:", `exactMass`))
        }
        self$`exactMass` <- `exactMass`
      }
      if (!is.null(`smiles`)) {
        if (!(is.character(`smiles`) && length(`smiles`) == 1)) {
          stop(paste("Error! Invalid data for `smiles`. Must be a string:", `smiles`))
        }
        self$`smiles` <- `smiles`
      }
      if (!is.null(`referenceSpectrum`)) {
        stopifnot(R6::is.R6(`referenceSpectrum`))
        self$`referenceSpectrum` <- `referenceSpectrum`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return SpectralLibraryMatch in JSON format
    #' @export
    toJSON = function() {
      SpectralLibraryMatchObject <- list()
      if (!is.null(self$`similarity`)) {
        SpectralLibraryMatchObject[["similarity"]] <-
          self$`similarity`
      }
      if (!is.null(self$`sharedPeaks`)) {
        SpectralLibraryMatchObject[["sharedPeaks"]] <-
          self$`sharedPeaks`
      }
      if (!is.null(self$`querySpectrumIndex`)) {
        SpectralLibraryMatchObject[["querySpectrumIndex"]] <-
          self$`querySpectrumIndex`
      }
      if (!is.null(self$`dbName`)) {
        SpectralLibraryMatchObject[["dbName"]] <-
          self$`dbName`
      }
      if (!is.null(self$`dbId`)) {
        SpectralLibraryMatchObject[["dbId"]] <-
          self$`dbId`
      }
      if (!is.null(self$`uuid`)) {
        SpectralLibraryMatchObject[["uuid"]] <-
          self$`uuid`
      }
      if (!is.null(self$`splash`)) {
        SpectralLibraryMatchObject[["splash"]] <-
          self$`splash`
      }
      if (!is.null(self$`molecularFormula`)) {
        SpectralLibraryMatchObject[["molecularFormula"]] <-
          self$`molecularFormula`
      }
      if (!is.null(self$`adduct`)) {
        SpectralLibraryMatchObject[["adduct"]] <-
          self$`adduct`
      }
      if (!is.null(self$`exactMass`)) {
        SpectralLibraryMatchObject[["exactMass"]] <-
          self$`exactMass`
      }
      if (!is.null(self$`smiles`)) {
        SpectralLibraryMatchObject[["smiles"]] <-
          self$`smiles`
      }
      if (!is.null(self$`candidateInChiKey`)) {
        SpectralLibraryMatchObject[["candidateInChiKey"]] <-
          self$`candidateInChiKey`
      }
      if (!is.null(self$`referenceSpectrum`)) {
        SpectralLibraryMatchObject[["referenceSpectrum"]] <-
          if (length(names(self$`referenceSpectrum`$toJSON())) == 0L && is.character(jsonlite::fromJSON(self$`referenceSpectrum`$toJSON()))) {
            jsonlite::fromJSON(self$`referenceSpectrum`$toJSON())
          } else {
            self$`referenceSpectrum`$toJSON()
          }
      }
      SpectralLibraryMatchObject
    },
    #' Deserialize JSON string into an instance of SpectralLibraryMatch
    #'
    #' @description
    #' Deserialize JSON string into an instance of SpectralLibraryMatch
    #'
    #' @param input_json the JSON input
    #' @return the instance of SpectralLibraryMatch
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`similarity`)) {
        self$`similarity` <- this_object$`similarity`
      }
      if (!is.null(this_object$`sharedPeaks`)) {
        self$`sharedPeaks` <- this_object$`sharedPeaks`
      }
      if (!is.null(this_object$`querySpectrumIndex`)) {
        self$`querySpectrumIndex` <- this_object$`querySpectrumIndex`
      }
      if (!is.null(this_object$`dbName`)) {
        self$`dbName` <- this_object$`dbName`
      }
      if (!is.null(this_object$`dbId`)) {
        self$`dbId` <- this_object$`dbId`
      }
      if (!is.null(this_object$`uuid`)) {
        self$`uuid` <- this_object$`uuid`
      }
      if (!is.null(this_object$`splash`)) {
        self$`splash` <- this_object$`splash`
      }
      if (!is.null(this_object$`molecularFormula`)) {
        self$`molecularFormula` <- this_object$`molecularFormula`
      }
      if (!is.null(this_object$`adduct`)) {
        self$`adduct` <- this_object$`adduct`
      }
      if (!is.null(this_object$`exactMass`)) {
        self$`exactMass` <- this_object$`exactMass`
      }
      if (!is.null(this_object$`smiles`)) {
        self$`smiles` <- this_object$`smiles`
      }
      if (!is.null(this_object$`candidateInChiKey`)) {
        self$`candidateInChiKey` <- this_object$`candidateInChiKey`
      }
      if (!is.null(this_object$`referenceSpectrum`)) {
        `referencespectrum_object` <- BasicSpectrum$new()
        `referencespectrum_object`$fromJSON(jsonlite::toJSON(this_object$`referenceSpectrum`, auto_unbox = TRUE, digits = NA))
        self$`referenceSpectrum` <- `referencespectrum_object`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return SpectralLibraryMatch in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`similarity`)) {
          sprintf(
          '"similarity":
            %d
                    ',
          self$`similarity`
          )
        },
        if (!is.null(self$`sharedPeaks`)) {
          sprintf(
          '"sharedPeaks":
            %d
                    ',
          self$`sharedPeaks`
          )
        },
        if (!is.null(self$`querySpectrumIndex`)) {
          sprintf(
          '"querySpectrumIndex":
            %d
                    ',
          self$`querySpectrumIndex`
          )
        },
        if (!is.null(self$`dbName`)) {
          sprintf(
          '"dbName":
            "%s"
                    ',
          self$`dbName`
          )
        },
        if (!is.null(self$`dbId`)) {
          sprintf(
          '"dbId":
            "%s"
                    ',
          self$`dbId`
          )
        },
        if (!is.null(self$`uuid`)) {
          sprintf(
          '"uuid":
            %d
                    ',
          self$`uuid`
          )
        },
        if (!is.null(self$`splash`)) {
          sprintf(
          '"splash":
            "%s"
                    ',
          self$`splash`
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
        if (!is.null(self$`exactMass`)) {
          sprintf(
          '"exactMass":
            "%s"
                    ',
          self$`exactMass`
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
        if (!is.null(self$`candidateInChiKey`)) {
          sprintf(
          '"candidateInChiKey":
            "%s"
                    ',
          self$`candidateInChiKey`
          )
        },
        if (!is.null(self$`referenceSpectrum`)) {
          sprintf(
          '"referenceSpectrum":
          %s
          ',
          jsonlite::toJSON(self$`referenceSpectrum`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of SpectralLibraryMatch
    #'
    #' @description
    #' Deserialize JSON string into an instance of SpectralLibraryMatch
    #'
    #' @param input_json the JSON input
    #' @return the instance of SpectralLibraryMatch
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`similarity` <- this_object$`similarity`
      self$`sharedPeaks` <- this_object$`sharedPeaks`
      self$`querySpectrumIndex` <- this_object$`querySpectrumIndex`
      self$`dbName` <- this_object$`dbName`
      self$`dbId` <- this_object$`dbId`
      self$`uuid` <- this_object$`uuid`
      self$`splash` <- this_object$`splash`
      self$`molecularFormula` <- this_object$`molecularFormula`
      self$`adduct` <- this_object$`adduct`
      self$`exactMass` <- this_object$`exactMass`
      self$`smiles` <- this_object$`smiles`
      self$`candidateInChiKey` <- this_object$`candidateInChiKey`
      self$`referenceSpectrum` <- BasicSpectrum$new()$fromJSON(jsonlite::toJSON(this_object$`referenceSpectrum`, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to SpectralLibraryMatch
    #'
    #' @description
    #' Validate JSON input with respect to SpectralLibraryMatch and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `similarity`
      if (!is.null(input_json$`similarity`)) {
        if (!(is.numeric(input_json$`similarity`) && length(input_json$`similarity`) == 1)) {
          stop(paste("Error! Invalid data for `similarity`. Must be a number:", input_json$`similarity`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SpectralLibraryMatch: the required field `similarity` is missing."))
      }
      # check the required field `querySpectrumIndex`
      if (!is.null(input_json$`querySpectrumIndex`)) {
        if (!(is.numeric(input_json$`querySpectrumIndex`) && length(input_json$`querySpectrumIndex`) == 1)) {
          stop(paste("Error! Invalid data for `querySpectrumIndex`. Must be an integer:", input_json$`querySpectrumIndex`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SpectralLibraryMatch: the required field `querySpectrumIndex` is missing."))
      }
      # check the required field `uuid`
      if (!is.null(input_json$`uuid`)) {
        if (!(is.numeric(input_json$`uuid`) && length(input_json$`uuid`) == 1)) {
          stop(paste("Error! Invalid data for `uuid`. Must be an integer:", input_json$`uuid`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SpectralLibraryMatch: the required field `uuid` is missing."))
      }
      # check the required field `candidateInChiKey`
      if (!is.null(input_json$`candidateInChiKey`)) {
        if (!(is.character(input_json$`candidateInChiKey`) && length(input_json$`candidateInChiKey`) == 1)) {
          stop(paste("Error! Invalid data for `candidateInChiKey`. Must be a string:", input_json$`candidateInChiKey`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SpectralLibraryMatch: the required field `candidateInChiKey` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SpectralLibraryMatch
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
      # check if the required `similarity` is null
      if (is.null(self$`similarity`)) {
        return(FALSE)
      }

      # check if the required `querySpectrumIndex` is null
      if (is.null(self$`querySpectrumIndex`)) {
        return(FALSE)
      }

      # check if the required `uuid` is null
      if (is.null(self$`uuid`)) {
        return(FALSE)
      }

      # check if the required `candidateInChiKey` is null
      if (is.null(self$`candidateInChiKey`)) {
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
      # check if the required `similarity` is null
      if (is.null(self$`similarity`)) {
        invalid_fields["similarity"] <- "Non-nullable required field `similarity` cannot be null."
      }

      # check if the required `querySpectrumIndex` is null
      if (is.null(self$`querySpectrumIndex`)) {
        invalid_fields["querySpectrumIndex"] <- "Non-nullable required field `querySpectrumIndex` cannot be null."
      }

      # check if the required `uuid` is null
      if (is.null(self$`uuid`)) {
        invalid_fields["uuid"] <- "Non-nullable required field `uuid` cannot be null."
      }

      # check if the required `candidateInChiKey` is null
      if (is.null(self$`candidateInChiKey`)) {
        invalid_fields["candidateInChiKey"] <- "Non-nullable required field `candidateInChiKey` cannot be null."
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
# SpectralLibraryMatch$unlock()
#
## Below is an example to define the print function
# SpectralLibraryMatch$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SpectralLibraryMatch$lock()

