#' Create a new CompoundClass
#'
#' @description
#' Predicted compound class with name, probability and id if available.  (ClassyFire and NPC). This can be seen as the set of classes a feature most likely belongs to
#'
#' @docType class
#' @title CompoundClass
#' @description CompoundClass Class
#' @format An \code{R6Class} generator object
#' @field type  \link{CompoundClassType} [optional]
#' @field level Name of the level this compound class belongs to character [optional]
#' @field name Name of the compound class. character [optional]
#' @field description Description of the compound class. character [optional]
#' @field id Unique id of the class. Might be undefined for certain classification ontologies. integer [optional]
#' @field probability prediction probability numeric [optional]
#' @field index Absolute index of this property in the predicted vector/embedding integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CompoundClass <- R6::R6Class(
  "CompoundClass",
  public = list(
    `type` = NULL,
    `level` = NULL,
    `name` = NULL,
    `description` = NULL,
    `id` = NULL,
    `probability` = NULL,
    `index` = NULL,
    #' Initialize a new CompoundClass class.
    #'
    #' @description
    #' Initialize a new CompoundClass class.
    #'
    #' @param type type
    #' @param level Name of the level this compound class belongs to
    #' @param name Name of the compound class.
    #' @param description Description of the compound class.
    #' @param id Unique id of the class. Might be undefined for certain classification ontologies.
    #' @param probability prediction probability
    #' @param index Absolute index of this property in the predicted vector/embedding
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`type` = NULL, `level` = NULL, `name` = NULL, `description` = NULL, `id` = NULL, `probability` = NULL, `index` = NULL, ...) {
      if (!is.null(`type`)) {
        if (!(`type` %in% c())) {
          stop(paste("Error! \"", `type`, "\" cannot be assigned to `type`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`type`))
        self$`type` <- `type`
      }
      if (!is.null(`level`)) {
        if (!(is.character(`level`) && length(`level`) == 1)) {
          stop(paste("Error! Invalid data for `level`. Must be a string:", `level`))
        }
        self$`level` <- `level`
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
      if (!is.null(`index`)) {
        if (!(is.numeric(`index`) && length(`index`) == 1)) {
          stop(paste("Error! Invalid data for `index`. Must be an integer:", `index`))
        }
        self$`index` <- `index`
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
          if (length(names(self$`type`$toJSON())) == 0L && is.character(jsonlite::fromJSON(self$`type`$toJSON()))) {
            jsonlite::fromJSON(self$`type`$toJSON())
          } else {
            self$`type`$toJSON()
          }
      }
      if (!is.null(self$`level`)) {
        CompoundClassObject[["level"]] <-
          self$`level`
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
      if (!is.null(self$`index`)) {
        CompoundClassObject[["index"]] <-
          self$`index`
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
        `type_object` <- CompoundClassType$new()
        `type_object`$fromJSON(jsonlite::toJSON(this_object$`type`, auto_unbox = TRUE, digits = NA))
        self$`type` <- `type_object`
      }
      if (!is.null(this_object$`level`)) {
        self$`level` <- this_object$`level`
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
      if (!is.null(this_object$`index`)) {
        self$`index` <- this_object$`index`
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
          %s
          ',
          jsonlite::toJSON(self$`type`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`level`)) {
          sprintf(
          '"level":
            "%s"
                    ',
          self$`level`
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
        },
        if (!is.null(self$`index`)) {
          sprintf(
          '"index":
            %d
                    ',
          self$`index`
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
      self$`type` <- CompoundClassType$new()$fromJSON(jsonlite::toJSON(this_object$`type`, auto_unbox = TRUE, digits = NA))
      self$`level` <- this_object$`level`
      self$`name` <- this_object$`name`
      self$`description` <- this_object$`description`
      self$`id` <- this_object$`id`
      self$`probability` <- this_object$`probability`
      self$`index` <- this_object$`index`
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
## Below is an example to define the print function
# CompoundClass$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CompoundClass$lock()

