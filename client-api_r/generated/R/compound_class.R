#' Create a new CompoundClass
#'
#' @description
#' Predicted compound class with name, probability and id if available.  (ClassyFire and NPC). This can be seen as the set of classes a feature most likely belongs to
#'
#' @docType class
#' @title CompoundClass
#' @description CompoundClass Class
#' @format An \code{R6Class} generator object
#' @field type Specifies the classification ontology the CompoundClass belongs to. character [optional]
#' @field level Name of the level this compound class belongs to character [optional]
#' @field levelIndex Index of the level this compound class belongs to integer [optional]
#' @field name Name of the compound class. character [optional]
#' @field description Description of the compound class. character [optional]
#' @field id Unique id of the class. Might be undefined for certain classification ontologies. integer [optional]
#' @field probability prediction probability numeric [optional]
#' @field index Absolute index of this property in the predicted vector/embedding integer [optional]
#' @field parentId Unique id of the parent class. Might be undefined for certain classification ontologies. integer [optional]
#' @field parentName Name of the parent compound class. character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CompoundClass <- R6::R6Class(
  "CompoundClass",
  public = list(
    `type` = NULL,
    `level` = NULL,
    `levelIndex` = NULL,
    `name` = NULL,
    `description` = NULL,
    `id` = NULL,
    `probability` = NULL,
    `index` = NULL,
    `parentId` = NULL,
    `parentName` = NULL,

    #' @description
    #' Initialize a new CompoundClass class.
    #'
    #' @param type Specifies the classification ontology the CompoundClass belongs to.
    #' @param level Name of the level this compound class belongs to
    #' @param levelIndex Index of the level this compound class belongs to
    #' @param name Name of the compound class.
    #' @param description Description of the compound class.
    #' @param id Unique id of the class. Might be undefined for certain classification ontologies.
    #' @param probability prediction probability
    #' @param index Absolute index of this property in the predicted vector/embedding
    #' @param parentId Unique id of the parent class. Might be undefined for certain classification ontologies.
    #' @param parentName Name of the parent compound class.
    #' @param ... Other optional arguments.
    initialize = function(`type` = NULL, `level` = NULL, `levelIndex` = NULL, `name` = NULL, `description` = NULL, `id` = NULL, `probability` = NULL, `index` = NULL, `parentId` = NULL, `parentName` = NULL, ...) {
      if (!is.null(`type`)) {
        if (!(`type` %in% c("ClassyFire", "NPC"))) {
          stop(paste("Error! \"", `type`, "\" cannot be assigned to `type`. Must be \"ClassyFire\", \"NPC\".", sep = ""))
        }
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
      }
      if (!is.null(`level`)) {
        if (!(is.character(`level`) && length(`level`) == 1)) {
          stop(paste("Error! Invalid data for `level`. Must be a string:", `level`))
        }
        self$`level` <- `level`
      }
      if (!is.null(`levelIndex`)) {
        if (!(is.numeric(`levelIndex`) && length(`levelIndex`) == 1)) {
          stop(paste("Error! Invalid data for `levelIndex`. Must be an integer:", `levelIndex`))
        }
        self$`levelIndex` <- `levelIndex`
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
      if (!is.null(`parentId`)) {
        if (!(is.numeric(`parentId`) && length(`parentId`) == 1)) {
          stop(paste("Error! Invalid data for `parentId`. Must be an integer:", `parentId`))
        }
        self$`parentId` <- `parentId`
      }
      if (!is.null(`parentName`)) {
        if (!(is.character(`parentName`) && length(`parentName`) == 1)) {
          stop(paste("Error! Invalid data for `parentName`. Must be a string:", `parentName`))
        }
        self$`parentName` <- `parentName`
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
    #' @return CompoundClass as a base R list.
    #' @examples
    #' # convert array of CompoundClass (x) to a data frame
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
    #' Convert CompoundClass to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CompoundClassObject <- list()
      if (!is.null(self$`type`)) {
        CompoundClassObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`level`)) {
        CompoundClassObject[["level"]] <-
          self$`level`
      }
      if (!is.null(self$`levelIndex`)) {
        CompoundClassObject[["levelIndex"]] <-
          self$`levelIndex`
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
      if (!is.null(self$`parentId`)) {
        CompoundClassObject[["parentId"]] <-
          self$`parentId`
      }
      if (!is.null(self$`parentName`)) {
        CompoundClassObject[["parentName"]] <-
          self$`parentName`
      }
      return(CompoundClassObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CompoundClass
    #'
    #' @param input_json the JSON input
    #' @return the instance of CompoundClass
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`type`)) {
        if (!is.null(this_object$`type`) && !(this_object$`type` %in% c("ClassyFire", "NPC"))) {
          stop(paste("Error! \"", this_object$`type`, "\" cannot be assigned to `type`. Must be \"ClassyFire\", \"NPC\".", sep = ""))
        }
        self$`type` <- this_object$`type`
      }
      if (!is.null(this_object$`level`)) {
        self$`level` <- this_object$`level`
      }
      if (!is.null(this_object$`levelIndex`)) {
        self$`levelIndex` <- this_object$`levelIndex`
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
      if (!is.null(this_object$`parentId`)) {
        self$`parentId` <- this_object$`parentId`
      }
      if (!is.null(this_object$`parentName`)) {
        self$`parentName` <- this_object$`parentName`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CompoundClass in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CompoundClass
    #'
    #' @param input_json the JSON input
    #' @return the instance of CompoundClass
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`type`) && !(this_object$`type` %in% c("ClassyFire", "NPC"))) {
        stop(paste("Error! \"", this_object$`type`, "\" cannot be assigned to `type`. Must be \"ClassyFire\", \"NPC\".", sep = ""))
      }
      self$`type` <- this_object$`type`
      self$`level` <- this_object$`level`
      self$`levelIndex` <- this_object$`levelIndex`
      self$`name` <- this_object$`name`
      self$`description` <- this_object$`description`
      self$`id` <- this_object$`id`
      self$`probability` <- this_object$`probability`
      self$`index` <- this_object$`index`
      self$`parentId` <- this_object$`parentId`
      self$`parentName` <- this_object$`parentName`
      self
    },

    #' @description
    #' Validate JSON input with respect to CompoundClass and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CompoundClass
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
# CompoundClass$unlock()
#
## Below is an example to define the print function
# CompoundClass$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CompoundClass$lock()

