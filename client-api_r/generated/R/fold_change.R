#' Create a new FoldChange
#'
#' @description
#' FoldChange Class
#'
#' @docType class
#' @title FoldChange
#' @description FoldChange Class
#' @format An \code{R6Class} generator object
#' @field leftGroup  character [optional]
#' @field rightGroup  character [optional]
#' @field aggregation  character [optional]
#' @field quantification  character [optional]
#' @field quantType  character
#' @field objectId  character
#' @field foldChange  numeric
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FoldChange <- R6::R6Class(
  "FoldChange",
  public = list(
    `leftGroup` = NULL,
    `rightGroup` = NULL,
    `aggregation` = NULL,
    `quantification` = NULL,
    `quantType` = NULL,
    `objectId` = NULL,
    `foldChange` = NULL,

    #' @description
    #' Initialize a new FoldChange class.
    #'
    #' @param quantType quantType
    #' @param objectId objectId
    #' @param foldChange foldChange
    #' @param leftGroup leftGroup
    #' @param rightGroup rightGroup
    #' @param aggregation aggregation
    #' @param quantification quantification
    #' @param ... Other optional arguments.
    initialize = function(`quantType`, `objectId`, `foldChange`, `leftGroup` = NULL, `rightGroup` = NULL, `aggregation` = NULL, `quantification` = NULL, ...) {
      if (!missing(`quantType`)) {
        if (!(`quantType` %in% c("FEATURES", "COMPOUNDS"))) {
          stop(paste("Error! \"", `quantType`, "\" cannot be assigned to `quantType`. Must be \"FEATURES\", \"COMPOUNDS\".", sep = ""))
        }
        if (!(is.character(`quantType`) && length(`quantType`) == 1)) {
          stop(paste("Error! Invalid data for `quantType`. Must be a string:", `quantType`))
        }
        self$`quantType` <- `quantType`
      }
      if (!missing(`objectId`)) {
        if (!(is.character(`objectId`) && length(`objectId`) == 1)) {
          stop(paste("Error! Invalid data for `objectId`. Must be a string:", `objectId`))
        }
        self$`objectId` <- `objectId`
      }
      if (!missing(`foldChange`)) {
        if (!(is.numeric(`foldChange`) && length(`foldChange`) == 1)) {
          stop(paste("Error! Invalid data for `foldChange`. Must be a number:", `foldChange`))
        }
        self$`foldChange` <- `foldChange`
      }
      if (!is.null(`leftGroup`)) {
        if (!(is.character(`leftGroup`) && length(`leftGroup`) == 1)) {
          stop(paste("Error! Invalid data for `leftGroup`. Must be a string:", `leftGroup`))
        }
        self$`leftGroup` <- `leftGroup`
      }
      if (!is.null(`rightGroup`)) {
        if (!(is.character(`rightGroup`) && length(`rightGroup`) == 1)) {
          stop(paste("Error! Invalid data for `rightGroup`. Must be a string:", `rightGroup`))
        }
        self$`rightGroup` <- `rightGroup`
      }
      if (!is.null(`aggregation`)) {
        if (!(`aggregation` %in% c("AVG", "MIN", "MAX"))) {
          stop(paste("Error! \"", `aggregation`, "\" cannot be assigned to `aggregation`. Must be \"AVG\", \"MIN\", \"MAX\".", sep = ""))
        }
        if (!(is.character(`aggregation`) && length(`aggregation`) == 1)) {
          stop(paste("Error! Invalid data for `aggregation`. Must be a string:", `aggregation`))
        }
        self$`aggregation` <- `aggregation`
      }
      if (!is.null(`quantification`)) {
        if (!(`quantification` %in% c("APEX_INTENSITY", "AREA_UNDER_CURVE"))) {
          stop(paste("Error! \"", `quantification`, "\" cannot be assigned to `quantification`. Must be \"APEX_INTENSITY\", \"AREA_UNDER_CURVE\".", sep = ""))
        }
        if (!(is.character(`quantification`) && length(`quantification`) == 1)) {
          stop(paste("Error! Invalid data for `quantification`. Must be a string:", `quantification`))
        }
        self$`quantification` <- `quantification`
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
    #' @return FoldChange as a base R list.
    #' @examples
    #' # convert array of FoldChange (x) to a data frame
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
    #' Convert FoldChange to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      FoldChangeObject <- list()
      if (!is.null(self$`leftGroup`)) {
        FoldChangeObject[["leftGroup"]] <-
          self$`leftGroup`
      }
      if (!is.null(self$`rightGroup`)) {
        FoldChangeObject[["rightGroup"]] <-
          self$`rightGroup`
      }
      if (!is.null(self$`aggregation`)) {
        FoldChangeObject[["aggregation"]] <-
          self$`aggregation`
      }
      if (!is.null(self$`quantification`)) {
        FoldChangeObject[["quantification"]] <-
          self$`quantification`
      }
      if (!is.null(self$`quantType`)) {
        FoldChangeObject[["quantType"]] <-
          self$`quantType`
      }
      if (!is.null(self$`objectId`)) {
        FoldChangeObject[["objectId"]] <-
          self$`objectId`
      }
      if (!is.null(self$`foldChange`)) {
        FoldChangeObject[["foldChange"]] <-
          self$`foldChange`
      }
      return(FoldChangeObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of FoldChange
    #'
    #' @param input_json the JSON input
    #' @return the instance of FoldChange
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`leftGroup`)) {
        self$`leftGroup` <- this_object$`leftGroup`
      }
      if (!is.null(this_object$`rightGroup`)) {
        self$`rightGroup` <- this_object$`rightGroup`
      }
      if (!is.null(this_object$`aggregation`)) {
        if (!is.null(this_object$`aggregation`) && !(this_object$`aggregation` %in% c("AVG", "MIN", "MAX"))) {
          stop(paste("Error! \"", this_object$`aggregation`, "\" cannot be assigned to `aggregation`. Must be \"AVG\", \"MIN\", \"MAX\".", sep = ""))
        }
        self$`aggregation` <- this_object$`aggregation`
      }
      if (!is.null(this_object$`quantification`)) {
        if (!is.null(this_object$`quantification`) && !(this_object$`quantification` %in% c("APEX_INTENSITY", "AREA_UNDER_CURVE"))) {
          stop(paste("Error! \"", this_object$`quantification`, "\" cannot be assigned to `quantification`. Must be \"APEX_INTENSITY\", \"AREA_UNDER_CURVE\".", sep = ""))
        }
        self$`quantification` <- this_object$`quantification`
      }
      if (!is.null(this_object$`quantType`)) {
        if (!is.null(this_object$`quantType`) && !(this_object$`quantType` %in% c("FEATURES", "COMPOUNDS"))) {
          stop(paste("Error! \"", this_object$`quantType`, "\" cannot be assigned to `quantType`. Must be \"FEATURES\", \"COMPOUNDS\".", sep = ""))
        }
        self$`quantType` <- this_object$`quantType`
      }
      if (!is.null(this_object$`objectId`)) {
        self$`objectId` <- this_object$`objectId`
      }
      if (!is.null(this_object$`foldChange`)) {
        self$`foldChange` <- this_object$`foldChange`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return FoldChange in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of FoldChange
    #'
    #' @param input_json the JSON input
    #' @return the instance of FoldChange
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`leftGroup` <- this_object$`leftGroup`
      self$`rightGroup` <- this_object$`rightGroup`
      if (!is.null(this_object$`aggregation`) && !(this_object$`aggregation` %in% c("AVG", "MIN", "MAX"))) {
        stop(paste("Error! \"", this_object$`aggregation`, "\" cannot be assigned to `aggregation`. Must be \"AVG\", \"MIN\", \"MAX\".", sep = ""))
      }
      self$`aggregation` <- this_object$`aggregation`
      if (!is.null(this_object$`quantification`) && !(this_object$`quantification` %in% c("APEX_INTENSITY", "AREA_UNDER_CURVE"))) {
        stop(paste("Error! \"", this_object$`quantification`, "\" cannot be assigned to `quantification`. Must be \"APEX_INTENSITY\", \"AREA_UNDER_CURVE\".", sep = ""))
      }
      self$`quantification` <- this_object$`quantification`
      if (!is.null(this_object$`quantType`) && !(this_object$`quantType` %in% c("FEATURES", "COMPOUNDS"))) {
        stop(paste("Error! \"", this_object$`quantType`, "\" cannot be assigned to `quantType`. Must be \"FEATURES\", \"COMPOUNDS\".", sep = ""))
      }
      self$`quantType` <- this_object$`quantType`
      self$`objectId` <- this_object$`objectId`
      self$`foldChange` <- this_object$`foldChange`
      self
    },

    #' @description
    #' Validate JSON input with respect to FoldChange and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `quantType`
      if (!is.null(input_json$`quantType`)) {
        if (!(is.character(input_json$`quantType`) && length(input_json$`quantType`) == 1)) {
          stop(paste("Error! Invalid data for `quantType`. Must be a string:", input_json$`quantType`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for FoldChange: the required field `quantType` is missing."))
      }
      # check the required field `objectId`
      if (!is.null(input_json$`objectId`)) {
        if (!(is.character(input_json$`objectId`) && length(input_json$`objectId`) == 1)) {
          stop(paste("Error! Invalid data for `objectId`. Must be a string:", input_json$`objectId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for FoldChange: the required field `objectId` is missing."))
      }
      # check the required field `foldChange`
      if (!is.null(input_json$`foldChange`)) {
        if (!(is.numeric(input_json$`foldChange`) && length(input_json$`foldChange`) == 1)) {
          stop(paste("Error! Invalid data for `foldChange`. Must be a number:", input_json$`foldChange`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for FoldChange: the required field `foldChange` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of FoldChange
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `quantType` is null
      if (is.null(self$`quantType`)) {
        return(FALSE)
      }

      # check if the required `objectId` is null
      if (is.null(self$`objectId`)) {
        return(FALSE)
      }

      # check if the required `foldChange` is null
      if (is.null(self$`foldChange`)) {
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
      # check if the required `quantType` is null
      if (is.null(self$`quantType`)) {
        invalid_fields["quantType"] <- "Non-nullable required field `quantType` cannot be null."
      }

      # check if the required `objectId` is null
      if (is.null(self$`objectId`)) {
        invalid_fields["objectId"] <- "Non-nullable required field `objectId` cannot be null."
      }

      # check if the required `foldChange` is null
      if (is.null(self$`foldChange`)) {
        invalid_fields["foldChange"] <- "Non-nullable required field `foldChange` cannot be null."
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
# FoldChange$unlock()
#
## Below is an example to define the print function
# FoldChange$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# FoldChange$lock()

