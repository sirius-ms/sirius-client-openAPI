#' Create a new FormulaCandidate
#'
#' @description
#' 
#'
#' @docType class
#' @title FormulaCandidate
#' @description FormulaCandidate Class
#' @format An \code{R6Class} generator object
#' @field siriusScore  numeric [optional]
#' @field isotopeScore  numeric [optional]
#' @field treeScore  numeric [optional]
#' @field zodiacScore  numeric [optional]
#' @field molecularFormula  character [optional]
#' @field adduct  character [optional]
#' @field numOfexplainedPeaks  integer [optional]
#' @field numOfexplainablePeaks  integer [optional]
#' @field totalExplainedIntensity  numeric [optional]
#' @field medianMassDeviation  \link{Deviation} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FormulaCandidate <- R6::R6Class(
  "FormulaCandidate",
  public = list(
    `siriusScore` = NULL,
    `isotopeScore` = NULL,
    `treeScore` = NULL,
    `zodiacScore` = NULL,
    `molecularFormula` = NULL,
    `adduct` = NULL,
    `numOfexplainedPeaks` = NULL,
    `numOfexplainablePeaks` = NULL,
    `totalExplainedIntensity` = NULL,
    `medianMassDeviation` = NULL,
    #' Initialize a new FormulaCandidate class.
    #'
    #' @description
    #' Initialize a new FormulaCandidate class.
    #'
    #' @param siriusScore siriusScore
    #' @param isotopeScore isotopeScore
    #' @param treeScore treeScore
    #' @param zodiacScore zodiacScore
    #' @param molecularFormula molecularFormula
    #' @param adduct adduct
    #' @param numOfexplainedPeaks numOfexplainedPeaks
    #' @param numOfexplainablePeaks numOfexplainablePeaks
    #' @param totalExplainedIntensity totalExplainedIntensity
    #' @param medianMassDeviation medianMassDeviation
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`siriusScore` = NULL, `isotopeScore` = NULL, `treeScore` = NULL, `zodiacScore` = NULL, `molecularFormula` = NULL, `adduct` = NULL, `numOfexplainedPeaks` = NULL, `numOfexplainablePeaks` = NULL, `totalExplainedIntensity` = NULL, `medianMassDeviation` = NULL, ...) {
      if (!is.null(`siriusScore`)) {
        if (!(is.numeric(`siriusScore`) && length(`siriusScore`) == 1)) {
          stop(paste("Error! Invalid data for `siriusScore`. Must be a number:", `siriusScore`))
        }
        self$`siriusScore` <- `siriusScore`
      }
      if (!is.null(`isotopeScore`)) {
        if (!(is.numeric(`isotopeScore`) && length(`isotopeScore`) == 1)) {
          stop(paste("Error! Invalid data for `isotopeScore`. Must be a number:", `isotopeScore`))
        }
        self$`isotopeScore` <- `isotopeScore`
      }
      if (!is.null(`treeScore`)) {
        if (!(is.numeric(`treeScore`) && length(`treeScore`) == 1)) {
          stop(paste("Error! Invalid data for `treeScore`. Must be a number:", `treeScore`))
        }
        self$`treeScore` <- `treeScore`
      }
      if (!is.null(`zodiacScore`)) {
        if (!(is.numeric(`zodiacScore`) && length(`zodiacScore`) == 1)) {
          stop(paste("Error! Invalid data for `zodiacScore`. Must be a number:", `zodiacScore`))
        }
        self$`zodiacScore` <- `zodiacScore`
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
      if (!is.null(`numOfexplainedPeaks`)) {
        if (!(is.numeric(`numOfexplainedPeaks`) && length(`numOfexplainedPeaks`) == 1)) {
          stop(paste("Error! Invalid data for `numOfexplainedPeaks`. Must be an integer:", `numOfexplainedPeaks`))
        }
        self$`numOfexplainedPeaks` <- `numOfexplainedPeaks`
      }
      if (!is.null(`numOfexplainablePeaks`)) {
        if (!(is.numeric(`numOfexplainablePeaks`) && length(`numOfexplainablePeaks`) == 1)) {
          stop(paste("Error! Invalid data for `numOfexplainablePeaks`. Must be an integer:", `numOfexplainablePeaks`))
        }
        self$`numOfexplainablePeaks` <- `numOfexplainablePeaks`
      }
      if (!is.null(`totalExplainedIntensity`)) {
        if (!(is.numeric(`totalExplainedIntensity`) && length(`totalExplainedIntensity`) == 1)) {
          stop(paste("Error! Invalid data for `totalExplainedIntensity`. Must be a number:", `totalExplainedIntensity`))
        }
        self$`totalExplainedIntensity` <- `totalExplainedIntensity`
      }
      if (!is.null(`medianMassDeviation`)) {
        stopifnot(R6::is.R6(`medianMassDeviation`))
        self$`medianMassDeviation` <- `medianMassDeviation`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return FormulaCandidate in JSON format
    #' @export
    toJSON = function() {
      FormulaCandidateObject <- list()
      if (!is.null(self$`siriusScore`)) {
        FormulaCandidateObject[["siriusScore"]] <-
          self$`siriusScore`
      }
      if (!is.null(self$`isotopeScore`)) {
        FormulaCandidateObject[["isotopeScore"]] <-
          self$`isotopeScore`
      }
      if (!is.null(self$`treeScore`)) {
        FormulaCandidateObject[["treeScore"]] <-
          self$`treeScore`
      }
      if (!is.null(self$`zodiacScore`)) {
        FormulaCandidateObject[["zodiacScore"]] <-
          self$`zodiacScore`
      }
      if (!is.null(self$`molecularFormula`)) {
        FormulaCandidateObject[["molecularFormula"]] <-
          self$`molecularFormula`
      }
      if (!is.null(self$`adduct`)) {
        FormulaCandidateObject[["adduct"]] <-
          self$`adduct`
      }
      if (!is.null(self$`numOfexplainedPeaks`)) {
        FormulaCandidateObject[["numOfexplainedPeaks"]] <-
          self$`numOfexplainedPeaks`
      }
      if (!is.null(self$`numOfexplainablePeaks`)) {
        FormulaCandidateObject[["numOfexplainablePeaks"]] <-
          self$`numOfexplainablePeaks`
      }
      if (!is.null(self$`totalExplainedIntensity`)) {
        FormulaCandidateObject[["totalExplainedIntensity"]] <-
          self$`totalExplainedIntensity`
      }
      if (!is.null(self$`medianMassDeviation`)) {
        FormulaCandidateObject[["medianMassDeviation"]] <-
          self$`medianMassDeviation`$toJSON()
      }
      FormulaCandidateObject
    },
    #' Deserialize JSON string into an instance of FormulaCandidate
    #'
    #' @description
    #' Deserialize JSON string into an instance of FormulaCandidate
    #'
    #' @param input_json the JSON input
    #' @return the instance of FormulaCandidate
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`siriusScore`)) {
        self$`siriusScore` <- this_object$`siriusScore`
      }
      if (!is.null(this_object$`isotopeScore`)) {
        self$`isotopeScore` <- this_object$`isotopeScore`
      }
      if (!is.null(this_object$`treeScore`)) {
        self$`treeScore` <- this_object$`treeScore`
      }
      if (!is.null(this_object$`zodiacScore`)) {
        self$`zodiacScore` <- this_object$`zodiacScore`
      }
      if (!is.null(this_object$`molecularFormula`)) {
        self$`molecularFormula` <- this_object$`molecularFormula`
      }
      if (!is.null(this_object$`adduct`)) {
        self$`adduct` <- this_object$`adduct`
      }
      if (!is.null(this_object$`numOfexplainedPeaks`)) {
        self$`numOfexplainedPeaks` <- this_object$`numOfexplainedPeaks`
      }
      if (!is.null(this_object$`numOfexplainablePeaks`)) {
        self$`numOfexplainablePeaks` <- this_object$`numOfexplainablePeaks`
      }
      if (!is.null(this_object$`totalExplainedIntensity`)) {
        self$`totalExplainedIntensity` <- this_object$`totalExplainedIntensity`
      }
      if (!is.null(this_object$`medianMassDeviation`)) {
        `medianmassdeviation_object` <- Deviation$new()
        `medianmassdeviation_object`$fromJSON(jsonlite::toJSON(this_object$`medianMassDeviation`, auto_unbox = TRUE, digits = NA))
        self$`medianMassDeviation` <- `medianmassdeviation_object`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return FormulaCandidate in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`siriusScore`)) {
          sprintf(
          '"siriusScore":
            %d
                    ',
          self$`siriusScore`
          )
        },
        if (!is.null(self$`isotopeScore`)) {
          sprintf(
          '"isotopeScore":
            %d
                    ',
          self$`isotopeScore`
          )
        },
        if (!is.null(self$`treeScore`)) {
          sprintf(
          '"treeScore":
            %d
                    ',
          self$`treeScore`
          )
        },
        if (!is.null(self$`zodiacScore`)) {
          sprintf(
          '"zodiacScore":
            %d
                    ',
          self$`zodiacScore`
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
        if (!is.null(self$`numOfexplainedPeaks`)) {
          sprintf(
          '"numOfexplainedPeaks":
            %d
                    ',
          self$`numOfexplainedPeaks`
          )
        },
        if (!is.null(self$`numOfexplainablePeaks`)) {
          sprintf(
          '"numOfexplainablePeaks":
            %d
                    ',
          self$`numOfexplainablePeaks`
          )
        },
        if (!is.null(self$`totalExplainedIntensity`)) {
          sprintf(
          '"totalExplainedIntensity":
            %d
                    ',
          self$`totalExplainedIntensity`
          )
        },
        if (!is.null(self$`medianMassDeviation`)) {
          sprintf(
          '"medianMassDeviation":
          %s
          ',
          jsonlite::toJSON(self$`medianMassDeviation`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of FormulaCandidate
    #'
    #' @description
    #' Deserialize JSON string into an instance of FormulaCandidate
    #'
    #' @param input_json the JSON input
    #' @return the instance of FormulaCandidate
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`siriusScore` <- this_object$`siriusScore`
      self$`isotopeScore` <- this_object$`isotopeScore`
      self$`treeScore` <- this_object$`treeScore`
      self$`zodiacScore` <- this_object$`zodiacScore`
      self$`molecularFormula` <- this_object$`molecularFormula`
      self$`adduct` <- this_object$`adduct`
      self$`numOfexplainedPeaks` <- this_object$`numOfexplainedPeaks`
      self$`numOfexplainablePeaks` <- this_object$`numOfexplainablePeaks`
      self$`totalExplainedIntensity` <- this_object$`totalExplainedIntensity`
      self$`medianMassDeviation` <- Deviation$new()$fromJSON(jsonlite::toJSON(this_object$`medianMassDeviation`, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to FormulaCandidate
    #'
    #' @description
    #' Validate JSON input with respect to FormulaCandidate and throw an exception if invalid
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
    #' @return String representation of FormulaCandidate
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
# FormulaCandidate$unlock()
#
## Below is an example to define the print function
# FormulaCandidate$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# FormulaCandidate$lock()

