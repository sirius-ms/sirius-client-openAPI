#' Create a new AccountInfo
#'
#' @description
#' 
#'
#' @docType class
#' @title AccountInfo
#' @description AccountInfo Class
#' @format An \code{R6Class} generator object
#' @field userID  character [optional]
#' @field username  character [optional]
#' @field userEmail  character [optional]
#' @field gravatarURL  character [optional]
#' @field subscriptions  list(\link{Subscription}) [optional]
#' @field activeSubscriptionId  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AccountInfo <- R6::R6Class(
  "AccountInfo",
  public = list(
    `userID` = NULL,
    `username` = NULL,
    `userEmail` = NULL,
    `gravatarURL` = NULL,
    `subscriptions` = NULL,
    `activeSubscriptionId` = NULL,
    #' Initialize a new AccountInfo class.
    #'
    #' @description
    #' Initialize a new AccountInfo class.
    #'
    #' @param userID userID
    #' @param username username
    #' @param userEmail userEmail
    #' @param gravatarURL gravatarURL
    #' @param subscriptions subscriptions
    #' @param activeSubscriptionId activeSubscriptionId
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`userID` = NULL, `username` = NULL, `userEmail` = NULL, `gravatarURL` = NULL, `subscriptions` = NULL, `activeSubscriptionId` = NULL, ...) {
      if (!is.null(`userID`)) {
        if (!(is.character(`userID`) && length(`userID`) == 1)) {
          stop(paste("Error! Invalid data for `userID`. Must be a string:", `userID`))
        }
        self$`userID` <- `userID`
      }
      if (!is.null(`username`)) {
        if (!(is.character(`username`) && length(`username`) == 1)) {
          stop(paste("Error! Invalid data for `username`. Must be a string:", `username`))
        }
        self$`username` <- `username`
      }
      if (!is.null(`userEmail`)) {
        if (!(is.character(`userEmail`) && length(`userEmail`) == 1)) {
          stop(paste("Error! Invalid data for `userEmail`. Must be a string:", `userEmail`))
        }
        self$`userEmail` <- `userEmail`
      }
      if (!is.null(`gravatarURL`)) {
        if (!(is.character(`gravatarURL`) && length(`gravatarURL`) == 1)) {
          stop(paste("Error! Invalid data for `gravatarURL`. Must be a string:", `gravatarURL`))
        }
        self$`gravatarURL` <- `gravatarURL`
      }
      if (!is.null(`subscriptions`)) {
        stopifnot(is.vector(`subscriptions`), length(`subscriptions`) != 0)
        sapply(`subscriptions`, function(x) stopifnot(R6::is.R6(x)))
        self$`subscriptions` <- `subscriptions`
      }
      if (!is.null(`activeSubscriptionId`)) {
        if (!(is.character(`activeSubscriptionId`) && length(`activeSubscriptionId`) == 1)) {
          stop(paste("Error! Invalid data for `activeSubscriptionId`. Must be a string:", `activeSubscriptionId`))
        }
        self$`activeSubscriptionId` <- `activeSubscriptionId`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return AccountInfo in JSON format
    #' @export
    toJSON = function() {
      AccountInfoObject <- list()
      if (!is.null(self$`userID`)) {
        AccountInfoObject[["userID"]] <-
          self$`userID`
      }
      if (!is.null(self$`username`)) {
        AccountInfoObject[["username"]] <-
          self$`username`
      }
      if (!is.null(self$`userEmail`)) {
        AccountInfoObject[["userEmail"]] <-
          self$`userEmail`
      }
      if (!is.null(self$`gravatarURL`)) {
        AccountInfoObject[["gravatarURL"]] <-
          self$`gravatarURL`
      }
      if (!is.null(self$`subscriptions`)) {
        AccountInfoObject[["subscriptions"]] <-
          lapply(self$`subscriptions`, function(x) x$toJSON())
      }
      if (!is.null(self$`activeSubscriptionId`)) {
        AccountInfoObject[["activeSubscriptionId"]] <-
          self$`activeSubscriptionId`
      }
      AccountInfoObject
    },
    #' Deserialize JSON string into an instance of AccountInfo
    #'
    #' @description
    #' Deserialize JSON string into an instance of AccountInfo
    #'
    #' @param input_json the JSON input
    #' @return the instance of AccountInfo
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`userID`)) {
        self$`userID` <- this_object$`userID`
      }
      if (!is.null(this_object$`username`)) {
        self$`username` <- this_object$`username`
      }
      if (!is.null(this_object$`userEmail`)) {
        self$`userEmail` <- this_object$`userEmail`
      }
      if (!is.null(this_object$`gravatarURL`)) {
        self$`gravatarURL` <- this_object$`gravatarURL`
      }
      if (!is.null(this_object$`subscriptions`)) {
        self$`subscriptions` <- ApiClient$new()$deserializeObj(this_object$`subscriptions`, "array[Subscription]", loadNamespace("Rsirius"))
      }
      if (!is.null(this_object$`activeSubscriptionId`)) {
        self$`activeSubscriptionId` <- this_object$`activeSubscriptionId`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return AccountInfo in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`userID`)) {
          sprintf(
          '"userID":
            "%s"
                    ',
          self$`userID`
          )
        },
        if (!is.null(self$`username`)) {
          sprintf(
          '"username":
            "%s"
                    ',
          self$`username`
          )
        },
        if (!is.null(self$`userEmail`)) {
          sprintf(
          '"userEmail":
            "%s"
                    ',
          self$`userEmail`
          )
        },
        if (!is.null(self$`gravatarURL`)) {
          sprintf(
          '"gravatarURL":
            "%s"
                    ',
          self$`gravatarURL`
          )
        },
        if (!is.null(self$`subscriptions`)) {
          sprintf(
          '"subscriptions":
          [%s]
',
          paste(sapply(self$`subscriptions`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        },
        if (!is.null(self$`activeSubscriptionId`)) {
          sprintf(
          '"activeSubscriptionId":
            "%s"
                    ',
          self$`activeSubscriptionId`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of AccountInfo
    #'
    #' @description
    #' Deserialize JSON string into an instance of AccountInfo
    #'
    #' @param input_json the JSON input
    #' @return the instance of AccountInfo
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`userID` <- this_object$`userID`
      self$`username` <- this_object$`username`
      self$`userEmail` <- this_object$`userEmail`
      self$`gravatarURL` <- this_object$`gravatarURL`
      self$`subscriptions` <- ApiClient$new()$deserializeObj(this_object$`subscriptions`, "array[Subscription]", loadNamespace("Rsirius"))
      self$`activeSubscriptionId` <- this_object$`activeSubscriptionId`
      self
    },
    #' Validate JSON input with respect to AccountInfo
    #'
    #' @description
    #' Validate JSON input with respect to AccountInfo and throw an exception if invalid
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
    #' @return String representation of AccountInfo
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
# AccountInfo$unlock()
#
## Below is an example to define the print fnuction
# AccountInfo$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AccountInfo$lock()

