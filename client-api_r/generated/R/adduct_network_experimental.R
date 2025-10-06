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

    #' @description
    #' Initialize a new AdductNetworkExperimental class.
    #'
    #' @param nodes nodes
    #' @param edges edges
    #' @param ... Other optional arguments.
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
    #' @return AdductNetworkExperimental as a base R list.
    #' @examples
    #' # convert array of AdductNetworkExperimental (x) to a data frame
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
    #' Convert AdductNetworkExperimental to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AdductNetworkExperimentalObject <- list()
      if (!is.null(self$`nodes`)) {
        AdductNetworkExperimentalObject[["nodes"]] <-
          lapply(self$`nodes`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`edges`)) {
        AdductNetworkExperimentalObject[["edges"]] <-
          lapply(self$`edges`, function(x) x$toSimpleType())
      }
      return(AdductNetworkExperimentalObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AdductNetworkExperimental
    #'
    #' @param input_json the JSON input
    #' @return the instance of AdductNetworkExperimental
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`nodes`)) {
        self$`nodes` <- ApiClient$new()$deserializeObj(this_object$`nodes`, "array[AdductNodeExperimental]", loadNamespace("RSirius"))
      }
      if (!is.null(this_object$`edges`)) {
        self$`edges` <- ApiClient$new()$deserializeObj(this_object$`edges`, "array[AdductEdgeExperimental]", loadNamespace("RSirius"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AdductNetworkExperimental in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AdductNetworkExperimental
    #'
    #' @param input_json the JSON input
    #' @return the instance of AdductNetworkExperimental
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`nodes` <- ApiClient$new()$deserializeObj(this_object$`nodes`, "array[AdductNodeExperimental]", loadNamespace("RSirius"))
      self$`edges` <- ApiClient$new()$deserializeObj(this_object$`edges`, "array[AdductEdgeExperimental]", loadNamespace("RSirius"))
      self
    },

    #' @description
    #' Validate JSON input with respect to AdductNetworkExperimental and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AdductNetworkExperimental
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
# AdductNetworkExperimental$unlock()
#
## Below is an example to define the print function
# AdductNetworkExperimental$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AdductNetworkExperimental$lock()

