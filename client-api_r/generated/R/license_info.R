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

    #' @description
    #' Initialize a new LicenseInfo class.
    #'
    #' @param userEmail Email address of the user account this license information belongs to.
    #' @param userId User ID (uid) of the user account this license information belongs to.
    #' @param subscription subscription
    #' @param consumables consumables
    #' @param terms terms
    #' @param ... Other optional arguments.
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

    #' @description
    #' Convert to an R object. This method is deprecated. Use `toSimpleType()` instead.
    toJSON = function() {
      .Deprecated(new = "toSimpleType", msg = "Use the '$toSimpleType()' method instead since that is more clearly named. Use '$toJSONString()' to get a JSON string")
      return(self$toSimpleType())
    },

    #' @description
    #' Convert to a List
    #'
    #' Convert the R6 object to a list to work more easily with other tooling.
    #'
    #' @return LicenseInfo as a base R list.
    #' @examples
    #' # convert array of LicenseInfo (x) to a data frame
    #' \dontrun{
    #' library(purrr)
    #' library(tibble)
    #' df <- x |> map(\(y)y$toList()) |> map(as_tibble) |> list_rbind()
    #' df
    #' }
    toList = function() {
      return(self$toSimpleType())
    },

    #' @description
    #' Convert LicenseInfo to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
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
          self$`subscription`$toSimpleType()
      }
      if (!is.null(self$`consumables`)) {
        LicenseInfoObject[["consumables"]] <-
          self$`consumables`$toSimpleType()
      }
      if (!is.null(self$`terms`)) {
        LicenseInfoObject[["terms"]] <-
          lapply(self$`terms`, function(x) x$toSimpleType())
      }
      return(LicenseInfoObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of LicenseInfo
    #'
    #' @param input_json the JSON input
    #' @return the instance of LicenseInfo
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
        `subscription_object`$fromJSON(jsonlite::toJSON(this_object$`subscription`, auto_unbox = TRUE, digits = NA, null = 'null'))
        self$`subscription` <- `subscription_object`
      }
      if (!is.null(this_object$`consumables`)) {
        `consumables_object` <- SubscriptionConsumables$new()
        `consumables_object`$fromJSON(jsonlite::toJSON(this_object$`consumables`, auto_unbox = TRUE, digits = NA, null = 'null'))
        self$`consumables` <- `consumables_object`
      }
      if (!is.null(this_object$`terms`)) {
        self$`terms` <- ApiClient$new()$deserializeObj(this_object$`terms`, "array[Term]", loadNamespace("Rsirius"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return LicenseInfo in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of LicenseInfo
    #'
    #' @param input_json the JSON input
    #' @return the instance of LicenseInfo
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`userEmail` <- this_object$`userEmail`
      self$`userId` <- this_object$`userId`
      self$`subscription` <- Subscription$new()$fromJSON(jsonlite::toJSON(this_object$`subscription`, auto_unbox = TRUE, digits = NA, null = 'null'))
      self$`consumables` <- SubscriptionConsumables$new()$fromJSON(jsonlite::toJSON(this_object$`consumables`, auto_unbox = TRUE, digits = NA, null = 'null'))
      self$`terms` <- ApiClient$new()$deserializeObj(this_object$`terms`, "array[Term]", loadNamespace("Rsirius"))
      self
    },

    #' @description
    #' Validate JSON input with respect to LicenseInfo and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of LicenseInfo
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
# LicenseInfo$unlock()
#
## Below is an example to define the print function
# LicenseInfo$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# LicenseInfo$lock()

