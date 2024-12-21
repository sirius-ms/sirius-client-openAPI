#' Create a new FragmentationTree
#'
#' @description
#' Simple and easy serializable fragmentation tree model with annotated fragments/nodes abd losses/edges  Root fragment has index 0;  Molecular formula and adduct are identical to the ones of the corresponding molecular formula candidate and SpectrumAnnotation
#'
#' @docType class
#' @title FragmentationTree
#' @description FragmentationTree Class
#' @format An \code{R6Class} generator object
#' @field fragments  list(\link{FragmentNode}) [optional]
#' @field losses  list(\link{LossEdge}) [optional]
#' @field treeScore  numeric [optional]
#' @field molecularFormula  character [optional]
#' @field adduct  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FragmentationTree <- R6::R6Class(
  "FragmentationTree",
  public = list(
    `fragments` = NULL,
    `losses` = NULL,
    `treeScore` = NULL,
    `molecularFormula` = NULL,
    `adduct` = NULL,

    #' @description
    #' Initialize a new FragmentationTree class.
    #'
    #' @param fragments fragments
    #' @param losses losses
    #' @param treeScore treeScore
    #' @param molecularFormula molecularFormula
    #' @param adduct adduct
    #' @param ... Other optional arguments.
    initialize = function(`fragments` = NULL, `losses` = NULL, `treeScore` = NULL, `molecularFormula` = NULL, `adduct` = NULL, ...) {
      if (!is.null(`fragments`)) {
        stopifnot(is.vector(`fragments`), length(`fragments`) != 0)
        sapply(`fragments`, function(x) stopifnot(R6::is.R6(x)))
        self$`fragments` <- `fragments`
      }
      if (!is.null(`losses`)) {
        stopifnot(is.vector(`losses`), length(`losses`) != 0)
        sapply(`losses`, function(x) stopifnot(R6::is.R6(x)))
        self$`losses` <- `losses`
      }
      if (!is.null(`treeScore`)) {
        if (!(is.numeric(`treeScore`) && length(`treeScore`) == 1)) {
          stop(paste("Error! Invalid data for `treeScore`. Must be a number:", `treeScore`))
        }
        self$`treeScore` <- `treeScore`
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
    #' @return FragmentationTree as a base R list.
    #' @examples
    #' # convert array of FragmentationTree (x) to a data frame
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
    #' Convert FragmentationTree to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      FragmentationTreeObject <- list()
      if (!is.null(self$`fragments`)) {
        FragmentationTreeObject[["fragments"]] <-
          lapply(self$`fragments`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`losses`)) {
        FragmentationTreeObject[["losses"]] <-
          lapply(self$`losses`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`treeScore`)) {
        FragmentationTreeObject[["treeScore"]] <-
          self$`treeScore`
      }
      if (!is.null(self$`molecularFormula`)) {
        FragmentationTreeObject[["molecularFormula"]] <-
          self$`molecularFormula`
      }
      if (!is.null(self$`adduct`)) {
        FragmentationTreeObject[["adduct"]] <-
          self$`adduct`
      }
      return(FragmentationTreeObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of FragmentationTree
    #'
    #' @param input_json the JSON input
    #' @return the instance of FragmentationTree
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`fragments`)) {
        self$`fragments` <- ApiClient$new()$deserializeObj(this_object$`fragments`, "array[FragmentNode]", loadNamespace("Rsirius"))
      }
      if (!is.null(this_object$`losses`)) {
        self$`losses` <- ApiClient$new()$deserializeObj(this_object$`losses`, "array[LossEdge]", loadNamespace("Rsirius"))
      }
      if (!is.null(this_object$`treeScore`)) {
        self$`treeScore` <- this_object$`treeScore`
      }
      if (!is.null(this_object$`molecularFormula`)) {
        self$`molecularFormula` <- this_object$`molecularFormula`
      }
      if (!is.null(this_object$`adduct`)) {
        self$`adduct` <- this_object$`adduct`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return FragmentationTree in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of FragmentationTree
    #'
    #' @param input_json the JSON input
    #' @return the instance of FragmentationTree
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`fragments` <- ApiClient$new()$deserializeObj(this_object$`fragments`, "array[FragmentNode]", loadNamespace("Rsirius"))
      self$`losses` <- ApiClient$new()$deserializeObj(this_object$`losses`, "array[LossEdge]", loadNamespace("Rsirius"))
      self$`treeScore` <- this_object$`treeScore`
      self$`molecularFormula` <- this_object$`molecularFormula`
      self$`adduct` <- this_object$`adduct`
      self
    },

    #' @description
    #' Validate JSON input with respect to FragmentationTree and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of FragmentationTree
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
# FragmentationTree$unlock()
#
## Below is an example to define the print function
# FragmentationTree$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# FragmentationTree$lock()

