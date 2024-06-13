#' Create a new ZodiacEdgeFilterThresholds
#'
#' @description
#' ZodiacEdgeFilterThresholds Class
#'
#' @docType class
#' @title ZodiacEdgeFilterThresholds
#' @description ZodiacEdgeFilterThresholds Class
#' @format An \code{R6Class} generator object
#' @field thresholdFilter  numeric [optional]
#' @field minLocalCandidates  integer [optional]
#' @field minLocalConnections  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ZodiacEdgeFilterThresholds <- R6::R6Class(
  "ZodiacEdgeFilterThresholds",
  public = list(
    `thresholdFilter` = NULL,
    `minLocalCandidates` = NULL,
    `minLocalConnections` = NULL,
    #' Initialize a new ZodiacEdgeFilterThresholds class.
    #'
    #' @description
    #' Initialize a new ZodiacEdgeFilterThresholds class.
    #'
    #' @param thresholdFilter thresholdFilter
    #' @param minLocalCandidates minLocalCandidates
    #' @param minLocalConnections minLocalConnections
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`thresholdFilter` = NULL, `minLocalCandidates` = NULL, `minLocalConnections` = NULL, ...) {
      if (!is.null(`thresholdFilter`)) {
        if (!(is.numeric(`thresholdFilter`) && length(`thresholdFilter`) == 1)) {
          stop(paste("Error! Invalid data for `thresholdFilter`. Must be a number:", `thresholdFilter`))
        }
        self$`thresholdFilter` <- `thresholdFilter`
      }
      if (!is.null(`minLocalCandidates`)) {
        if (!(is.numeric(`minLocalCandidates`) && length(`minLocalCandidates`) == 1)) {
          stop(paste("Error! Invalid data for `minLocalCandidates`. Must be an integer:", `minLocalCandidates`))
        }
        self$`minLocalCandidates` <- `minLocalCandidates`
      }
      if (!is.null(`minLocalConnections`)) {
        if (!(is.numeric(`minLocalConnections`) && length(`minLocalConnections`) == 1)) {
          stop(paste("Error! Invalid data for `minLocalConnections`. Must be an integer:", `minLocalConnections`))
        }
        self$`minLocalConnections` <- `minLocalConnections`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ZodiacEdgeFilterThresholds in JSON format
    #' @export
    toJSON = function() {
      ZodiacEdgeFilterThresholdsObject <- list()
      if (!is.null(self$`thresholdFilter`)) {
        ZodiacEdgeFilterThresholdsObject[["thresholdFilter"]] <-
          self$`thresholdFilter`
      }
      if (!is.null(self$`minLocalCandidates`)) {
        ZodiacEdgeFilterThresholdsObject[["minLocalCandidates"]] <-
          self$`minLocalCandidates`
      }
      if (!is.null(self$`minLocalConnections`)) {
        ZodiacEdgeFilterThresholdsObject[["minLocalConnections"]] <-
          self$`minLocalConnections`
      }
      ZodiacEdgeFilterThresholdsObject
    },
    #' Deserialize JSON string into an instance of ZodiacEdgeFilterThresholds
    #'
    #' @description
    #' Deserialize JSON string into an instance of ZodiacEdgeFilterThresholds
    #'
    #' @param input_json the JSON input
    #' @return the instance of ZodiacEdgeFilterThresholds
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`thresholdFilter`)) {
        self$`thresholdFilter` <- this_object$`thresholdFilter`
      }
      if (!is.null(this_object$`minLocalCandidates`)) {
        self$`minLocalCandidates` <- this_object$`minLocalCandidates`
      }
      if (!is.null(this_object$`minLocalConnections`)) {
        self$`minLocalConnections` <- this_object$`minLocalConnections`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ZodiacEdgeFilterThresholds in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`thresholdFilter`)) {
          sprintf(
          '"thresholdFilter":
            %f
                    ',
          self$`thresholdFilter`
          )
        },
        if (!is.null(self$`minLocalCandidates`)) {
          sprintf(
          '"minLocalCandidates":
            %f
                    ',
          self$`minLocalCandidates`
          )
        },
        if (!is.null(self$`minLocalConnections`)) {
          sprintf(
          '"minLocalConnections":
            %f
                    ',
          self$`minLocalConnections`
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
    #' Deserialize JSON string into an instance of ZodiacEdgeFilterThresholds
    #'
    #' @description
    #' Deserialize JSON string into an instance of ZodiacEdgeFilterThresholds
    #'
    #' @param input_json the JSON input
    #' @return the instance of ZodiacEdgeFilterThresholds
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`thresholdFilter` <- this_object$`thresholdFilter`
      self$`minLocalCandidates` <- this_object$`minLocalCandidates`
      self$`minLocalConnections` <- this_object$`minLocalConnections`
      self
    },
    #' Validate JSON input with respect to ZodiacEdgeFilterThresholds
    #'
    #' @description
    #' Validate JSON input with respect to ZodiacEdgeFilterThresholds and throw an exception if invalid
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
    #' @return String representation of ZodiacEdgeFilterThresholds
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
# ZodiacEdgeFilterThresholds$unlock()
#
## Below is an example to define the print function
# ZodiacEdgeFilterThresholds$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ZodiacEdgeFilterThresholds$lock()

