#' Create a new FragmentNode
#'
#' @description
#' 
#'
#' @docType class
#' @title FragmentNode
#' @description FragmentNode Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field molecularFormula  character [optional]
#' @field ionType  character [optional]
#' @field massDeviationDa  numeric [optional]
#' @field massErrorPpm  numeric [optional]
#' @field score  numeric [optional]
#' @field intensity  numeric [optional]
#' @field mz  numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FragmentNode <- R6::R6Class(
  "FragmentNode",
  public = list(
    `id` = NULL,
    `molecularFormula` = NULL,
    `ionType` = NULL,
    `massDeviationDa` = NULL,
    `massErrorPpm` = NULL,
    `score` = NULL,
    `intensity` = NULL,
    `mz` = NULL,
    #' Initialize a new FragmentNode class.
    #'
    #' @description
    #' Initialize a new FragmentNode class.
    #'
    #' @param id id
    #' @param molecularFormula molecularFormula
    #' @param ionType ionType
    #' @param massDeviationDa massDeviationDa
    #' @param massErrorPpm massErrorPpm
    #' @param score score
    #' @param intensity intensity
    #' @param mz mz
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`id` = NULL, `molecularFormula` = NULL, `ionType` = NULL, `massDeviationDa` = NULL, `massErrorPpm` = NULL, `score` = NULL, `intensity` = NULL, `mz` = NULL, ...) {
      if (!is.null(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`molecularFormula`)) {
        if (!(is.character(`molecularFormula`) && length(`molecularFormula`) == 1)) {
          stop(paste("Error! Invalid data for `molecularFormula`. Must be a string:", `molecularFormula`))
        }
        self$`molecularFormula` <- `molecularFormula`
      }
      if (!is.null(`ionType`)) {
        if (!(is.character(`ionType`) && length(`ionType`) == 1)) {
          stop(paste("Error! Invalid data for `ionType`. Must be a string:", `ionType`))
        }
        self$`ionType` <- `ionType`
      }
      if (!is.null(`massDeviationDa`)) {
        if (!(is.numeric(`massDeviationDa`) && length(`massDeviationDa`) == 1)) {
          stop(paste("Error! Invalid data for `massDeviationDa`. Must be a number:", `massDeviationDa`))
        }
        self$`massDeviationDa` <- `massDeviationDa`
      }
      if (!is.null(`massErrorPpm`)) {
        if (!(is.numeric(`massErrorPpm`) && length(`massErrorPpm`) == 1)) {
          stop(paste("Error! Invalid data for `massErrorPpm`. Must be a number:", `massErrorPpm`))
        }
        self$`massErrorPpm` <- `massErrorPpm`
      }
      if (!is.null(`score`)) {
        if (!(is.numeric(`score`) && length(`score`) == 1)) {
          stop(paste("Error! Invalid data for `score`. Must be a number:", `score`))
        }
        self$`score` <- `score`
      }
      if (!is.null(`intensity`)) {
        if (!(is.numeric(`intensity`) && length(`intensity`) == 1)) {
          stop(paste("Error! Invalid data for `intensity`. Must be a number:", `intensity`))
        }
        self$`intensity` <- `intensity`
      }
      if (!is.null(`mz`)) {
        if (!(is.numeric(`mz`) && length(`mz`) == 1)) {
          stop(paste("Error! Invalid data for `mz`. Must be a number:", `mz`))
        }
        self$`mz` <- `mz`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return FragmentNode in JSON format
    #' @export
    toJSON = function() {
      FragmentNodeObject <- list()
      if (!is.null(self$`id`)) {
        FragmentNodeObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`molecularFormula`)) {
        FragmentNodeObject[["molecularFormula"]] <-
          self$`molecularFormula`
      }
      if (!is.null(self$`ionType`)) {
        FragmentNodeObject[["ionType"]] <-
          self$`ionType`
      }
      if (!is.null(self$`massDeviationDa`)) {
        FragmentNodeObject[["massDeviationDa"]] <-
          self$`massDeviationDa`
      }
      if (!is.null(self$`massErrorPpm`)) {
        FragmentNodeObject[["massErrorPpm"]] <-
          self$`massErrorPpm`
      }
      if (!is.null(self$`score`)) {
        FragmentNodeObject[["score"]] <-
          self$`score`
      }
      if (!is.null(self$`intensity`)) {
        FragmentNodeObject[["intensity"]] <-
          self$`intensity`
      }
      if (!is.null(self$`mz`)) {
        FragmentNodeObject[["mz"]] <-
          self$`mz`
      }
      FragmentNodeObject
    },
    #' Deserialize JSON string into an instance of FragmentNode
    #'
    #' @description
    #' Deserialize JSON string into an instance of FragmentNode
    #'
    #' @param input_json the JSON input
    #' @return the instance of FragmentNode
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`molecularFormula`)) {
        self$`molecularFormula` <- this_object$`molecularFormula`
      }
      if (!is.null(this_object$`ionType`)) {
        self$`ionType` <- this_object$`ionType`
      }
      if (!is.null(this_object$`massDeviationDa`)) {
        self$`massDeviationDa` <- this_object$`massDeviationDa`
      }
      if (!is.null(this_object$`massErrorPpm`)) {
        self$`massErrorPpm` <- this_object$`massErrorPpm`
      }
      if (!is.null(this_object$`score`)) {
        self$`score` <- this_object$`score`
      }
      if (!is.null(this_object$`intensity`)) {
        self$`intensity` <- this_object$`intensity`
      }
      if (!is.null(this_object$`mz`)) {
        self$`mz` <- this_object$`mz`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return FragmentNode in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`id`)) {
          sprintf(
          '"id":
            %d
                    ',
          self$`id`
          )
        },
        if (!is.null(self$`molecularFormula`)) {
          sprintf(
          '"molecularFormula":
            "%s"
                    ',
          self$`molecularFormula`
          )
        },
        if (!is.null(self$`ionType`)) {
          sprintf(
          '"ionType":
            "%s"
                    ',
          self$`ionType`
          )
        },
        if (!is.null(self$`massDeviationDa`)) {
          sprintf(
          '"massDeviationDa":
            %d
                    ',
          self$`massDeviationDa`
          )
        },
        if (!is.null(self$`massErrorPpm`)) {
          sprintf(
          '"massErrorPpm":
            %d
                    ',
          self$`massErrorPpm`
          )
        },
        if (!is.null(self$`score`)) {
          sprintf(
          '"score":
            %d
                    ',
          self$`score`
          )
        },
        if (!is.null(self$`intensity`)) {
          sprintf(
          '"intensity":
            %d
                    ',
          self$`intensity`
          )
        },
        if (!is.null(self$`mz`)) {
          sprintf(
          '"mz":
            %d
                    ',
          self$`mz`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of FragmentNode
    #'
    #' @description
    #' Deserialize JSON string into an instance of FragmentNode
    #'
    #' @param input_json the JSON input
    #' @return the instance of FragmentNode
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`molecularFormula` <- this_object$`molecularFormula`
      self$`ionType` <- this_object$`ionType`
      self$`massDeviationDa` <- this_object$`massDeviationDa`
      self$`massErrorPpm` <- this_object$`massErrorPpm`
      self$`score` <- this_object$`score`
      self$`intensity` <- this_object$`intensity`
      self$`mz` <- this_object$`mz`
      self
    },
    #' Validate JSON input with respect to FragmentNode
    #'
    #' @description
    #' Validate JSON input with respect to FragmentNode and throw an exception if invalid
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
    #' @return String representation of FragmentNode
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
# FragmentNode$unlock()
#
## Below is an example to define the print function
# FragmentNode$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# FragmentNode$lock()

