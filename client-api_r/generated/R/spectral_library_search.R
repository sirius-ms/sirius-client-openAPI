#' Create a new SpectralLibrarySearch
#'
#' @description
#' User/developer friendly parameter subset for the Spectral library search tool.
#'
#' @docType class
#' @title SpectralLibrarySearch
#' @description SpectralLibrarySearch Class
#' @format An \code{R6Class} generator object
#' @field enabled tags whether the tool is enabled character [optional]
#' @field spectraSearchDBs Structure Databases with Reference spectra to search in.  <p>  Defaults to BIO + Custom Databases. Possible values are available to Database API. list(character) [optional]
#' @field peakDeviationPpm Maximum allowed mass deviation in ppm for matching peaks. numeric [optional]
#' @field precursorDeviationPpm Maximum allowed mass deviation in ppm for matching the precursor. If not specified, the same value as for the peaks is used. numeric [optional]
#' @field scoring  \link{SpectralMatchingType} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SpectralLibrarySearch <- R6::R6Class(
  "SpectralLibrarySearch",
  public = list(
    `enabled` = NULL,
    `spectraSearchDBs` = NULL,
    `peakDeviationPpm` = NULL,
    `precursorDeviationPpm` = NULL,
    `scoring` = NULL,
    #' Initialize a new SpectralLibrarySearch class.
    #'
    #' @description
    #' Initialize a new SpectralLibrarySearch class.
    #'
    #' @param enabled tags whether the tool is enabled
    #' @param spectraSearchDBs Structure Databases with Reference spectra to search in.  <p>  Defaults to BIO + Custom Databases. Possible values are available to Database API.
    #' @param peakDeviationPpm Maximum allowed mass deviation in ppm for matching peaks.
    #' @param precursorDeviationPpm Maximum allowed mass deviation in ppm for matching the precursor. If not specified, the same value as for the peaks is used.
    #' @param scoring scoring
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`enabled` = NULL, `spectraSearchDBs` = NULL, `peakDeviationPpm` = NULL, `precursorDeviationPpm` = NULL, `scoring` = NULL, ...) {
      if (!is.null(`enabled`)) {
        if (!(is.logical(`enabled`) && length(`enabled`) == 1)) {
          stop(paste("Error! Invalid data for `enabled`. Must be a boolean:", `enabled`))
        }
        self$`enabled` <- `enabled`
      }
      if (!is.null(`spectraSearchDBs`)) {
        stopifnot(is.vector(`spectraSearchDBs`), length(`spectraSearchDBs`) != 0)
        sapply(`spectraSearchDBs`, function(x) stopifnot(is.character(x)))
        self$`spectraSearchDBs` <- `spectraSearchDBs`
      }
      if (!is.null(`peakDeviationPpm`)) {
        if (!(is.numeric(`peakDeviationPpm`) && length(`peakDeviationPpm`) == 1)) {
          stop(paste("Error! Invalid data for `peakDeviationPpm`. Must be a number:", `peakDeviationPpm`))
        }
        self$`peakDeviationPpm` <- `peakDeviationPpm`
      }
      if (!is.null(`precursorDeviationPpm`)) {
        if (!(is.numeric(`precursorDeviationPpm`) && length(`precursorDeviationPpm`) == 1)) {
          stop(paste("Error! Invalid data for `precursorDeviationPpm`. Must be a number:", `precursorDeviationPpm`))
        }
        self$`precursorDeviationPpm` <- `precursorDeviationPpm`
      }
      if (!is.null(`scoring`)) {
        if (!(`scoring` %in% c())) {
          stop(paste("Error! \"", `scoring`, "\" cannot be assigned to `scoring`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`scoring`))
        self$`scoring` <- `scoring`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return SpectralLibrarySearch in JSON format
    #' @export
    toJSON = function() {
      SpectralLibrarySearchObject <- list()
      if (!is.null(self$`enabled`)) {
        SpectralLibrarySearchObject[["enabled"]] <-
          self$`enabled`
      }
      if (!is.null(self$`spectraSearchDBs`)) {
        SpectralLibrarySearchObject[["spectraSearchDBs"]] <-
          self$`spectraSearchDBs`
      }
      if (!is.null(self$`peakDeviationPpm`)) {
        SpectralLibrarySearchObject[["peakDeviationPpm"]] <-
          self$`peakDeviationPpm`
      }
      if (!is.null(self$`precursorDeviationPpm`)) {
        SpectralLibrarySearchObject[["precursorDeviationPpm"]] <-
          self$`precursorDeviationPpm`
      }
      if (!is.null(self$`scoring`)) {
        SpectralLibrarySearchObject[["scoring"]] <-
          if (!is.numeric(self$`scoring`$toJSON()) && length(names(self$`scoring`$toJSON())) == 0L && is.character(jsonlite::fromJSON(self$`scoring`$toJSON()))) {
            jsonlite::fromJSON(self$`scoring`$toJSON())
          } else {
            self$`scoring`$toJSON()
          }
      }
      SpectralLibrarySearchObject
    },
    #' Deserialize JSON string into an instance of SpectralLibrarySearch
    #'
    #' @description
    #' Deserialize JSON string into an instance of SpectralLibrarySearch
    #'
    #' @param input_json the JSON input
    #' @return the instance of SpectralLibrarySearch
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`enabled`)) {
        self$`enabled` <- this_object$`enabled`
      }
      if (!is.null(this_object$`spectraSearchDBs`)) {
        self$`spectraSearchDBs` <- ApiClient$new()$deserializeObj(this_object$`spectraSearchDBs`, "array[character]", loadNamespace("Rsirius"))
      }
      if (!is.null(this_object$`peakDeviationPpm`)) {
        self$`peakDeviationPpm` <- this_object$`peakDeviationPpm`
      }
      if (!is.null(this_object$`precursorDeviationPpm`)) {
        self$`precursorDeviationPpm` <- this_object$`precursorDeviationPpm`
      }
      if (!is.null(this_object$`scoring`)) {
        `scoring_object` <- SpectralMatchingType$new()
        `scoring_object`$fromJSON(jsonlite::toJSON(this_object$`scoring`, auto_unbox = TRUE, digits = NA))
        self$`scoring` <- `scoring_object`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return SpectralLibrarySearch in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`enabled`)) {
          sprintf(
          '"enabled":
            %s
                    ',
          tolower(self$`enabled`)
          )
        },
        if (!is.null(self$`spectraSearchDBs`)) {
          sprintf(
          '"spectraSearchDBs":
             [%s]
          ',
          paste(unlist(lapply(self$`spectraSearchDBs`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`peakDeviationPpm`)) {
          sprintf(
          '"peakDeviationPpm":
            %d
                    ',
          self$`peakDeviationPpm`
          )
        },
        if (!is.null(self$`precursorDeviationPpm`)) {
          sprintf(
          '"precursorDeviationPpm":
            %d
                    ',
          self$`precursorDeviationPpm`
          )
        },
        if (!is.null(self$`scoring`)) {
          sprintf(
          '"scoring":
          %s
          ',
          jsonlite::toJSON(self$`scoring`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of SpectralLibrarySearch
    #'
    #' @description
    #' Deserialize JSON string into an instance of SpectralLibrarySearch
    #'
    #' @param input_json the JSON input
    #' @return the instance of SpectralLibrarySearch
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`enabled` <- this_object$`enabled`
      self$`spectraSearchDBs` <- ApiClient$new()$deserializeObj(this_object$`spectraSearchDBs`, "array[character]", loadNamespace("Rsirius"))
      self$`peakDeviationPpm` <- this_object$`peakDeviationPpm`
      self$`precursorDeviationPpm` <- this_object$`precursorDeviationPpm`
      self$`scoring` <- SpectralMatchingType$new()$fromJSON(jsonlite::toJSON(this_object$`scoring`, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to SpectralLibrarySearch
    #'
    #' @description
    #' Validate JSON input with respect to SpectralLibrarySearch and throw an exception if invalid
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
    #' @return String representation of SpectralLibrarySearch
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
# SpectralLibrarySearch$unlock()
#
## Below is an example to define the print function
# SpectralLibrarySearch$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SpectralLibrarySearch$lock()

