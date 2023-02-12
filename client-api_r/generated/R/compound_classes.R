#' Create a new CompoundClasses
#'
#' @description
#' Container class that holds the best matching compound class for different levels of each ontology for a  certain compound/feature/predicted fingerprint.
#'
#' @docType class
#' @title CompoundClasses
#' @description CompoundClasses Class
#' @format An \code{R6Class} generator object
#' @field npcPathway  \link{CompoundClass} [optional]
#' @field npcSuperclass  \link{CompoundClass} [optional]
#' @field npcClass  \link{CompoundClass} [optional]
#' @field classyFireMostSpecific  \link{CompoundClass} [optional]
#' @field classyFireLevel5  \link{CompoundClass} [optional]
#' @field classyFireClass  \link{CompoundClass} [optional]
#' @field classyFireSubClass  \link{CompoundClass} [optional]
#' @field classyFireSuperClass  \link{CompoundClass} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CompoundClasses <- R6::R6Class(
  "CompoundClasses",
  public = list(
    `npcPathway` = NULL,
    `npcSuperclass` = NULL,
    `npcClass` = NULL,
    `classyFireMostSpecific` = NULL,
    `classyFireLevel5` = NULL,
    `classyFireClass` = NULL,
    `classyFireSubClass` = NULL,
    `classyFireSuperClass` = NULL,
    #' Initialize a new CompoundClasses class.
    #'
    #' @description
    #' Initialize a new CompoundClasses class.
    #'
    #' @param npcPathway npcPathway
    #' @param npcSuperclass npcSuperclass
    #' @param npcClass npcClass
    #' @param classyFireMostSpecific classyFireMostSpecific
    #' @param classyFireLevel5 classyFireLevel5
    #' @param classyFireClass classyFireClass
    #' @param classyFireSubClass classyFireSubClass
    #' @param classyFireSuperClass classyFireSuperClass
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`npcPathway` = NULL, `npcSuperclass` = NULL, `npcClass` = NULL, `classyFireMostSpecific` = NULL, `classyFireLevel5` = NULL, `classyFireClass` = NULL, `classyFireSubClass` = NULL, `classyFireSuperClass` = NULL, ...) {
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
      if (!is.null(`classyFireMostSpecific`)) {
        stopifnot(R6::is.R6(`classyFireMostSpecific`))
        self$`classyFireMostSpecific` <- `classyFireMostSpecific`
      }
      if (!is.null(`classyFireLevel5`)) {
        stopifnot(R6::is.R6(`classyFireLevel5`))
        self$`classyFireLevel5` <- `classyFireLevel5`
      }
      if (!is.null(`classyFireClass`)) {
        stopifnot(R6::is.R6(`classyFireClass`))
        self$`classyFireClass` <- `classyFireClass`
      }
      if (!is.null(`classyFireSubClass`)) {
        stopifnot(R6::is.R6(`classyFireSubClass`))
        self$`classyFireSubClass` <- `classyFireSubClass`
      }
      if (!is.null(`classyFireSuperClass`)) {
        stopifnot(R6::is.R6(`classyFireSuperClass`))
        self$`classyFireSuperClass` <- `classyFireSuperClass`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return CompoundClasses in JSON format
    #' @export
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
      if (!is.null(self$`classyFireMostSpecific`)) {
        CompoundClassesObject[["classyFireMostSpecific"]] <-
          self$`classyFireMostSpecific`$toJSON()
      }
      if (!is.null(self$`classyFireLevel5`)) {
        CompoundClassesObject[["classyFireLevel5"]] <-
          self$`classyFireLevel5`$toJSON()
      }
      if (!is.null(self$`classyFireClass`)) {
        CompoundClassesObject[["classyFireClass"]] <-
          self$`classyFireClass`$toJSON()
      }
      if (!is.null(self$`classyFireSubClass`)) {
        CompoundClassesObject[["classyFireSubClass"]] <-
          self$`classyFireSubClass`$toJSON()
      }
      if (!is.null(self$`classyFireSuperClass`)) {
        CompoundClassesObject[["classyFireSuperClass"]] <-
          self$`classyFireSuperClass`$toJSON()
      }
      CompoundClassesObject
    },
    #' Deserialize JSON string into an instance of CompoundClasses
    #'
    #' @description
    #' Deserialize JSON string into an instance of CompoundClasses
    #'
    #' @param input_json the JSON input
    #' @return the instance of CompoundClasses
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`npcPathway`)) {
        npcpathway_object <- CompoundClass$new()
        npcpathway_object$fromJSON(jsonlite::toJSON(this_object$npcPathway, auto_unbox = TRUE, digits = NA))
        self$`npcPathway` <- npcpathway_object
      }
      if (!is.null(this_object$`npcSuperclass`)) {
        npcsuperclass_object <- CompoundClass$new()
        npcsuperclass_object$fromJSON(jsonlite::toJSON(this_object$npcSuperclass, auto_unbox = TRUE, digits = NA))
        self$`npcSuperclass` <- npcsuperclass_object
      }
      if (!is.null(this_object$`npcClass`)) {
        npcclass_object <- CompoundClass$new()
        npcclass_object$fromJSON(jsonlite::toJSON(this_object$npcClass, auto_unbox = TRUE, digits = NA))
        self$`npcClass` <- npcclass_object
      }
      if (!is.null(this_object$`classyFireMostSpecific`)) {
        classyfiremostspecific_object <- CompoundClass$new()
        classyfiremostspecific_object$fromJSON(jsonlite::toJSON(this_object$classyFireMostSpecific, auto_unbox = TRUE, digits = NA))
        self$`classyFireMostSpecific` <- classyfiremostspecific_object
      }
      if (!is.null(this_object$`classyFireLevel5`)) {
        classyfirelevel5_object <- CompoundClass$new()
        classyfirelevel5_object$fromJSON(jsonlite::toJSON(this_object$classyFireLevel5, auto_unbox = TRUE, digits = NA))
        self$`classyFireLevel5` <- classyfirelevel5_object
      }
      if (!is.null(this_object$`classyFireClass`)) {
        classyfireclass_object <- CompoundClass$new()
        classyfireclass_object$fromJSON(jsonlite::toJSON(this_object$classyFireClass, auto_unbox = TRUE, digits = NA))
        self$`classyFireClass` <- classyfireclass_object
      }
      if (!is.null(this_object$`classyFireSubClass`)) {
        classyfiresubclass_object <- CompoundClass$new()
        classyfiresubclass_object$fromJSON(jsonlite::toJSON(this_object$classyFireSubClass, auto_unbox = TRUE, digits = NA))
        self$`classyFireSubClass` <- classyfiresubclass_object
      }
      if (!is.null(this_object$`classyFireSuperClass`)) {
        classyfiresuperclass_object <- CompoundClass$new()
        classyfiresuperclass_object$fromJSON(jsonlite::toJSON(this_object$classyFireSuperClass, auto_unbox = TRUE, digits = NA))
        self$`classyFireSuperClass` <- classyfiresuperclass_object
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return CompoundClasses in JSON format
    #' @export
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
        if (!is.null(self$`classyFireMostSpecific`)) {
          sprintf(
          '"classyFireMostSpecific":
          %s
          ',
          jsonlite::toJSON(self$`classyFireMostSpecific`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`classyFireLevel5`)) {
          sprintf(
          '"classyFireLevel5":
          %s
          ',
          jsonlite::toJSON(self$`classyFireLevel5`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`classyFireClass`)) {
          sprintf(
          '"classyFireClass":
          %s
          ',
          jsonlite::toJSON(self$`classyFireClass`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`classyFireSubClass`)) {
          sprintf(
          '"classyFireSubClass":
          %s
          ',
          jsonlite::toJSON(self$`classyFireSubClass`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`classyFireSuperClass`)) {
          sprintf(
          '"classyFireSuperClass":
          %s
          ',
          jsonlite::toJSON(self$`classyFireSuperClass`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of CompoundClasses
    #'
    #' @description
    #' Deserialize JSON string into an instance of CompoundClasses
    #'
    #' @param input_json the JSON input
    #' @return the instance of CompoundClasses
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`npcPathway` <- CompoundClass$new()$fromJSON(jsonlite::toJSON(this_object$npcPathway, auto_unbox = TRUE, digits = NA))
      self$`npcSuperclass` <- CompoundClass$new()$fromJSON(jsonlite::toJSON(this_object$npcSuperclass, auto_unbox = TRUE, digits = NA))
      self$`npcClass` <- CompoundClass$new()$fromJSON(jsonlite::toJSON(this_object$npcClass, auto_unbox = TRUE, digits = NA))
      self$`classyFireMostSpecific` <- CompoundClass$new()$fromJSON(jsonlite::toJSON(this_object$classyFireMostSpecific, auto_unbox = TRUE, digits = NA))
      self$`classyFireLevel5` <- CompoundClass$new()$fromJSON(jsonlite::toJSON(this_object$classyFireLevel5, auto_unbox = TRUE, digits = NA))
      self$`classyFireClass` <- CompoundClass$new()$fromJSON(jsonlite::toJSON(this_object$classyFireClass, auto_unbox = TRUE, digits = NA))
      self$`classyFireSubClass` <- CompoundClass$new()$fromJSON(jsonlite::toJSON(this_object$classyFireSubClass, auto_unbox = TRUE, digits = NA))
      self$`classyFireSuperClass` <- CompoundClass$new()$fromJSON(jsonlite::toJSON(this_object$classyFireSuperClass, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to CompoundClasses
    #'
    #' @description
    #' Validate JSON input with respect to CompoundClasses and throw an exception if invalid
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
    #' @return String representation of CompoundClasses
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
# CompoundClasses$unlock()
#
## Below is an example to define the print function
# CompoundClasses$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CompoundClasses$lock()

