#' Create a new LicenseInfo
#'
#' @description
#' LicenseInfo Class
#'
#' @docType class
#' @title LicenseInfo
#' @description LicenseInfo Class
#' @format An \code{R6Class} generator object
#' @field userEmail Email address of the user account this license information belongs to. character [optional]
#' @field userId User ID (uid) of the user account this license information belongs to. character [optional]
#' @field subscription  \link{Subscription} [optional]
#' @field consumables  \link{SubscriptionConsumables} [optional]
#' @field terms  list(\link{Term}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
LicenseInfo <- R6::R6Class(
  "LicenseInfo",
  public = list(
    `userEmail` = NULL,
    `userId` = NULL,
    `subscription` = NULL,
    `consumables` = NULL,
    `terms` = NULL,
    #' Initialize a new LicenseInfo class.
    #'
    #' @description
    #' Initialize a new LicenseInfo class.
    #'
    #' @param userEmail Email address of the user account this license information belongs to.
    #' @param userId User ID (uid) of the user account this license information belongs to.
    #' @param subscription subscription
    #' @param consumables consumables
    #' @param terms terms
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`userEmail` = NULL, `userId` = NULL, `subscription` = NULL, `consumables` = NULL, `terms` = NULL, ...) {
      if (!is.null(`userEmail`)) {
        if (!(is.character(`userEmail`) && length(`userEmail`) == 1)) {
          stop(paste("Error! Invalid data for `userEmail`. Must be a string:", `userEmail`))
        }
        self$`userEmail` <- `userEmail`
      }
      if (!is.null(`userId`)) {
        if (!(is.character(`userId`) && length(`userId`) == 1)) {
          stop(paste("Error! Invalid data for `userId`. Must be a string:", `userId`))
        }
        self$`userId` <- `userId`
      }
      if (!is.null(`subscription`)) {
        stopifnot(R6::is.R6(`subscription`))
        self$`subscription` <- `subscription`
      }
      if (!is.null(`consumables`)) {
        stopifnot(R6::is.R6(`consumables`))
        self$`consumables` <- `consumables`
      }
      if (!is.null(`terms`)) {
        stopifnot(is.vector(`terms`), length(`terms`) != 0)
        sapply(`terms`, function(x) stopifnot(R6::is.R6(x)))
        self$`terms` <- `terms`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return LicenseInfo in JSON format
    #' @export
    toJSON = function() {
      LicenseInfoObject <- list()
      if (!is.null(self$`userEmail`)) {
        LicenseInfoObject[["userEmail"]] <-
          self$`userEmail`
      }
      if (!is.null(self$`userId`)) {
        LicenseInfoObject[["userId"]] <-
          self$`userId`
      }
      if (!is.null(self$`subscription`)) {
        LicenseInfoObject[["subscription"]] <-
          if (is.list(self$`subscription`$toJSON()) && length(self$`subscription`$toJSON()) == 0L){
            NULL
          } else if (length(names(self$`subscription`$toJSON())) == 0L && is.character(jsonlite::fromJSON(self$`subscription`$toJSON()))) {
            jsonlite::fromJSON(self$`subscription`$toJSON())
          } else {
            self$`subscription`$toJSON()
          }
      }
      if (!is.null(self$`consumables`)) {
        LicenseInfoObject[["consumables"]] <-
          if (is.list(self$`consumables`$toJSON()) && length(self$`consumables`$toJSON()) == 0L){
            NULL
          } else if (length(names(self$`consumables`$toJSON())) == 0L && is.character(jsonlite::fromJSON(self$`consumables`$toJSON()))) {
            jsonlite::fromJSON(self$`consumables`$toJSON())
          } else {
            self$`consumables`$toJSON()
          }
      }
      if (!is.null(self$`terms`)) {
        LicenseInfoObject[["terms"]] <-
          lapply(self$`terms`, function(x) x$toJSON())
      }
      LicenseInfoObject
    },
    #' Deserialize JSON string into an instance of LicenseInfo
    #'
    #' @description
    #' Deserialize JSON string into an instance of LicenseInfo
    #'
    #' @param input_json the JSON input
    #' @return the instance of LicenseInfo
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`userEmail`)) {
        self$`userEmail` <- this_object$`userEmail`
      }
      if (!is.null(this_object$`userId`)) {
        self$`userId` <- this_object$`userId`
      }
      if (!is.null(this_object$`subscription`)) {
        `subscription_object` <- Subscription$new()
        `subscription_object`$fromJSON(jsonlite::toJSON(this_object$`subscription`, auto_unbox = TRUE, digits = NA))
        self$`subscription` <- `subscription_object`
      }
      if (!is.null(this_object$`consumables`)) {
        `consumables_object` <- SubscriptionConsumables$new()
        `consumables_object`$fromJSON(jsonlite::toJSON(this_object$`consumables`, auto_unbox = TRUE, digits = NA))
        self$`consumables` <- `consumables_object`
      }
      if (!is.null(this_object$`terms`)) {
        self$`terms` <- ApiClient$new()$deserializeObj(this_object$`terms`, "array[Term]", loadNamespace("Rsirius"))
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return LicenseInfo in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`userEmail`)) {
          sprintf(
          '"userEmail":
            "%s"
                    ',
          self$`userEmail`
          )
        },
        if (!is.null(self$`userId`)) {
          sprintf(
          '"userId":
            "%s"
                    ',
          self$`userId`
          )
        },
        if (!is.null(self$`subscription`)) {
          sprintf(
          '"subscription":
          %s
          ',
          jsonlite::toJSON(self$`subscription`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`consumables`)) {
          sprintf(
          '"consumables":
          %s
          ',
          jsonlite::toJSON(self$`consumables`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`terms`)) {
          sprintf(
          '"terms":
          [%s]
',
          paste(sapply(self$`terms`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      # remove c() occurences
      jsoncontent <- gsub('c\\((.*?)\\)', '\\1', jsoncontent)
      # reduce resulting double escaped quotes \"\" into \"
      jsoncontent <- gsub('\\\"\\\"+', '\\\"', jsoncontent)
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of LicenseInfo
    #'
    #' @description
    #' Deserialize JSON string into an instance of LicenseInfo
    #'
    #' @param input_json the JSON input
    #' @return the instance of LicenseInfo
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`userEmail` <- this_object$`userEmail`
      self$`userId` <- this_object$`userId`
      self$`subscription` <- Subscription$new()$fromJSON(jsonlite::toJSON(this_object$`subscription`, auto_unbox = TRUE, digits = NA))
      self$`consumables` <- SubscriptionConsumables$new()$fromJSON(jsonlite::toJSON(this_object$`consumables`, auto_unbox = TRUE, digits = NA))
      self$`terms` <- ApiClient$new()$deserializeObj(this_object$`terms`, "array[Term]", loadNamespace("Rsirius"))
      self
    },
    #' Validate JSON input with respect to LicenseInfo
    #'
    #' @description
    #' Validate JSON input with respect to LicenseInfo and throw an exception if invalid
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
    #' @return String representation of LicenseInfo
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
# LicenseInfo$unlock()
#
## Below is an example to define the print function
# LicenseInfo$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# LicenseInfo$lock()

