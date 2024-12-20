#' Create a new SubscriptionConsumables
#'
#' @description
#' SubscriptionConsumables Class
#'
#' @docType class
#' @title SubscriptionConsumables
#' @description SubscriptionConsumables Class
#' @format An \code{R6Class} generator object
#' @field pendingJobs  integer [optional]
#' @field countedCompounds  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SubscriptionConsumables <- R6::R6Class(
  "SubscriptionConsumables",
  public = list(
    `pendingJobs` = NULL,
    `countedCompounds` = NULL,

    #' @description
    #' Initialize a new SubscriptionConsumables class.
    #'
    #' @param pendingJobs pendingJobs
    #' @param countedCompounds countedCompounds
    #' @param ... Other optional arguments.
    initialize = function(`pendingJobs` = NULL, `countedCompounds` = NULL, ...) {
      if (!is.null(`pendingJobs`)) {
        if (!(is.numeric(`pendingJobs`) && length(`pendingJobs`) == 1)) {
          stop(paste("Error! Invalid data for `pendingJobs`. Must be an integer:", `pendingJobs`))
        }
        self$`pendingJobs` <- `pendingJobs`
      }
      if (!is.null(`countedCompounds`)) {
        if (!(is.numeric(`countedCompounds`) && length(`countedCompounds`) == 1)) {
          stop(paste("Error! Invalid data for `countedCompounds`. Must be an integer:", `countedCompounds`))
        }
        self$`countedCompounds` <- `countedCompounds`
      }
    },

    #' @description
    #' To JSON String
    #'
    #' @return SubscriptionConsumables in JSON format
    toJSON = function() {
      SubscriptionConsumablesObject <- list()
      if (!is.null(self$`pendingJobs`)) {
        SubscriptionConsumablesObject[["pendingJobs"]] <-
          self$`pendingJobs`
      }
      if (!is.null(self$`countedCompounds`)) {
        SubscriptionConsumablesObject[["countedCompounds"]] <-
          self$`countedCompounds`
      }
      SubscriptionConsumablesObject
    },

    #' @description
    #' Deserialize JSON string into an instance of SubscriptionConsumables
    #'
    #' @param input_json the JSON input
    #' @return the instance of SubscriptionConsumables
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`pendingJobs`)) {
        self$`pendingJobs` <- this_object$`pendingJobs`
      }
      if (!is.null(this_object$`countedCompounds`)) {
        self$`countedCompounds` <- this_object$`countedCompounds`
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return SubscriptionConsumables in JSON format
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`pendingJobs`)) {
          sprintf(
          '"pendingJobs":
            %d
                    ',
          self$`pendingJobs`
          )
        },
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

    #' @description
    #' Deserialize JSON string into an instance of SubscriptionConsumables
    #'
    #' @param input_json the JSON input
    #' @return the instance of SubscriptionConsumables
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`pendingJobs` <- this_object$`pendingJobs`
      self$`countedCompounds` <- this_object$`countedCompounds`
      self
    },

    #' @description
    #' Validate JSON input with respect to SubscriptionConsumables and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SubscriptionConsumables
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
      invalid_fields
    },

    #' @description
    #' Print the object
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

