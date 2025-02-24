#' Create a new AdductEdgeExperimental
#'
#' @description
#' EXPERIMENTAL: This schema is experimental and may be changed (or even removed) without notice until it is declared stable.
#'
#' @docType class
#' @title AdductEdgeExperimental
#' @description AdductEdgeExperimental Class
#' @format An \code{R6Class} generator object
#' @field mzDelta  numeric [optional]
#' @field annotation  character [optional]
#' @field from  integer [optional]
#' @field to  integer [optional]
#' @field mergedCorrelation  numeric [optional]
#' @field representativeCorrelation  numeric [optional]
#' @field ms2cosine  numeric [optional]
#' @field pvalue  numeric [optional]
#' @field intensityRatioScore  numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AdductEdgeExperimental <- R6::R6Class(
  "AdductEdgeExperimental",
  public = list(
    `mzDelta` = NULL,
    `annotation` = NULL,
    `from` = NULL,
    `to` = NULL,
    `mergedCorrelation` = NULL,
    `representativeCorrelation` = NULL,
    `ms2cosine` = NULL,
    `pvalue` = NULL,
    `intensityRatioScore` = NULL,

    #' @description
    #' Initialize a new AdductEdgeExperimental class.
    #'
    #' @param mzDelta mzDelta
    #' @param annotation annotation
    #' @param from from
    #' @param to to
    #' @param mergedCorrelation mergedCorrelation
    #' @param representativeCorrelation representativeCorrelation
    #' @param ms2cosine ms2cosine
    #' @param pvalue pvalue
    #' @param intensityRatioScore intensityRatioScore
    #' @param ... Other optional arguments.
    initialize = function(`mzDelta` = NULL, `annotation` = NULL, `from` = NULL, `to` = NULL, `mergedCorrelation` = NULL, `representativeCorrelation` = NULL, `ms2cosine` = NULL, `pvalue` = NULL, `intensityRatioScore` = NULL, ...) {
      if (!is.null(`mzDelta`)) {
        if (!(is.numeric(`mzDelta`) && length(`mzDelta`) == 1)) {
          stop(paste("Error! Invalid data for `mzDelta`. Must be a number:", `mzDelta`))
        }
        self$`mzDelta` <- `mzDelta`
      }
      if (!is.null(`annotation`)) {
        if (!(is.character(`annotation`) && length(`annotation`) == 1)) {
          stop(paste("Error! Invalid data for `annotation`. Must be a string:", `annotation`))
        }
        self$`annotation` <- `annotation`
      }
      if (!is.null(`from`)) {
        if (!(is.numeric(`from`) && length(`from`) == 1)) {
          stop(paste("Error! Invalid data for `from`. Must be an integer:", `from`))
        }
        self$`from` <- `from`
      }
      if (!is.null(`to`)) {
        if (!(is.numeric(`to`) && length(`to`) == 1)) {
          stop(paste("Error! Invalid data for `to`. Must be an integer:", `to`))
        }
        self$`to` <- `to`
      }
      if (!is.null(`mergedCorrelation`)) {
        if (!(is.numeric(`mergedCorrelation`) && length(`mergedCorrelation`) == 1)) {
          stop(paste("Error! Invalid data for `mergedCorrelation`. Must be a number:", `mergedCorrelation`))
        }
        self$`mergedCorrelation` <- `mergedCorrelation`
      }
      if (!is.null(`representativeCorrelation`)) {
        if (!(is.numeric(`representativeCorrelation`) && length(`representativeCorrelation`) == 1)) {
          stop(paste("Error! Invalid data for `representativeCorrelation`. Must be a number:", `representativeCorrelation`))
        }
        self$`representativeCorrelation` <- `representativeCorrelation`
      }
      if (!is.null(`ms2cosine`)) {
        if (!(is.numeric(`ms2cosine`) && length(`ms2cosine`) == 1)) {
          stop(paste("Error! Invalid data for `ms2cosine`. Must be a number:", `ms2cosine`))
        }
        self$`ms2cosine` <- `ms2cosine`
      }
      if (!is.null(`pvalue`)) {
        if (!(is.numeric(`pvalue`) && length(`pvalue`) == 1)) {
          stop(paste("Error! Invalid data for `pvalue`. Must be a number:", `pvalue`))
        }
        self$`pvalue` <- `pvalue`
      }
      if (!is.null(`intensityRatioScore`)) {
        if (!(is.numeric(`intensityRatioScore`) && length(`intensityRatioScore`) == 1)) {
          stop(paste("Error! Invalid data for `intensityRatioScore`. Must be a number:", `intensityRatioScore`))
        }
        self$`intensityRatioScore` <- `intensityRatioScore`
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
    #' @return AdductEdgeExperimental as a base R list.
    #' @examples
    #' # convert array of AdductEdgeExperimental (x) to a data frame
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
    #' Convert AdductEdgeExperimental to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AdductEdgeExperimentalObject <- list()
      if (!is.null(self$`mzDelta`)) {
        AdductEdgeExperimentalObject[["mzDelta"]] <-
          self$`mzDelta`
      }
      if (!is.null(self$`annotation`)) {
        AdductEdgeExperimentalObject[["annotation"]] <-
          self$`annotation`
      }
      if (!is.null(self$`from`)) {
        AdductEdgeExperimentalObject[["from"]] <-
          self$`from`
      }
      if (!is.null(self$`to`)) {
        AdductEdgeExperimentalObject[["to"]] <-
          self$`to`
      }
      if (!is.null(self$`mergedCorrelation`)) {
        AdductEdgeExperimentalObject[["mergedCorrelation"]] <-
          self$`mergedCorrelation`
      }
      if (!is.null(self$`representativeCorrelation`)) {
        AdductEdgeExperimentalObject[["representativeCorrelation"]] <-
          self$`representativeCorrelation`
      }
      if (!is.null(self$`ms2cosine`)) {
        AdductEdgeExperimentalObject[["ms2cosine"]] <-
          self$`ms2cosine`
      }
      if (!is.null(self$`pvalue`)) {
        AdductEdgeExperimentalObject[["pvalue"]] <-
          self$`pvalue`
      }
      if (!is.null(self$`intensityRatioScore`)) {
        AdductEdgeExperimentalObject[["intensityRatioScore"]] <-
          self$`intensityRatioScore`
      }
      return(AdductEdgeExperimentalObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AdductEdgeExperimental
    #'
    #' @param input_json the JSON input
    #' @return the instance of AdductEdgeExperimental
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`mzDelta`)) {
        self$`mzDelta` <- this_object$`mzDelta`
      }
      if (!is.null(this_object$`annotation`)) {
        self$`annotation` <- this_object$`annotation`
      }
      if (!is.null(this_object$`from`)) {
        self$`from` <- this_object$`from`
      }
      if (!is.null(this_object$`to`)) {
        self$`to` <- this_object$`to`
      }
      if (!is.null(this_object$`mergedCorrelation`)) {
        self$`mergedCorrelation` <- this_object$`mergedCorrelation`
      }
      if (!is.null(this_object$`representativeCorrelation`)) {
        self$`representativeCorrelation` <- this_object$`representativeCorrelation`
      }
      if (!is.null(this_object$`ms2cosine`)) {
        self$`ms2cosine` <- this_object$`ms2cosine`
      }
      if (!is.null(this_object$`pvalue`)) {
        self$`pvalue` <- this_object$`pvalue`
      }
      if (!is.null(this_object$`intensityRatioScore`)) {
        self$`intensityRatioScore` <- this_object$`intensityRatioScore`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AdductEdgeExperimental in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AdductEdgeExperimental
    #'
    #' @param input_json the JSON input
    #' @return the instance of AdductEdgeExperimental
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`mzDelta` <- this_object$`mzDelta`
      self$`annotation` <- this_object$`annotation`
      self$`from` <- this_object$`from`
      self$`to` <- this_object$`to`
      self$`mergedCorrelation` <- this_object$`mergedCorrelation`
      self$`representativeCorrelation` <- this_object$`representativeCorrelation`
      self$`ms2cosine` <- this_object$`ms2cosine`
      self$`pvalue` <- this_object$`pvalue`
      self$`intensityRatioScore` <- this_object$`intensityRatioScore`
      self
    },

    #' @description
    #' Validate JSON input with respect to AdductEdgeExperimental and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AdductEdgeExperimental
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
# AdductEdgeExperimental$unlock()
#
## Below is an example to define the print function
# AdductEdgeExperimental$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AdductEdgeExperimental$lock()

