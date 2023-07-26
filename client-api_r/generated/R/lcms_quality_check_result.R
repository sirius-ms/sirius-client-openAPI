#' Create a new LCMSQualityCheckResult
#'
#' @description
#' 
#'
#' @docType class
#' @title LCMSQualityCheckResult
#' @description LCMSQualityCheckResult Class
#' @format An \code{R6Class} generator object
#' @field checks  list(\link{LCMSQualityCheck}) [optional]
#' @field quality  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
LCMSQualityCheckResult <- R6::R6Class(
  "LCMSQualityCheckResult",
  public = list(
    `checks` = NULL,
    `quality` = NULL,
    #' Initialize a new LCMSQualityCheckResult class.
    #'
    #' @description
    #' Initialize a new LCMSQualityCheckResult class.
    #'
    #' @param checks checks
    #' @param quality quality
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`checks` = NULL, `quality` = NULL, ...) {
      if (!is.null(`checks`)) {
        stopifnot(is.vector(`checks`), length(`checks`) != 0)
        sapply(`checks`, function(x) stopifnot(R6::is.R6(x)))
        self$`checks` <- `checks`
      }
      if (!is.null(`quality`)) {
        if (!(`quality` %in% c("LOW", "MEDIUM", "GOOD"))) {
          stop(paste("Error! \"", `quality`, "\" cannot be assigned to `quality`. Must be \"LOW\", \"MEDIUM\", \"GOOD\".", sep = ""))
        }
        if (!(is.character(`quality`) && length(`quality`) == 1)) {
          stop(paste("Error! Invalid data for `quality`. Must be a string:", `quality`))
        }
        self$`quality` <- `quality`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return LCMSQualityCheckResult in JSON format
    #' @export
    toJSON = function() {
      LCMSQualityCheckResultObject <- list()
      if (!is.null(self$`checks`)) {
        LCMSQualityCheckResultObject[["checks"]] <-
          lapply(self$`checks`, function(x) x$toJSON())
      }
      if (!is.null(self$`quality`)) {
        LCMSQualityCheckResultObject[["quality"]] <-
          self$`quality`
      }
      LCMSQualityCheckResultObject
    },
    #' Deserialize JSON string into an instance of LCMSQualityCheckResult
    #'
    #' @description
    #' Deserialize JSON string into an instance of LCMSQualityCheckResult
    #'
    #' @param input_json the JSON input
    #' @return the instance of LCMSQualityCheckResult
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`checks`)) {
        self$`checks` <- ApiClient$new()$deserializeObj(this_object$`checks`, "array[LCMSQualityCheck]", loadNamespace("Rsirius"))
      }
      if (!is.null(this_object$`quality`)) {
        if (!is.null(this_object$`quality`) && !(this_object$`quality` %in% c("LOW", "MEDIUM", "GOOD"))) {
          stop(paste("Error! \"", this_object$`quality`, "\" cannot be assigned to `quality`. Must be \"LOW\", \"MEDIUM\", \"GOOD\".", sep = ""))
        }
        self$`quality` <- this_object$`quality`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return LCMSQualityCheckResult in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`checks`)) {
          sprintf(
          '"checks":
          [%s]
',
          paste(sapply(self$`checks`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        },
        if (!is.null(self$`quality`)) {
          sprintf(
          '"quality":
            "%s"
                    ',
          self$`quality`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of LCMSQualityCheckResult
    #'
    #' @description
    #' Deserialize JSON string into an instance of LCMSQualityCheckResult
    #'
    #' @param input_json the JSON input
    #' @return the instance of LCMSQualityCheckResult
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`checks` <- ApiClient$new()$deserializeObj(this_object$`checks`, "array[LCMSQualityCheck]", loadNamespace("Rsirius"))
      if (!is.null(this_object$`quality`) && !(this_object$`quality` %in% c("LOW", "MEDIUM", "GOOD"))) {
        stop(paste("Error! \"", this_object$`quality`, "\" cannot be assigned to `quality`. Must be \"LOW\", \"MEDIUM\", \"GOOD\".", sep = ""))
      }
      self$`quality` <- this_object$`quality`
      self
    },
    #' Validate JSON input with respect to LCMSQualityCheckResult
    #'
    #' @description
    #' Validate JSON input with respect to LCMSQualityCheckResult and throw an exception if invalid
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
    #' @return String representation of LCMSQualityCheckResult
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
# LCMSQualityCheckResult$unlock()
#
## Below is an example to define the print function
# LCMSQualityCheckResult$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# LCMSQualityCheckResult$lock()

