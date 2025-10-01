#' Create a new Zodiac
#'
#' @description
#' User/developer friendly parameter subset for the ZODIAC tool (Network base molecular formula re-ranking).  Needs results from Formula/SIRIUS Tool
#'
#' @docType class
#' @title Zodiac
#' @description Zodiac Class
#' @format An \code{R6Class} generator object
#' @field enabled tags whether the tool is enabled character [optional]
#' @field consideredCandidatesAt300Mz Maximum number of candidate molecular formulas (fragmentation trees computed by SIRIUS) per compound which are considered by ZODIAC for compounds below 300 m/z. integer [optional]
#' @field consideredCandidatesAt800Mz Maximum number of candidate molecular formulas (fragmentation trees computed by SIRIUS) per compound which are considered by ZODIAC for compounds above 800 m/z. integer [optional]
#' @field runInTwoSteps As default ZODIAC runs a 2-step approach. First running 'good quality compounds' only, and afterwards including the remaining. character [optional]
#' @field edgeFilterThresholds  \link{ZodiacEdgeFilterThresholds} [optional]
#' @field gibbsSamplerParameters  \link{ZodiacEpochs} [optional]
#' @field librarySearchAnchors  \link{ZodiacLibraryScoring} [optional]
#' @field analogueSearchAnchors  \link{ZodiacAnalogueNodes} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Zodiac <- R6::R6Class(
  "Zodiac",
  public = list(
    `enabled` = NULL,
    `consideredCandidatesAt300Mz` = NULL,
    `consideredCandidatesAt800Mz` = NULL,
    `runInTwoSteps` = NULL,
    `edgeFilterThresholds` = NULL,
    `gibbsSamplerParameters` = NULL,
    `librarySearchAnchors` = NULL,
    `analogueSearchAnchors` = NULL,

    #' @description
    #' Initialize a new Zodiac class.
    #'
    #' @param enabled tags whether the tool is enabled
    #' @param consideredCandidatesAt300Mz Maximum number of candidate molecular formulas (fragmentation trees computed by SIRIUS) per compound which are considered by ZODIAC for compounds below 300 m/z.
    #' @param consideredCandidatesAt800Mz Maximum number of candidate molecular formulas (fragmentation trees computed by SIRIUS) per compound which are considered by ZODIAC for compounds above 800 m/z.
    #' @param runInTwoSteps As default ZODIAC runs a 2-step approach. First running 'good quality compounds' only, and afterwards including the remaining.
    #' @param edgeFilterThresholds edgeFilterThresholds
    #' @param gibbsSamplerParameters gibbsSamplerParameters
    #' @param librarySearchAnchors librarySearchAnchors
    #' @param analogueSearchAnchors analogueSearchAnchors
    #' @param ... Other optional arguments.
    initialize = function(`enabled` = NULL, `consideredCandidatesAt300Mz` = NULL, `consideredCandidatesAt800Mz` = NULL, `runInTwoSteps` = NULL, `edgeFilterThresholds` = NULL, `gibbsSamplerParameters` = NULL, `librarySearchAnchors` = NULL, `analogueSearchAnchors` = NULL, ...) {
      if (!is.null(`enabled`)) {
        if (!(is.logical(`enabled`) && length(`enabled`) == 1)) {
          stop(paste("Error! Invalid data for `enabled`. Must be a boolean:", `enabled`))
        }
        self$`enabled` <- `enabled`
      }
      if (!is.null(`consideredCandidatesAt300Mz`)) {
        if (!(is.numeric(`consideredCandidatesAt300Mz`) && length(`consideredCandidatesAt300Mz`) == 1)) {
          stop(paste("Error! Invalid data for `consideredCandidatesAt300Mz`. Must be an integer:", `consideredCandidatesAt300Mz`))
        }
        self$`consideredCandidatesAt300Mz` <- `consideredCandidatesAt300Mz`
      }
      if (!is.null(`consideredCandidatesAt800Mz`)) {
        if (!(is.numeric(`consideredCandidatesAt800Mz`) && length(`consideredCandidatesAt800Mz`) == 1)) {
          stop(paste("Error! Invalid data for `consideredCandidatesAt800Mz`. Must be an integer:", `consideredCandidatesAt800Mz`))
        }
        self$`consideredCandidatesAt800Mz` <- `consideredCandidatesAt800Mz`
      }
      if (!is.null(`runInTwoSteps`)) {
        if (!(is.logical(`runInTwoSteps`) && length(`runInTwoSteps`) == 1)) {
          stop(paste("Error! Invalid data for `runInTwoSteps`. Must be a boolean:", `runInTwoSteps`))
        }
        self$`runInTwoSteps` <- `runInTwoSteps`
      }
      if (!is.null(`edgeFilterThresholds`)) {
        stopifnot(R6::is.R6(`edgeFilterThresholds`))
        self$`edgeFilterThresholds` <- `edgeFilterThresholds`
      }
      if (!is.null(`gibbsSamplerParameters`)) {
        stopifnot(R6::is.R6(`gibbsSamplerParameters`))
        self$`gibbsSamplerParameters` <- `gibbsSamplerParameters`
      }
      if (!is.null(`librarySearchAnchors`)) {
        stopifnot(R6::is.R6(`librarySearchAnchors`))
        self$`librarySearchAnchors` <- `librarySearchAnchors`
      }
      if (!is.null(`analogueSearchAnchors`)) {
        stopifnot(R6::is.R6(`analogueSearchAnchors`))
        self$`analogueSearchAnchors` <- `analogueSearchAnchors`
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
    #' @return Zodiac as a base R list.
    #' @examples
    #' # convert array of Zodiac (x) to a data frame
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
    #' Convert Zodiac to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ZodiacObject <- list()
      if (!is.null(self$`enabled`)) {
        ZodiacObject[["enabled"]] <-
          self$`enabled`
      }
      if (!is.null(self$`consideredCandidatesAt300Mz`)) {
        ZodiacObject[["consideredCandidatesAt300Mz"]] <-
          self$`consideredCandidatesAt300Mz`
      }
      if (!is.null(self$`consideredCandidatesAt800Mz`)) {
        ZodiacObject[["consideredCandidatesAt800Mz"]] <-
          self$`consideredCandidatesAt800Mz`
      }
      if (!is.null(self$`runInTwoSteps`)) {
        ZodiacObject[["runInTwoSteps"]] <-
          self$`runInTwoSteps`
      }
      if (!is.null(self$`edgeFilterThresholds`)) {
        ZodiacObject[["edgeFilterThresholds"]] <-
          self$`edgeFilterThresholds`$toSimpleType()
      }
      if (!is.null(self$`gibbsSamplerParameters`)) {
        ZodiacObject[["gibbsSamplerParameters"]] <-
          self$`gibbsSamplerParameters`$toSimpleType()
      }
      if (!is.null(self$`librarySearchAnchors`)) {
        ZodiacObject[["librarySearchAnchors"]] <-
          self$`librarySearchAnchors`$toSimpleType()
      }
      if (!is.null(self$`analogueSearchAnchors`)) {
        ZodiacObject[["analogueSearchAnchors"]] <-
          self$`analogueSearchAnchors`$toSimpleType()
      }
      return(ZodiacObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of Zodiac
    #'
    #' @param input_json the JSON input
    #' @return the instance of Zodiac
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`enabled`)) {
        self$`enabled` <- this_object$`enabled`
      }
      if (!is.null(this_object$`consideredCandidatesAt300Mz`)) {
        self$`consideredCandidatesAt300Mz` <- this_object$`consideredCandidatesAt300Mz`
      }
      if (!is.null(this_object$`consideredCandidatesAt800Mz`)) {
        self$`consideredCandidatesAt800Mz` <- this_object$`consideredCandidatesAt800Mz`
      }
      if (!is.null(this_object$`runInTwoSteps`)) {
        self$`runInTwoSteps` <- this_object$`runInTwoSteps`
      }
      if (!is.null(this_object$`edgeFilterThresholds`)) {
        `edgefilterthresholds_object` <- ZodiacEdgeFilterThresholds$new()
        `edgefilterthresholds_object`$fromJSON(jsonlite::toJSON(this_object$`edgeFilterThresholds`, auto_unbox = TRUE, digits = NA, null = 'null'))
        self$`edgeFilterThresholds` <- `edgefilterthresholds_object`
      }
      if (!is.null(this_object$`gibbsSamplerParameters`)) {
        `gibbssamplerparameters_object` <- ZodiacEpochs$new()
        `gibbssamplerparameters_object`$fromJSON(jsonlite::toJSON(this_object$`gibbsSamplerParameters`, auto_unbox = TRUE, digits = NA, null = 'null'))
        self$`gibbsSamplerParameters` <- `gibbssamplerparameters_object`
      }
      if (!is.null(this_object$`librarySearchAnchors`)) {
        `librarysearchanchors_object` <- ZodiacLibraryScoring$new()
        `librarysearchanchors_object`$fromJSON(jsonlite::toJSON(this_object$`librarySearchAnchors`, auto_unbox = TRUE, digits = NA, null = 'null'))
        self$`librarySearchAnchors` <- `librarysearchanchors_object`
      }
      if (!is.null(this_object$`analogueSearchAnchors`)) {
        `analoguesearchanchors_object` <- ZodiacAnalogueNodes$new()
        `analoguesearchanchors_object`$fromJSON(jsonlite::toJSON(this_object$`analogueSearchAnchors`, auto_unbox = TRUE, digits = NA, null = 'null'))
        self$`analogueSearchAnchors` <- `analoguesearchanchors_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Zodiac in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Zodiac
    #'
    #' @param input_json the JSON input
    #' @return the instance of Zodiac
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`enabled` <- this_object$`enabled`
      self$`consideredCandidatesAt300Mz` <- this_object$`consideredCandidatesAt300Mz`
      self$`consideredCandidatesAt800Mz` <- this_object$`consideredCandidatesAt800Mz`
      self$`runInTwoSteps` <- this_object$`runInTwoSteps`
      self$`edgeFilterThresholds` <- ZodiacEdgeFilterThresholds$new()$fromJSON(jsonlite::toJSON(this_object$`edgeFilterThresholds`, auto_unbox = TRUE, digits = NA, null = 'null'))
      self$`gibbsSamplerParameters` <- ZodiacEpochs$new()$fromJSON(jsonlite::toJSON(this_object$`gibbsSamplerParameters`, auto_unbox = TRUE, digits = NA, null = 'null'))
      self$`librarySearchAnchors` <- ZodiacLibraryScoring$new()$fromJSON(jsonlite::toJSON(this_object$`librarySearchAnchors`, auto_unbox = TRUE, digits = NA, null = 'null'))
      self$`analogueSearchAnchors` <- ZodiacAnalogueNodes$new()$fromJSON(jsonlite::toJSON(this_object$`analogueSearchAnchors`, auto_unbox = TRUE, digits = NA, null = 'null'))
      self
    },

    #' @description
    #' Validate JSON input with respect to Zodiac and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Zodiac
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
# Zodiac$unlock()
#
## Below is an example to define the print function
# Zodiac$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Zodiac$lock()

