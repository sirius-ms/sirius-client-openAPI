#' Create a new Compound
#'
#' @description
#' Compound Class
#'
#' @docType class
#' @title Compound
#' @description Compound Class
#' @format An \code{R6Class} generator object
#' @field compoundId uid of this compound Entity character [optional]
#' @field name Some (optional) human-readable name character [optional]
#' @field rtStartSeconds The merged/consensus retention time start (earliest rt) of this compound numeric [optional]
#' @field rtEndSeconds The merged/consensus retention time end (latest rt) of this compound numeric [optional]
#' @field neutralMass Neutral mass of this compound. Ion masse minus the mass of the assigned adduct of each feature of  this compound should result in the same neutral mass numeric [optional]
#' @field features List of aligned features (adducts) that belong to the same (this) compound list(\link{AlignedFeature}) [optional]
#' @field consensusAnnotations The consensus of the top annotations from all the features of this compound.  Null if it was not requested und non-null otherwise. Might contain empty fields if results are not available \link{ConsensusAnnotationsCSI} [optional]
#' @field consensusAnnotationsDeNovo The consensus of the top de novo annotations from all the features of this compound.  Null if it was not requested und non-null otherwise. Might contain empty fields if results are not available \link{ConsensusAnnotationsDeNovo} [optional]
#' @field customAnnotations Alternative annotations selected by the User. \link{ConsensusAnnotationsCSI} [optional]
#' @field tags Key: tagName, value: tag named list(\link{Tag}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Compound <- R6::R6Class(
  "Compound",
  public = list(
    `compoundId` = NULL,
    `name` = NULL,
    `rtStartSeconds` = NULL,
    `rtEndSeconds` = NULL,
    `neutralMass` = NULL,
    `features` = NULL,
    `consensusAnnotations` = NULL,
    `consensusAnnotationsDeNovo` = NULL,
    `customAnnotations` = NULL,
    `tags` = NULL,

    #' @description
    #' Initialize a new Compound class.
    #'
    #' @param compoundId uid of this compound Entity
    #' @param name Some (optional) human-readable name
    #' @param rtStartSeconds The merged/consensus retention time start (earliest rt) of this compound
    #' @param rtEndSeconds The merged/consensus retention time end (latest rt) of this compound
    #' @param neutralMass Neutral mass of this compound. Ion masse minus the mass of the assigned adduct of each feature of  this compound should result in the same neutral mass
    #' @param features List of aligned features (adducts) that belong to the same (this) compound
    #' @param consensusAnnotations The consensus of the top annotations from all the features of this compound.  Null if it was not requested und non-null otherwise. Might contain empty fields if results are not available
    #' @param consensusAnnotationsDeNovo The consensus of the top de novo annotations from all the features of this compound.  Null if it was not requested und non-null otherwise. Might contain empty fields if results are not available
    #' @param customAnnotations Alternative annotations selected by the User.
    #' @param tags Key: tagName, value: tag
    #' @param ... Other optional arguments.
    initialize = function(`compoundId` = NULL, `name` = NULL, `rtStartSeconds` = NULL, `rtEndSeconds` = NULL, `neutralMass` = NULL, `features` = NULL, `consensusAnnotations` = NULL, `consensusAnnotationsDeNovo` = NULL, `customAnnotations` = NULL, `tags` = NULL, ...) {
      if (!is.null(`compoundId`)) {
        if (!(is.character(`compoundId`) && length(`compoundId`) == 1)) {
          stop(paste("Error! Invalid data for `compoundId`. Must be a string:", `compoundId`))
        }
        self$`compoundId` <- `compoundId`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
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
      if (!is.null(`neutralMass`)) {
        if (!(is.numeric(`neutralMass`) && length(`neutralMass`) == 1)) {
          stop(paste("Error! Invalid data for `neutralMass`. Must be a number:", `neutralMass`))
        }
        self$`neutralMass` <- `neutralMass`
      }
      if (!is.null(`features`)) {
        stopifnot(is.vector(`features`), length(`features`) != 0)
        sapply(`features`, function(x) stopifnot(R6::is.R6(x)))
        self$`features` <- `features`
      }
      if (!is.null(`consensusAnnotations`)) {
        stopifnot(R6::is.R6(`consensusAnnotations`))
        self$`consensusAnnotations` <- `consensusAnnotations`
      }
      if (!is.null(`consensusAnnotationsDeNovo`)) {
        stopifnot(R6::is.R6(`consensusAnnotationsDeNovo`))
        self$`consensusAnnotationsDeNovo` <- `consensusAnnotationsDeNovo`
      }
      if (!is.null(`customAnnotations`)) {
        stopifnot(R6::is.R6(`customAnnotations`))
        self$`customAnnotations` <- `customAnnotations`
      }
      if (!is.null(`tags`)) {
        stopifnot(is.vector(`tags`), length(`tags`) != 0)
        sapply(`tags`, function(x) stopifnot(R6::is.R6(x)))
        self$`tags` <- `tags`
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
    #' @return Compound as a base R list.
    #' @examples
    #' # convert array of Compound (x) to a data frame
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
    #' Convert Compound to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CompoundObject <- list()
      if (!is.null(self$`compoundId`)) {
        CompoundObject[["compoundId"]] <-
          self$`compoundId`
      }
      if (!is.null(self$`name`)) {
        CompoundObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`rtStartSeconds`)) {
        CompoundObject[["rtStartSeconds"]] <-
          self$`rtStartSeconds`
      }
      if (!is.null(self$`rtEndSeconds`)) {
        CompoundObject[["rtEndSeconds"]] <-
          self$`rtEndSeconds`
      }
      if (!is.null(self$`neutralMass`)) {
        CompoundObject[["neutralMass"]] <-
          self$`neutralMass`
      }
      if (!is.null(self$`features`)) {
        CompoundObject[["features"]] <-
          lapply(self$`features`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`consensusAnnotations`)) {
        CompoundObject[["consensusAnnotations"]] <-
          self$`consensusAnnotations`$toSimpleType()
      }
      if (!is.null(self$`consensusAnnotationsDeNovo`)) {
        CompoundObject[["consensusAnnotationsDeNovo"]] <-
          self$`consensusAnnotationsDeNovo`$toSimpleType()
      }
      if (!is.null(self$`customAnnotations`)) {
        CompoundObject[["customAnnotations"]] <-
          self$`customAnnotations`$toSimpleType()
      }
      if (!is.null(self$`tags`)) {
        CompoundObject[["tags"]] <-
          lapply(self$`tags`, function(x) x$toSimpleType())
      }
      return(CompoundObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of Compound
    #'
    #' @param input_json the JSON input
    #' @return the instance of Compound
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`compoundId`)) {
        self$`compoundId` <- this_object$`compoundId`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`rtStartSeconds`)) {
        self$`rtStartSeconds` <- this_object$`rtStartSeconds`
      }
      if (!is.null(this_object$`rtEndSeconds`)) {
        self$`rtEndSeconds` <- this_object$`rtEndSeconds`
      }
      if (!is.null(this_object$`neutralMass`)) {
        self$`neutralMass` <- this_object$`neutralMass`
      }
      if (!is.null(this_object$`features`)) {
        self$`features` <- ApiClient$new()$deserializeObj(this_object$`features`, "array[AlignedFeature]", loadNamespace("Rsirius"))
      }
      if (!is.null(this_object$`consensusAnnotations`)) {
        `consensusannotations_object` <- ConsensusAnnotationsCSI$new()
        `consensusannotations_object`$fromJSON(jsonlite::toJSON(this_object$`consensusAnnotations`, auto_unbox = TRUE, digits = NA, null = 'null'))
        self$`consensusAnnotations` <- `consensusannotations_object`
      }
      if (!is.null(this_object$`consensusAnnotationsDeNovo`)) {
        `consensusannotationsdenovo_object` <- ConsensusAnnotationsDeNovo$new()
        `consensusannotationsdenovo_object`$fromJSON(jsonlite::toJSON(this_object$`consensusAnnotationsDeNovo`, auto_unbox = TRUE, digits = NA, null = 'null'))
        self$`consensusAnnotationsDeNovo` <- `consensusannotationsdenovo_object`
      }
      if (!is.null(this_object$`customAnnotations`)) {
        `customannotations_object` <- ConsensusAnnotationsCSI$new()
        `customannotations_object`$fromJSON(jsonlite::toJSON(this_object$`customAnnotations`, auto_unbox = TRUE, digits = NA, null = 'null'))
        self$`customAnnotations` <- `customannotations_object`
      }
      if (!is.null(this_object$`tags`)) {
        self$`tags` <- ApiClient$new()$deserializeObj(this_object$`tags`, "map(Tag)", loadNamespace("Rsirius"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Compound in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Compound
    #'
    #' @param input_json the JSON input
    #' @return the instance of Compound
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`compoundId` <- this_object$`compoundId`
      self$`name` <- this_object$`name`
      self$`rtStartSeconds` <- this_object$`rtStartSeconds`
      self$`rtEndSeconds` <- this_object$`rtEndSeconds`
      self$`neutralMass` <- this_object$`neutralMass`
      self$`features` <- ApiClient$new()$deserializeObj(this_object$`features`, "array[AlignedFeature]", loadNamespace("Rsirius"))
      self$`consensusAnnotations` <- ConsensusAnnotationsCSI$new()$fromJSON(jsonlite::toJSON(this_object$`consensusAnnotations`, auto_unbox = TRUE, digits = NA, null = 'null'))
      self$`consensusAnnotationsDeNovo` <- ConsensusAnnotationsDeNovo$new()$fromJSON(jsonlite::toJSON(this_object$`consensusAnnotationsDeNovo`, auto_unbox = TRUE, digits = NA, null = 'null'))
      self$`customAnnotations` <- ConsensusAnnotationsCSI$new()$fromJSON(jsonlite::toJSON(this_object$`customAnnotations`, auto_unbox = TRUE, digits = NA, null = 'null'))
      self$`tags` <- ApiClient$new()$deserializeObj(this_object$`tags`, "map(Tag)", loadNamespace("Rsirius"))
      self
    },

    #' @description
    #' Validate JSON input with respect to Compound and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Compound
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
# Compound$unlock()
#
## Below is an example to define the print function
# Compound$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Compound$lock()

