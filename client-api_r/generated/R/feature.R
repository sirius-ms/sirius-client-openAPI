#' Create a new Feature
#'
#' @description
#' A feature as it has been detected in one single run, in contrast to an AlignedFeature which combines the  features of the same compound over all runs it was detected in.  <p>  It provides the properties that are specific to the run it was detected in, such as its position on the  retention time axis of that run and its quantity within that run.
#'
#' @docType class
#' @title Feature
#' @description Feature Class
#' @format An \code{R6Class} generator object
#' @field featureId Identifier character [optional]
#' @field alignedFeatureId ID of the AlignedFeature this feature belongs to character [optional]
#' @field runId ID of the run this feature belongs to character [optional]
#' @field averageMz Average m/z over the whole feature numeric [optional]
#' @field apexMz m/z at the apex of the feature, the m/z this feature was measured at in its run numeric [optional]
#' @field rtStartSeconds Start of the feature on the retention time axis in seconds numeric [optional]
#' @field rtEndSeconds End of the feature on the retention time axis in seconds numeric [optional]
#' @field rtApexSeconds Apex of the feature on the retention time axis in seconds numeric [optional]
#' @field rtFwhmSeconds Full width at half maximum of the feature on the retention time axis in seconds numeric [optional]
#' @field apexIntensity Feature quantity measured as the intensity of the apex of the feature numeric [optional]
#' @field areaUnderCurve Feature quantity measured as the area under the curve of the whole feature numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Feature <- R6::R6Class(
  "Feature",
  public = list(
    `featureId` = NULL,
    `alignedFeatureId` = NULL,
    `runId` = NULL,
    `averageMz` = NULL,
    `apexMz` = NULL,
    `rtStartSeconds` = NULL,
    `rtEndSeconds` = NULL,
    `rtApexSeconds` = NULL,
    `rtFwhmSeconds` = NULL,
    `apexIntensity` = NULL,
    `areaUnderCurve` = NULL,

    #' @description
    #' Initialize a new Feature class.
    #'
    #' @param featureId Identifier
    #' @param alignedFeatureId ID of the AlignedFeature this feature belongs to
    #' @param runId ID of the run this feature belongs to
    #' @param averageMz Average m/z over the whole feature
    #' @param apexMz m/z at the apex of the feature, the m/z this feature was measured at in its run
    #' @param rtStartSeconds Start of the feature on the retention time axis in seconds
    #' @param rtEndSeconds End of the feature on the retention time axis in seconds
    #' @param rtApexSeconds Apex of the feature on the retention time axis in seconds
    #' @param rtFwhmSeconds Full width at half maximum of the feature on the retention time axis in seconds
    #' @param apexIntensity Feature quantity measured as the intensity of the apex of the feature
    #' @param areaUnderCurve Feature quantity measured as the area under the curve of the whole feature
    #' @param ... Other optional arguments.
    initialize = function(`featureId` = NULL, `alignedFeatureId` = NULL, `runId` = NULL, `averageMz` = NULL, `apexMz` = NULL, `rtStartSeconds` = NULL, `rtEndSeconds` = NULL, `rtApexSeconds` = NULL, `rtFwhmSeconds` = NULL, `apexIntensity` = NULL, `areaUnderCurve` = NULL, ...) {
      if (!is.null(`featureId`)) {
        if (!(is.character(`featureId`) && length(`featureId`) == 1)) {
          stop(paste("Error! Invalid data for `featureId`. Must be a string:", `featureId`))
        }
        self$`featureId` <- `featureId`
      }
      if (!is.null(`alignedFeatureId`)) {
        if (!(is.character(`alignedFeatureId`) && length(`alignedFeatureId`) == 1)) {
          stop(paste("Error! Invalid data for `alignedFeatureId`. Must be a string:", `alignedFeatureId`))
        }
        self$`alignedFeatureId` <- `alignedFeatureId`
      }
      if (!is.null(`runId`)) {
        if (!(is.character(`runId`) && length(`runId`) == 1)) {
          stop(paste("Error! Invalid data for `runId`. Must be a string:", `runId`))
        }
        self$`runId` <- `runId`
      }
      if (!is.null(`averageMz`)) {
        if (!(is.numeric(`averageMz`) && length(`averageMz`) == 1)) {
          stop(paste("Error! Invalid data for `averageMz`. Must be a number:", `averageMz`))
        }
        self$`averageMz` <- `averageMz`
      }
      if (!is.null(`apexMz`)) {
        if (!(is.numeric(`apexMz`) && length(`apexMz`) == 1)) {
          stop(paste("Error! Invalid data for `apexMz`. Must be a number:", `apexMz`))
        }
        self$`apexMz` <- `apexMz`
      }
      if (!is.null(`rtStartSeconds`)) {
        if (!(is.numeric(`rtStartSeconds`) && length(`rtStartSeconds`) == 1)) {
          stop(paste("Error! Invalid data for `rtStartSeconds`. Must be a number:", `rtStartSeconds`))
        }
        self$`rtStartSeconds` <- `rtStartSeconds`
      }
      if (!is.null(`rtEndSeconds`)) {
        if (!(is.numeric(`rtEndSeconds`) && length(`rtEndSeconds`) == 1)) {
          stop(paste("Error! Invalid data for `rtEndSeconds`. Must be a number:", `rtEndSeconds`))
        }
        self$`rtEndSeconds` <- `rtEndSeconds`
      }
      if (!is.null(`rtApexSeconds`)) {
        if (!(is.numeric(`rtApexSeconds`) && length(`rtApexSeconds`) == 1)) {
          stop(paste("Error! Invalid data for `rtApexSeconds`. Must be a number:", `rtApexSeconds`))
        }
        self$`rtApexSeconds` <- `rtApexSeconds`
      }
      if (!is.null(`rtFwhmSeconds`)) {
        if (!(is.numeric(`rtFwhmSeconds`) && length(`rtFwhmSeconds`) == 1)) {
          stop(paste("Error! Invalid data for `rtFwhmSeconds`. Must be a number:", `rtFwhmSeconds`))
        }
        self$`rtFwhmSeconds` <- `rtFwhmSeconds`
      }
      if (!is.null(`apexIntensity`)) {
        if (!(is.numeric(`apexIntensity`) && length(`apexIntensity`) == 1)) {
          stop(paste("Error! Invalid data for `apexIntensity`. Must be a number:", `apexIntensity`))
        }
        self$`apexIntensity` <- `apexIntensity`
      }
      if (!is.null(`areaUnderCurve`)) {
        if (!(is.numeric(`areaUnderCurve`) && length(`areaUnderCurve`) == 1)) {
          stop(paste("Error! Invalid data for `areaUnderCurve`. Must be a number:", `areaUnderCurve`))
        }
        self$`areaUnderCurve` <- `areaUnderCurve`
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
    #' @return Feature as a base R list.
    #' @examples
    #' # convert array of Feature (x) to a data frame
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
    #' Convert Feature to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      FeatureObject <- list()
      if (!is.null(self$`featureId`)) {
        FeatureObject[["featureId"]] <-
          self$`featureId`
      }
      if (!is.null(self$`alignedFeatureId`)) {
        FeatureObject[["alignedFeatureId"]] <-
          self$`alignedFeatureId`
      }
      if (!is.null(self$`runId`)) {
        FeatureObject[["runId"]] <-
          self$`runId`
      }
      if (!is.null(self$`averageMz`)) {
        FeatureObject[["averageMz"]] <-
          self$`averageMz`
      }
      if (!is.null(self$`apexMz`)) {
        FeatureObject[["apexMz"]] <-
          self$`apexMz`
      }
      if (!is.null(self$`rtStartSeconds`)) {
        FeatureObject[["rtStartSeconds"]] <-
          self$`rtStartSeconds`
      }
      if (!is.null(self$`rtEndSeconds`)) {
        FeatureObject[["rtEndSeconds"]] <-
          self$`rtEndSeconds`
      }
      if (!is.null(self$`rtApexSeconds`)) {
        FeatureObject[["rtApexSeconds"]] <-
          self$`rtApexSeconds`
      }
      if (!is.null(self$`rtFwhmSeconds`)) {
        FeatureObject[["rtFwhmSeconds"]] <-
          self$`rtFwhmSeconds`
      }
      if (!is.null(self$`apexIntensity`)) {
        FeatureObject[["apexIntensity"]] <-
          self$`apexIntensity`
      }
      if (!is.null(self$`areaUnderCurve`)) {
        FeatureObject[["areaUnderCurve"]] <-
          self$`areaUnderCurve`
      }
      return(FeatureObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of Feature
    #'
    #' @param input_json the JSON input
    #' @return the instance of Feature
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`featureId`)) {
        self$`featureId` <- this_object$`featureId`
      }
      if (!is.null(this_object$`alignedFeatureId`)) {
        self$`alignedFeatureId` <- this_object$`alignedFeatureId`
      }
      if (!is.null(this_object$`runId`)) {
        self$`runId` <- this_object$`runId`
      }
      if (!is.null(this_object$`averageMz`)) {
        self$`averageMz` <- this_object$`averageMz`
      }
      if (!is.null(this_object$`apexMz`)) {
        self$`apexMz` <- this_object$`apexMz`
      }
      if (!is.null(this_object$`rtStartSeconds`)) {
        self$`rtStartSeconds` <- this_object$`rtStartSeconds`
      }
      if (!is.null(this_object$`rtEndSeconds`)) {
        self$`rtEndSeconds` <- this_object$`rtEndSeconds`
      }
      if (!is.null(this_object$`rtApexSeconds`)) {
        self$`rtApexSeconds` <- this_object$`rtApexSeconds`
      }
      if (!is.null(this_object$`rtFwhmSeconds`)) {
        self$`rtFwhmSeconds` <- this_object$`rtFwhmSeconds`
      }
      if (!is.null(this_object$`apexIntensity`)) {
        self$`apexIntensity` <- this_object$`apexIntensity`
      }
      if (!is.null(this_object$`areaUnderCurve`)) {
        self$`areaUnderCurve` <- this_object$`areaUnderCurve`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Feature in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Feature
    #'
    #' @param input_json the JSON input
    #' @return the instance of Feature
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`featureId` <- this_object$`featureId`
      self$`alignedFeatureId` <- this_object$`alignedFeatureId`
      self$`runId` <- this_object$`runId`
      self$`averageMz` <- this_object$`averageMz`
      self$`apexMz` <- this_object$`apexMz`
      self$`rtStartSeconds` <- this_object$`rtStartSeconds`
      self$`rtEndSeconds` <- this_object$`rtEndSeconds`
      self$`rtApexSeconds` <- this_object$`rtApexSeconds`
      self$`rtFwhmSeconds` <- this_object$`rtFwhmSeconds`
      self$`apexIntensity` <- this_object$`apexIntensity`
      self$`areaUnderCurve` <- this_object$`areaUnderCurve`
      self
    },

    #' @description
    #' Validate JSON input with respect to Feature and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Feature
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
# Feature$unlock()
#
## Below is an example to define the print function
# Feature$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Feature$lock()

