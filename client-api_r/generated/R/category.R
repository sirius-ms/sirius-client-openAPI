#' Create a new Category
#'
#' @description
#' Category Class
#'
#' @docType class
#' @title Category
#' @description Category Class
#' @format An \code{R6Class} generator object
#' @field categoryName  character [optional]
#' @field overallQuality  \link{DataQuality} [optional]
#' @field items  list(\link{Item}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Category <- R6::R6Class(
  "Category",
  public = list(
    `categoryName` = NULL,
    `overallQuality` = NULL,
    `items` = NULL,
    #' Initialize a new Category class.
    #'
    #' @description
    #' Initialize a new Category class.
    #'
    #' @param categoryName categoryName
    #' @param overallQuality overallQuality
    #' @param items items
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`categoryName` = NULL, `overallQuality` = NULL, `items` = NULL, ...) {
      if (!is.null(`categoryName`)) {
        if (!(is.character(`categoryName`) && length(`categoryName`) == 1)) {
          stop(paste("Error! Invalid data for `categoryName`. Must be a string:", `categoryName`))
        }
        self$`categoryName` <- `categoryName`
      }
      if (!is.null(`overallQuality`)) {
        if (!(`overallQuality` %in% c())) {
          stop(paste("Error! \"", `overallQuality`, "\" cannot be assigned to `overallQuality`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`overallQuality`))
        self$`overallQuality` <- `overallQuality`
      }
      if (!is.null(`items`)) {
        stopifnot(is.vector(`items`), length(`items`) != 0)
        sapply(`items`, function(x) stopifnot(R6::is.R6(x)))
        self$`items` <- `items`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return Category in JSON format
    #' @export
    toJSON = function() {
      CategoryObject <- list()
      if (!is.null(self$`categoryName`)) {
        CategoryObject[["categoryName"]] <-
          self$`categoryName`
      }
      if (!is.null(self$`overallQuality`)) {
        CategoryObject[["overallQuality"]] <-
          if (is.list(self$`overallQuality`$toJSON()) && length(self$`overallQuality`$toJSON()) == 0L){
            NULL
          } else if (length(names(self$`overallQuality`$toJSON())) == 0L && is.character(jsonlite::fromJSON(self$`overallQuality`$toJSON()))) {
            jsonlite::fromJSON(self$`overallQuality`$toJSON())
          } else {
            self$`overallQuality`$toJSON()
          }
      }
      if (!is.null(self$`items`)) {
        CategoryObject[["items"]] <-
          lapply(self$`items`, function(x) x$toJSON())
      }
      CategoryObject
    },
    #' Deserialize JSON string into an instance of Category
    #'
    #' @description
    #' Deserialize JSON string into an instance of Category
    #'
    #' @param input_json the JSON input
    #' @return the instance of Category
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`categoryName`)) {
        self$`categoryName` <- this_object$`categoryName`
      }
      if (!is.null(this_object$`overallQuality`)) {
        `overallquality_object` <- DataQuality$new()
        `overallquality_object`$fromJSON(jsonlite::toJSON(this_object$`overallQuality`, auto_unbox = TRUE, digits = NA))
        self$`overallQuality` <- `overallquality_object`
      }
      if (!is.null(this_object$`items`)) {
        self$`items` <- ApiClient$new()$deserializeObj(this_object$`items`, "array[Item]", loadNamespace("Rsirius"))
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return Category in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`categoryName`)) {
          sprintf(
          '"categoryName":
            "%s"
                    ',
          self$`categoryName`
          )
        },
        if (!is.null(self$`overallQuality`)) {
          sprintf(
          '"overallQuality":
          %s
          ',
          jsonlite::toJSON(self$`overallQuality`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`items`)) {
          sprintf(
          '"items":
          [%s]
',
          paste(sapply(self$`items`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of Category
    #'
    #' @description
    #' Deserialize JSON string into an instance of Category
    #'
    #' @param input_json the JSON input
    #' @return the instance of Category
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`categoryName` <- this_object$`categoryName`
      self$`overallQuality` <- DataQuality$new()$fromJSON(jsonlite::toJSON(this_object$`overallQuality`, auto_unbox = TRUE, digits = NA))
      self$`items` <- ApiClient$new()$deserializeObj(this_object$`items`, "array[Item]", loadNamespace("Rsirius"))
      self
    },
    #' Validate JSON input with respect to Category
    #'
    #' @description
    #' Validate JSON input with respect to Category and throw an exception if invalid
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
    #' @return String representation of Category
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
# Category$unlock()
#
## Below is an example to define the print function
# Category$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Category$lock()

