#' Create a new LipidAnnotation
#'
#' @description
#' LipidAnnotation Class
#'
#' @docType class
#' @title LipidAnnotation
#' @description LipidAnnotation Class
#' @format An \code{R6Class} generator object
#' @field lipidSpecies Predicted lipid species in LIPID MAPS notation.  NULL if not classified as lipid. character [optional]
#' @field lipidMapsId LIPID MAPS id of the predicted lipid class. character [optional]
#' @field lipidClassName Human-readable name of the predicted lipid class. character [optional]
#' @field hypotheticalStructure Hypothetical molecular structure of the predicted lipid species as SMILES.  NULL if hypothetical structure not available. character [optional]
#' @field chainsUnknown True of the formula composition of the chains could not be determined from the MS/MS. character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
LipidAnnotation <- R6::R6Class(
  "LipidAnnotation",
  public = list(
    `lipidSpecies` = NULL,
    `lipidMapsId` = NULL,
    `lipidClassName` = NULL,
    `hypotheticalStructure` = NULL,
    `chainsUnknown` = NULL,
    #' Initialize a new LipidAnnotation class.
    #'
    #' @description
    #' Initialize a new LipidAnnotation class.
    #'
    #' @param lipidSpecies Predicted lipid species in LIPID MAPS notation.  NULL if not classified as lipid.
    #' @param lipidMapsId LIPID MAPS id of the predicted lipid class.
    #' @param lipidClassName Human-readable name of the predicted lipid class.
    #' @param hypotheticalStructure Hypothetical molecular structure of the predicted lipid species as SMILES.  NULL if hypothetical structure not available.
    #' @param chainsUnknown True of the formula composition of the chains could not be determined from the MS/MS.
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`lipidSpecies` = NULL, `lipidMapsId` = NULL, `lipidClassName` = NULL, `hypotheticalStructure` = NULL, `chainsUnknown` = NULL, ...) {
      if (!is.null(`lipidSpecies`)) {
        if (!(is.character(`lipidSpecies`) && length(`lipidSpecies`) == 1)) {
          stop(paste("Error! Invalid data for `lipidSpecies`. Must be a string:", `lipidSpecies`))
        }
        self$`lipidSpecies` <- `lipidSpecies`
      }
      if (!is.null(`lipidMapsId`)) {
        if (!(is.character(`lipidMapsId`) && length(`lipidMapsId`) == 1)) {
          stop(paste("Error! Invalid data for `lipidMapsId`. Must be a string:", `lipidMapsId`))
        }
        self$`lipidMapsId` <- `lipidMapsId`
      }
      if (!is.null(`lipidClassName`)) {
        if (!(is.character(`lipidClassName`) && length(`lipidClassName`) == 1)) {
          stop(paste("Error! Invalid data for `lipidClassName`. Must be a string:", `lipidClassName`))
        }
        self$`lipidClassName` <- `lipidClassName`
      }
      if (!is.null(`hypotheticalStructure`)) {
        if (!(is.character(`hypotheticalStructure`) && length(`hypotheticalStructure`) == 1)) {
          stop(paste("Error! Invalid data for `hypotheticalStructure`. Must be a string:", `hypotheticalStructure`))
        }
        self$`hypotheticalStructure` <- `hypotheticalStructure`
      }
      if (!is.null(`chainsUnknown`)) {
        if (!(is.logical(`chainsUnknown`) && length(`chainsUnknown`) == 1)) {
          stop(paste("Error! Invalid data for `chainsUnknown`. Must be a boolean:", `chainsUnknown`))
        }
        self$`chainsUnknown` <- `chainsUnknown`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return LipidAnnotation in JSON format
    #' @export
    toJSON = function() {
      LipidAnnotationObject <- list()
      if (!is.null(self$`lipidSpecies`)) {
        LipidAnnotationObject[["lipidSpecies"]] <-
          self$`lipidSpecies`
      }
      if (!is.null(self$`lipidMapsId`)) {
        LipidAnnotationObject[["lipidMapsId"]] <-
          self$`lipidMapsId`
      }
      if (!is.null(self$`lipidClassName`)) {
        LipidAnnotationObject[["lipidClassName"]] <-
          self$`lipidClassName`
      }
      if (!is.null(self$`hypotheticalStructure`)) {
        LipidAnnotationObject[["hypotheticalStructure"]] <-
          self$`hypotheticalStructure`
      }
      if (!is.null(self$`chainsUnknown`)) {
        LipidAnnotationObject[["chainsUnknown"]] <-
          self$`chainsUnknown`
      }
      LipidAnnotationObject
    },
    #' Deserialize JSON string into an instance of LipidAnnotation
    #'
    #' @description
    #' Deserialize JSON string into an instance of LipidAnnotation
    #'
    #' @param input_json the JSON input
    #' @return the instance of LipidAnnotation
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`lipidSpecies`)) {
        self$`lipidSpecies` <- this_object$`lipidSpecies`
      }
      if (!is.null(this_object$`lipidMapsId`)) {
        self$`lipidMapsId` <- this_object$`lipidMapsId`
      }
      if (!is.null(this_object$`lipidClassName`)) {
        self$`lipidClassName` <- this_object$`lipidClassName`
      }
      if (!is.null(this_object$`hypotheticalStructure`)) {
        self$`hypotheticalStructure` <- this_object$`hypotheticalStructure`
      }
      if (!is.null(this_object$`chainsUnknown`)) {
        self$`chainsUnknown` <- this_object$`chainsUnknown`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return LipidAnnotation in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`lipidSpecies`)) {
          sprintf(
          '"lipidSpecies":
            "%s"
                    ',
          self$`lipidSpecies`
          )
        },
        if (!is.null(self$`lipidMapsId`)) {
          sprintf(
          '"lipidMapsId":
            "%s"
                    ',
          self$`lipidMapsId`
          )
        },
        if (!is.null(self$`lipidClassName`)) {
          sprintf(
          '"lipidClassName":
            "%s"
                    ',
          self$`lipidClassName`
          )
        },
        if (!is.null(self$`hypotheticalStructure`)) {
          sprintf(
          '"hypotheticalStructure":
            "%s"
                    ',
          self$`hypotheticalStructure`
          )
        },
        if (!is.null(self$`chainsUnknown`)) {
          sprintf(
          '"chainsUnknown":
            %s
                    ',
          tolower(self$`chainsUnknown`)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of LipidAnnotation
    #'
    #' @description
    #' Deserialize JSON string into an instance of LipidAnnotation
    #'
    #' @param input_json the JSON input
    #' @return the instance of LipidAnnotation
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`lipidSpecies` <- this_object$`lipidSpecies`
      self$`lipidMapsId` <- this_object$`lipidMapsId`
      self$`lipidClassName` <- this_object$`lipidClassName`
      self$`hypotheticalStructure` <- this_object$`hypotheticalStructure`
      self$`chainsUnknown` <- this_object$`chainsUnknown`
      self
    },
    #' Validate JSON input with respect to LipidAnnotation
    #'
    #' @description
    #' Validate JSON input with respect to LipidAnnotation and throw an exception if invalid
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
    #' @return String representation of LipidAnnotation
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
# LipidAnnotation$unlock()
#
## Below is an example to define the print function
# LipidAnnotation$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# LipidAnnotation$lock()

