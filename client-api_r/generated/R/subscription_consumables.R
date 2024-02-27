#' Create a new SubscriptionConsumables
#'
#' @description
#' 
#'
#' @docType class
#' @title SubscriptionConsumables
#' @description SubscriptionConsumables Class
#' @format An \code{R6Class} generator object
#' @field countedCompounds  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SubscriptionConsumables <- R6::R6Class(
  "SubscriptionConsumables",
  public = list(
    `countedCompounds` = NULL,
    #' Initialize a new SubscriptionConsumables class.
    #'
    #' @description
    #' Initialize a new SubscriptionConsumables class.
    #'
    #' @param countedCompounds countedCompounds
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`countedCompounds` = NULL, ...) {
      if (!is.null(`countedCompounds`)) {
        if (!(is.numeric(`countedCompounds`) && length(`countedCompounds`) == 1)) {
          stop(paste("Error! Invalid data for `countedCompounds`. Must be an integer:", `countedCompounds`))
        }
        self$`countedCompounds` <- `countedCompounds`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return SubscriptionConsumables in JSON format
    #' @export
    toJSON = function() {
      SubscriptionConsumablesObject <- list()
      if (!is.null(self$`countedCompounds`)) {
        SubscriptionConsumablesObject[["countedCompounds"]] <-
          self$`countedCompounds`
      }
      SubscriptionConsumablesObject
    },
    #' Deserialize JSON string into an instance of SubscriptionConsumables
    #'
    #' @description
    #' Deserialize JSON string into an instance of SubscriptionConsumables
    #'
    #' @param input_json the JSON input
    #' @return the instance of SubscriptionConsumables
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`countedCompounds`)) {
        self$`countedCompounds` <- this_object$`countedCompounds`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return SubscriptionConsumables in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`countedCompounds`)) {
          sprintf(
          '"countedCompounds":
            %d
                    ',
          self$`countedCompounds`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of SubscriptionConsumables
    #'
    #' @description
    #' Deserialize JSON string into an instance of SubscriptionConsumables
    #'
    #' @param input_json the JSON input
    #' @return the instance of SubscriptionConsumables
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`countedCompounds` <- this_object$`countedCompounds`
      self
    },
    #' Validate JSON input with respect to SubscriptionConsumables
    #'
    #' @description
    #' Validate JSON input with respect to SubscriptionConsumables and throw an exception if invalid
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
    #' @return String representation of SubscriptionConsumables
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
# SubscriptionConsumables$unlock()
#
## Below is an example to define the print function
# SubscriptionConsumables$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SubscriptionConsumables$lock()

