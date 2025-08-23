#' Create a new Run
#'
#' @description
#' Run Class
#'
#' @docType class
#' @title Run
#' @description Run Class
#' @format An \code{R6Class} generator object
#' @field runId Identifier character [optional]
#' @field name Informative, human-readable name of this run character [optional]
#' @field source Source location character [optional]
#' @field chromatography  character [optional]
#' @field ionization  character [optional]
#' @field fragmentation  character [optional]
#' @field massAnalyzers  list(character) [optional]
#' @field tags Key: tagName, value: tag named list(\link{Tag}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Run <- R6::R6Class(
  "Run",
  public = list(
    `runId` = NULL,
    `name` = NULL,
    `source` = NULL,
    `chromatography` = NULL,
    `ionization` = NULL,
    `fragmentation` = NULL,
    `massAnalyzers` = NULL,
    `tags` = NULL,

    #' @description
    #' Initialize a new Run class.
    #'
    #' @param runId Identifier
    #' @param name Informative, human-readable name of this run
    #' @param source Source location
    #' @param chromatography chromatography
    #' @param ionization ionization
    #' @param fragmentation fragmentation
    #' @param massAnalyzers massAnalyzers
    #' @param tags Key: tagName, value: tag
    #' @param ... Other optional arguments.
    initialize = function(`runId` = NULL, `name` = NULL, `source` = NULL, `chromatography` = NULL, `ionization` = NULL, `fragmentation` = NULL, `massAnalyzers` = NULL, `tags` = NULL, ...) {
      if (!is.null(`runId`)) {
        if (!(is.character(`runId`) && length(`runId`) == 1)) {
          stop(paste("Error! Invalid data for `runId`. Must be a string:", `runId`))
        }
        self$`runId` <- `runId`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`source`)) {
        if (!(is.character(`source`) && length(`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", `source`))
        }
        self$`source` <- `source`
      }
      if (!is.null(`chromatography`)) {
        if (!(is.character(`chromatography`) && length(`chromatography`) == 1)) {
          stop(paste("Error! Invalid data for `chromatography`. Must be a string:", `chromatography`))
        }
        self$`chromatography` <- `chromatography`
      }
      if (!is.null(`ionization`)) {
        if (!(is.character(`ionization`) && length(`ionization`) == 1)) {
          stop(paste("Error! Invalid data for `ionization`. Must be a string:", `ionization`))
        }
        self$`ionization` <- `ionization`
      }
      if (!is.null(`fragmentation`)) {
        if (!(is.character(`fragmentation`) && length(`fragmentation`) == 1)) {
          stop(paste("Error! Invalid data for `fragmentation`. Must be a string:", `fragmentation`))
        }
        self$`fragmentation` <- `fragmentation`
      }
      if (!is.null(`massAnalyzers`)) {
        stopifnot(is.vector(`massAnalyzers`), length(`massAnalyzers`) != 0)
        sapply(`massAnalyzers`, function(x) stopifnot(is.character(x)))
        self$`massAnalyzers` <- `massAnalyzers`
      }
      if (!is.null(`tags`)) {
        stopifnot(is.vector(`tags`), length(`tags`) != 0)
        sapply(`tags`, function(x) stopifnot(R6::is.R6(x)))
        self$`tags` <- `tags`
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
    #' @return Run as a base R list.
    #' @examples
    #' # convert array of Run (x) to a data frame
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
    #' Convert Run to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      RunObject <- list()
      if (!is.null(self$`runId`)) {
        RunObject[["runId"]] <-
          self$`runId`
      }
      if (!is.null(self$`name`)) {
        RunObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`source`)) {
        RunObject[["source"]] <-
          self$`source`
      }
      if (!is.null(self$`chromatography`)) {
        RunObject[["chromatography"]] <-
          self$`chromatography`
      }
      if (!is.null(self$`ionization`)) {
        RunObject[["ionization"]] <-
          self$`ionization`
      }
      if (!is.null(self$`fragmentation`)) {
        RunObject[["fragmentation"]] <-
          self$`fragmentation`
      }
      if (!is.null(self$`massAnalyzers`)) {
        RunObject[["massAnalyzers"]] <-
          self$`massAnalyzers`
      }
      if (!is.null(self$`tags`)) {
        RunObject[["tags"]] <-
          lapply(self$`tags`, function(x) x$toSimpleType())
      }
      return(RunObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of Run
    #'
    #' @param input_json the JSON input
    #' @return the instance of Run
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`runId`)) {
        self$`runId` <- this_object$`runId`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`source`)) {
        self$`source` <- this_object$`source`
      }
      if (!is.null(this_object$`chromatography`)) {
        self$`chromatography` <- this_object$`chromatography`
      }
      if (!is.null(this_object$`ionization`)) {
        self$`ionization` <- this_object$`ionization`
      }
      if (!is.null(this_object$`fragmentation`)) {
        self$`fragmentation` <- this_object$`fragmentation`
      }
      if (!is.null(this_object$`massAnalyzers`)) {
        self$`massAnalyzers` <- ApiClient$new()$deserializeObj(this_object$`massAnalyzers`, "array[character]", loadNamespace("Rsirius"))
      }
      if (!is.null(this_object$`tags`)) {
        self$`tags` <- ApiClient$new()$deserializeObj(this_object$`tags`, "map(Tag)", loadNamespace("Rsirius"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Run in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Run
    #'
    #' @param input_json the JSON input
    #' @return the instance of Run
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`runId` <- this_object$`runId`
      self$`name` <- this_object$`name`
      self$`source` <- this_object$`source`
      self$`chromatography` <- this_object$`chromatography`
      self$`ionization` <- this_object$`ionization`
      self$`fragmentation` <- this_object$`fragmentation`
      self$`massAnalyzers` <- ApiClient$new()$deserializeObj(this_object$`massAnalyzers`, "array[character]", loadNamespace("Rsirius"))
      self$`tags` <- ApiClient$new()$deserializeObj(this_object$`tags`, "map(Tag)", loadNamespace("Rsirius"))
      self
    },

    #' @description
    #' Validate JSON input with respect to Run and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Run
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
# Run$unlock()
#
## Below is an example to define the print function
# Run$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Run$lock()

