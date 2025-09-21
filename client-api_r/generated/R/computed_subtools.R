#' Create a new ComputedSubtools
#'
#' @description
#' ComputedSubtools Class
#'
#' @docType class
#' @title ComputedSubtools
#' @description ComputedSubtools Class
#' @format An \code{R6Class} generator object
#' @field librarySearch  character [optional]
#' @field formulaSearch  character [optional]
#' @field zodiac  character [optional]
#' @field fingerprint  character [optional]
#' @field canopus  character [optional]
#' @field structureSearch  character [optional]
#' @field deNovoSearch  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ComputedSubtools <- R6::R6Class(
  "ComputedSubtools",
  public = list(
    `librarySearch` = NULL,
    `formulaSearch` = NULL,
    `zodiac` = NULL,
    `fingerprint` = NULL,
    `canopus` = NULL,
    `structureSearch` = NULL,
    `deNovoSearch` = NULL,

    #' @description
    #' Initialize a new ComputedSubtools class.
    #'
    #' @param librarySearch librarySearch
    #' @param formulaSearch formulaSearch
    #' @param zodiac zodiac
    #' @param fingerprint fingerprint
    #' @param canopus canopus
    #' @param structureSearch structureSearch
    #' @param deNovoSearch deNovoSearch
    #' @param ... Other optional arguments.
    initialize = function(`librarySearch` = NULL, `formulaSearch` = NULL, `zodiac` = NULL, `fingerprint` = NULL, `canopus` = NULL, `structureSearch` = NULL, `deNovoSearch` = NULL, ...) {
      if (!is.null(`librarySearch`)) {
        if (!(is.logical(`librarySearch`) && length(`librarySearch`) == 1)) {
          stop(paste("Error! Invalid data for `librarySearch`. Must be a boolean:", `librarySearch`))
        }
        self$`librarySearch` <- `librarySearch`
      }
      if (!is.null(`formulaSearch`)) {
        if (!(is.logical(`formulaSearch`) && length(`formulaSearch`) == 1)) {
          stop(paste("Error! Invalid data for `formulaSearch`. Must be a boolean:", `formulaSearch`))
        }
        self$`formulaSearch` <- `formulaSearch`
      }
      if (!is.null(`zodiac`)) {
        if (!(is.logical(`zodiac`) && length(`zodiac`) == 1)) {
          stop(paste("Error! Invalid data for `zodiac`. Must be a boolean:", `zodiac`))
        }
        self$`zodiac` <- `zodiac`
      }
      if (!is.null(`fingerprint`)) {
        if (!(is.logical(`fingerprint`) && length(`fingerprint`) == 1)) {
          stop(paste("Error! Invalid data for `fingerprint`. Must be a boolean:", `fingerprint`))
        }
        self$`fingerprint` <- `fingerprint`
      }
      if (!is.null(`canopus`)) {
        if (!(is.logical(`canopus`) && length(`canopus`) == 1)) {
          stop(paste("Error! Invalid data for `canopus`. Must be a boolean:", `canopus`))
        }
        self$`canopus` <- `canopus`
      }
      if (!is.null(`structureSearch`)) {
        if (!(is.logical(`structureSearch`) && length(`structureSearch`) == 1)) {
          stop(paste("Error! Invalid data for `structureSearch`. Must be a boolean:", `structureSearch`))
        }
        self$`structureSearch` <- `structureSearch`
      }
      if (!is.null(`deNovoSearch`)) {
        if (!(is.logical(`deNovoSearch`) && length(`deNovoSearch`) == 1)) {
          stop(paste("Error! Invalid data for `deNovoSearch`. Must be a boolean:", `deNovoSearch`))
        }
        self$`deNovoSearch` <- `deNovoSearch`
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
    #' @return ComputedSubtools as a base R list.
    #' @examples
    #' # convert array of ComputedSubtools (x) to a data frame
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
    #' Convert ComputedSubtools to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ComputedSubtoolsObject <- list()
      if (!is.null(self$`librarySearch`)) {
        ComputedSubtoolsObject[["librarySearch"]] <-
          self$`librarySearch`
      }
      if (!is.null(self$`formulaSearch`)) {
        ComputedSubtoolsObject[["formulaSearch"]] <-
          self$`formulaSearch`
      }
      if (!is.null(self$`zodiac`)) {
        ComputedSubtoolsObject[["zodiac"]] <-
          self$`zodiac`
      }
      if (!is.null(self$`fingerprint`)) {
        ComputedSubtoolsObject[["fingerprint"]] <-
          self$`fingerprint`
      }
      if (!is.null(self$`canopus`)) {
        ComputedSubtoolsObject[["canopus"]] <-
          self$`canopus`
      }
      if (!is.null(self$`structureSearch`)) {
        ComputedSubtoolsObject[["structureSearch"]] <-
          self$`structureSearch`
      }
      if (!is.null(self$`deNovoSearch`)) {
        ComputedSubtoolsObject[["deNovoSearch"]] <-
          self$`deNovoSearch`
      }
      return(ComputedSubtoolsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ComputedSubtools
    #'
    #' @param input_json the JSON input
    #' @return the instance of ComputedSubtools
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`librarySearch`)) {
        self$`librarySearch` <- this_object$`librarySearch`
      }
      if (!is.null(this_object$`formulaSearch`)) {
        self$`formulaSearch` <- this_object$`formulaSearch`
      }
      if (!is.null(this_object$`zodiac`)) {
        self$`zodiac` <- this_object$`zodiac`
      }
      if (!is.null(this_object$`fingerprint`)) {
        self$`fingerprint` <- this_object$`fingerprint`
      }
      if (!is.null(this_object$`canopus`)) {
        self$`canopus` <- this_object$`canopus`
      }
      if (!is.null(this_object$`structureSearch`)) {
        self$`structureSearch` <- this_object$`structureSearch`
      }
      if (!is.null(this_object$`deNovoSearch`)) {
        self$`deNovoSearch` <- this_object$`deNovoSearch`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ComputedSubtools in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ComputedSubtools
    #'
    #' @param input_json the JSON input
    #' @return the instance of ComputedSubtools
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`librarySearch` <- this_object$`librarySearch`
      self$`formulaSearch` <- this_object$`formulaSearch`
      self$`zodiac` <- this_object$`zodiac`
      self$`fingerprint` <- this_object$`fingerprint`
      self$`canopus` <- this_object$`canopus`
      self$`structureSearch` <- this_object$`structureSearch`
      self$`deNovoSearch` <- this_object$`deNovoSearch`
      self
    },

    #' @description
    #' Validate JSON input with respect to ComputedSubtools and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ComputedSubtools
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
# ComputedSubtools$unlock()
#
## Below is an example to define the print function
# ComputedSubtools$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ComputedSubtools$lock()

