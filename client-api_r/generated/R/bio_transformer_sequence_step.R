#' Create a new BioTransformerSequenceStep
#'
#' @description
#' BioTransformerSequenceStep Class
#'
#' @docType class
#' @title BioTransformerSequenceStep
#' @description BioTransformerSequenceStep Class
#' @format An \code{R6Class} generator object
#' @field metabolicTransformation  character [optional]
#' @field iterations  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BioTransformerSequenceStep <- R6::R6Class(
  "BioTransformerSequenceStep",
  public = list(
    `metabolicTransformation` = NULL,
    `iterations` = NULL,

    #' @description
    #' Initialize a new BioTransformerSequenceStep class.
    #'
    #' @param metabolicTransformation metabolicTransformation
    #' @param iterations iterations
    #' @param ... Other optional arguments.
    initialize = function(`metabolicTransformation` = NULL, `iterations` = NULL, ...) {
      if (!is.null(`metabolicTransformation`)) {
        if (!(`metabolicTransformation` %in% c("PHASE_1_CYP450", "EC_BASED", "PHASE_2", "HUMAN_GUT", "ALL_HUMAN", "ABIOTIC", "HUMAN_CUSTOM_MULTI"))) {
          stop(paste("Error! \"", `metabolicTransformation`, "\" cannot be assigned to `metabolicTransformation`. Must be \"PHASE_1_CYP450\", \"EC_BASED\", \"PHASE_2\", \"HUMAN_GUT\", \"ALL_HUMAN\", \"ABIOTIC\", \"HUMAN_CUSTOM_MULTI\".", sep = ""))
        }
        if (!(is.character(`metabolicTransformation`) && length(`metabolicTransformation`) == 1)) {
          stop(paste("Error! Invalid data for `metabolicTransformation`. Must be a string:", `metabolicTransformation`))
        }
        self$`metabolicTransformation` <- `metabolicTransformation`
      }
      if (!is.null(`iterations`)) {
        if (!(is.numeric(`iterations`) && length(`iterations`) == 1)) {
          stop(paste("Error! Invalid data for `iterations`. Must be an integer:", `iterations`))
        }
        self$`iterations` <- `iterations`
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
    #' @return BioTransformerSequenceStep as a base R list.
    #' @examples
    #' # convert array of BioTransformerSequenceStep (x) to a data frame
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
    #' Convert BioTransformerSequenceStep to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      BioTransformerSequenceStepObject <- list()
      if (!is.null(self$`metabolicTransformation`)) {
        BioTransformerSequenceStepObject[["metabolicTransformation"]] <-
          self$`metabolicTransformation`
      }
      if (!is.null(self$`iterations`)) {
        BioTransformerSequenceStepObject[["iterations"]] <-
          self$`iterations`
      }
      return(BioTransformerSequenceStepObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of BioTransformerSequenceStep
    #'
    #' @param input_json the JSON input
    #' @return the instance of BioTransformerSequenceStep
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`metabolicTransformation`)) {
        if (!is.null(this_object$`metabolicTransformation`) && !(this_object$`metabolicTransformation` %in% c("PHASE_1_CYP450", "EC_BASED", "PHASE_2", "HUMAN_GUT", "ALL_HUMAN", "ABIOTIC", "HUMAN_CUSTOM_MULTI"))) {
          stop(paste("Error! \"", this_object$`metabolicTransformation`, "\" cannot be assigned to `metabolicTransformation`. Must be \"PHASE_1_CYP450\", \"EC_BASED\", \"PHASE_2\", \"HUMAN_GUT\", \"ALL_HUMAN\", \"ABIOTIC\", \"HUMAN_CUSTOM_MULTI\".", sep = ""))
        }
        self$`metabolicTransformation` <- this_object$`metabolicTransformation`
      }
      if (!is.null(this_object$`iterations`)) {
        self$`iterations` <- this_object$`iterations`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return BioTransformerSequenceStep in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of BioTransformerSequenceStep
    #'
    #' @param input_json the JSON input
    #' @return the instance of BioTransformerSequenceStep
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`metabolicTransformation`) && !(this_object$`metabolicTransformation` %in% c("PHASE_1_CYP450", "EC_BASED", "PHASE_2", "HUMAN_GUT", "ALL_HUMAN", "ABIOTIC", "HUMAN_CUSTOM_MULTI"))) {
        stop(paste("Error! \"", this_object$`metabolicTransformation`, "\" cannot be assigned to `metabolicTransformation`. Must be \"PHASE_1_CYP450\", \"EC_BASED\", \"PHASE_2\", \"HUMAN_GUT\", \"ALL_HUMAN\", \"ABIOTIC\", \"HUMAN_CUSTOM_MULTI\".", sep = ""))
      }
      self$`metabolicTransformation` <- this_object$`metabolicTransformation`
      self$`iterations` <- this_object$`iterations`
      self
    },

    #' @description
    #' Validate JSON input with respect to BioTransformerSequenceStep and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of BioTransformerSequenceStep
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
# BioTransformerSequenceStep$unlock()
#
## Below is an example to define the print function
# BioTransformerSequenceStep$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# BioTransformerSequenceStep$lock()

