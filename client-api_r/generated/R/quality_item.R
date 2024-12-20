#' Create a new QualityItem
#'
#' @description
#' QualityItem Class
#'
#' @docType class
#' @title QualityItem
#' @description QualityItem Class
#' @format An \code{R6Class} generator object
#' @field description  character [optional]
#' @field quality  character [optional]
#' @field weight  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
QualityItem <- R6::R6Class(
  "QualityItem",
  public = list(
    `description` = NULL,
    `quality` = NULL,
    `weight` = NULL,
    #' Initialize a new QualityItem class.
    #'
    #' @description
    #' Initialize a new QualityItem class.
    #'
    #' @param description description
    #' @param quality quality
    #' @param weight weight
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`description` = NULL, `quality` = NULL, `weight` = NULL, ...) {
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`quality`)) {
        # disabled, as it is broken and checks for `quality` %in% c()
        # if (!(`quality` %in% c("NOT_APPLICABLE", "LOWEST", "BAD", "DECENT", "GOOD"))) {
        #  stop(paste("Error! \"", `quality`, "\" cannot be assigned to `quality`. Must be \"NOT_APPLICABLE\", \"LOWEST\", \"BAD\", \"DECENT\", \"GOOD\".", sep = ""))
        # }
        if (!(is.character(`quality`) && length(`quality`) == 1)) {
          stop(paste("Error! Invalid data for `quality`. Must be a string:", `quality`))
        }
        self$`quality` <- `quality`
      }
      if (!is.null(`weight`)) {
        # disabled, as it is broken and checks for `weight` %in% c()
        # if (!(`weight` %in% c("MINOR", "MAJOR", "CRITICAL"))) {
        #  stop(paste("Error! \"", `weight`, "\" cannot be assigned to `weight`. Must be \"MINOR\", \"MAJOR\", \"CRITICAL\".", sep = ""))
        # }
        if (!(is.character(`weight`) && length(`weight`) == 1)) {
          stop(paste("Error! Invalid data for `weight`. Must be a string:", `weight`))
        }
        self$`weight` <- `weight`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return QualityItem in JSON format
    #' @export
    toJSON = function() {
      QualityItemObject <- list()
      if (!is.null(self$`description`)) {
        QualityItemObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`quality`)) {
        QualityItemObject[["quality"]] <-
          self$`quality`
      }
      if (!is.null(self$`weight`)) {
        QualityItemObject[["weight"]] <-
          self$`weight`
      }
      QualityItemObject
    },
    #' Deserialize JSON string into an instance of QualityItem
    #'
    #' @description
    #' Deserialize JSON string into an instance of QualityItem
    #'
    #' @param input_json the JSON input
    #' @return the instance of QualityItem
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`quality`)) {
        if (!is.null(this_object$`quality`) && !(this_object$`quality` %in% c("NOT_APPLICABLE", "LOWEST", "BAD", "DECENT", "GOOD"))) {
          stop(paste("Error! \"", this_object$`quality`, "\" cannot be assigned to `quality`. Must be \"NOT_APPLICABLE\", \"LOWEST\", \"BAD\", \"DECENT\", \"GOOD\".", sep = ""))
        }
        self$`quality` <- this_object$`quality`
      }
      if (!is.null(this_object$`weight`)) {
        if (!is.null(this_object$`weight`) && !(this_object$`weight` %in% c("MINOR", "MAJOR", "CRITICAL"))) {
          stop(paste("Error! \"", this_object$`weight`, "\" cannot be assigned to `weight`. Must be \"MINOR\", \"MAJOR\", \"CRITICAL\".", sep = ""))
        }
        self$`weight` <- this_object$`weight`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return QualityItem in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`description`)) {
          sprintf(
          '"description":
            "%s"
                    ',
          self$`description`
          )
        },
        if (!is.null(self$`quality`)) {
          sprintf(
          '"quality":
            "%s"
                    ',
          self$`quality`
          )
        },
        if (!is.null(self$`weight`)) {
          sprintf(
          '"weight":
            "%s"
                    ',
          self$`weight`
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
    #' Deserialize JSON string into an instance of QualityItem
    #'
    #' @description
    #' Deserialize JSON string into an instance of QualityItem
    #'
    #' @param input_json the JSON input
    #' @return the instance of QualityItem
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`description` <- this_object$`description`
      if (!is.null(this_object$`quality`) && !(this_object$`quality` %in% c("NOT_APPLICABLE", "LOWEST", "BAD", "DECENT", "GOOD"))) {
        stop(paste("Error! \"", this_object$`quality`, "\" cannot be assigned to `quality`. Must be \"NOT_APPLICABLE\", \"LOWEST\", \"BAD\", \"DECENT\", \"GOOD\".", sep = ""))
      }
      self$`quality` <- this_object$`quality`
      if (!is.null(this_object$`weight`) && !(this_object$`weight` %in% c("MINOR", "MAJOR", "CRITICAL"))) {
        stop(paste("Error! \"", this_object$`weight`, "\" cannot be assigned to `weight`. Must be \"MINOR\", \"MAJOR\", \"CRITICAL\".", sep = ""))
      }
      self$`weight` <- this_object$`weight`
      self
    },
    #' Validate JSON input with respect to QualityItem
    #'
    #' @description
    #' Validate JSON input with respect to QualityItem and throw an exception if invalid
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
    #' @return String representation of QualityItem
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
# QualityItem$unlock()
#
## Below is an example to define the print function
# QualityItem$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# QualityItem$lock()

