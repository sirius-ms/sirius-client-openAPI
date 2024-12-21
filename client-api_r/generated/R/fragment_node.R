#' Create a new FragmentNode
#'
#' @description
#' FragmentNode Class
#'
#' @docType class
#' @title FragmentNode
#' @description FragmentNode Class
#' @format An \code{R6Class} generator object
#' @field fragmentId  integer [optional]
#' @field molecularFormula neutral molecular formula of the fragment without adduct character [optional]
#' @field adduct This combines the ionization plus adduct of the fragment. In contrast to the {@link FragmentationTree FragmentationTree}s adduct,  this adduct may not include any in-source loss. character [optional]
#' @field massDeviationDa  numeric [optional]
#' @field massDeviationPpm  numeric [optional]
#' @field score  numeric [optional]
#' @field intensity  numeric [optional]
#' @field mz  numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FragmentNode <- R6::R6Class(
  "FragmentNode",
  public = list(
    `fragmentId` = NULL,
    `molecularFormula` = NULL,
    `adduct` = NULL,
    `massDeviationDa` = NULL,
    `massDeviationPpm` = NULL,
    `score` = NULL,
    `intensity` = NULL,
    `mz` = NULL,

    #' @description
    #' Initialize a new FragmentNode class.
    #'
    #' @param fragmentId fragmentId
    #' @param molecularFormula neutral molecular formula of the fragment without adduct
    #' @param adduct This combines the ionization plus adduct of the fragment. In contrast to the {@link FragmentationTree FragmentationTree}s adduct,  this adduct may not include any in-source loss.
    #' @param massDeviationDa massDeviationDa
    #' @param massDeviationPpm massDeviationPpm
    #' @param score score
    #' @param intensity intensity
    #' @param mz mz
    #' @param ... Other optional arguments.
    initialize = function(`fragmentId` = NULL, `molecularFormula` = NULL, `adduct` = NULL, `massDeviationDa` = NULL, `massDeviationPpm` = NULL, `score` = NULL, `intensity` = NULL, `mz` = NULL, ...) {
      if (!is.null(`fragmentId`)) {
        if (!(is.numeric(`fragmentId`) && length(`fragmentId`) == 1)) {
          stop(paste("Error! Invalid data for `fragmentId`. Must be an integer:", `fragmentId`))
        }
        self$`fragmentId` <- `fragmentId`
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
      if (!is.null(`massDeviationDa`)) {
        if (!(is.numeric(`massDeviationDa`) && length(`massDeviationDa`) == 1)) {
          stop(paste("Error! Invalid data for `massDeviationDa`. Must be a number:", `massDeviationDa`))
        }
        self$`massDeviationDa` <- `massDeviationDa`
      }
      if (!is.null(`massDeviationPpm`)) {
        if (!(is.numeric(`massDeviationPpm`) && length(`massDeviationPpm`) == 1)) {
          stop(paste("Error! Invalid data for `massDeviationPpm`. Must be a number:", `massDeviationPpm`))
        }
        self$`massDeviationPpm` <- `massDeviationPpm`
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
    #' @return FragmentNode as a base R list.
    #' @examples
    #' # convert array of FragmentNode (x) to a data frame
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
    #' Convert FragmentNode to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      FragmentNodeObject <- list()
      if (!is.null(self$`fragmentId`)) {
        FragmentNodeObject[["fragmentId"]] <-
          self$`fragmentId`
      }
      if (!is.null(self$`molecularFormula`)) {
        FragmentNodeObject[["molecularFormula"]] <-
          self$`molecularFormula`
      }
      if (!is.null(self$`adduct`)) {
        FragmentNodeObject[["adduct"]] <-
          self$`adduct`
      }
      if (!is.null(self$`massDeviationDa`)) {
        FragmentNodeObject[["massDeviationDa"]] <-
          self$`massDeviationDa`
      }
      if (!is.null(self$`massDeviationPpm`)) {
        FragmentNodeObject[["massDeviationPpm"]] <-
          self$`massDeviationPpm`
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
      return(FragmentNodeObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of FragmentNode
    #'
    #' @param input_json the JSON input
    #' @return the instance of FragmentNode
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`fragmentId`)) {
        self$`fragmentId` <- this_object$`fragmentId`
      }
      if (!is.null(this_object$`molecularFormula`)) {
        self$`molecularFormula` <- this_object$`molecularFormula`
      }
      if (!is.null(this_object$`adduct`)) {
        self$`adduct` <- this_object$`adduct`
      }
      if (!is.null(this_object$`massDeviationDa`)) {
        self$`massDeviationDa` <- this_object$`massDeviationDa`
      }
      if (!is.null(this_object$`massDeviationPpm`)) {
        self$`massDeviationPpm` <- this_object$`massDeviationPpm`
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

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return FragmentNode in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of FragmentNode
    #'
    #' @param input_json the JSON input
    #' @return the instance of FragmentNode
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`fragmentId` <- this_object$`fragmentId`
      self$`molecularFormula` <- this_object$`molecularFormula`
      self$`adduct` <- this_object$`adduct`
      self$`massDeviationDa` <- this_object$`massDeviationDa`
      self$`massDeviationPpm` <- this_object$`massDeviationPpm`
      self$`score` <- this_object$`score`
      self$`intensity` <- this_object$`intensity`
      self$`mz` <- this_object$`mz`
      self
    },

    #' @description
    #' Validate JSON input with respect to FragmentNode and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of FragmentNode
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
# FragmentNode$unlock()
#
## Below is an example to define the print function
# FragmentNode$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# FragmentNode$lock()

