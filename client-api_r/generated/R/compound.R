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
#' @field consensusAnnotations  \link{ConsensusAnnotationsCSI} [optional]
#' @field consensusAnnotationsDeNovo  \link{ConsensusAnnotationsDeNovo} [optional]
#' @field customAnnotations  \link{ConsensusAnnotationsCSI} [optional]
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
    #' Initialize a new Compound class.
    #'
    #' @description
    #' Initialize a new Compound class.
    #'
    #' @param compoundId uid of this compound Entity
    #' @param name Some (optional) human-readable name
    #' @param rtStartSeconds The merged/consensus retention time start (earliest rt) of this compound
    #' @param rtEndSeconds The merged/consensus retention time end (latest rt) of this compound
    #' @param neutralMass Neutral mass of this compound. Ion masse minus the mass of the assigned adduct of each feature of  this compound should result in the same neutral mass
    #' @param features List of aligned features (adducts) that belong to the same (this) compound
    #' @param consensusAnnotations consensusAnnotations
    #' @param consensusAnnotationsDeNovo consensusAnnotationsDeNovo
    #' @param customAnnotations customAnnotations
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`compoundId` = NULL, `name` = NULL, `rtStartSeconds` = NULL, `rtEndSeconds` = NULL, `neutralMass` = NULL, `features` = NULL, `consensusAnnotations` = NULL, `consensusAnnotationsDeNovo` = NULL, `customAnnotations` = NULL, ...) {
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
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return Compound in JSON format
    #' @export
    toJSON = function() {
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
          lapply(self$`features`, function(x) x$toJSON())
      }
      if (!is.null(self$`consensusAnnotations`)) {
        CompoundObject[["consensusAnnotations"]] <-
          self$`consensusAnnotations`$toJSON()
      }
      if (!is.null(self$`consensusAnnotationsDeNovo`)) {
        CompoundObject[["consensusAnnotationsDeNovo"]] <-
          self$`consensusAnnotationsDeNovo`$toJSON()
      }
      if (!is.null(self$`customAnnotations`)) {
        CompoundObject[["customAnnotations"]] <-
          self$`customAnnotations`$toJSON()
      }
      CompoundObject
    },
    #' Deserialize JSON string into an instance of Compound
    #'
    #' @description
    #' Deserialize JSON string into an instance of Compound
    #'
    #' @param input_json the JSON input
    #' @return the instance of Compound
    #' @export
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
        `consensusannotations_object`$fromJSON(jsonlite::toJSON(this_object$`consensusAnnotations`, auto_unbox = TRUE, digits = NA))
        self$`consensusAnnotations` <- `consensusannotations_object`
      }
      if (!is.null(this_object$`consensusAnnotationsDeNovo`)) {
        `consensusannotationsdenovo_object` <- ConsensusAnnotationsDeNovo$new()
        `consensusannotationsdenovo_object`$fromJSON(jsonlite::toJSON(this_object$`consensusAnnotationsDeNovo`, auto_unbox = TRUE, digits = NA))
        self$`consensusAnnotationsDeNovo` <- `consensusannotationsdenovo_object`
      }
      if (!is.null(this_object$`customAnnotations`)) {
        `customannotations_object` <- ConsensusAnnotationsCSI$new()
        `customannotations_object`$fromJSON(jsonlite::toJSON(this_object$`customAnnotations`, auto_unbox = TRUE, digits = NA))
        self$`customAnnotations` <- `customannotations_object`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return Compound in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`compoundId`)) {
          sprintf(
          '"compoundId":
            "%s"
                    ',
          self$`compoundId`
          )
        },
        if (!is.null(self$`name`)) {
          sprintf(
          '"name":
            "%s"
                    ',
          self$`name`
          )
        },
        if (!is.null(self$`rtStartSeconds`)) {
          sprintf(
          '"rtStartSeconds":
            %d
                    ',
          self$`rtStartSeconds`
          )
        },
        if (!is.null(self$`rtEndSeconds`)) {
          sprintf(
          '"rtEndSeconds":
            %d
                    ',
          self$`rtEndSeconds`
          )
        },
        if (!is.null(self$`neutralMass`)) {
          sprintf(
          '"neutralMass":
            %d
                    ',
          self$`neutralMass`
          )
        },
        if (!is.null(self$`features`)) {
          sprintf(
          '"features":
          [%s]
',
          paste(sapply(self$`features`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        },
        if (!is.null(self$`consensusAnnotations`)) {
          sprintf(
          '"consensusAnnotations":
          %s
          ',
          jsonlite::toJSON(self$`consensusAnnotations`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`consensusAnnotationsDeNovo`)) {
          sprintf(
          '"consensusAnnotationsDeNovo":
          %s
          ',
          jsonlite::toJSON(self$`consensusAnnotationsDeNovo`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`customAnnotations`)) {
          sprintf(
          '"customAnnotations":
          %s
          ',
          jsonlite::toJSON(self$`customAnnotations`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of Compound
    #'
    #' @description
    #' Deserialize JSON string into an instance of Compound
    #'
    #' @param input_json the JSON input
    #' @return the instance of Compound
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`compoundId` <- this_object$`compoundId`
      self$`name` <- this_object$`name`
      self$`rtStartSeconds` <- this_object$`rtStartSeconds`
      self$`rtEndSeconds` <- this_object$`rtEndSeconds`
      self$`neutralMass` <- this_object$`neutralMass`
      self$`features` <- ApiClient$new()$deserializeObj(this_object$`features`, "array[AlignedFeature]", loadNamespace("Rsirius"))
      self$`consensusAnnotations` <- ConsensusAnnotationsCSI$new()$fromJSON(jsonlite::toJSON(this_object$`consensusAnnotations`, auto_unbox = TRUE, digits = NA))
      self$`consensusAnnotationsDeNovo` <- ConsensusAnnotationsDeNovo$new()$fromJSON(jsonlite::toJSON(this_object$`consensusAnnotationsDeNovo`, auto_unbox = TRUE, digits = NA))
      self$`customAnnotations` <- ConsensusAnnotationsCSI$new()$fromJSON(jsonlite::toJSON(this_object$`customAnnotations`, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to Compound
    #'
    #' @description
    #' Validate JSON input with respect to Compound and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Compound
    #' @export
    toString = function() {
      self$toJSONString()
    },
    #' Return true if the values in all fields are valid.
    #'
    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    #' @export
    isValid = function() {
      TRUE
    },
    #' Return a list of invalid fields (if any).
    #'
    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    #' @export
    getInvalidFields = function() {
      invalid_fields <- list()
      invalid_fields
    },
    #' Print the object
    #'
    #' @description
    #' Print the object
    #'
    #' @export
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

