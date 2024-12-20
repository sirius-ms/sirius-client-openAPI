#' Create a new CompoundClasses
#'
#' @description
#' Container class that holds the most likely compound class for different levels of each ontology for a  certain Compound/Feature/FormulaCandidate/PredictedFingerprint.
#'
#' @docType class
#' @title CompoundClasses
#' @description CompoundClasses Class
#' @format An \code{R6Class} generator object
#' @field npcPathway  \link{CompoundClass} [optional]
#' @field npcSuperclass  \link{CompoundClass} [optional]
#' @field npcClass  \link{CompoundClass} [optional]
#' @field classyFireLineage Most likely ClassyFire lineage from ordered from least specific to most specific class  classyFireLineage.get(classyFireLineage.size() - 1) gives the most specific ClassyFire compound class annotation list(\link{CompoundClass}) [optional]
#' @field classyFireAlternatives Alternative ClassyFire classes with high probability that do not fit into the linage list(\link{CompoundClass}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CompoundClasses <- R6::R6Class(
  "CompoundClasses",
  public = list(
    `npcPathway` = NULL,
    `npcSuperclass` = NULL,
    `npcClass` = NULL,
    `classyFireLineage` = NULL,
    `classyFireAlternatives` = NULL,

    #' @description
    #' Initialize a new CompoundClasses class.
    #'
    #' @param npcPathway npcPathway
    #' @param npcSuperclass npcSuperclass
    #' @param npcClass npcClass
    #' @param classyFireLineage Most likely ClassyFire lineage from ordered from least specific to most specific class  classyFireLineage.get(classyFireLineage.size() - 1) gives the most specific ClassyFire compound class annotation
    #' @param classyFireAlternatives Alternative ClassyFire classes with high probability that do not fit into the linage
    #' @param ... Other optional arguments.
    initialize = function(`npcPathway` = NULL, `npcSuperclass` = NULL, `npcClass` = NULL, `classyFireLineage` = NULL, `classyFireAlternatives` = NULL, ...) {
      if (!is.null(`npcPathway`)) {
        stopifnot(R6::is.R6(`npcPathway`))
        self$`npcPathway` <- `npcPathway`
      }
      if (!is.null(`npcSuperclass`)) {
        stopifnot(R6::is.R6(`npcSuperclass`))
        self$`npcSuperclass` <- `npcSuperclass`
      }
      if (!is.null(`npcClass`)) {
        stopifnot(R6::is.R6(`npcClass`))
        self$`npcClass` <- `npcClass`
      }
      if (!is.null(`classyFireLineage`)) {
        stopifnot(is.vector(`classyFireLineage`), length(`classyFireLineage`) != 0)
        sapply(`classyFireLineage`, function(x) stopifnot(R6::is.R6(x)))
        self$`classyFireLineage` <- `classyFireLineage`
      }
      if (!is.null(`classyFireAlternatives`)) {
        stopifnot(is.vector(`classyFireAlternatives`), length(`classyFireAlternatives`) != 0)
        sapply(`classyFireAlternatives`, function(x) stopifnot(R6::is.R6(x)))
        self$`classyFireAlternatives` <- `classyFireAlternatives`
      }
    },

    #' @description
    #' To JSON String
    #'
    #' @return CompoundClasses in JSON format
    toJSON = function() {
      CompoundClassesObject <- list()
      if (!is.null(self$`npcPathway`)) {
        CompoundClassesObject[["npcPathway"]] <-
          self$`npcPathway`$toJSON()
      }
      if (!is.null(self$`npcSuperclass`)) {
        CompoundClassesObject[["npcSuperclass"]] <-
          self$`npcSuperclass`$toJSON()
      }
      if (!is.null(self$`npcClass`)) {
        CompoundClassesObject[["npcClass"]] <-
          self$`npcClass`$toJSON()
      }
      if (!is.null(self$`classyFireLineage`)) {
        CompoundClassesObject[["classyFireLineage"]] <-
          lapply(self$`classyFireLineage`, function(x) x$toJSON())
      }
      if (!is.null(self$`classyFireAlternatives`)) {
        CompoundClassesObject[["classyFireAlternatives"]] <-
          lapply(self$`classyFireAlternatives`, function(x) x$toJSON())
      }
      CompoundClassesObject
    },

    #' @description
    #' Deserialize JSON string into an instance of CompoundClasses
    #'
    #' @param input_json the JSON input
    #' @return the instance of CompoundClasses
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`npcPathway`)) {
        `npcpathway_object` <- CompoundClass$new()
        `npcpathway_object`$fromJSON(jsonlite::toJSON(this_object$`npcPathway`, auto_unbox = TRUE, digits = NA))
        self$`npcPathway` <- `npcpathway_object`
      }
      if (!is.null(this_object$`npcSuperclass`)) {
        `npcsuperclass_object` <- CompoundClass$new()
        `npcsuperclass_object`$fromJSON(jsonlite::toJSON(this_object$`npcSuperclass`, auto_unbox = TRUE, digits = NA))
        self$`npcSuperclass` <- `npcsuperclass_object`
      }
      if (!is.null(this_object$`npcClass`)) {
        `npcclass_object` <- CompoundClass$new()
        `npcclass_object`$fromJSON(jsonlite::toJSON(this_object$`npcClass`, auto_unbox = TRUE, digits = NA))
        self$`npcClass` <- `npcclass_object`
      }
      if (!is.null(this_object$`classyFireLineage`)) {
        self$`classyFireLineage` <- ApiClient$new()$deserializeObj(this_object$`classyFireLineage`, "array[CompoundClass]", loadNamespace("Rsirius"))
      }
      if (!is.null(this_object$`classyFireAlternatives`)) {
        self$`classyFireAlternatives` <- ApiClient$new()$deserializeObj(this_object$`classyFireAlternatives`, "array[CompoundClass]", loadNamespace("Rsirius"))
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return CompoundClasses in JSON format
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`npcPathway`)) {
          sprintf(
          '"npcPathway":
          %s
          ',
          jsonlite::toJSON(self$`npcPathway`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`npcSuperclass`)) {
          sprintf(
          '"npcSuperclass":
          %s
          ',
          jsonlite::toJSON(self$`npcSuperclass`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`npcClass`)) {
          sprintf(
          '"npcClass":
          %s
          ',
          jsonlite::toJSON(self$`npcClass`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`classyFireLineage`)) {
          sprintf(
          '"classyFireLineage":
          [%s]
',
          paste(sapply(self$`classyFireLineage`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        },
        if (!is.null(self$`classyFireAlternatives`)) {
          sprintf(
          '"classyFireAlternatives":
          [%s]
',
          paste(sapply(self$`classyFireAlternatives`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },

    #' @description
    #' Deserialize JSON string into an instance of CompoundClasses
    #'
    #' @param input_json the JSON input
    #' @return the instance of CompoundClasses
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`npcPathway` <- CompoundClass$new()$fromJSON(jsonlite::toJSON(this_object$`npcPathway`, auto_unbox = TRUE, digits = NA))
      self$`npcSuperclass` <- CompoundClass$new()$fromJSON(jsonlite::toJSON(this_object$`npcSuperclass`, auto_unbox = TRUE, digits = NA))
      self$`npcClass` <- CompoundClass$new()$fromJSON(jsonlite::toJSON(this_object$`npcClass`, auto_unbox = TRUE, digits = NA))
      self$`classyFireLineage` <- ApiClient$new()$deserializeObj(this_object$`classyFireLineage`, "array[CompoundClass]", loadNamespace("Rsirius"))
      self$`classyFireAlternatives` <- ApiClient$new()$deserializeObj(this_object$`classyFireAlternatives`, "array[CompoundClass]", loadNamespace("Rsirius"))
      self
    },

    #' @description
    #' Validate JSON input with respect to CompoundClasses and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CompoundClasses
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
# CompoundClasses$unlock()
#
## Below is an example to define the print function
# CompoundClasses$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CompoundClasses$lock()

