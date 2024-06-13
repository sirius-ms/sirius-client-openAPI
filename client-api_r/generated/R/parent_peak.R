#' Create a new ParentPeak
#'
#' @description
#' Link from annotated fragment peak to its parent fragment peak connected by their neutral loss.
#'
#' @docType class
#' @title ParentPeak
#' @description ParentPeak Class
#' @format An \code{R6Class} generator object
#' @field parentIdx Index to the parent peak connected by this loss in this particular spectrum integer
#' @field parentFragmentId Identifier of the parent fragment connected via this loss. Can be used to map fragments and peaks  among fragmentation trees and spectra. integer
#' @field lossFormula Molecular formula of the neutral loss that connects these two peaks. character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ParentPeak <- R6::R6Class(
  "ParentPeak",
  public = list(
    `parentIdx` = NULL,
    `parentFragmentId` = NULL,
    `lossFormula` = NULL,
    #' Initialize a new ParentPeak class.
    #'
    #' @description
    #' Initialize a new ParentPeak class.
    #'
    #' @param parentIdx Index to the parent peak connected by this loss in this particular spectrum
    #' @param parentFragmentId Identifier of the parent fragment connected via this loss. Can be used to map fragments and peaks  among fragmentation trees and spectra.
    #' @param lossFormula Molecular formula of the neutral loss that connects these two peaks.
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`parentIdx`, `parentFragmentId`, `lossFormula`, ...) {
      if (!missing(`parentIdx`)) {
        if (!(is.numeric(`parentIdx`) && length(`parentIdx`) == 1)) {
          stop(paste("Error! Invalid data for `parentIdx`. Must be an integer:", `parentIdx`))
        }
        self$`parentIdx` <- `parentIdx`
      }
      if (!missing(`parentFragmentId`)) {
        if (!(is.numeric(`parentFragmentId`) && length(`parentFragmentId`) == 1)) {
          stop(paste("Error! Invalid data for `parentFragmentId`. Must be an integer:", `parentFragmentId`))
        }
        self$`parentFragmentId` <- `parentFragmentId`
      }
      if (!missing(`lossFormula`)) {
        if (!(is.character(`lossFormula`) && length(`lossFormula`) == 1)) {
          stop(paste("Error! Invalid data for `lossFormula`. Must be a string:", `lossFormula`))
        }
        self$`lossFormula` <- `lossFormula`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ParentPeak in JSON format
    #' @export
    toJSON = function() {
      ParentPeakObject <- list()
      if (!is.null(self$`parentIdx`)) {
        ParentPeakObject[["parentIdx"]] <-
          self$`parentIdx`
      }
      if (!is.null(self$`parentFragmentId`)) {
        ParentPeakObject[["parentFragmentId"]] <-
          self$`parentFragmentId`
      }
      if (!is.null(self$`lossFormula`)) {
        ParentPeakObject[["lossFormula"]] <-
          self$`lossFormula`
      }
      ParentPeakObject
    },
    #' Deserialize JSON string into an instance of ParentPeak
    #'
    #' @description
    #' Deserialize JSON string into an instance of ParentPeak
    #'
    #' @param input_json the JSON input
    #' @return the instance of ParentPeak
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`parentIdx`)) {
        self$`parentIdx` <- this_object$`parentIdx`
      }
      if (!is.null(this_object$`parentFragmentId`)) {
        self$`parentFragmentId` <- this_object$`parentFragmentId`
      }
      if (!is.null(this_object$`lossFormula`)) {
        self$`lossFormula` <- this_object$`lossFormula`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ParentPeak in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`parentIdx`)) {
          sprintf(
          '"parentIdx":
            %f
                    ',
          self$`parentIdx`
          )
        },
        if (!is.null(self$`parentFragmentId`)) {
          sprintf(
          '"parentFragmentId":
            %f
                    ',
          self$`parentFragmentId`
          )
        },
        if (!is.null(self$`lossFormula`)) {
          sprintf(
          '"lossFormula":
            "%s"
                    ',
          self$`lossFormula`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      # remove c() occurences
      jsoncontent <- gsub('c\\((.*?)\\)', '\\1', jsoncontent)
      # reduce resulting double escaped quotes \"\" into \"
      jsoncontent <- gsub('\\\"\\\"+', '\\\"', jsoncontent)
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of ParentPeak
    #'
    #' @description
    #' Deserialize JSON string into an instance of ParentPeak
    #'
    #' @param input_json the JSON input
    #' @return the instance of ParentPeak
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`parentIdx` <- this_object$`parentIdx`
      self$`parentFragmentId` <- this_object$`parentFragmentId`
      self$`lossFormula` <- this_object$`lossFormula`
      self
    },
    #' Validate JSON input with respect to ParentPeak
    #'
    #' @description
    #' Validate JSON input with respect to ParentPeak and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `parentIdx`
      if (!is.null(input_json$`parentIdx`)) {
        if (!(is.numeric(input_json$`parentIdx`) && length(input_json$`parentIdx`) == 1)) {
          stop(paste("Error! Invalid data for `parentIdx`. Must be an integer:", input_json$`parentIdx`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ParentPeak: the required field `parentIdx` is missing."))
      }
      # check the required field `parentFragmentId`
      if (!is.null(input_json$`parentFragmentId`)) {
        if (!(is.numeric(input_json$`parentFragmentId`) && length(input_json$`parentFragmentId`) == 1)) {
          stop(paste("Error! Invalid data for `parentFragmentId`. Must be an integer:", input_json$`parentFragmentId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ParentPeak: the required field `parentFragmentId` is missing."))
      }
      # check the required field `lossFormula`
      if (!is.null(input_json$`lossFormula`)) {
        if (!(is.character(input_json$`lossFormula`) && length(input_json$`lossFormula`) == 1)) {
          stop(paste("Error! Invalid data for `lossFormula`. Must be a string:", input_json$`lossFormula`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ParentPeak: the required field `lossFormula` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ParentPeak
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
      # check if the required `parentIdx` is null
      if (is.null(self$`parentIdx`)) {
        return(FALSE)
      }

      # check if the required `parentFragmentId` is null
      if (is.null(self$`parentFragmentId`)) {
        return(FALSE)
      }

      # check if the required `lossFormula` is null
      if (is.null(self$`lossFormula`)) {
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
      # check if the required `parentIdx` is null
      if (is.null(self$`parentIdx`)) {
        invalid_fields["parentIdx"] <- "Non-nullable required field `parentIdx` cannot be null."
      }

      # check if the required `parentFragmentId` is null
      if (is.null(self$`parentFragmentId`)) {
        invalid_fields["parentFragmentId"] <- "Non-nullable required field `parentFragmentId` cannot be null."
      }

      # check if the required `lossFormula` is null
      if (is.null(self$`lossFormula`)) {
        invalid_fields["lossFormula"] <- "Non-nullable required field `lossFormula` cannot be null."
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
# ParentPeak$unlock()
#
## Below is an example to define the print function
# ParentPeak$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ParentPeak$lock()

