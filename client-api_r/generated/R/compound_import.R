#' Create a new CompoundImport
#'
#' @description
#' CompoundImport Class
#'
#' @docType class
#' @title CompoundImport
#' @description CompoundImport Class
#' @format An \code{R6Class} generator object
#' @field name Some (optional) human-readable name character [optional]
#' @field features The features this compound consists of. list(\link{FeatureImport})
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CompoundImport <- R6::R6Class(
  "CompoundImport",
  public = list(
    `name` = NULL,
    `features` = NULL,
    #' Initialize a new CompoundImport class.
    #'
    #' @description
    #' Initialize a new CompoundImport class.
    #'
    #' @param features The features this compound consists of.
    #' @param name Some (optional) human-readable name
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`features`, `name` = NULL, ...) {
      if (!missing(`features`)) {
        stopifnot(is.vector(`features`), length(`features`) != 0)
        sapply(`features`, function(x) stopifnot(R6::is.R6(x)))
        self$`features` <- `features`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return CompoundImport in JSON format
    #' @export
    toJSON = function() {
      CompoundImportObject <- list()
      if (!is.null(self$`name`)) {
        CompoundImportObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`features`)) {
        CompoundImportObject[["features"]] <-
          lapply(self$`features`, function(x) x$toJSON())
      }
      CompoundImportObject
    },
    #' Deserialize JSON string into an instance of CompoundImport
    #'
    #' @description
    #' Deserialize JSON string into an instance of CompoundImport
    #'
    #' @param input_json the JSON input
    #' @return the instance of CompoundImport
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`features`)) {
        self$`features` <- ApiClient$new()$deserializeObj(this_object$`features`, "array[FeatureImport]", loadNamespace("Rsirius"))
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return CompoundImport in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`name`)) {
          sprintf(
          '"name":
            "%s"
                    ',
          self$`name`
          )
        },
        if (!is.null(self$`features`)) {
          sprintf(
          '"features":
          [%s]
',
          paste(sapply(self$`features`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of CompoundImport
    #'
    #' @description
    #' Deserialize JSON string into an instance of CompoundImport
    #'
    #' @param input_json the JSON input
    #' @return the instance of CompoundImport
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name` <- this_object$`name`
      self$`features` <- ApiClient$new()$deserializeObj(this_object$`features`, "array[FeatureImport]", loadNamespace("Rsirius"))
      self
    },
    #' Validate JSON input with respect to CompoundImport
    #'
    #' @description
    #' Validate JSON input with respect to CompoundImport and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `features`
      if (!is.null(input_json$`features`)) {
        stopifnot(is.vector(input_json$`features`), length(input_json$`features`) != 0)
        tmp <- sapply(input_json$`features`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CompoundImport: the required field `features` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CompoundImport
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
      # check if the required `features` is null
      if (is.null(self$`features`)) {
        return(FALSE)
      }

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
      # check if the required `features` is null
      if (is.null(self$`features`)) {
        invalid_fields["features"] <- "Non-nullable required field `features` cannot be null."
      }

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
# CompoundImport$unlock()
#
## Below is an example to define the print function
# CompoundImport$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CompoundImport$lock()

