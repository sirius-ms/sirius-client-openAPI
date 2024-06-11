#' Create a new Item
#'
#' @description
#' Item Class
#'
#' @docType class
#' @title Item
#' @description Item Class
#' @format An \code{R6Class} generator object
#' @field description  character [optional]
#' @field quality  \link{DataQuality} [optional]
#' @field weight  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Item <- R6::R6Class(
  "Item",
  public = list(
    `description` = NULL,
    `quality` = NULL,
    `weight` = NULL,
    #' Initialize a new Item class.
    #'
    #' @description
    #' Initialize a new Item class.
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
        if (!(`quality` %in% c())) {
          stop(paste("Error! \"", `quality`, "\" cannot be assigned to `quality`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`quality`))
        self$`quality` <- `quality`
      }
      if (!is.null(`weight`)) {
        if (!(`weight` %in% c("MINOR", "MAJOR", "CRITICAL"))) {
          stop(paste("Error! \"", `weight`, "\" cannot be assigned to `weight`. Must be \"MINOR\", \"MAJOR\", \"CRITICAL\".", sep = ""))
        }
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
    #' @return Item in JSON format
    #' @export
    toJSON = function() {
      ItemObject <- list()
      if (!is.null(self$`description`)) {
        ItemObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`quality`)) {
        ItemObject[["quality"]] <-
          if (is.list(self$`quality`$toJSON()) && length(self$`quality`$toJSON()) == 0L){
            NULL
          } else if (length(names(self$`quality`$toJSON())) == 0L && is.character(jsonlite::fromJSON(self$`quality`$toJSON()))) {
            jsonlite::fromJSON(self$`quality`$toJSON())
          } else {
            self$`quality`$toJSON()
          }
      }
      if (!is.null(self$`weight`)) {
        ItemObject[["weight"]] <-
          self$`weight`
      }
      ItemObject
    },
    #' Deserialize JSON string into an instance of Item
    #'
    #' @description
    #' Deserialize JSON string into an instance of Item
    #'
    #' @param input_json the JSON input
    #' @return the instance of Item
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`quality`)) {
        `quality_object` <- DataQuality$new()
        `quality_object`$fromJSON(jsonlite::toJSON(this_object$`quality`, auto_unbox = TRUE, digits = NA))
        self$`quality` <- `quality_object`
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
    #' @return Item in JSON format
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
          %s
          ',
          jsonlite::toJSON(self$`quality`$toJSON(), auto_unbox = TRUE, digits = NA)
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
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of Item
    #'
    #' @description
    #' Deserialize JSON string into an instance of Item
    #'
    #' @param input_json the JSON input
    #' @return the instance of Item
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`description` <- this_object$`description`
      self$`quality` <- DataQuality$new()$fromJSON(jsonlite::toJSON(this_object$`quality`, auto_unbox = TRUE, digits = NA))
      if (!is.null(this_object$`weight`) && !(this_object$`weight` %in% c("MINOR", "MAJOR", "CRITICAL"))) {
        stop(paste("Error! \"", this_object$`weight`, "\" cannot be assigned to `weight`. Must be \"MINOR\", \"MAJOR\", \"CRITICAL\".", sep = ""))
      }
      self$`weight` <- this_object$`weight`
      self
    },
    #' Validate JSON input with respect to Item
    #'
    #' @description
    #' Validate JSON input with respect to Item and throw an exception if invalid
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
    #' @return String representation of Item
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
# Item$unlock()
#
## Below is an example to define the print function
# Item$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Item$lock()

