#' Create a new LcmsSubmissionParameters
#'
#' @description
#' LcmsSubmissionParameters Class
#'
#' @docType class
#' @title LcmsSubmissionParameters
#' @description LcmsSubmissionParameters Class
#' @format An \code{R6Class} generator object
#' @field alignLCMSRuns Specifies whether LC/MS runs should be aligned character [optional]
#' @field noise Features must be larger than <value> * detected noise level. numeric [optional]
#' @field persistence Features must have larger persistence (intensity above valley) than <value> * max trace intensity. numeric [optional]
#' @field merge Merge neighboring features with valley less than <value> * intensity. numeric [optional]
#' @field filter  \link{DataSmoothing} [optional]
#' @field gaussianSigma Sigma (kernel width) for gaussian filter algorithm. numeric [optional]
#' @field waveletScale Number of coefficients for wavelet filter algorithm. integer [optional]
#' @field waveletWindow Wavelet window size (\%) for wavelet filter algorithm. numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
LcmsSubmissionParameters <- R6::R6Class(
  "LcmsSubmissionParameters",
  public = list(
    `alignLCMSRuns` = NULL,
    `noise` = NULL,
    `persistence` = NULL,
    `merge` = NULL,
    `filter` = NULL,
    `gaussianSigma` = NULL,
    `waveletScale` = NULL,
    `waveletWindow` = NULL,
    #' Initialize a new LcmsSubmissionParameters class.
    #'
    #' @description
    #' Initialize a new LcmsSubmissionParameters class.
    #'
    #' @param alignLCMSRuns Specifies whether LC/MS runs should be aligned. Default to TRUE.
    #' @param noise Features must be larger than <value> * detected noise level.. Default to 2.0.
    #' @param persistence Features must have larger persistence (intensity above valley) than <value> * max trace intensity.. Default to 0.1.
    #' @param merge Merge neighboring features with valley less than <value> * intensity.. Default to 0.8.
    #' @param filter filter
    #' @param gaussianSigma Sigma (kernel width) for gaussian filter algorithm.. Default to 3.0.
    #' @param waveletScale Number of coefficients for wavelet filter algorithm.. Default to 20.
    #' @param waveletWindow Wavelet window size (\%) for wavelet filter algorithm.. Default to 11.
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`alignLCMSRuns` = TRUE, `noise` = 2.0, `persistence` = 0.1, `merge` = 0.8, `filter` = NULL, `gaussianSigma` = 3.0, `waveletScale` = 20, `waveletWindow` = 11, ...) {
      if (!is.null(`alignLCMSRuns`)) {
        if (!(is.logical(`alignLCMSRuns`) && length(`alignLCMSRuns`) == 1)) {
          stop(paste("Error! Invalid data for `alignLCMSRuns`. Must be a boolean:", `alignLCMSRuns`))
        }
        self$`alignLCMSRuns` <- `alignLCMSRuns`
      }
      if (!is.null(`noise`)) {
        if (!(is.numeric(`noise`) && length(`noise`) == 1)) {
          stop(paste("Error! Invalid data for `noise`. Must be a number:", `noise`))
        }
        self$`noise` <- `noise`
      }
      if (!is.null(`persistence`)) {
        if (!(is.numeric(`persistence`) && length(`persistence`) == 1)) {
          stop(paste("Error! Invalid data for `persistence`. Must be a number:", `persistence`))
        }
        self$`persistence` <- `persistence`
      }
      if (!is.null(`merge`)) {
        if (!(is.numeric(`merge`) && length(`merge`) == 1)) {
          stop(paste("Error! Invalid data for `merge`. Must be a number:", `merge`))
        }
        self$`merge` <- `merge`
      }
      if (!is.null(`filter`)) {
        # disabled, as it is broken and checks for `filter` %in% c()
        # if (!(`filter` %in% c())) {
        #  stop(paste("Error! \"", `filter`, "\" cannot be assigned to `filter`. Must be .", sep = ""))
        # }
        stopifnot(R6::is.R6(`filter`))
        self$`filter` <- `filter`
      }
      if (!is.null(`gaussianSigma`)) {
        if (!(is.numeric(`gaussianSigma`) && length(`gaussianSigma`) == 1)) {
          stop(paste("Error! Invalid data for `gaussianSigma`. Must be a number:", `gaussianSigma`))
        }
        self$`gaussianSigma` <- `gaussianSigma`
      }
      if (!is.null(`waveletScale`)) {
        if (!(is.numeric(`waveletScale`) && length(`waveletScale`) == 1)) {
          stop(paste("Error! Invalid data for `waveletScale`. Must be an integer:", `waveletScale`))
        }
        self$`waveletScale` <- `waveletScale`
      }
      if (!is.null(`waveletWindow`)) {
        if (!(is.numeric(`waveletWindow`) && length(`waveletWindow`) == 1)) {
          stop(paste("Error! Invalid data for `waveletWindow`. Must be a number:", `waveletWindow`))
        }
        self$`waveletWindow` <- `waveletWindow`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return LcmsSubmissionParameters in JSON format
    #' @export
    toJSON = function() {
      LcmsSubmissionParametersObject <- list()
      if (!is.null(self$`alignLCMSRuns`)) {
        LcmsSubmissionParametersObject[["alignLCMSRuns"]] <-
          self$`alignLCMSRuns`
      }
      if (!is.null(self$`noise`)) {
        LcmsSubmissionParametersObject[["noise"]] <-
          self$`noise`
      }
      if (!is.null(self$`persistence`)) {
        LcmsSubmissionParametersObject[["persistence"]] <-
          self$`persistence`
      }
      if (!is.null(self$`merge`)) {
        LcmsSubmissionParametersObject[["merge"]] <-
          self$`merge`
      }
      if (!is.null(self$`filter`)) {
        LcmsSubmissionParametersObject[["filter"]] <-
          if (is.list(self$`filter`$toJSON()) && length(self$`filter`$toJSON()) == 0L){
            NULL
          } else if (length(names(self$`filter`$toJSON())) == 0L && is.character(jsonlite::fromJSON(self$`filter`$toJSON()))) {
            jsonlite::fromJSON(self$`filter`$toJSON())
          } else {
            self$`filter`$toJSON()
          }
      }
      if (!is.null(self$`gaussianSigma`)) {
        LcmsSubmissionParametersObject[["gaussianSigma"]] <-
          self$`gaussianSigma`
      }
      if (!is.null(self$`waveletScale`)) {
        LcmsSubmissionParametersObject[["waveletScale"]] <-
          self$`waveletScale`
      }
      if (!is.null(self$`waveletWindow`)) {
        LcmsSubmissionParametersObject[["waveletWindow"]] <-
          self$`waveletWindow`
      }
      LcmsSubmissionParametersObject
    },
    #' Deserialize JSON string into an instance of LcmsSubmissionParameters
    #'
    #' @description
    #' Deserialize JSON string into an instance of LcmsSubmissionParameters
    #'
    #' @param input_json the JSON input
    #' @return the instance of LcmsSubmissionParameters
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`alignLCMSRuns`)) {
        self$`alignLCMSRuns` <- this_object$`alignLCMSRuns`
      }
      if (!is.null(this_object$`noise`)) {
        self$`noise` <- this_object$`noise`
      }
      if (!is.null(this_object$`persistence`)) {
        self$`persistence` <- this_object$`persistence`
      }
      if (!is.null(this_object$`merge`)) {
        self$`merge` <- this_object$`merge`
      }
      if (!is.null(this_object$`filter`)) {
        `filter_object` <- DataSmoothing$new()
        `filter_object`$fromJSON(jsonlite::toJSON(this_object$`filter`, auto_unbox = TRUE, digits = NA))
        self$`filter` <- `filter_object`
      }
      if (!is.null(this_object$`gaussianSigma`)) {
        self$`gaussianSigma` <- this_object$`gaussianSigma`
      }
      if (!is.null(this_object$`waveletScale`)) {
        self$`waveletScale` <- this_object$`waveletScale`
      }
      if (!is.null(this_object$`waveletWindow`)) {
        self$`waveletWindow` <- this_object$`waveletWindow`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return LcmsSubmissionParameters in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`alignLCMSRuns`)) {
          sprintf(
          '"alignLCMSRuns":
            %s
                    ',
          tolower(self$`alignLCMSRuns`)
          )
        },
        if (!is.null(self$`noise`)) {
          sprintf(
          '"noise":
            %f
                    ',
          self$`noise`
          )
        },
        if (!is.null(self$`persistence`)) {
          sprintf(
          '"persistence":
            %f
                    ',
          self$`persistence`
          )
        },
        if (!is.null(self$`merge`)) {
          sprintf(
          '"merge":
            %f
                    ',
          self$`merge`
          )
        },
        if (!is.null(self$`filter`)) {
          sprintf(
          '"filter":
          %s
          ',
          jsonlite::toJSON(self$`filter`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`gaussianSigma`)) {
          sprintf(
          '"gaussianSigma":
            %f
                    ',
          self$`gaussianSigma`
          )
        },
        if (!is.null(self$`waveletScale`)) {
          sprintf(
          '"waveletScale":
            %f
                    ',
          self$`waveletScale`
          )
        },
        if (!is.null(self$`waveletWindow`)) {
          sprintf(
          '"waveletWindow":
            %f
                    ',
          self$`waveletWindow`
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
    #' Deserialize JSON string into an instance of LcmsSubmissionParameters
    #'
    #' @description
    #' Deserialize JSON string into an instance of LcmsSubmissionParameters
    #'
    #' @param input_json the JSON input
    #' @return the instance of LcmsSubmissionParameters
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`alignLCMSRuns` <- this_object$`alignLCMSRuns`
      self$`noise` <- this_object$`noise`
      self$`persistence` <- this_object$`persistence`
      self$`merge` <- this_object$`merge`
      self$`filter` <- DataSmoothing$new()$fromJSON(jsonlite::toJSON(this_object$`filter`, auto_unbox = TRUE, digits = NA))
      self$`gaussianSigma` <- this_object$`gaussianSigma`
      self$`waveletScale` <- this_object$`waveletScale`
      self$`waveletWindow` <- this_object$`waveletWindow`
      self
    },
    #' Validate JSON input with respect to LcmsSubmissionParameters
    #'
    #' @description
    #' Validate JSON input with respect to LcmsSubmissionParameters and throw an exception if invalid
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
    #' @return String representation of LcmsSubmissionParameters
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
# LcmsSubmissionParameters$unlock()
#
## Below is an example to define the print function
# LcmsSubmissionParameters$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# LcmsSubmissionParameters$lock()

