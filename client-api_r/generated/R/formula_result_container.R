#' Create a new FormulaResultContainer
#'
#' @description
#' Container for formula level results that holds a unique identifier (molecular formula + adduct).  It can be extended/annotated with a list of results that are available for this formula candidate and their scores.  It can further be extended/annotated with the action formula candidate results.
#'
#' @docType class
#' @title FormulaResultContainer
#' @description FormulaResultContainer Class
#' @format An \code{R6Class} generator object
#' @field id Unique identifier of this formula candidate character [optional]
#' @field molecularFormula molecular formula of this formula candidate character [optional]
#' @field adduct Adduct of this formula candidate character [optional]
#' @field resultOverview  \link{ResultOverview} [optional]
#' @field candidate  \link{FormulaCandidate} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FormulaResultContainer <- R6::R6Class(
  "FormulaResultContainer",
  public = list(
    `id` = NULL,
    `molecularFormula` = NULL,
    `adduct` = NULL,
    `resultOverview` = NULL,
    `candidate` = NULL,
    #' Initialize a new FormulaResultContainer class.
    #'
    #' @description
    #' Initialize a new FormulaResultContainer class.
    #'
    #' @param id Unique identifier of this formula candidate
    #' @param molecularFormula molecular formula of this formula candidate
    #' @param adduct Adduct of this formula candidate
    #' @param resultOverview resultOverview
    #' @param candidate candidate
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`id` = NULL, `molecularFormula` = NULL, `adduct` = NULL, `resultOverview` = NULL, `candidate` = NULL, ...) {
      if (!is.null(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`molecularFormula`)) {
        if (!(is.character(`molecularFormula`) && length(`molecularFormula`) == 1)) {
          stop(paste("Error! Invalid data for `molecularFormula`. Must be a string:", `molecularFormula`))
        }
        self$`molecularFormula` <- `molecularFormula`
      }
      if (!is.null(`adduct`)) {
        if (!(is.character(`adduct`) && length(`adduct`) == 1)) {
          stop(paste("Error! Invalid data for `adduct`. Must be a string:", `adduct`))
        }
        self$`adduct` <- `adduct`
      }
      if (!is.null(`resultOverview`)) {
        stopifnot(R6::is.R6(`resultOverview`))
        self$`resultOverview` <- `resultOverview`
      }
      if (!is.null(`candidate`)) {
        stopifnot(R6::is.R6(`candidate`))
        self$`candidate` <- `candidate`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return FormulaResultContainer in JSON format
    #' @export
    toJSON = function() {
      FormulaResultContainerObject <- list()
      if (!is.null(self$`id`)) {
        FormulaResultContainerObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`molecularFormula`)) {
        FormulaResultContainerObject[["molecularFormula"]] <-
          self$`molecularFormula`
      }
      if (!is.null(self$`adduct`)) {
        FormulaResultContainerObject[["adduct"]] <-
          self$`adduct`
      }
      if (!is.null(self$`resultOverview`)) {
        FormulaResultContainerObject[["resultOverview"]] <-
          self$`resultOverview`$toJSON()
      }
      if (!is.null(self$`candidate`)) {
        FormulaResultContainerObject[["candidate"]] <-
          self$`candidate`$toJSON()
      }
      FormulaResultContainerObject
    },
    #' Deserialize JSON string into an instance of FormulaResultContainer
    #'
    #' @description
    #' Deserialize JSON string into an instance of FormulaResultContainer
    #'
    #' @param input_json the JSON input
    #' @return the instance of FormulaResultContainer
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`molecularFormula`)) {
        self$`molecularFormula` <- this_object$`molecularFormula`
      }
      if (!is.null(this_object$`adduct`)) {
        self$`adduct` <- this_object$`adduct`
      }
      if (!is.null(this_object$`resultOverview`)) {
        resultoverview_object <- ResultOverview$new()
        resultoverview_object$fromJSON(jsonlite::toJSON(this_object$resultOverview, auto_unbox = TRUE, digits = NA))
        self$`resultOverview` <- resultoverview_object
      }
      if (!is.null(this_object$`candidate`)) {
        candidate_object <- FormulaCandidate$new()
        candidate_object$fromJSON(jsonlite::toJSON(this_object$candidate, auto_unbox = TRUE, digits = NA))
        self$`candidate` <- candidate_object
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return FormulaResultContainer in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`id`)) {
          sprintf(
          '"id":
            "%s"
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
        if (!is.null(self$`adduct`)) {
          sprintf(
          '"adduct":
            "%s"
                    ',
          self$`adduct`
          )
        },
        if (!is.null(self$`resultOverview`)) {
          sprintf(
          '"resultOverview":
          %s
          ',
          jsonlite::toJSON(self$`resultOverview`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`candidate`)) {
          sprintf(
          '"candidate":
          %s
          ',
          jsonlite::toJSON(self$`candidate`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of FormulaResultContainer
    #'
    #' @description
    #' Deserialize JSON string into an instance of FormulaResultContainer
    #'
    #' @param input_json the JSON input
    #' @return the instance of FormulaResultContainer
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`molecularFormula` <- this_object$`molecularFormula`
      self$`adduct` <- this_object$`adduct`
      self$`resultOverview` <- ResultOverview$new()$fromJSON(jsonlite::toJSON(this_object$resultOverview, auto_unbox = TRUE, digits = NA))
      self$`candidate` <- FormulaCandidate$new()$fromJSON(jsonlite::toJSON(this_object$candidate, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to FormulaResultContainer
    #'
    #' @description
    #' Validate JSON input with respect to FormulaResultContainer and throw an exception if invalid
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
    #' @return String representation of FormulaResultContainer
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
# FormulaResultContainer$unlock()
#
## Below is an example to define the print function
# FormulaResultContainer$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# FormulaResultContainer$lock()

