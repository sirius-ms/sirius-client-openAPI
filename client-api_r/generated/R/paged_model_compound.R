#' Create a new PagedModelCompound
#'
#' @description
#' PagedModelCompound Class
#'
#' @docType class
#' @title PagedModelCompound
#' @description PagedModelCompound Class
#' @format An \code{R6Class} generator object
#' @field content  list(\link{Compound}) [optional]
#' @field page  \link{PageMetadata} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PagedModelCompound <- R6::R6Class(
  "PagedModelCompound",
  public = list(
    `content` = NULL,
    `page` = NULL,
    #' Initialize a new PagedModelCompound class.
    #'
    #' @description
    #' Initialize a new PagedModelCompound class.
    #'
    #' @param content content
    #' @param page page
    #' @param ... Other optional arguments.
    #' @export
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
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return PagedModelCompound in JSON format
    #' @export
    toJSON = function() {
      PagedModelCompoundObject <- list()
      if (!is.null(self$`content`)) {
        PagedModelCompoundObject[["content"]] <-
          lapply(self$`content`, function(x) x$toJSON())
      }
      if (!is.null(self$`page`)) {
        PagedModelCompoundObject[["page"]] <-
          if (is.list(self$`page`$toJSON()) && length(self$`page`$toJSON()) == 0L){
            NULL
          } else if (length(names(self$`page`$toJSON())) == 0L && is.character(jsonlite::fromJSON(self$`page`$toJSON()))) {
            jsonlite::fromJSON(self$`page`$toJSON())
          } else {
            self$`page`$toJSON()
          }
      }
      PagedModelCompoundObject
    },
    #' Deserialize JSON string into an instance of PagedModelCompound
    #'
    #' @description
    #' Deserialize JSON string into an instance of PagedModelCompound
    #'
    #' @param input_json the JSON input
    #' @return the instance of PagedModelCompound
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`content`)) {
        self$`content` <- ApiClient$new()$deserializeObj(this_object$`content`, "array[Compound]", loadNamespace("Rsirius"))
      }
      if (!is.null(this_object$`page`)) {
        `page_object` <- PageMetadata$new()
        `page_object`$fromJSON(jsonlite::toJSON(this_object$`page`, auto_unbox = TRUE, digits = NA))
        self$`page` <- `page_object`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return PagedModelCompound in JSON format
    #' @export
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
      # remove c() occurences and reduce resulting double escaped quotes \"\" into \"
      jsoncontent <- gsub('\\\"c\\((.*?)\\\"\\)', '\\1', jsoncontent)
      # fix wrong serialization of "\"ENUM\"" to "ENUM"
      jsoncontent <- gsub("\\\\\"([A-Z]+)\\\\\"", "\\1", jsoncontent)
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of PagedModelCompound
    #'
    #' @description
    #' Deserialize JSON string into an instance of PagedModelCompound
    #'
    #' @param input_json the JSON input
    #' @return the instance of PagedModelCompound
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`content` <- ApiClient$new()$deserializeObj(this_object$`content`, "array[Compound]", loadNamespace("Rsirius"))
      self$`page` <- PageMetadata$new()$fromJSON(jsonlite::toJSON(this_object$`page`, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to PagedModelCompound
    #'
    #' @description
    #' Validate JSON input with respect to PagedModelCompound and throw an exception if invalid
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
    #' @return String representation of PagedModelCompound
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
# PagedModelCompound$unlock()
#
## Below is an example to define the print function
# PagedModelCompound$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PagedModelCompound$lock()

