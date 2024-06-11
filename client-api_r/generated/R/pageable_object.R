#' Create a new PageableObject
#'
#' @description
#' PageableObject Class
#'
#' @docType class
#' @title PageableObject
#' @description PageableObject Class
#' @format An \code{R6Class} generator object
#' @field offset  integer [optional]
#' @field sort  \link{SortObject} [optional]
#' @field pageNumber  integer [optional]
#' @field pageSize  integer [optional]
#' @field paged  character [optional]
#' @field unpaged  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PageableObject <- R6::R6Class(
  "PageableObject",
  public = list(
    `offset` = NULL,
    `sort` = NULL,
    `pageNumber` = NULL,
    `pageSize` = NULL,
    `paged` = NULL,
    `unpaged` = NULL,
    #' Initialize a new PageableObject class.
    #'
    #' @description
    #' Initialize a new PageableObject class.
    #'
    #' @param offset offset
    #' @param sort sort
    #' @param pageNumber pageNumber
    #' @param pageSize pageSize
    #' @param paged paged
    #' @param unpaged unpaged
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`offset` = NULL, `sort` = NULL, `pageNumber` = NULL, `pageSize` = NULL, `paged` = NULL, `unpaged` = NULL, ...) {
      if (!is.null(`offset`)) {
        if (!(is.numeric(`offset`) && length(`offset`) == 1)) {
          stop(paste("Error! Invalid data for `offset`. Must be an integer:", `offset`))
        }
        self$`offset` <- `offset`
      }
      if (!is.null(`sort`)) {
        stopifnot(R6::is.R6(`sort`))
        self$`sort` <- `sort`
      }
      if (!is.null(`pageNumber`)) {
        if (!(is.numeric(`pageNumber`) && length(`pageNumber`) == 1)) {
          stop(paste("Error! Invalid data for `pageNumber`. Must be an integer:", `pageNumber`))
        }
        self$`pageNumber` <- `pageNumber`
      }
      if (!is.null(`pageSize`)) {
        if (!(is.numeric(`pageSize`) && length(`pageSize`) == 1)) {
          stop(paste("Error! Invalid data for `pageSize`. Must be an integer:", `pageSize`))
        }
        self$`pageSize` <- `pageSize`
      }
      if (!is.null(`paged`)) {
        if (!(is.logical(`paged`) && length(`paged`) == 1)) {
          stop(paste("Error! Invalid data for `paged`. Must be a boolean:", `paged`))
        }
        self$`paged` <- `paged`
      }
      if (!is.null(`unpaged`)) {
        if (!(is.logical(`unpaged`) && length(`unpaged`) == 1)) {
          stop(paste("Error! Invalid data for `unpaged`. Must be a boolean:", `unpaged`))
        }
        self$`unpaged` <- `unpaged`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return PageableObject in JSON format
    #' @export
    toJSON = function() {
      PageableObjectObject <- list()
      if (!is.null(self$`offset`)) {
        PageableObjectObject[["offset"]] <-
          self$`offset`
      }
      if (!is.null(self$`sort`)) {
        PageableObjectObject[["sort"]] <-
          if !is.numeric(self$`sort`$toJSON()) && (length(names(self$`sort`$toJSON())) == 0L && is.character(jsonlite::fromJSON(self$`sort`$toJSON()))) {
            jsonlite::fromJSON(self$`sort`$toJSON())
          } else {
            self$`sort`$toJSON()
          }
      }
      if (!is.null(self$`pageNumber`)) {
        PageableObjectObject[["pageNumber"]] <-
          self$`pageNumber`
      }
      if (!is.null(self$`pageSize`)) {
        PageableObjectObject[["pageSize"]] <-
          self$`pageSize`
      }
      if (!is.null(self$`paged`)) {
        PageableObjectObject[["paged"]] <-
          self$`paged`
      }
      if (!is.null(self$`unpaged`)) {
        PageableObjectObject[["unpaged"]] <-
          self$`unpaged`
      }
      PageableObjectObject
    },
    #' Deserialize JSON string into an instance of PageableObject
    #'
    #' @description
    #' Deserialize JSON string into an instance of PageableObject
    #'
    #' @param input_json the JSON input
    #' @return the instance of PageableObject
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`offset`)) {
        self$`offset` <- this_object$`offset`
      }
      if (!is.null(this_object$`sort`)) {
        `sort_object` <- SortObject$new()
        `sort_object`$fromJSON(jsonlite::toJSON(this_object$`sort`, auto_unbox = TRUE, digits = NA))
        self$`sort` <- `sort_object`
      }
      if (!is.null(this_object$`pageNumber`)) {
        self$`pageNumber` <- this_object$`pageNumber`
      }
      if (!is.null(this_object$`pageSize`)) {
        self$`pageSize` <- this_object$`pageSize`
      }
      if (!is.null(this_object$`paged`)) {
        self$`paged` <- this_object$`paged`
      }
      if (!is.null(this_object$`unpaged`)) {
        self$`unpaged` <- this_object$`unpaged`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return PageableObject in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`offset`)) {
          sprintf(
          '"offset":
            %d
                    ',
          self$`offset`
          )
        },
        if (!is.null(self$`sort`)) {
          sprintf(
          '"sort":
          %s
          ',
          jsonlite::toJSON(self$`sort`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`pageNumber`)) {
          sprintf(
          '"pageNumber":
            %d
                    ',
          self$`pageNumber`
          )
        },
        if (!is.null(self$`pageSize`)) {
          sprintf(
          '"pageSize":
            %d
                    ',
          self$`pageSize`
          )
        },
        if (!is.null(self$`paged`)) {
          sprintf(
          '"paged":
            %s
                    ',
          tolower(self$`paged`)
          )
        },
        if (!is.null(self$`unpaged`)) {
          sprintf(
          '"unpaged":
            %s
                    ',
          tolower(self$`unpaged`)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of PageableObject
    #'
    #' @description
    #' Deserialize JSON string into an instance of PageableObject
    #'
    #' @param input_json the JSON input
    #' @return the instance of PageableObject
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`offset` <- this_object$`offset`
      self$`sort` <- SortObject$new()$fromJSON(jsonlite::toJSON(this_object$`sort`, auto_unbox = TRUE, digits = NA))
      self$`pageNumber` <- this_object$`pageNumber`
      self$`pageSize` <- this_object$`pageSize`
      self$`paged` <- this_object$`paged`
      self$`unpaged` <- this_object$`unpaged`
      self
    },
    #' Validate JSON input with respect to PageableObject
    #'
    #' @description
    #' Validate JSON input with respect to PageableObject and throw an exception if invalid
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
    #' @return String representation of PageableObject
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
# PageableObject$unlock()
#
## Below is an example to define the print function
# PageableObject$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PageableObject$lock()

