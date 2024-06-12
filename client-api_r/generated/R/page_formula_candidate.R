#' Create a new PageFormulaCandidate
#'
#' @description
#' PageFormulaCandidate Class
#'
#' @docType class
#' @title PageFormulaCandidate
#' @description PageFormulaCandidate Class
#' @format An \code{R6Class} generator object
#' @field totalPages  integer [optional]
#' @field totalElements  integer [optional]
#' @field first  character [optional]
#' @field last  character [optional]
#' @field size  integer [optional]
#' @field content  list(\link{FormulaCandidate}) [optional]
#' @field number  integer [optional]
#' @field sort  \link{SortObject} [optional]
#' @field numberOfElements  integer [optional]
#' @field pageable  \link{PageableObject} [optional]
#' @field empty  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PageFormulaCandidate <- R6::R6Class(
  "PageFormulaCandidate",
  public = list(
    `totalPages` = NULL,
    `totalElements` = NULL,
    `first` = NULL,
    `last` = NULL,
    `size` = NULL,
    `content` = NULL,
    `number` = NULL,
    `sort` = NULL,
    `numberOfElements` = NULL,
    `pageable` = NULL,
    `empty` = NULL,
    #' Initialize a new PageFormulaCandidate class.
    #'
    #' @description
    #' Initialize a new PageFormulaCandidate class.
    #'
    #' @param totalPages totalPages
    #' @param totalElements totalElements
    #' @param first first
    #' @param last last
    #' @param size size
    #' @param content content
    #' @param number number
    #' @param sort sort
    #' @param numberOfElements numberOfElements
    #' @param pageable pageable
    #' @param empty empty
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`totalPages` = NULL, `totalElements` = NULL, `first` = NULL, `last` = NULL, `size` = NULL, `content` = NULL, `number` = NULL, `sort` = NULL, `numberOfElements` = NULL, `pageable` = NULL, `empty` = NULL, ...) {
      if (!is.null(`totalPages`)) {
        if (!(is.numeric(`totalPages`) && length(`totalPages`) == 1)) {
          stop(paste("Error! Invalid data for `totalPages`. Must be an integer:", `totalPages`))
        }
        self$`totalPages` <- `totalPages`
      }
      if (!is.null(`totalElements`)) {
        if (!(is.numeric(`totalElements`) && length(`totalElements`) == 1)) {
          stop(paste("Error! Invalid data for `totalElements`. Must be an integer:", `totalElements`))
        }
        self$`totalElements` <- `totalElements`
      }
      if (!is.null(`first`)) {
        if (!(is.logical(`first`) && length(`first`) == 1)) {
          stop(paste("Error! Invalid data for `first`. Must be a boolean:", `first`))
        }
        self$`first` <- `first`
      }
      if (!is.null(`last`)) {
        if (!(is.logical(`last`) && length(`last`) == 1)) {
          stop(paste("Error! Invalid data for `last`. Must be a boolean:", `last`))
        }
        self$`last` <- `last`
      }
      if (!is.null(`size`)) {
        if (!(is.numeric(`size`) && length(`size`) == 1)) {
          stop(paste("Error! Invalid data for `size`. Must be an integer:", `size`))
        }
        self$`size` <- `size`
      }
      if (!is.null(`content`)) {
        stopifnot(is.vector(`content`), length(`content`) != 0)
        sapply(`content`, function(x) stopifnot(R6::is.R6(x)))
        self$`content` <- `content`
      }
      if (!is.null(`number`)) {
        if (!(is.numeric(`number`) && length(`number`) == 1)) {
          stop(paste("Error! Invalid data for `number`. Must be an integer:", `number`))
        }
        self$`number` <- `number`
      }
      if (!is.null(`sort`)) {
        stopifnot(R6::is.R6(`sort`))
        self$`sort` <- `sort`
      }
      if (!is.null(`numberOfElements`)) {
        if (!(is.numeric(`numberOfElements`) && length(`numberOfElements`) == 1)) {
          stop(paste("Error! Invalid data for `numberOfElements`. Must be an integer:", `numberOfElements`))
        }
        self$`numberOfElements` <- `numberOfElements`
      }
      if (!is.null(`pageable`)) {
        stopifnot(R6::is.R6(`pageable`))
        self$`pageable` <- `pageable`
      }
      if (!is.null(`empty`)) {
        if (!(is.logical(`empty`) && length(`empty`) == 1)) {
          stop(paste("Error! Invalid data for `empty`. Must be a boolean:", `empty`))
        }
        self$`empty` <- `empty`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return PageFormulaCandidate in JSON format
    #' @export
    toJSON = function() {
      PageFormulaCandidateObject <- list()
      if (!is.null(self$`totalPages`)) {
        PageFormulaCandidateObject[["totalPages"]] <-
          self$`totalPages`
      }
      if (!is.null(self$`totalElements`)) {
        PageFormulaCandidateObject[["totalElements"]] <-
          self$`totalElements`
      }
      if (!is.null(self$`first`)) {
        PageFormulaCandidateObject[["first"]] <-
          self$`first`
      }
      if (!is.null(self$`last`)) {
        PageFormulaCandidateObject[["last"]] <-
          self$`last`
      }
      if (!is.null(self$`size`)) {
        PageFormulaCandidateObject[["size"]] <-
          self$`size`
      }
      if (!is.null(self$`content`)) {
        PageFormulaCandidateObject[["content"]] <-
          lapply(self$`content`, function(x) x$toJSON())
      }
      if (!is.null(self$`number`)) {
        PageFormulaCandidateObject[["number"]] <-
          self$`number`
      }
      if (!is.null(self$`sort`)) {
        PageFormulaCandidateObject[["sort"]] <-
          if (is.list(self$`sort`$toJSON()) && length(self$`sort`$toJSON()) == 0L){
            NULL
          } else if (length(names(self$`sort`$toJSON())) == 0L && is.character(jsonlite::fromJSON(self$`sort`$toJSON()))) {
            jsonlite::fromJSON(self$`sort`$toJSON())
          } else {
            self$`sort`$toJSON()
          }
      }
      if (!is.null(self$`numberOfElements`)) {
        PageFormulaCandidateObject[["numberOfElements"]] <-
          self$`numberOfElements`
      }
      if (!is.null(self$`pageable`)) {
        PageFormulaCandidateObject[["pageable"]] <-
          if (is.list(self$`pageable`$toJSON()) && length(self$`pageable`$toJSON()) == 0L){
            NULL
          } else if (length(names(self$`pageable`$toJSON())) == 0L && is.character(jsonlite::fromJSON(self$`pageable`$toJSON()))) {
            jsonlite::fromJSON(self$`pageable`$toJSON())
          } else {
            self$`pageable`$toJSON()
          }
      }
      if (!is.null(self$`empty`)) {
        PageFormulaCandidateObject[["empty"]] <-
          self$`empty`
      }
      PageFormulaCandidateObject
    },
    #' Deserialize JSON string into an instance of PageFormulaCandidate
    #'
    #' @description
    #' Deserialize JSON string into an instance of PageFormulaCandidate
    #'
    #' @param input_json the JSON input
    #' @return the instance of PageFormulaCandidate
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`totalPages`)) {
        self$`totalPages` <- this_object$`totalPages`
      }
      if (!is.null(this_object$`totalElements`)) {
        self$`totalElements` <- this_object$`totalElements`
      }
      if (!is.null(this_object$`first`)) {
        self$`first` <- this_object$`first`
      }
      if (!is.null(this_object$`last`)) {
        self$`last` <- this_object$`last`
      }
      if (!is.null(this_object$`size`)) {
        self$`size` <- this_object$`size`
      }
      if (!is.null(this_object$`content`)) {
        self$`content` <- ApiClient$new()$deserializeObj(this_object$`content`, "array[FormulaCandidate]", loadNamespace("Rsirius"))
      }
      if (!is.null(this_object$`number`)) {
        self$`number` <- this_object$`number`
      }
      if (!is.null(this_object$`sort`)) {
        `sort_object` <- SortObject$new()
        `sort_object`$fromJSON(jsonlite::toJSON(this_object$`sort`, auto_unbox = TRUE, digits = NA))
        self$`sort` <- `sort_object`
      }
      if (!is.null(this_object$`numberOfElements`)) {
        self$`numberOfElements` <- this_object$`numberOfElements`
      }
      if (!is.null(this_object$`pageable`)) {
        `pageable_object` <- PageableObject$new()
        `pageable_object`$fromJSON(jsonlite::toJSON(this_object$`pageable`, auto_unbox = TRUE, digits = NA))
        self$`pageable` <- `pageable_object`
      }
      if (!is.null(this_object$`empty`)) {
        self$`empty` <- this_object$`empty`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return PageFormulaCandidate in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`totalPages`)) {
          sprintf(
          '"totalPages":
            %f
                    ',
          self$`totalPages`
          )
        },
        if (!is.null(self$`totalElements`)) {
          sprintf(
          '"totalElements":
            %f
                    ',
          self$`totalElements`
          )
        },
        if (!is.null(self$`first`)) {
          sprintf(
          '"first":
            %s
                    ',
          tolower(self$`first`)
          )
        },
        if (!is.null(self$`last`)) {
          sprintf(
          '"last":
            %s
                    ',
          tolower(self$`last`)
          )
        },
        if (!is.null(self$`size`)) {
          sprintf(
          '"size":
            %f
                    ',
          self$`size`
          )
        },
        if (!is.null(self$`content`)) {
          sprintf(
          '"content":
          [%s]
',
          paste(sapply(self$`content`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        },
        if (!is.null(self$`number`)) {
          sprintf(
          '"number":
            %f
                    ',
          self$`number`
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
        if (!is.null(self$`numberOfElements`)) {
          sprintf(
          '"numberOfElements":
            %f
                    ',
          self$`numberOfElements`
          )
        },
        if (!is.null(self$`pageable`)) {
          sprintf(
          '"pageable":
          %s
          ',
          jsonlite::toJSON(self$`pageable`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`empty`)) {
          sprintf(
          '"empty":
            %s
                    ',
          tolower(self$`empty`)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of PageFormulaCandidate
    #'
    #' @description
    #' Deserialize JSON string into an instance of PageFormulaCandidate
    #'
    #' @param input_json the JSON input
    #' @return the instance of PageFormulaCandidate
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`totalPages` <- this_object$`totalPages`
      self$`totalElements` <- this_object$`totalElements`
      self$`first` <- this_object$`first`
      self$`last` <- this_object$`last`
      self$`size` <- this_object$`size`
      self$`content` <- ApiClient$new()$deserializeObj(this_object$`content`, "array[FormulaCandidate]", loadNamespace("Rsirius"))
      self$`number` <- this_object$`number`
      self$`sort` <- SortObject$new()$fromJSON(jsonlite::toJSON(this_object$`sort`, auto_unbox = TRUE, digits = NA))
      self$`numberOfElements` <- this_object$`numberOfElements`
      self$`pageable` <- PageableObject$new()$fromJSON(jsonlite::toJSON(this_object$`pageable`, auto_unbox = TRUE, digits = NA))
      self$`empty` <- this_object$`empty`
      self
    },
    #' Validate JSON input with respect to PageFormulaCandidate
    #'
    #' @description
    #' Validate JSON input with respect to PageFormulaCandidate and throw an exception if invalid
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
    #' @return String representation of PageFormulaCandidate
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
# PageFormulaCandidate$unlock()
#
## Below is an example to define the print function
# PageFormulaCandidate$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PageFormulaCandidate$lock()

