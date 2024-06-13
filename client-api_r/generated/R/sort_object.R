#' Create a new SortObject
#'
#' @description
#' SortObject Class
#'
#' @docType class
#' @title SortObject
#' @description SortObject Class
#' @format An \code{R6Class} generator object
#' @field empty  character [optional]
#' @field sorted  character [optional]
#' @field unsorted  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SortObject <- R6::R6Class(
  "SortObject",
  public = list(
    `empty` = NULL,
    `sorted` = NULL,
    `unsorted` = NULL,
    #' Initialize a new SortObject class.
    #'
    #' @description
    #' Initialize a new SortObject class.
    #'
    #' @param empty empty
    #' @param sorted sorted
    #' @param unsorted unsorted
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`empty` = NULL, `sorted` = NULL, `unsorted` = NULL, ...) {
      if (!is.null(`empty`)) {
        if (!(is.logical(`empty`) && length(`empty`) == 1)) {
          stop(paste("Error! Invalid data for `empty`. Must be a boolean:", `empty`))
        }
        self$`empty` <- `empty`
      }
      if (!is.null(`sorted`)) {
        if (!(is.logical(`sorted`) && length(`sorted`) == 1)) {
          stop(paste("Error! Invalid data for `sorted`. Must be a boolean:", `sorted`))
        }
        self$`sorted` <- `sorted`
      }
      if (!is.null(`unsorted`)) {
        if (!(is.logical(`unsorted`) && length(`unsorted`) == 1)) {
          stop(paste("Error! Invalid data for `unsorted`. Must be a boolean:", `unsorted`))
        }
        self$`unsorted` <- `unsorted`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return SortObject in JSON format
    #' @export
    toJSON = function() {
      SortObjectObject <- list()
      if (!is.null(self$`empty`)) {
        SortObjectObject[["empty"]] <-
          self$`empty`
      }
      if (!is.null(self$`sorted`)) {
        SortObjectObject[["sorted"]] <-
          self$`sorted`
      }
      if (!is.null(self$`unsorted`)) {
        SortObjectObject[["unsorted"]] <-
          self$`unsorted`
      }
      SortObjectObject
    },
    #' Deserialize JSON string into an instance of SortObject
    #'
    #' @description
    #' Deserialize JSON string into an instance of SortObject
    #'
    #' @param input_json the JSON input
    #' @return the instance of SortObject
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`empty`)) {
        self$`empty` <- this_object$`empty`
      }
      if (!is.null(this_object$`sorted`)) {
        self$`sorted` <- this_object$`sorted`
      }
      if (!is.null(this_object$`unsorted`)) {
        self$`unsorted` <- this_object$`unsorted`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return SortObject in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`empty`)) {
          sprintf(
          '"empty":
            %s
                    ',
          tolower(self$`empty`)
          )
        },
        if (!is.null(self$`sorted`)) {
          sprintf(
          '"sorted":
            %s
                    ',
          tolower(self$`sorted`)
          )
        },
        if (!is.null(self$`unsorted`)) {
          sprintf(
          '"unsorted":
            %s
                    ',
          tolower(self$`unsorted`)
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
    #' Deserialize JSON string into an instance of SortObject
    #'
    #' @description
    #' Deserialize JSON string into an instance of SortObject
    #'
    #' @param input_json the JSON input
    #' @return the instance of SortObject
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`empty` <- this_object$`empty`
      self$`sorted` <- this_object$`sorted`
      self$`unsorted` <- this_object$`unsorted`
      self
    },
    #' Validate JSON input with respect to SortObject
    #'
    #' @description
    #' Validate JSON input with respect to SortObject and throw an exception if invalid
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
    #' @return String representation of SortObject
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
# SortObject$unlock()
#
## Below is an example to define the print function
# SortObject$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SortObject$lock()

