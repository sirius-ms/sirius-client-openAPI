#' Create a new CompoundClass
#'
#' @description
#' Predicted compound class with name, probability and id if available.  (ClassyFire and NPC). This can be seen as the set of classes a compound most likely belongs to
#'
#' @docType class
#' @title CompoundClass
#' @description CompoundClass Class
#' @format An \code{R6Class} generator object
#' @field type Specifies the classification ontology the CompoundClass belongs to. character [optional]
#' @field name Name of the compound class. character [optional]
#' @field description Description of the compound class. character [optional]
#' @field id Unique id of the class. Might be undefined for certain classification ontologies. integer [optional]
#' @field probability prediction probability numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CompoundClass <- R6::R6Class(
  "CompoundClass",
  public = list(
    `type` = NULL,
    `name` = NULL,
    `description` = NULL,
    `id` = NULL,
    `probability` = NULL,
    #' Initialize a new CompoundClass class.
    #'
    #' @description
    #' Initialize a new CompoundClass class.
    #'
    #' @param type Specifies the classification ontology the CompoundClass belongs to.
    #' @param name Name of the compound class.
    #' @param description Description of the compound class.
    #' @param id Unique id of the class. Might be undefined for certain classification ontologies.
    #' @param probability prediction probability
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`type` = NULL, `name` = NULL, `description` = NULL, `id` = NULL, `probability` = NULL, ...) {
      if (!is.null(`type`)) {
        if (!(`type` %in% c("ClassyFire", "NPC"))) {
          stop(paste("Error! \"", `type`, "\" cannot be assigned to `type`. Must be \"ClassyFire\", \"NPC\".", sep = ""))
        }
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`probability`)) {
        if (!(is.numeric(`probability`) && length(`probability`) == 1)) {
          stop(paste("Error! Invalid data for `probability`. Must be a number:", `probability`))
        }
        self$`probability` <- `probability`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return CompoundClass in JSON format
    #' @export
    toJSON = function() {
      CompoundClassObject <- list()
      if (!is.null(self$`type`)) {
        CompoundClassObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`name`)) {
        CompoundClassObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`description`)) {
        CompoundClassObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`id`)) {
        CompoundClassObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`probability`)) {
        CompoundClassObject[["probability"]] <-
          self$`probability`
      }
      CompoundClassObject
    },
    #' Deserialize JSON string into an instance of CompoundClass
    #'
    #' @description
    #' Deserialize JSON string into an instance of CompoundClass
    #'
    #' @param input_json the JSON input
    #' @return the instance of CompoundClass
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`type`)) {
        if (!is.null(this_object$`type`) && !(this_object$`type` %in% c("ClassyFire", "NPC"))) {
          stop(paste("Error! \"", this_object$`type`, "\" cannot be assigned to `type`. Must be \"ClassyFire\", \"NPC\".", sep = ""))
        }
        self$`type` <- this_object$`type`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`probability`)) {
        self$`probability` <- this_object$`probability`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return CompoundClass in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`type`)) {
          sprintf(
          '"type":
            "%s"
                    ',
          self$`type`
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
        if (!is.null(self$`description`)) {
          sprintf(
          '"description":
            "%s"
                    ',
          self$`description`
          )
        },
        if (!is.null(self$`id`)) {
          sprintf(
          '"id":
            %d
                    ',
          self$`id`
          )
        },
        if (!is.null(self$`probability`)) {
          sprintf(
          '"probability":
            %d
                    ',
          self$`probability`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of CompoundClass
    #'
    #' @description
    #' Deserialize JSON string into an instance of CompoundClass
    #'
    #' @param input_json the JSON input
    #' @return the instance of CompoundClass
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`type`) && !(this_object$`type` %in% c("ClassyFire", "NPC"))) {
        stop(paste("Error! \"", this_object$`type`, "\" cannot be assigned to `type`. Must be \"ClassyFire\", \"NPC\".", sep = ""))
      }
      self$`type` <- this_object$`type`
      self$`name` <- this_object$`name`
      self$`description` <- this_object$`description`
      self$`id` <- this_object$`id`
      self$`probability` <- this_object$`probability`
      self
    },
    #' Validate JSON input with respect to CompoundClass
    #'
    #' @description
    #' Validate JSON input with respect to CompoundClass and throw an exception if invalid
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
    #' @return String representation of CompoundClass
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
# CompoundClass$unlock()
#
## Below is an example to define the print fnuction
# CompoundClass$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CompoundClass$lock()

