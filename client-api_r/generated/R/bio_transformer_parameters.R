#' Create a new BioTransformerParameters
#'
#' @description
#' BioTransformerParameters Class
#'
#' @docType class
#' @title BioTransformerParameters
#' @description BioTransformerParameters Class
#' @format An \code{R6Class} generator object
#' @field cyp450Mode Specify the Phase I/Cyp450 mode for all provided BioTransformerSequenceSteps. Will only be applied to Steps that  require the Cyp450 mode as parameter. Can be null in cases where only BioTransformerSequenceSteps are specified  that do not need the Cyp450 mode. character
#' @field p2Mode Specify the Phase II mode for all provided BioTransformerSequenceSteps. Will only be applied to Steps that  require the Phase II mode  as parameter. Can be null in cases where only BioTransformerSequenceSteps are specified  that do not need the Phase II mode. character
#' @field useDB \"Specify if you want to enable the retrieving from database (HMDB) feature.\" character [optional]
#' @field bioTransformerSequenceSteps Specify BioTransformerSequenceSteps to be applied to input structures. MultiStep MetabolicTransformations can  only be used as singletons (list size of one). list(\link{BioTransformerSequenceStep})
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BioTransformerParameters <- R6::R6Class(
  "BioTransformerParameters",
  public = list(
    `cyp450Mode` = NULL,
    `p2Mode` = NULL,
    `useDB` = NULL,
    `bioTransformerSequenceSteps` = NULL,

    #' @description
    #' Initialize a new BioTransformerParameters class.
    #'
    #' @param cyp450Mode Specify the Phase I/Cyp450 mode for all provided BioTransformerSequenceSteps. Will only be applied to Steps that  require the Cyp450 mode as parameter. Can be null in cases where only BioTransformerSequenceSteps are specified  that do not need the Cyp450 mode.
    #' @param p2Mode Specify the Phase II mode for all provided BioTransformerSequenceSteps. Will only be applied to Steps that  require the Phase II mode  as parameter. Can be null in cases where only BioTransformerSequenceSteps are specified  that do not need the Phase II mode.
    #' @param bioTransformerSequenceSteps Specify BioTransformerSequenceSteps to be applied to input structures. MultiStep MetabolicTransformations can  only be used as singletons (list size of one).
    #' @param useDB \"Specify if you want to enable the retrieving from database (HMDB) feature.\". Default to TRUE.
    #' @param ... Other optional arguments.
    initialize = function(`cyp450Mode`, `p2Mode`, `bioTransformerSequenceSteps`, `useDB` = TRUE, ...) {
      if (!missing(`cyp450Mode`)) {
        if (!(`cyp450Mode` %in% c("RULE_BASED", "CY_PRODUCT", "COMBINED"))) {
          stop(paste("Error! \"", `cyp450Mode`, "\" cannot be assigned to `cyp450Mode`. Must be \"RULE_BASED\", \"CY_PRODUCT\", \"COMBINED\".", sep = ""))
        }
        if (!(is.character(`cyp450Mode`) && length(`cyp450Mode`) == 1)) {
          stop(paste("Error! Invalid data for `cyp450Mode`. Must be a string:", `cyp450Mode`))
        }
        self$`cyp450Mode` <- `cyp450Mode`
      }
      if (!missing(`p2Mode`)) {
        if (!(`p2Mode` %in% c("BT_RULE_BASED", "P2_RULE_ONLY", "COMBINED_RULES"))) {
          stop(paste("Error! \"", `p2Mode`, "\" cannot be assigned to `p2Mode`. Must be \"BT_RULE_BASED\", \"P2_RULE_ONLY\", \"COMBINED_RULES\".", sep = ""))
        }
        if (!(is.character(`p2Mode`) && length(`p2Mode`) == 1)) {
          stop(paste("Error! Invalid data for `p2Mode`. Must be a string:", `p2Mode`))
        }
        self$`p2Mode` <- `p2Mode`
      }
      if (!missing(`bioTransformerSequenceSteps`)) {
        stopifnot(is.vector(`bioTransformerSequenceSteps`), length(`bioTransformerSequenceSteps`) != 0)
        sapply(`bioTransformerSequenceSteps`, function(x) stopifnot(R6::is.R6(x)))
        self$`bioTransformerSequenceSteps` <- `bioTransformerSequenceSteps`
      }
      if (!is.null(`useDB`)) {
        if (!(is.logical(`useDB`) && length(`useDB`) == 1)) {
          stop(paste("Error! Invalid data for `useDB`. Must be a boolean:", `useDB`))
        }
        self$`useDB` <- `useDB`
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
    #' @return BioTransformerParameters as a base R list.
    #' @examples
    #' # convert array of BioTransformerParameters (x) to a data frame
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
    #' Convert BioTransformerParameters to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      BioTransformerParametersObject <- list()
      if (!is.null(self$`cyp450Mode`)) {
        BioTransformerParametersObject[["cyp450Mode"]] <-
          self$`cyp450Mode`
      }
      if (!is.null(self$`p2Mode`)) {
        BioTransformerParametersObject[["p2Mode"]] <-
          self$`p2Mode`
      }
      if (!is.null(self$`useDB`)) {
        BioTransformerParametersObject[["useDB"]] <-
          self$`useDB`
      }
      if (!is.null(self$`bioTransformerSequenceSteps`)) {
        BioTransformerParametersObject[["bioTransformerSequenceSteps"]] <-
          lapply(self$`bioTransformerSequenceSteps`, function(x) x$toSimpleType())
      }
      return(BioTransformerParametersObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of BioTransformerParameters
    #'
    #' @param input_json the JSON input
    #' @return the instance of BioTransformerParameters
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`cyp450Mode`)) {
        if (!is.null(this_object$`cyp450Mode`) && !(this_object$`cyp450Mode` %in% c("RULE_BASED", "CY_PRODUCT", "COMBINED"))) {
          stop(paste("Error! \"", this_object$`cyp450Mode`, "\" cannot be assigned to `cyp450Mode`. Must be \"RULE_BASED\", \"CY_PRODUCT\", \"COMBINED\".", sep = ""))
        }
        self$`cyp450Mode` <- this_object$`cyp450Mode`
      }
      if (!is.null(this_object$`p2Mode`)) {
        if (!is.null(this_object$`p2Mode`) && !(this_object$`p2Mode` %in% c("BT_RULE_BASED", "P2_RULE_ONLY", "COMBINED_RULES"))) {
          stop(paste("Error! \"", this_object$`p2Mode`, "\" cannot be assigned to `p2Mode`. Must be \"BT_RULE_BASED\", \"P2_RULE_ONLY\", \"COMBINED_RULES\".", sep = ""))
        }
        self$`p2Mode` <- this_object$`p2Mode`
      }
      if (!is.null(this_object$`useDB`)) {
        self$`useDB` <- this_object$`useDB`
      }
      if (!is.null(this_object$`bioTransformerSequenceSteps`)) {
        self$`bioTransformerSequenceSteps` <- ApiClient$new()$deserializeObj(this_object$`bioTransformerSequenceSteps`, "array[BioTransformerSequenceStep]", loadNamespace("RSirius"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return BioTransformerParameters in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of BioTransformerParameters
    #'
    #' @param input_json the JSON input
    #' @return the instance of BioTransformerParameters
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`cyp450Mode`) && !(this_object$`cyp450Mode` %in% c("RULE_BASED", "CY_PRODUCT", "COMBINED"))) {
        stop(paste("Error! \"", this_object$`cyp450Mode`, "\" cannot be assigned to `cyp450Mode`. Must be \"RULE_BASED\", \"CY_PRODUCT\", \"COMBINED\".", sep = ""))
      }
      self$`cyp450Mode` <- this_object$`cyp450Mode`
      if (!is.null(this_object$`p2Mode`) && !(this_object$`p2Mode` %in% c("BT_RULE_BASED", "P2_RULE_ONLY", "COMBINED_RULES"))) {
        stop(paste("Error! \"", this_object$`p2Mode`, "\" cannot be assigned to `p2Mode`. Must be \"BT_RULE_BASED\", \"P2_RULE_ONLY\", \"COMBINED_RULES\".", sep = ""))
      }
      self$`p2Mode` <- this_object$`p2Mode`
      self$`useDB` <- this_object$`useDB`
      self$`bioTransformerSequenceSteps` <- ApiClient$new()$deserializeObj(this_object$`bioTransformerSequenceSteps`, "array[BioTransformerSequenceStep]", loadNamespace("RSirius"))
      self
    },

    #' @description
    #' Validate JSON input with respect to BioTransformerParameters and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `cyp450Mode`
      if (!is.null(input_json$`cyp450Mode`)) {
        if (!(is.character(input_json$`cyp450Mode`) && length(input_json$`cyp450Mode`) == 1)) {
          stop(paste("Error! Invalid data for `cyp450Mode`. Must be a string:", input_json$`cyp450Mode`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BioTransformerParameters: the required field `cyp450Mode` is missing."))
      }
      # check the required field `p2Mode`
      if (!is.null(input_json$`p2Mode`)) {
        if (!(is.character(input_json$`p2Mode`) && length(input_json$`p2Mode`) == 1)) {
          stop(paste("Error! Invalid data for `p2Mode`. Must be a string:", input_json$`p2Mode`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BioTransformerParameters: the required field `p2Mode` is missing."))
      }
      # check the required field `bioTransformerSequenceSteps`
      if (!is.null(input_json$`bioTransformerSequenceSteps`)) {
        stopifnot(is.vector(input_json$`bioTransformerSequenceSteps`), length(input_json$`bioTransformerSequenceSteps`) != 0)
        tmp <- sapply(input_json$`bioTransformerSequenceSteps`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BioTransformerParameters: the required field `bioTransformerSequenceSteps` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of BioTransformerParameters
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `bioTransformerSequenceSteps` is null
      if (is.null(self$`bioTransformerSequenceSteps`)) {
        return(FALSE)
      }

      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
      # check if the required `bioTransformerSequenceSteps` is null
      if (is.null(self$`bioTransformerSequenceSteps`)) {
        invalid_fields["bioTransformerSequenceSteps"] <- "Non-nullable required field `bioTransformerSequenceSteps` cannot be null."
      }

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
# BioTransformerParameters$unlock()
#
## Below is an example to define the print function
# BioTransformerParameters$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# BioTransformerParameters$lock()

