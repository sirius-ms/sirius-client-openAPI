#' Create a new Info
#'
#' @description
#' Info Class
#'
#' @docType class
#' @title Info
#' @description Info Class
#' @format An \code{R6Class} generator object
#' @field nightSkyApiVersion API version of the SIRIUS Nightsky API character [optional]
#' @field siriusVersion Version of the SIRIUS application character [optional]
#' @field latestSiriusVersion Latest available Version of the SIRIUS application character [optional]
#' @field latestSiriusLink Link to the latest available Version of the SIRIUS application character [optional]
#' @field updateAvailable true if newer SIRIUS version is available character [optional]
#' @field siriusLibVersion Version of the SIRIUS libraries character [optional]
#' @field fingerIdLibVersion Version of the CSI:FingerID libraries character [optional]
#' @field chemDbVersion Version of the Chemical Database available via SIRIUS web services character [optional]
#' @field fingerIdModelVersion Version of the Machine learning models used for Fingerprint, Compound Class and Structure Prediction  Not available if web service is not reachable. character [optional]
#' @field fingerprintId Version of the Molecular Fingerprint used by SIRIUS character [optional]
#' @field availableILPSolvers Set of solvers that are configured correctly and can be loaded list(character)
#' @field supportedILPSolvers Set of ILP Solvers that are Supported and their version information named list(character)
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Info <- R6::R6Class(
  "Info",
  public = list(
    `nightSkyApiVersion` = NULL,
    `siriusVersion` = NULL,
    `latestSiriusVersion` = NULL,
    `latestSiriusLink` = NULL,
    `updateAvailable` = NULL,
    `siriusLibVersion` = NULL,
    `fingerIdLibVersion` = NULL,
    `chemDbVersion` = NULL,
    `fingerIdModelVersion` = NULL,
    `fingerprintId` = NULL,
    `availableILPSolvers` = NULL,
    `supportedILPSolvers` = NULL,

    #' @description
    #' Initialize a new Info class.
    #'
    #' @param availableILPSolvers Set of solvers that are configured correctly and can be loaded
    #' @param supportedILPSolvers Set of ILP Solvers that are Supported and their version information
    #' @param nightSkyApiVersion API version of the SIRIUS Nightsky API
    #' @param siriusVersion Version of the SIRIUS application
    #' @param latestSiriusVersion Latest available Version of the SIRIUS application
    #' @param latestSiriusLink Link to the latest available Version of the SIRIUS application
    #' @param updateAvailable true if newer SIRIUS version is available
    #' @param siriusLibVersion Version of the SIRIUS libraries
    #' @param fingerIdLibVersion Version of the CSI:FingerID libraries
    #' @param chemDbVersion Version of the Chemical Database available via SIRIUS web services
    #' @param fingerIdModelVersion Version of the Machine learning models used for Fingerprint, Compound Class and Structure Prediction  Not available if web service is not reachable.
    #' @param fingerprintId Version of the Molecular Fingerprint used by SIRIUS
    #' @param ... Other optional arguments.
    initialize = function(`availableILPSolvers`, `supportedILPSolvers`, `nightSkyApiVersion` = NULL, `siriusVersion` = NULL, `latestSiriusVersion` = NULL, `latestSiriusLink` = NULL, `updateAvailable` = NULL, `siriusLibVersion` = NULL, `fingerIdLibVersion` = NULL, `chemDbVersion` = NULL, `fingerIdModelVersion` = NULL, `fingerprintId` = NULL, ...) {
      if (!missing(`availableILPSolvers`)) {
        stopifnot(is.vector(`availableILPSolvers`), length(`availableILPSolvers`) != 0)
        sapply(`availableILPSolvers`, function(x) stopifnot(is.character(x)))
        self$`availableILPSolvers` <- `availableILPSolvers`
      }
      if (!missing(`supportedILPSolvers`)) {
        stopifnot(is.vector(`supportedILPSolvers`), length(`supportedILPSolvers`) != 0)
        sapply(`supportedILPSolvers`, function(x) stopifnot(is.character(x)))
        self$`supportedILPSolvers` <- `supportedILPSolvers`
      }
      if (!is.null(`nightSkyApiVersion`)) {
        if (!(is.character(`nightSkyApiVersion`) && length(`nightSkyApiVersion`) == 1)) {
          stop(paste("Error! Invalid data for `nightSkyApiVersion`. Must be a string:", `nightSkyApiVersion`))
        }
        self$`nightSkyApiVersion` <- `nightSkyApiVersion`
      }
      if (!is.null(`siriusVersion`)) {
        if (!(is.character(`siriusVersion`) && length(`siriusVersion`) == 1)) {
          stop(paste("Error! Invalid data for `siriusVersion`. Must be a string:", `siriusVersion`))
        }
        self$`siriusVersion` <- `siriusVersion`
      }
      if (!is.null(`latestSiriusVersion`)) {
        if (!(is.character(`latestSiriusVersion`) && length(`latestSiriusVersion`) == 1)) {
          stop(paste("Error! Invalid data for `latestSiriusVersion`. Must be a string:", `latestSiriusVersion`))
        }
        self$`latestSiriusVersion` <- `latestSiriusVersion`
      }
      if (!is.null(`latestSiriusLink`)) {
        if (!(is.character(`latestSiriusLink`) && length(`latestSiriusLink`) == 1)) {
          stop(paste("Error! Invalid data for `latestSiriusLink`. Must be a string:", `latestSiriusLink`))
        }
        self$`latestSiriusLink` <- `latestSiriusLink`
      }
      if (!is.null(`updateAvailable`)) {
        if (!(is.logical(`updateAvailable`) && length(`updateAvailable`) == 1)) {
          stop(paste("Error! Invalid data for `updateAvailable`. Must be a boolean:", `updateAvailable`))
        }
        self$`updateAvailable` <- `updateAvailable`
      }
      if (!is.null(`siriusLibVersion`)) {
        if (!(is.character(`siriusLibVersion`) && length(`siriusLibVersion`) == 1)) {
          stop(paste("Error! Invalid data for `siriusLibVersion`. Must be a string:", `siriusLibVersion`))
        }
        self$`siriusLibVersion` <- `siriusLibVersion`
      }
      if (!is.null(`fingerIdLibVersion`)) {
        if (!(is.character(`fingerIdLibVersion`) && length(`fingerIdLibVersion`) == 1)) {
          stop(paste("Error! Invalid data for `fingerIdLibVersion`. Must be a string:", `fingerIdLibVersion`))
        }
        self$`fingerIdLibVersion` <- `fingerIdLibVersion`
      }
      if (!is.null(`chemDbVersion`)) {
        if (!(is.character(`chemDbVersion`) && length(`chemDbVersion`) == 1)) {
          stop(paste("Error! Invalid data for `chemDbVersion`. Must be a string:", `chemDbVersion`))
        }
        self$`chemDbVersion` <- `chemDbVersion`
      }
      if (!is.null(`fingerIdModelVersion`)) {
        if (!(is.character(`fingerIdModelVersion`) && length(`fingerIdModelVersion`) == 1)) {
          stop(paste("Error! Invalid data for `fingerIdModelVersion`. Must be a string:", `fingerIdModelVersion`))
        }
        self$`fingerIdModelVersion` <- `fingerIdModelVersion`
      }
      if (!is.null(`fingerprintId`)) {
        if (!(is.character(`fingerprintId`) && length(`fingerprintId`) == 1)) {
          stop(paste("Error! Invalid data for `fingerprintId`. Must be a string:", `fingerprintId`))
        }
        self$`fingerprintId` <- `fingerprintId`
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
    #' @return Info as a base R list.
    #' @examples
    #' # convert array of Info (x) to a data frame
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
    #' Convert Info to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      InfoObject <- list()
      if (!is.null(self$`nightSkyApiVersion`)) {
        InfoObject[["nightSkyApiVersion"]] <-
          self$`nightSkyApiVersion`
      }
      if (!is.null(self$`siriusVersion`)) {
        InfoObject[["siriusVersion"]] <-
          self$`siriusVersion`
      }
      if (!is.null(self$`latestSiriusVersion`)) {
        InfoObject[["latestSiriusVersion"]] <-
          self$`latestSiriusVersion`
      }
      if (!is.null(self$`latestSiriusLink`)) {
        InfoObject[["latestSiriusLink"]] <-
          self$`latestSiriusLink`
      }
      if (!is.null(self$`updateAvailable`)) {
        InfoObject[["updateAvailable"]] <-
          self$`updateAvailable`
      }
      if (!is.null(self$`siriusLibVersion`)) {
        InfoObject[["siriusLibVersion"]] <-
          self$`siriusLibVersion`
      }
      if (!is.null(self$`fingerIdLibVersion`)) {
        InfoObject[["fingerIdLibVersion"]] <-
          self$`fingerIdLibVersion`
      }
      if (!is.null(self$`chemDbVersion`)) {
        InfoObject[["chemDbVersion"]] <-
          self$`chemDbVersion`
      }
      if (!is.null(self$`fingerIdModelVersion`)) {
        InfoObject[["fingerIdModelVersion"]] <-
          self$`fingerIdModelVersion`
      }
      if (!is.null(self$`fingerprintId`)) {
        InfoObject[["fingerprintId"]] <-
          self$`fingerprintId`
      }
      if (!is.null(self$`availableILPSolvers`)) {
        InfoObject[["availableILPSolvers"]] <-
          self$`availableILPSolvers`
      }
      if (!is.null(self$`supportedILPSolvers`)) {
        InfoObject[["supportedILPSolvers"]] <-
          self$`supportedILPSolvers`
      }
      return(InfoObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of Info
    #'
    #' @param input_json the JSON input
    #' @return the instance of Info
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`nightSkyApiVersion`)) {
        self$`nightSkyApiVersion` <- this_object$`nightSkyApiVersion`
      }
      if (!is.null(this_object$`siriusVersion`)) {
        self$`siriusVersion` <- this_object$`siriusVersion`
      }
      if (!is.null(this_object$`latestSiriusVersion`)) {
        self$`latestSiriusVersion` <- this_object$`latestSiriusVersion`
      }
      if (!is.null(this_object$`latestSiriusLink`)) {
        self$`latestSiriusLink` <- this_object$`latestSiriusLink`
      }
      if (!is.null(this_object$`updateAvailable`)) {
        self$`updateAvailable` <- this_object$`updateAvailable`
      }
      if (!is.null(this_object$`siriusLibVersion`)) {
        self$`siriusLibVersion` <- this_object$`siriusLibVersion`
      }
      if (!is.null(this_object$`fingerIdLibVersion`)) {
        self$`fingerIdLibVersion` <- this_object$`fingerIdLibVersion`
      }
      if (!is.null(this_object$`chemDbVersion`)) {
        self$`chemDbVersion` <- this_object$`chemDbVersion`
      }
      if (!is.null(this_object$`fingerIdModelVersion`)) {
        self$`fingerIdModelVersion` <- this_object$`fingerIdModelVersion`
      }
      if (!is.null(this_object$`fingerprintId`)) {
        self$`fingerprintId` <- this_object$`fingerprintId`
      }
      if (!is.null(this_object$`availableILPSolvers`)) {
        self$`availableILPSolvers` <- ApiClient$new()$deserializeObj(this_object$`availableILPSolvers`, "array[character]", loadNamespace("Rsirius"))
      }
      if (!is.null(this_object$`supportedILPSolvers`)) {
        self$`supportedILPSolvers` <- ApiClient$new()$deserializeObj(this_object$`supportedILPSolvers`, "map(character)", loadNamespace("Rsirius"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Info in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Info
    #'
    #' @param input_json the JSON input
    #' @return the instance of Info
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`nightSkyApiVersion` <- this_object$`nightSkyApiVersion`
      self$`siriusVersion` <- this_object$`siriusVersion`
      self$`latestSiriusVersion` <- this_object$`latestSiriusVersion`
      self$`latestSiriusLink` <- this_object$`latestSiriusLink`
      self$`updateAvailable` <- this_object$`updateAvailable`
      self$`siriusLibVersion` <- this_object$`siriusLibVersion`
      self$`fingerIdLibVersion` <- this_object$`fingerIdLibVersion`
      self$`chemDbVersion` <- this_object$`chemDbVersion`
      self$`fingerIdModelVersion` <- this_object$`fingerIdModelVersion`
      self$`fingerprintId` <- this_object$`fingerprintId`
      self$`availableILPSolvers` <- ApiClient$new()$deserializeObj(this_object$`availableILPSolvers`, "array[character]", loadNamespace("Rsirius"))
      self$`supportedILPSolvers` <- ApiClient$new()$deserializeObj(this_object$`supportedILPSolvers`, "map(character)", loadNamespace("Rsirius"))
      self
    },

    #' @description
    #' Validate JSON input with respect to Info and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `availableILPSolvers`
      if (!is.null(input_json$`availableILPSolvers`)) {
        stopifnot(is.vector(input_json$`availableILPSolvers`), length(input_json$`availableILPSolvers`) != 0)
        tmp <- sapply(input_json$`availableILPSolvers`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Info: the required field `availableILPSolvers` is missing."))
      }
      # check the required field `supportedILPSolvers`
      if (!is.null(input_json$`supportedILPSolvers`)) {
        stopifnot(is.vector(input_json$`supportedILPSolvers`), length(input_json$`supportedILPSolvers`) != 0)
        tmp <- sapply(input_json$`supportedILPSolvers`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Info: the required field `supportedILPSolvers` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Info
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `availableILPSolvers` is null
      if (is.null(self$`availableILPSolvers`)) {
        return(FALSE)
      }

      # check if the required `supportedILPSolvers` is null
      if (is.null(self$`supportedILPSolvers`)) {
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
      # check if the required `availableILPSolvers` is null
      if (is.null(self$`availableILPSolvers`)) {
        invalid_fields["availableILPSolvers"] <- "Non-nullable required field `availableILPSolvers` cannot be null."
      }

      # check if the required `supportedILPSolvers` is null
      if (is.null(self$`supportedILPSolvers`)) {
        invalid_fields["supportedILPSolvers"] <- "Non-nullable required field `supportedILPSolvers` cannot be null."
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
# Info$unlock()
#
## Below is an example to define the print function
# Info$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Info$lock()

