#' Create a new AdductNetworkExperimental
#'
#' @description
#' EXPERIMENTAL: This schema is experimental and may be changed (or even removed) without notice until it is declared stable.
#'
#' @docType class
#' @title AdductNetworkExperimental
#' @description AdductNetworkExperimental Class
#' @format An \code{R6Class} generator object
#' @field nodes  list(\link{AdductNodeExperimental}) [optional]
#' @field edges  list(\link{AdductEdgeExperimental}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AdductNetworkExperimental <- R6::R6Class(
  "AdductNetworkExperimental",
  public = list(
    `nodes` = NULL,
    `edges` = NULL,
    #' Initialize a new AdductNetworkExperimental class.
    #'
    #' @description
    #' Initialize a new AdductNetworkExperimental class.
    #'
    #' @param nodes nodes
    #' @param edges edges
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`nodes` = NULL, `edges` = NULL, ...) {
      if (!is.null(`nodes`)) {
        stopifnot(is.vector(`nodes`), length(`nodes`) != 0)
        sapply(`nodes`, function(x) stopifnot(R6::is.R6(x)))
        self$`nodes` <- `nodes`
      }
      if (!is.null(`edges`)) {
        stopifnot(is.vector(`edges`), length(`edges`) != 0)
        sapply(`edges`, function(x) stopifnot(R6::is.R6(x)))
        self$`edges` <- `edges`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return AdductNetworkExperimental in JSON format
    #' @export
    toJSON = function() {
      AdductNetworkExperimentalObject <- list()
      if (!is.null(self$`nodes`)) {
        AdductNetworkExperimentalObject[["nodes"]] <-
          lapply(self$`nodes`, function(x) x$toJSON())
      }
      if (!is.null(self$`edges`)) {
        AdductNetworkExperimentalObject[["edges"]] <-
          lapply(self$`edges`, function(x) x$toJSON())
      }
      AdductNetworkExperimentalObject
    },
    #' Deserialize JSON string into an instance of AdductNetworkExperimental
    #'
    #' @description
    #' Deserialize JSON string into an instance of AdductNetworkExperimental
    #'
    #' @param input_json the JSON input
    #' @return the instance of AdductNetworkExperimental
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`nodes`)) {
        self$`nodes` <- ApiClient$new()$deserializeObj(this_object$`nodes`, "array[AdductNodeExperimental]", loadNamespace("Rsirius"))
      }
      if (!is.null(this_object$`edges`)) {
        self$`edges` <- ApiClient$new()$deserializeObj(this_object$`edges`, "array[AdductEdgeExperimental]", loadNamespace("Rsirius"))
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return AdductNetworkExperimental in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`nodes`)) {
          sprintf(
          '"nodes":
          [%s]
',
          paste(sapply(self$`nodes`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        },
        if (!is.null(self$`edges`)) {
          sprintf(
          '"edges":
          [%s]
',
          paste(sapply(self$`edges`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
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
    #' Deserialize JSON string into an instance of AdductNetworkExperimental
    #'
    #' @description
    #' Deserialize JSON string into an instance of AdductNetworkExperimental
    #'
    #' @param input_json the JSON input
    #' @return the instance of AdductNetworkExperimental
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`nodes` <- ApiClient$new()$deserializeObj(this_object$`nodes`, "array[AdductNodeExperimental]", loadNamespace("Rsirius"))
      self$`edges` <- ApiClient$new()$deserializeObj(this_object$`edges`, "array[AdductEdgeExperimental]", loadNamespace("Rsirius"))
      self
    },
    #' Validate JSON input with respect to AdductNetworkExperimental
    #'
    #' @description
    #' Validate JSON input with respect to AdductNetworkExperimental and throw an exception if invalid
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
    #' @return String representation of AdductNetworkExperimental
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
# AdductNetworkExperimental$unlock()
#
## Below is an example to define the print function
# AdductNetworkExperimental$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AdductNetworkExperimental$lock()

