#' Create a new PagedModelFormulaCandidate
#'
#' @description
#' PagedModelFormulaCandidate Class
#'
#' @docType class
#' @title PagedModelFormulaCandidate
#' @description PagedModelFormulaCandidate Class
#' @format An \code{R6Class} generator object
#' @field content  list(\link{FormulaCandidate}) [optional]
#' @field page  \link{PageMetadata} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PagedModelFormulaCandidate <- R6::R6Class(
  "PagedModelFormulaCandidate",
  public = list(
    `content` = NULL,
    `page` = NULL,

    #' @description
    #' Initialize a new PagedModelFormulaCandidate class.
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
    #' To JSON String
    #'
    #' @return PagedModelFormulaCandidate in JSON format
    toJSON = function() {
      PagedModelFormulaCandidateObject <- list()
      if (!is.null(self$`content`)) {
        PagedModelFormulaCandidateObject[["content"]] <-
          lapply(self$`content`, function(x) x$toJSON())
      }
      if (!is.null(self$`page`)) {
        PagedModelFormulaCandidateObject[["page"]] <-
          self$`page`$toJSON()
      }
      PagedModelFormulaCandidateObject
    },

    #' @description
    #' Deserialize JSON string into an instance of PagedModelFormulaCandidate
    #'
    #' @param input_json the JSON input
    #' @return the instance of PagedModelFormulaCandidate
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`content`)) {
        self$`content` <- ApiClient$new()$deserializeObj(this_object$`content`, "array[FormulaCandidate]", loadNamespace("Rsirius"))
      }
      if (!is.null(this_object$`page`)) {
        `page_object` <- PageMetadata$new()
        `page_object`$fromJSON(jsonlite::toJSON(this_object$`page`, auto_unbox = TRUE, digits = NA))
        self$`page` <- `page_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return PagedModelFormulaCandidate in JSON format
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`content`)) {
          sprintf(
          '"content":
          [%s]
',
          paste(sapply(self$`content`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        },
        if (!is.null(self$`page`)) {
          sprintf(
          '"page":
          %s
          ',
          jsonlite::toJSON(self$`page`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },

    #' @description
    #' Deserialize JSON string into an instance of PagedModelFormulaCandidate
    #'
    #' @param input_json the JSON input
    #' @return the instance of PagedModelFormulaCandidate
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`content` <- ApiClient$new()$deserializeObj(this_object$`content`, "array[FormulaCandidate]", loadNamespace("Rsirius"))
      self$`page` <- PageMetadata$new()$fromJSON(jsonlite::toJSON(this_object$`page`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to PagedModelFormulaCandidate and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PagedModelFormulaCandidate
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
# PagedModelFormulaCandidate$unlock()
#
## Below is an example to define the print function
# PagedModelFormulaCandidate$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PagedModelFormulaCandidate$lock()

