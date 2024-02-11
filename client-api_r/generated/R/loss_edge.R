#' Create a new LossEdge
#'
#' @description
#' 
#'
#' @docType class
#' @title LossEdge
#' @description LossEdge Class
#' @format An \code{R6Class} generator object
#' @field sourceFragment  \link{FragmentNode} [optional]
#' @field targetFragment  \link{FragmentNode} [optional]
#' @field molecularFormula  character [optional]
#' @field score  numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
LossEdge <- R6::R6Class(
  "LossEdge",
  public = list(
    `sourceFragment` = NULL,
    `targetFragment` = NULL,
    `molecularFormula` = NULL,
    `score` = NULL,
    #' Initialize a new LossEdge class.
    #'
    #' @description
    #' Initialize a new LossEdge class.
    #'
    #' @param sourceFragment sourceFragment
    #' @param targetFragment targetFragment
    #' @param molecularFormula molecularFormula
    #' @param score score
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`sourceFragment` = NULL, `targetFragment` = NULL, `molecularFormula` = NULL, `score` = NULL, ...) {
      if (!is.null(`sourceFragment`)) {
        stopifnot(R6::is.R6(`sourceFragment`))
        self$`sourceFragment` <- `sourceFragment`
      }
      if (!is.null(`targetFragment`)) {
        stopifnot(R6::is.R6(`targetFragment`))
        self$`targetFragment` <- `targetFragment`
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
      if (!is.null(self$`sourceFragment`)) {
        LossEdgeObject[["sourceFragment"]] <-
          self$`sourceFragment`$toJSON()
      }
      if (!is.null(self$`targetFragment`)) {
        LossEdgeObject[["targetFragment"]] <-
          self$`targetFragment`$toJSON()
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
      if (!is.null(this_object$`sourceFragment`)) {
        `sourcefragment_object` <- FragmentNode$new()
        `sourcefragment_object`$fromJSON(jsonlite::toJSON(this_object$`sourceFragment`, auto_unbox = TRUE, digits = NA))
        self$`sourceFragment` <- `sourcefragment_object`
      }
      if (!is.null(this_object$`targetFragment`)) {
        `targetfragment_object` <- FragmentNode$new()
        `targetfragment_object`$fromJSON(jsonlite::toJSON(this_object$`targetFragment`, auto_unbox = TRUE, digits = NA))
        self$`targetFragment` <- `targetfragment_object`
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
        if (!is.null(self$`sourceFragment`)) {
          sprintf(
          '"sourceFragment":
          %s
          ',
          jsonlite::toJSON(self$`sourceFragment`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`targetFragment`)) {
          sprintf(
          '"targetFragment":
          %s
          ',
          jsonlite::toJSON(self$`targetFragment`$toJSON(), auto_unbox = TRUE, digits = NA)
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
            %d
                    ',
          self$`score`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
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
      self$`sourceFragment` <- FragmentNode$new()$fromJSON(jsonlite::toJSON(this_object$`sourceFragment`, auto_unbox = TRUE, digits = NA))
      self$`targetFragment` <- FragmentNode$new()$fromJSON(jsonlite::toJSON(this_object$`targetFragment`, auto_unbox = TRUE, digits = NA))
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

