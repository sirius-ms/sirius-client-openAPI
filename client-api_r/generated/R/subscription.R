#' Create a new Subscription
#'
#' @description
#' Subscription Class
#'
#' @docType class
#' @title Subscription
#' @description Subscription Class
#' @format An \code{R6Class} generator object
#' @field sid Unique identifier of this subscription character [optional]
#' @field subscriberId ID of the owner of the subscription.  This can be the ID of any SubscriptionOwner (e.g.  Group or  User)  depending on the level on which a subscription should be is valid. character [optional]
#' @field subscriberName Optional name of the owner of this subscription character [optional]
#' @field expirationDate  character [optional]
#' @field startDate  character [optional]
#' @field countQueries  character [optional]
#' @field instanceLimit Limit of instances (features) that can be computed with this subscription integer [optional]
#' @field instanceHashRecordingTime Hash is used to allow recomputing identical data without increasing counted instances (features).  The recording time is the amount of time an instance is memorized is integer [optional]
#' @field maxQueriesPerInstance Maximum number of queries (e.g. prediction) that can be performed  for one instance before it is counted another time. integer [optional]
#' @field maxUserAccounts  integer [optional]
#' @field serviceUrl  character [optional]
#' @field description  character [optional]
#' @field name  character [optional]
#' @field tos  character [optional]
#' @field pp  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Subscription <- R6::R6Class(
  "Subscription",
  public = list(
    `sid` = NULL,
    `subscriberId` = NULL,
    `subscriberName` = NULL,
    `expirationDate` = NULL,
    `startDate` = NULL,
    `countQueries` = NULL,
    `instanceLimit` = NULL,
    `instanceHashRecordingTime` = NULL,
    `maxQueriesPerInstance` = NULL,
    `maxUserAccounts` = NULL,
    `serviceUrl` = NULL,
    `description` = NULL,
    `name` = NULL,
    `tos` = NULL,
    `pp` = NULL,
    #' Initialize a new Subscription class.
    #'
    #' @description
    #' Initialize a new Subscription class.
    #'
    #' @param sid Unique identifier of this subscription
    #' @param subscriberId ID of the owner of the subscription.  This can be the ID of any SubscriptionOwner (e.g.  Group or  User)  depending on the level on which a subscription should be is valid.
    #' @param subscriberName Optional name of the owner of this subscription
    #' @param expirationDate expirationDate
    #' @param startDate startDate
    #' @param countQueries countQueries
    #' @param instanceLimit Limit of instances (features) that can be computed with this subscription
    #' @param instanceHashRecordingTime Hash is used to allow recomputing identical data without increasing counted instances (features).  The recording time is the amount of time an instance is memorized is
    #' @param maxQueriesPerInstance Maximum number of queries (e.g. prediction) that can be performed  for one instance before it is counted another time.
    #' @param maxUserAccounts maxUserAccounts
    #' @param serviceUrl serviceUrl
    #' @param description description
    #' @param name name
    #' @param tos tos
    #' @param pp pp
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`sid` = NULL, `subscriberId` = NULL, `subscriberName` = NULL, `expirationDate` = NULL, `startDate` = NULL, `countQueries` = NULL, `instanceLimit` = NULL, `instanceHashRecordingTime` = NULL, `maxQueriesPerInstance` = NULL, `maxUserAccounts` = NULL, `serviceUrl` = NULL, `description` = NULL, `name` = NULL, `tos` = NULL, `pp` = NULL, ...) {
      if (!is.null(`sid`)) {
        if (!(is.character(`sid`) && length(`sid`) == 1)) {
          stop(paste("Error! Invalid data for `sid`. Must be a string:", `sid`))
        }
        self$`sid` <- `sid`
      }
      if (!is.null(`subscriberId`)) {
        if (!(is.character(`subscriberId`) && length(`subscriberId`) == 1)) {
          stop(paste("Error! Invalid data for `subscriberId`. Must be a string:", `subscriberId`))
        }
        self$`subscriberId` <- `subscriberId`
      }
      if (!is.null(`subscriberName`)) {
        if (!(is.character(`subscriberName`) && length(`subscriberName`) == 1)) {
          stop(paste("Error! Invalid data for `subscriberName`. Must be a string:", `subscriberName`))
        }
        self$`subscriberName` <- `subscriberName`
      }
      if (!is.null(`expirationDate`)) {
        if (!is.character(`expirationDate`)) {
          stop(paste("Error! Invalid data for `expirationDate`. Must be a string:", `expirationDate`))
        }
        self$`expirationDate` <- `expirationDate`
      }
      if (!is.null(`startDate`)) {
        if (!is.character(`startDate`)) {
          stop(paste("Error! Invalid data for `startDate`. Must be a string:", `startDate`))
        }
        self$`startDate` <- `startDate`
      }
      if (!is.null(`countQueries`)) {
        if (!(is.logical(`countQueries`) && length(`countQueries`) == 1)) {
          stop(paste("Error! Invalid data for `countQueries`. Must be a boolean:", `countQueries`))
        }
        self$`countQueries` <- `countQueries`
      }
      if (!is.null(`instanceLimit`)) {
        if (!(is.numeric(`instanceLimit`) && length(`instanceLimit`) == 1)) {
          stop(paste("Error! Invalid data for `instanceLimit`. Must be an integer:", `instanceLimit`))
        }
        self$`instanceLimit` <- `instanceLimit`
      }
      if (!is.null(`instanceHashRecordingTime`)) {
        if (!(is.numeric(`instanceHashRecordingTime`) && length(`instanceHashRecordingTime`) == 1)) {
          stop(paste("Error! Invalid data for `instanceHashRecordingTime`. Must be an integer:", `instanceHashRecordingTime`))
        }
        self$`instanceHashRecordingTime` <- `instanceHashRecordingTime`
      }
      if (!is.null(`maxQueriesPerInstance`)) {
        if (!(is.numeric(`maxQueriesPerInstance`) && length(`maxQueriesPerInstance`) == 1)) {
          stop(paste("Error! Invalid data for `maxQueriesPerInstance`. Must be an integer:", `maxQueriesPerInstance`))
        }
        self$`maxQueriesPerInstance` <- `maxQueriesPerInstance`
      }
      if (!is.null(`maxUserAccounts`)) {
        if (!(is.numeric(`maxUserAccounts`) && length(`maxUserAccounts`) == 1)) {
          stop(paste("Error! Invalid data for `maxUserAccounts`. Must be an integer:", `maxUserAccounts`))
        }
        self$`maxUserAccounts` <- `maxUserAccounts`
      }
      if (!is.null(`serviceUrl`)) {
        if (!(is.character(`serviceUrl`) && length(`serviceUrl`) == 1)) {
          stop(paste("Error! Invalid data for `serviceUrl`. Must be a string:", `serviceUrl`))
        }
        self$`serviceUrl` <- `serviceUrl`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`tos`)) {
        if (!(is.character(`tos`) && length(`tos`) == 1)) {
          stop(paste("Error! Invalid data for `tos`. Must be a string:", `tos`))
        }
        self$`tos` <- `tos`
      }
      if (!is.null(`pp`)) {
        if (!(is.character(`pp`) && length(`pp`) == 1)) {
          stop(paste("Error! Invalid data for `pp`. Must be a string:", `pp`))
        }
        self$`pp` <- `pp`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return Subscription in JSON format
    #' @export
    toJSON = function() {
      SubscriptionObject <- list()
      if (!is.null(self$`sid`)) {
        SubscriptionObject[["sid"]] <-
          self$`sid`
      }
      if (!is.null(self$`subscriberId`)) {
        SubscriptionObject[["subscriberId"]] <-
          self$`subscriberId`
      }
      if (!is.null(self$`subscriberName`)) {
        SubscriptionObject[["subscriberName"]] <-
          self$`subscriberName`
      }
      if (!is.null(self$`expirationDate`)) {
        SubscriptionObject[["expirationDate"]] <-
          self$`expirationDate`
      }
      if (!is.null(self$`startDate`)) {
        SubscriptionObject[["startDate"]] <-
          self$`startDate`
      }
      if (!is.null(self$`countQueries`)) {
        SubscriptionObject[["countQueries"]] <-
          self$`countQueries`
      }
      if (!is.null(self$`instanceLimit`)) {
        SubscriptionObject[["instanceLimit"]] <-
          self$`instanceLimit`
      }
      if (!is.null(self$`instanceHashRecordingTime`)) {
        SubscriptionObject[["instanceHashRecordingTime"]] <-
          self$`instanceHashRecordingTime`
      }
      if (!is.null(self$`maxQueriesPerInstance`)) {
        SubscriptionObject[["maxQueriesPerInstance"]] <-
          self$`maxQueriesPerInstance`
      }
      if (!is.null(self$`maxUserAccounts`)) {
        SubscriptionObject[["maxUserAccounts"]] <-
          self$`maxUserAccounts`
      }
      if (!is.null(self$`serviceUrl`)) {
        SubscriptionObject[["serviceUrl"]] <-
          self$`serviceUrl`
      }
      if (!is.null(self$`description`)) {
        SubscriptionObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`name`)) {
        SubscriptionObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`tos`)) {
        SubscriptionObject[["tos"]] <-
          self$`tos`
      }
      if (!is.null(self$`pp`)) {
        SubscriptionObject[["pp"]] <-
          self$`pp`
      }
      SubscriptionObject
    },
    #' Deserialize JSON string into an instance of Subscription
    #'
    #' @description
    #' Deserialize JSON string into an instance of Subscription
    #'
    #' @param input_json the JSON input
    #' @return the instance of Subscription
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`sid`)) {
        self$`sid` <- this_object$`sid`
      }
      if (!is.null(this_object$`subscriberId`)) {
        self$`subscriberId` <- this_object$`subscriberId`
      }
      if (!is.null(this_object$`subscriberName`)) {
        self$`subscriberName` <- this_object$`subscriberName`
      }
      if (!is.null(this_object$`expirationDate`)) {
        self$`expirationDate` <- this_object$`expirationDate`
      }
      if (!is.null(this_object$`startDate`)) {
        self$`startDate` <- this_object$`startDate`
      }
      if (!is.null(this_object$`countQueries`)) {
        self$`countQueries` <- this_object$`countQueries`
      }
      if (!is.null(this_object$`instanceLimit`)) {
        self$`instanceLimit` <- this_object$`instanceLimit`
      }
      if (!is.null(this_object$`instanceHashRecordingTime`)) {
        self$`instanceHashRecordingTime` <- this_object$`instanceHashRecordingTime`
      }
      if (!is.null(this_object$`maxQueriesPerInstance`)) {
        self$`maxQueriesPerInstance` <- this_object$`maxQueriesPerInstance`
      }
      if (!is.null(this_object$`maxUserAccounts`)) {
        self$`maxUserAccounts` <- this_object$`maxUserAccounts`
      }
      if (!is.null(this_object$`serviceUrl`)) {
        self$`serviceUrl` <- this_object$`serviceUrl`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`tos`)) {
        self$`tos` <- this_object$`tos`
      }
      if (!is.null(this_object$`pp`)) {
        self$`pp` <- this_object$`pp`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return Subscription in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`sid`)) {
          sprintf(
          '"sid":
            "%s"
                    ',
          self$`sid`
          )
        },
        if (!is.null(self$`subscriberId`)) {
          sprintf(
          '"subscriberId":
            "%s"
                    ',
          self$`subscriberId`
          )
        },
        if (!is.null(self$`subscriberName`)) {
          sprintf(
          '"subscriberName":
            "%s"
                    ',
          self$`subscriberName`
          )
        },
        if (!is.null(self$`expirationDate`)) {
          sprintf(
          '"expirationDate":
            "%s"
                    ',
          self$`expirationDate`
          )
        },
        if (!is.null(self$`startDate`)) {
          sprintf(
          '"startDate":
            "%s"
                    ',
          self$`startDate`
          )
        },
        if (!is.null(self$`countQueries`)) {
          sprintf(
          '"countQueries":
            %s
                    ',
          tolower(self$`countQueries`)
          )
        },
        if (!is.null(self$`instanceLimit`)) {
          sprintf(
          '"instanceLimit":
            %f
                    ',
          self$`instanceLimit`
          )
        },
        if (!is.null(self$`instanceHashRecordingTime`)) {
          sprintf(
          '"instanceHashRecordingTime":
            %f
                    ',
          self$`instanceHashRecordingTime`
          )
        },
        if (!is.null(self$`maxQueriesPerInstance`)) {
          sprintf(
          '"maxQueriesPerInstance":
            %f
                    ',
          self$`maxQueriesPerInstance`
          )
        },
        if (!is.null(self$`maxUserAccounts`)) {
          sprintf(
          '"maxUserAccounts":
            %f
                    ',
          self$`maxUserAccounts`
          )
        },
        if (!is.null(self$`serviceUrl`)) {
          sprintf(
          '"serviceUrl":
            "%s"
                    ',
          self$`serviceUrl`
          )
        },
        if (!is.null(self$`description`)) {
          sprintf(
          '"description":
            "%s"
                    ',
          self$`description`
          )
        },
        if (!is.null(self$`name`)) {
          sprintf(
          '"name":
            "%s"
                    ',
          self$`name`
          )
        },
        if (!is.null(self$`tos`)) {
          sprintf(
          '"tos":
            "%s"
                    ',
          self$`tos`
          )
        },
        if (!is.null(self$`pp`)) {
          sprintf(
          '"pp":
            "%s"
                    ',
          self$`pp`
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
    #' Deserialize JSON string into an instance of Subscription
    #'
    #' @description
    #' Deserialize JSON string into an instance of Subscription
    #'
    #' @param input_json the JSON input
    #' @return the instance of Subscription
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`sid` <- this_object$`sid`
      self$`subscriberId` <- this_object$`subscriberId`
      self$`subscriberName` <- this_object$`subscriberName`
      self$`expirationDate` <- this_object$`expirationDate`
      self$`startDate` <- this_object$`startDate`
      self$`countQueries` <- this_object$`countQueries`
      self$`instanceLimit` <- this_object$`instanceLimit`
      self$`instanceHashRecordingTime` <- this_object$`instanceHashRecordingTime`
      self$`maxQueriesPerInstance` <- this_object$`maxQueriesPerInstance`
      self$`maxUserAccounts` <- this_object$`maxUserAccounts`
      self$`serviceUrl` <- this_object$`serviceUrl`
      self$`description` <- this_object$`description`
      self$`name` <- this_object$`name`
      self$`tos` <- this_object$`tos`
      self$`pp` <- this_object$`pp`
      self
    },
    #' Validate JSON input with respect to Subscription
    #'
    #' @description
    #' Validate JSON input with respect to Subscription and throw an exception if invalid
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
    #' @return String representation of Subscription
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
# Subscription$unlock()
#
## Below is an example to define the print function
# Subscription$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Subscription$lock()

