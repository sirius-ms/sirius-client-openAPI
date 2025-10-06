#' Create a new SpectralLibraryMatch
#'
#' @description
#' SpectralLibraryMatch Class
#'
#' @docType class
#' @title SpectralLibraryMatch
#' @description SpectralLibraryMatch Class
#' @format An \code{R6Class} generator object
#' @field specMatchId  character [optional]
#' @field rank  integer [optional]
#' @field similarity Similarity between query and reference spectrum numeric
#' @field sharedPeaks Number of shared/matched peaks integer [optional]
#' @field sharedPeakMapping List of paired/matched peak indices.   Maps indices of peaks from the query spectrum (mass sorted)  to indices of matched peaks in the reference spectrum (mass sorted) list(\link{PeakPair}) [optional]
#' @field querySpectrumIndex  integer
#' @field dbName  character [optional]
#' @field dbId  character [optional]
#' @field uuid  integer
#' @field splash  character [optional]
#' @field molecularFormula  character [optional]
#' @field adduct  character [optional]
#' @field exactMass  numeric [optional]
#' @field smiles  character [optional]
#' @field type  character [optional]
#' @field inchiKey  character
#' @field referenceSpectrumType  character [optional]
#' @field referenceSpectrum  \link{BasicSpectrum} [optional]
#' @field querySpectrumType  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SpectralLibraryMatch <- R6::R6Class(
  "SpectralLibraryMatch",
  public = list(
    `specMatchId` = NULL,
    `rank` = NULL,
    `similarity` = NULL,
    `sharedPeaks` = NULL,
    `sharedPeakMapping` = NULL,
    `querySpectrumIndex` = NULL,
    `dbName` = NULL,
    `dbId` = NULL,
    `uuid` = NULL,
    `splash` = NULL,
    `molecularFormula` = NULL,
    `adduct` = NULL,
    `exactMass` = NULL,
    `smiles` = NULL,
    `type` = NULL,
    `inchiKey` = NULL,
    `referenceSpectrumType` = NULL,
    `referenceSpectrum` = NULL,
    `querySpectrumType` = NULL,

    #' @description
    #' Initialize a new SpectralLibraryMatch class.
    #'
    #' @param similarity Similarity between query and reference spectrum
    #' @param querySpectrumIndex querySpectrumIndex
    #' @param uuid uuid
    #' @param inchiKey inchiKey
    #' @param specMatchId specMatchId
    #' @param rank rank
    #' @param sharedPeaks Number of shared/matched peaks
    #' @param sharedPeakMapping List of paired/matched peak indices.   Maps indices of peaks from the query spectrum (mass sorted)  to indices of matched peaks in the reference spectrum (mass sorted)
    #' @param dbName dbName
    #' @param dbId dbId
    #' @param splash splash
    #' @param molecularFormula molecularFormula
    #' @param adduct adduct
    #' @param exactMass exactMass
    #' @param smiles smiles
    #' @param type type. Default to "IDENTITY".
    #' @param referenceSpectrumType referenceSpectrumType. Default to "SPECTRUM".
    #' @param referenceSpectrum referenceSpectrum
    #' @param querySpectrumType querySpectrumType
    #' @param ... Other optional arguments.
    initialize = function(`similarity`, `querySpectrumIndex`, `uuid`, `inchiKey`, `specMatchId` = NULL, `rank` = NULL, `sharedPeaks` = NULL, `sharedPeakMapping` = NULL, `dbName` = NULL, `dbId` = NULL, `splash` = NULL, `molecularFormula` = NULL, `adduct` = NULL, `exactMass` = NULL, `smiles` = NULL, `type` = "IDENTITY", `referenceSpectrumType` = "SPECTRUM", `referenceSpectrum` = NULL, `querySpectrumType` = NULL, ...) {
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
      if (!missing(`inchiKey`)) {
        if (!(is.character(`inchiKey`) && length(`inchiKey`) == 1)) {
          stop(paste("Error! Invalid data for `inchiKey`. Must be a string:", `inchiKey`))
        }
        self$`inchiKey` <- `inchiKey`
      }
      if (!is.null(`specMatchId`)) {
        if (!(is.character(`specMatchId`) && length(`specMatchId`) == 1)) {
          stop(paste("Error! Invalid data for `specMatchId`. Must be a string:", `specMatchId`))
        }
        self$`specMatchId` <- `specMatchId`
      }
      if (!is.null(`rank`)) {
        if (!(is.numeric(`rank`) && length(`rank`) == 1)) {
          stop(paste("Error! Invalid data for `rank`. Must be an integer:", `rank`))
        }
        self$`rank` <- `rank`
      }
      if (!is.null(`sharedPeaks`)) {
        if (!(is.numeric(`sharedPeaks`) && length(`sharedPeaks`) == 1)) {
          stop(paste("Error! Invalid data for `sharedPeaks`. Must be an integer:", `sharedPeaks`))
        }
        self$`sharedPeaks` <- `sharedPeaks`
      }
      if (!is.null(`sharedPeakMapping`)) {
        stopifnot(is.vector(`sharedPeakMapping`), length(`sharedPeakMapping`) != 0)
        sapply(`sharedPeakMapping`, function(x) stopifnot(R6::is.R6(x)))
        self$`sharedPeakMapping` <- `sharedPeakMapping`
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
        if (!(is.numeric(`exactMass`) && length(`exactMass`) == 1)) {
          stop(paste("Error! Invalid data for `exactMass`. Must be a number:", `exactMass`))
        }
        self$`exactMass` <- `exactMass`
      }
      if (!is.null(`smiles`)) {
        if (!(is.character(`smiles`) && length(`smiles`) == 1)) {
          stop(paste("Error! Invalid data for `smiles`. Must be a string:", `smiles`))
        }
        self$`smiles` <- `smiles`
      }
      if (!is.null(`type`)) {
        if (!(`type` %in% c("IDENTITY", "ANALOG"))) {
          stop(paste("Error! \"", `type`, "\" cannot be assigned to `type`. Must be \"IDENTITY\", \"ANALOG\".", sep = ""))
        }
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
      }
      if (!is.null(`referenceSpectrumType`)) {
        if (!(`referenceSpectrumType` %in% c("SPECTRUM", "MERGED_SPECTRUM"))) {
          stop(paste("Error! \"", `referenceSpectrumType`, "\" cannot be assigned to `referenceSpectrumType`. Must be \"SPECTRUM\", \"MERGED_SPECTRUM\".", sep = ""))
        }
        if (!(is.character(`referenceSpectrumType`) && length(`referenceSpectrumType`) == 1)) {
          stop(paste("Error! Invalid data for `referenceSpectrumType`. Must be a string:", `referenceSpectrumType`))
        }
        self$`referenceSpectrumType` <- `referenceSpectrumType`
      }
      if (!is.null(`referenceSpectrum`)) {
        stopifnot(R6::is.R6(`referenceSpectrum`))
        self$`referenceSpectrum` <- `referenceSpectrum`
      }
      if (!is.null(`querySpectrumType`)) {
        if (!(`querySpectrumType` %in% c("SPECTRUM", "MERGED_SPECTRUM"))) {
          stop(paste("Error! \"", `querySpectrumType`, "\" cannot be assigned to `querySpectrumType`. Must be \"SPECTRUM\", \"MERGED_SPECTRUM\".", sep = ""))
        }
        if (!(is.character(`querySpectrumType`) && length(`querySpectrumType`) == 1)) {
          stop(paste("Error! Invalid data for `querySpectrumType`. Must be a string:", `querySpectrumType`))
        }
        self$`querySpectrumType` <- `querySpectrumType`
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
    #' @return SpectralLibraryMatch as a base R list.
    #' @examples
    #' # convert array of SpectralLibraryMatch (x) to a data frame
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
    #' Convert SpectralLibraryMatch to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SpectralLibraryMatchObject <- list()
      if (!is.null(self$`specMatchId`)) {
        SpectralLibraryMatchObject[["specMatchId"]] <-
          self$`specMatchId`
      }
      if (!is.null(self$`rank`)) {
        SpectralLibraryMatchObject[["rank"]] <-
          self$`rank`
      }
      if (!is.null(self$`similarity`)) {
        SpectralLibraryMatchObject[["similarity"]] <-
          self$`similarity`
      }
      if (!is.null(self$`sharedPeaks`)) {
        SpectralLibraryMatchObject[["sharedPeaks"]] <-
          self$`sharedPeaks`
      }
      if (!is.null(self$`sharedPeakMapping`)) {
        SpectralLibraryMatchObject[["sharedPeakMapping"]] <-
          lapply(self$`sharedPeakMapping`, function(x) x$toSimpleType())
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
      if (!is.null(self$`type`)) {
        SpectralLibraryMatchObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`inchiKey`)) {
        SpectralLibraryMatchObject[["inchiKey"]] <-
          self$`inchiKey`
      }
      if (!is.null(self$`referenceSpectrumType`)) {
        SpectralLibraryMatchObject[["referenceSpectrumType"]] <-
          self$`referenceSpectrumType`
      }
      if (!is.null(self$`referenceSpectrum`)) {
        SpectralLibraryMatchObject[["referenceSpectrum"]] <-
          self$`referenceSpectrum`$toSimpleType()
      }
      if (!is.null(self$`querySpectrumType`)) {
        SpectralLibraryMatchObject[["querySpectrumType"]] <-
          self$`querySpectrumType`
      }
      return(SpectralLibraryMatchObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of SpectralLibraryMatch
    #'
    #' @param input_json the JSON input
    #' @return the instance of SpectralLibraryMatch
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`specMatchId`)) {
        self$`specMatchId` <- this_object$`specMatchId`
      }
      if (!is.null(this_object$`rank`)) {
        self$`rank` <- this_object$`rank`
      }
      if (!is.null(this_object$`similarity`)) {
        self$`similarity` <- this_object$`similarity`
      }
      if (!is.null(this_object$`sharedPeaks`)) {
        self$`sharedPeaks` <- this_object$`sharedPeaks`
      }
      if (!is.null(this_object$`sharedPeakMapping`)) {
        self$`sharedPeakMapping` <- ApiClient$new()$deserializeObj(this_object$`sharedPeakMapping`, "array[PeakPair]", loadNamespace("RSirius"))
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
      if (!is.null(this_object$`type`)) {
        if (!is.null(this_object$`type`) && !(this_object$`type` %in% c("IDENTITY", "ANALOG"))) {
          stop(paste("Error! \"", this_object$`type`, "\" cannot be assigned to `type`. Must be \"IDENTITY\", \"ANALOG\".", sep = ""))
        }
        self$`type` <- this_object$`type`
      }
      if (!is.null(this_object$`inchiKey`)) {
        self$`inchiKey` <- this_object$`inchiKey`
      }
      if (!is.null(this_object$`referenceSpectrumType`)) {
        if (!is.null(this_object$`referenceSpectrumType`) && !(this_object$`referenceSpectrumType` %in% c("SPECTRUM", "MERGED_SPECTRUM"))) {
          stop(paste("Error! \"", this_object$`referenceSpectrumType`, "\" cannot be assigned to `referenceSpectrumType`. Must be \"SPECTRUM\", \"MERGED_SPECTRUM\".", sep = ""))
        }
        self$`referenceSpectrumType` <- this_object$`referenceSpectrumType`
      }
      if (!is.null(this_object$`referenceSpectrum`)) {
        `referencespectrum_object` <- BasicSpectrum$new()
        `referencespectrum_object`$fromJSON(jsonlite::toJSON(this_object$`referenceSpectrum`, auto_unbox = TRUE, digits = NA, null = 'null'))
        self$`referenceSpectrum` <- `referencespectrum_object`
      }
      if (!is.null(this_object$`querySpectrumType`)) {
        if (!is.null(this_object$`querySpectrumType`) && !(this_object$`querySpectrumType` %in% c("SPECTRUM", "MERGED_SPECTRUM"))) {
          stop(paste("Error! \"", this_object$`querySpectrumType`, "\" cannot be assigned to `querySpectrumType`. Must be \"SPECTRUM\", \"MERGED_SPECTRUM\".", sep = ""))
        }
        self$`querySpectrumType` <- this_object$`querySpectrumType`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SpectralLibraryMatch in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SpectralLibraryMatch
    #'
    #' @param input_json the JSON input
    #' @return the instance of SpectralLibraryMatch
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`specMatchId` <- this_object$`specMatchId`
      self$`rank` <- this_object$`rank`
      self$`similarity` <- this_object$`similarity`
      self$`sharedPeaks` <- this_object$`sharedPeaks`
      self$`sharedPeakMapping` <- ApiClient$new()$deserializeObj(this_object$`sharedPeakMapping`, "array[PeakPair]", loadNamespace("RSirius"))
      self$`querySpectrumIndex` <- this_object$`querySpectrumIndex`
      self$`dbName` <- this_object$`dbName`
      self$`dbId` <- this_object$`dbId`
      self$`uuid` <- this_object$`uuid`
      self$`splash` <- this_object$`splash`
      self$`molecularFormula` <- this_object$`molecularFormula`
      self$`adduct` <- this_object$`adduct`
      self$`exactMass` <- this_object$`exactMass`
      self$`smiles` <- this_object$`smiles`
      if (!is.null(this_object$`type`) && !(this_object$`type` %in% c("IDENTITY", "ANALOG"))) {
        stop(paste("Error! \"", this_object$`type`, "\" cannot be assigned to `type`. Must be \"IDENTITY\", \"ANALOG\".", sep = ""))
      }
      self$`type` <- this_object$`type`
      self$`inchiKey` <- this_object$`inchiKey`
      if (!is.null(this_object$`referenceSpectrumType`) && !(this_object$`referenceSpectrumType` %in% c("SPECTRUM", "MERGED_SPECTRUM"))) {
        stop(paste("Error! \"", this_object$`referenceSpectrumType`, "\" cannot be assigned to `referenceSpectrumType`. Must be \"SPECTRUM\", \"MERGED_SPECTRUM\".", sep = ""))
      }
      self$`referenceSpectrumType` <- this_object$`referenceSpectrumType`
      self$`referenceSpectrum` <- BasicSpectrum$new()$fromJSON(jsonlite::toJSON(this_object$`referenceSpectrum`, auto_unbox = TRUE, digits = NA, null = 'null'))
      if (!is.null(this_object$`querySpectrumType`) && !(this_object$`querySpectrumType` %in% c("SPECTRUM", "MERGED_SPECTRUM"))) {
        stop(paste("Error! \"", this_object$`querySpectrumType`, "\" cannot be assigned to `querySpectrumType`. Must be \"SPECTRUM\", \"MERGED_SPECTRUM\".", sep = ""))
      }
      self$`querySpectrumType` <- this_object$`querySpectrumType`
      self
    },

    #' @description
    #' Validate JSON input with respect to SpectralLibraryMatch and throw an exception if invalid
    #'
    #' @param input the JSON input
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
      # check the required field `inchiKey`
      if (!is.null(input_json$`inchiKey`)) {
        if (!(is.character(input_json$`inchiKey`) && length(input_json$`inchiKey`) == 1)) {
          stop(paste("Error! Invalid data for `inchiKey`. Must be a string:", input_json$`inchiKey`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SpectralLibraryMatch: the required field `inchiKey` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SpectralLibraryMatch
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
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

      # check if the required `inchiKey` is null
      if (is.null(self$`inchiKey`)) {
        return(FALSE)
      }

      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
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

      # check if the required `inchiKey` is null
      if (is.null(self$`inchiKey`)) {
        invalid_fields["inchiKey"] <- "Non-nullable required field `inchiKey` cannot be null."
      }

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
# SpectralLibraryMatch$unlock()
#
## Below is an example to define the print function
# SpectralLibraryMatch$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SpectralLibraryMatch$lock()

