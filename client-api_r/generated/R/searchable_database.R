#' Create a new SearchableDatabase
#'
#' @description
#' SearchableDatabase Class
#'
#' @docType class
#' @title SearchableDatabase
#' @description SearchableDatabase Class
#' @format An \code{R6Class} generator object
#' @field displayName display name of the database  Should be short character [optional]
#' @field location Storage location of user database  Might be NULL for non-user databases or if default location is used. character [optional]
#' @field matchRtOfReferenceSpectra Indicates whether this database shall be used to use retention time information for library matching.  Typically used for in-house spectral libraries that have been measured on character [optional]
#' @field databaseId A unique identifier or name of the database.  Should only contain file path and url save characters  For user databases this is usually the file name. character
#' @field customDb Indicates whether the database is a user managed custom database or if it is a  database that is included in SIRIUS which cannot be modified. character
#' @field searchable True when this database can be used as a search parameter.  False if the database is just an additional filter that can be applied after search. character
#' @field dbDate Date on which the data was imported / database was created. character [optional]
#' @field dbVersion database schema version integer [optional]
#' @field updateNeeded If true the database version is outdated and the database needs to be updated or re-imported before it can be used. character
#' @field numberOfStructures Number of unique compounds available in this database. integer [optional]
#' @field numberOfFormulas Number of different molecular formulas available in this database. integer [optional]
#' @field numberOfReferenceSpectra Number of reference spectra available in this database integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SearchableDatabase <- R6::R6Class(
  "SearchableDatabase",
  public = list(
    `displayName` = NULL,
    `location` = NULL,
    `matchRtOfReferenceSpectra` = NULL,
    `databaseId` = NULL,
    `customDb` = NULL,
    `searchable` = NULL,
    `dbDate` = NULL,
    `dbVersion` = NULL,
    `updateNeeded` = NULL,
    `numberOfStructures` = NULL,
    `numberOfFormulas` = NULL,
    `numberOfReferenceSpectra` = NULL,
    #' Initialize a new SearchableDatabase class.
    #'
    #' @description
    #' Initialize a new SearchableDatabase class.
    #'
    #' @param databaseId A unique identifier or name of the database.  Should only contain file path and url save characters  For user databases this is usually the file name.
    #' @param customDb Indicates whether the database is a user managed custom database or if it is a  database that is included in SIRIUS which cannot be modified.
    #' @param searchable True when this database can be used as a search parameter.  False if the database is just an additional filter that can be applied after search.
    #' @param updateNeeded If true the database version is outdated and the database needs to be updated or re-imported before it can be used.
    #' @param displayName display name of the database  Should be short
    #' @param location Storage location of user database  Might be NULL for non-user databases or if default location is used.
    #' @param matchRtOfReferenceSpectra Indicates whether this database shall be used to use retention time information for library matching.  Typically used for in-house spectral libraries that have been measured on. Default to FALSE.
    #' @param dbDate Date on which the data was imported / database was created.
    #' @param dbVersion database schema version
    #' @param numberOfStructures Number of unique compounds available in this database.
    #' @param numberOfFormulas Number of different molecular formulas available in this database.
    #' @param numberOfReferenceSpectra Number of reference spectra available in this database
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`databaseId`, `customDb`, `searchable`, `updateNeeded`, `displayName` = NULL, `location` = NULL, `matchRtOfReferenceSpectra` = FALSE, `dbDate` = NULL, `dbVersion` = NULL, `numberOfStructures` = NULL, `numberOfFormulas` = NULL, `numberOfReferenceSpectra` = NULL, ...) {
      if (!missing(`databaseId`)) {
        if (!(is.character(`databaseId`) && length(`databaseId`) == 1)) {
          stop(paste("Error! Invalid data for `databaseId`. Must be a string:", `databaseId`))
        }
        self$`databaseId` <- `databaseId`
      }
      if (!missing(`customDb`)) {
        if (!(is.logical(`customDb`) && length(`customDb`) == 1)) {
          stop(paste("Error! Invalid data for `customDb`. Must be a boolean:", `customDb`))
        }
        self$`customDb` <- `customDb`
      }
      if (!missing(`searchable`)) {
        if (!(is.logical(`searchable`) && length(`searchable`) == 1)) {
          stop(paste("Error! Invalid data for `searchable`. Must be a boolean:", `searchable`))
        }
        self$`searchable` <- `searchable`
      }
      if (!missing(`updateNeeded`)) {
        if (!(is.logical(`updateNeeded`) && length(`updateNeeded`) == 1)) {
          stop(paste("Error! Invalid data for `updateNeeded`. Must be a boolean:", `updateNeeded`))
        }
        self$`updateNeeded` <- `updateNeeded`
      }
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
      if (!is.null(`dbDate`)) {
        if (!(is.character(`dbDate`) && length(`dbDate`) == 1)) {
          stop(paste("Error! Invalid data for `dbDate`. Must be a string:", `dbDate`))
        }
        self$`dbDate` <- `dbDate`
      }
      if (!is.null(`dbVersion`)) {
        if (!(is.numeric(`dbVersion`) && length(`dbVersion`) == 1)) {
          stop(paste("Error! Invalid data for `dbVersion`. Must be an integer:", `dbVersion`))
        }
        self$`dbVersion` <- `dbVersion`
      }
      if (!is.null(`numberOfStructures`)) {
        if (!(is.numeric(`numberOfStructures`) && length(`numberOfStructures`) == 1)) {
          stop(paste("Error! Invalid data for `numberOfStructures`. Must be an integer:", `numberOfStructures`))
        }
        self$`numberOfStructures` <- `numberOfStructures`
      }
      if (!is.null(`numberOfFormulas`)) {
        if (!(is.numeric(`numberOfFormulas`) && length(`numberOfFormulas`) == 1)) {
          stop(paste("Error! Invalid data for `numberOfFormulas`. Must be an integer:", `numberOfFormulas`))
        }
        self$`numberOfFormulas` <- `numberOfFormulas`
      }
      if (!is.null(`numberOfReferenceSpectra`)) {
        if (!(is.numeric(`numberOfReferenceSpectra`) && length(`numberOfReferenceSpectra`) == 1)) {
          stop(paste("Error! Invalid data for `numberOfReferenceSpectra`. Must be an integer:", `numberOfReferenceSpectra`))
        }
        self$`numberOfReferenceSpectra` <- `numberOfReferenceSpectra`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return SearchableDatabase in JSON format
    #' @export
    toJSON = function() {
      SearchableDatabaseObject <- list()
      if (!is.null(self$`displayName`)) {
        SearchableDatabaseObject[["displayName"]] <-
          self$`displayName`
      }
      if (!is.null(self$`location`)) {
        SearchableDatabaseObject[["location"]] <-
          self$`location`
      }
      if (!is.null(self$`matchRtOfReferenceSpectra`)) {
        SearchableDatabaseObject[["matchRtOfReferenceSpectra"]] <-
          self$`matchRtOfReferenceSpectra`
      }
      if (!is.null(self$`databaseId`)) {
        SearchableDatabaseObject[["databaseId"]] <-
          self$`databaseId`
      }
      if (!is.null(self$`customDb`)) {
        SearchableDatabaseObject[["customDb"]] <-
          self$`customDb`
      }
      if (!is.null(self$`searchable`)) {
        SearchableDatabaseObject[["searchable"]] <-
          self$`searchable`
      }
      if (!is.null(self$`dbDate`)) {
        SearchableDatabaseObject[["dbDate"]] <-
          self$`dbDate`
      }
      if (!is.null(self$`dbVersion`)) {
        SearchableDatabaseObject[["dbVersion"]] <-
          self$`dbVersion`
      }
      if (!is.null(self$`updateNeeded`)) {
        SearchableDatabaseObject[["updateNeeded"]] <-
          self$`updateNeeded`
      }
      if (!is.null(self$`numberOfStructures`)) {
        SearchableDatabaseObject[["numberOfStructures"]] <-
          self$`numberOfStructures`
      }
      if (!is.null(self$`numberOfFormulas`)) {
        SearchableDatabaseObject[["numberOfFormulas"]] <-
          self$`numberOfFormulas`
      }
      if (!is.null(self$`numberOfReferenceSpectra`)) {
        SearchableDatabaseObject[["numberOfReferenceSpectra"]] <-
          self$`numberOfReferenceSpectra`
      }
      SearchableDatabaseObject
    },
    #' Deserialize JSON string into an instance of SearchableDatabase
    #'
    #' @description
    #' Deserialize JSON string into an instance of SearchableDatabase
    #'
    #' @param input_json the JSON input
    #' @return the instance of SearchableDatabase
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
      if (!is.null(this_object$`databaseId`)) {
        self$`databaseId` <- this_object$`databaseId`
      }
      if (!is.null(this_object$`customDb`)) {
        self$`customDb` <- this_object$`customDb`
      }
      if (!is.null(this_object$`searchable`)) {
        self$`searchable` <- this_object$`searchable`
      }
      if (!is.null(this_object$`dbDate`)) {
        self$`dbDate` <- this_object$`dbDate`
      }
      if (!is.null(this_object$`dbVersion`)) {
        self$`dbVersion` <- this_object$`dbVersion`
      }
      if (!is.null(this_object$`updateNeeded`)) {
        self$`updateNeeded` <- this_object$`updateNeeded`
      }
      if (!is.null(this_object$`numberOfStructures`)) {
        self$`numberOfStructures` <- this_object$`numberOfStructures`
      }
      if (!is.null(this_object$`numberOfFormulas`)) {
        self$`numberOfFormulas` <- this_object$`numberOfFormulas`
      }
      if (!is.null(this_object$`numberOfReferenceSpectra`)) {
        self$`numberOfReferenceSpectra` <- this_object$`numberOfReferenceSpectra`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return SearchableDatabase in JSON format
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
        },
        if (!is.null(self$`databaseId`)) {
          sprintf(
          '"databaseId":
            "%s"
                    ',
          self$`databaseId`
          )
        },
        if (!is.null(self$`customDb`)) {
          sprintf(
          '"customDb":
            %s
                    ',
          tolower(self$`customDb`)
          )
        },
        if (!is.null(self$`searchable`)) {
          sprintf(
          '"searchable":
            %s
                    ',
          tolower(self$`searchable`)
          )
        },
        if (!is.null(self$`dbDate`)) {
          sprintf(
          '"dbDate":
            "%s"
                    ',
          self$`dbDate`
          )
        },
        if (!is.null(self$`dbVersion`)) {
          sprintf(
          '"dbVersion":
            %f
                    ',
          self$`dbVersion`
          )
        },
        if (!is.null(self$`updateNeeded`)) {
          sprintf(
          '"updateNeeded":
            %s
                    ',
          tolower(self$`updateNeeded`)
          )
        },
        if (!is.null(self$`numberOfStructures`)) {
          sprintf(
          '"numberOfStructures":
            %f
                    ',
          self$`numberOfStructures`
          )
        },
        if (!is.null(self$`numberOfFormulas`)) {
          sprintf(
          '"numberOfFormulas":
            %f
                    ',
          self$`numberOfFormulas`
          )
        },
        if (!is.null(self$`numberOfReferenceSpectra`)) {
          sprintf(
          '"numberOfReferenceSpectra":
            %f
                    ',
          self$`numberOfReferenceSpectra`
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
    #' Deserialize JSON string into an instance of SearchableDatabase
    #'
    #' @description
    #' Deserialize JSON string into an instance of SearchableDatabase
    #'
    #' @param input_json the JSON input
    #' @return the instance of SearchableDatabase
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`displayName` <- this_object$`displayName`
      self$`location` <- this_object$`location`
      self$`matchRtOfReferenceSpectra` <- this_object$`matchRtOfReferenceSpectra`
      self$`databaseId` <- this_object$`databaseId`
      self$`customDb` <- this_object$`customDb`
      self$`searchable` <- this_object$`searchable`
      self$`dbDate` <- this_object$`dbDate`
      self$`dbVersion` <- this_object$`dbVersion`
      self$`updateNeeded` <- this_object$`updateNeeded`
      self$`numberOfStructures` <- this_object$`numberOfStructures`
      self$`numberOfFormulas` <- this_object$`numberOfFormulas`
      self$`numberOfReferenceSpectra` <- this_object$`numberOfReferenceSpectra`
      self
    },
    #' Validate JSON input with respect to SearchableDatabase
    #'
    #' @description
    #' Validate JSON input with respect to SearchableDatabase and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `databaseId`
      if (!is.null(input_json$`databaseId`)) {
        if (!(is.character(input_json$`databaseId`) && length(input_json$`databaseId`) == 1)) {
          stop(paste("Error! Invalid data for `databaseId`. Must be a string:", input_json$`databaseId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SearchableDatabase: the required field `databaseId` is missing."))
      }
      # check the required field `customDb`
      if (!is.null(input_json$`customDb`)) {
        if (!(is.logical(input_json$`customDb`) && length(input_json$`customDb`) == 1)) {
          stop(paste("Error! Invalid data for `customDb`. Must be a boolean:", input_json$`customDb`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SearchableDatabase: the required field `customDb` is missing."))
      }
      # check the required field `searchable`
      if (!is.null(input_json$`searchable`)) {
        if (!(is.logical(input_json$`searchable`) && length(input_json$`searchable`) == 1)) {
          stop(paste("Error! Invalid data for `searchable`. Must be a boolean:", input_json$`searchable`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SearchableDatabase: the required field `searchable` is missing."))
      }
      # check the required field `updateNeeded`
      if (!is.null(input_json$`updateNeeded`)) {
        if (!(is.logical(input_json$`updateNeeded`) && length(input_json$`updateNeeded`) == 1)) {
          stop(paste("Error! Invalid data for `updateNeeded`. Must be a boolean:", input_json$`updateNeeded`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SearchableDatabase: the required field `updateNeeded` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SearchableDatabase
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
      # check if the required `databaseId` is null
      if (is.null(self$`databaseId`)) {
        return(FALSE)
      }

      # check if the required `customDb` is null
      if (is.null(self$`customDb`)) {
        return(FALSE)
      }

      # check if the required `searchable` is null
      if (is.null(self$`searchable`)) {
        return(FALSE)
      }

      # check if the required `updateNeeded` is null
      if (is.null(self$`updateNeeded`)) {
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
      # check if the required `databaseId` is null
      if (is.null(self$`databaseId`)) {
        invalid_fields["databaseId"] <- "Non-nullable required field `databaseId` cannot be null."
      }

      # check if the required `customDb` is null
      if (is.null(self$`customDb`)) {
        invalid_fields["customDb"] <- "Non-nullable required field `customDb` cannot be null."
      }

      # check if the required `searchable` is null
      if (is.null(self$`searchable`)) {
        invalid_fields["searchable"] <- "Non-nullable required field `searchable` cannot be null."
      }

      # check if the required `updateNeeded` is null
      if (is.null(self$`updateNeeded`)) {
        invalid_fields["updateNeeded"] <- "Non-nullable required field `updateNeeded` cannot be null."
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
# SearchableDatabase$unlock()
#
## Below is an example to define the print function
# SearchableDatabase$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SearchableDatabase$lock()

