#' Create a new PagedModelAlignedFeature
#'
#' @description
#' PagedModelAlignedFeature Class
#'
#' @docType class
#' @title PagedModelAlignedFeature
#' @description PagedModelAlignedFeature Class
#' @format An \code{R6Class} generator object
#' @field content  list(\link{AlignedFeature}) [optional]
#' @field page  \link{PageMetadata} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PagedModelAlignedFeature <- R6::R6Class(
  "PagedModelAlignedFeature",
  public = list(
    `content` = NULL,
    `page` = NULL,

    #' @description
    #' Initialize a new PagedModelAlignedFeature class.
    #'
    #' @param content content
    #' @param page page
    #' @param ... Other optional arguments.
    initialize = function(`content` = NULL, `page` = NULL, ...) {
      if (!is.null(`content`)) {
        stopifnot(is.vector(`content`), length(`content`) != 0)
        sapply(`content`, function(x) stopifnot(R6::is.R6(x)))
        self$`content` <- `content`
      }
      if (!is.null(`page`)) {
        stopifnot(R6::is.R6(`page`))
        self$`page` <- `page`
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
    #' @return PagedModelAlignedFeature as a base R list.
    #' @examples
    #' # convert array of PagedModelAlignedFeature (x) to a data frame
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
    #' Convert PagedModelAlignedFeature to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PagedModelAlignedFeatureObject <- list()
      if (!is.null(self$`content`)) {
        PagedModelAlignedFeatureObject[["content"]] <-
          lapply(self$`content`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`page`)) {
        PagedModelAlignedFeatureObject[["page"]] <-
          self$`page`$toSimpleType()
      }
      return(PagedModelAlignedFeatureObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of PagedModelAlignedFeature
    #'
    #' @param input_json the JSON input
    #' @return the instance of PagedModelAlignedFeature
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`content`)) {
        self$`content` <- ApiClient$new()$deserializeObj(this_object$`content`, "array[AlignedFeature]", loadNamespace("Rsirius"))
      }
      if (!is.null(this_object$`page`)) {
        `page_object` <- PageMetadata$new()
        `page_object`$fromJSON(jsonlite::toJSON(this_object$`page`, auto_unbox = TRUE, digits = NA, null = 'null'))
        self$`page` <- `page_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PagedModelAlignedFeature in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PagedModelAlignedFeature
    #'
    #' @param input_json the JSON input
    #' @return the instance of PagedModelAlignedFeature
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`content` <- ApiClient$new()$deserializeObj(this_object$`content`, "array[AlignedFeature]", loadNamespace("Rsirius"))
      self$`page` <- PageMetadata$new()$fromJSON(jsonlite::toJSON(this_object$`page`, auto_unbox = TRUE, digits = NA, null = 'null'))
      self
    },

    #' @description
    #' Validate JSON input with respect to PagedModelAlignedFeature and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PagedModelAlignedFeature
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
# PagedModelAlignedFeature$unlock()
#
## Below is an example to define the print function
# PagedModelAlignedFeature$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PagedModelAlignedFeature$lock()

