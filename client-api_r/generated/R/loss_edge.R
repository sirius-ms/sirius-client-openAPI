#' Create a new LossEdge
#'
#' @description
#' LossEdge Class
#'
#' @docType class
#' @title LossEdge
#' @description LossEdge Class
#' @format An \code{R6Class} generator object
#' @field sourceFragmentIdx  integer [optional]
#' @field targetFragmentIdx  integer [optional]
#' @field molecularFormula  character [optional]
#' @field score  numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
LossEdge <- R6::R6Class(
  "LossEdge",
  public = list(
    `sourceFragmentIdx` = NULL,
    `targetFragmentIdx` = NULL,
    `molecularFormula` = NULL,
    `score` = NULL,
    #' Initialize a new LossEdge class.
    #'
    #' @description
    #' Initialize a new LossEdge class.
    #'
    #' @param sourceFragmentIdx sourceFragmentIdx
    #' @param targetFragmentIdx targetFragmentIdx
    #' @param molecularFormula molecularFormula
    #' @param score score
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`sourceFragmentIdx` = NULL, `targetFragmentIdx` = NULL, `molecularFormula` = NULL, `score` = NULL, ...) {
      if (!is.null(`sourceFragmentIdx`)) {
        if (!(is.numeric(`sourceFragmentIdx`) && length(`sourceFragmentIdx`) == 1)) {
          stop(paste("Error! Invalid data for `sourceFragmentIdx`. Must be an integer:", `sourceFragmentIdx`))
        }
        self$`sourceFragmentIdx` <- `sourceFragmentIdx`
      }
      if (!is.null(`targetFragmentIdx`)) {
        if (!(is.numeric(`targetFragmentIdx`) && length(`targetFragmentIdx`) == 1)) {
          stop(paste("Error! Invalid data for `targetFragmentIdx`. Must be an integer:", `targetFragmentIdx`))
        }
        self$`targetFragmentIdx` <- `targetFragmentIdx`
      }
      if (!is.null(`molecularFormula`)) {
        if (!(is.character(`molecularFormula`) && length(`molecularFormula`) == 1)) {
          stop(paste("Error! Invalid data for `molecularFormula`. Must be a string:", `molecularFormula`))
        }
        self$`molecularFormula` <- `molecularFormula`
      }
      if (!is.null(`score`)) {
        if (!(is.numeric(`score`) && length(`score`) == 1)) {
          stop(paste("Error! Invalid data for `score`. Must be a number:", `score`))
        }
        self$`score` <- `score`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return LossEdge in JSON format
    #' @export
    toJSON = function() {
      LossEdgeObject <- list()
      if (!is.null(self$`sourceFragmentIdx`)) {
        LossEdgeObject[["sourceFragmentIdx"]] <-
          self$`sourceFragmentIdx`
      }
      if (!is.null(self$`targetFragmentIdx`)) {
        LossEdgeObject[["targetFragmentIdx"]] <-
          self$`targetFragmentIdx`
      }
      if (!is.null(self$`molecularFormula`)) {
        LossEdgeObject[["molecularFormula"]] <-
          self$`molecularFormula`
      }
      if (!is.null(self$`score`)) {
        LossEdgeObject[["score"]] <-
          self$`score`
      }
      LossEdgeObject
    },
    #' Deserialize JSON string into an instance of LossEdge
    #'
    #' @description
    #' Deserialize JSON string into an instance of LossEdge
    #'
    #' @param input_json the JSON input
    #' @return the instance of LossEdge
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`sourceFragmentIdx`)) {
        self$`sourceFragmentIdx` <- this_object$`sourceFragmentIdx`
      }
      if (!is.null(this_object$`targetFragmentIdx`)) {
        self$`targetFragmentIdx` <- this_object$`targetFragmentIdx`
      }
      if (!is.null(this_object$`molecularFormula`)) {
        self$`molecularFormula` <- this_object$`molecularFormula`
      }
      if (!is.null(this_object$`score`)) {
        self$`score` <- this_object$`score`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return LossEdge in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`sourceFragmentIdx`)) {
          sprintf(
          '"sourceFragmentIdx":
            %f
                    ',
          self$`sourceFragmentIdx`
          )
        },
        if (!is.null(self$`targetFragmentIdx`)) {
          sprintf(
          '"targetFragmentIdx":
            %f
                    ',
          self$`targetFragmentIdx`
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
        if (!is.null(self$`score`)) {
          sprintf(
          '"score":
            %f
                    ',
          self$`score`
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
    #' Deserialize JSON string into an instance of LossEdge
    #'
    #' @description
    #' Deserialize JSON string into an instance of LossEdge
    #'
    #' @param input_json the JSON input
    #' @return the instance of LossEdge
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`sourceFragmentIdx` <- this_object$`sourceFragmentIdx`
      self$`targetFragmentIdx` <- this_object$`targetFragmentIdx`
      self$`molecularFormula` <- this_object$`molecularFormula`
      self$`score` <- this_object$`score`
      self
    },
    #' Validate JSON input with respect to LossEdge
    #'
    #' @description
    #' Validate JSON input with respect to LossEdge and throw an exception if invalid
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
    #' @return String representation of LossEdge
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
# LossEdge$unlock()
#
## Below is an example to define the print function
# LossEdge$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# LossEdge$lock()

