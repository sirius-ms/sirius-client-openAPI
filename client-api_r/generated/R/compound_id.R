#' Create a new CompoundId
#'
#' @description
#' The CompoundId contains the ID of a compound together with some read-only information that might be displayed in  some summary view.
#'
#' @docType class
#' @title CompoundId
#' @description CompoundId Class
#' @format An \code{R6Class} generator object
#' @field id  character [optional]
#' @field name  character [optional]
#' @field index  integer [optional]
#' @field ionMass  numeric [optional]
#' @field ionType  character [optional]
#' @field rtStartSeconds  numeric [optional]
#' @field rtEndSeconds  numeric [optional]
#' @field topAnnotation  \link{CompoundAnnotation} [optional]
#' @field msData  \link{MsData} [optional]
#' @field computing  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CompoundId <- R6::R6Class(
  "CompoundId",
  public = list(
    `id` = NULL,
    `name` = NULL,
    `index` = NULL,
    `ionMass` = NULL,
    `ionType` = NULL,
    `rtStartSeconds` = NULL,
    `rtEndSeconds` = NULL,
    `topAnnotation` = NULL,
    `msData` = NULL,
    `computing` = NULL,
    #' Initialize a new CompoundId class.
    #'
    #' @description
    #' Initialize a new CompoundId class.
    #'
    #' @param id id
    #' @param name name
    #' @param index index
    #' @param ionMass ionMass
    #' @param ionType ionType
    #' @param rtStartSeconds rtStartSeconds
    #' @param rtEndSeconds rtEndSeconds
    #' @param topAnnotation topAnnotation
    #' @param msData msData
    #' @param computing computing
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`id` = NULL, `name` = NULL, `index` = NULL, `ionMass` = NULL, `ionType` = NULL, `rtStartSeconds` = NULL, `rtEndSeconds` = NULL, `topAnnotation` = NULL, `msData` = NULL, `computing` = NULL, ...) {
      if (!is.null(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`index`)) {
        if (!(is.numeric(`index`) && length(`index`) == 1)) {
          stop(paste("Error! Invalid data for `index`. Must be an integer:", `index`))
        }
        self$`index` <- `index`
      }
      if (!is.null(`ionMass`)) {
        if (!(is.numeric(`ionMass`) && length(`ionMass`) == 1)) {
          stop(paste("Error! Invalid data for `ionMass`. Must be a number:", `ionMass`))
        }
        self$`ionMass` <- `ionMass`
      }
      if (!is.null(`ionType`)) {
        if (!(is.character(`ionType`) && length(`ionType`) == 1)) {
          stop(paste("Error! Invalid data for `ionType`. Must be a string:", `ionType`))
        }
        self$`ionType` <- `ionType`
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
      if (!is.null(`topAnnotation`)) {
        stopifnot(R6::is.R6(`topAnnotation`))
        self$`topAnnotation` <- `topAnnotation`
      }
      if (!is.null(`msData`)) {
        stopifnot(R6::is.R6(`msData`))
        self$`msData` <- `msData`
      }
      if (!is.null(`computing`)) {
        if (!(is.logical(`computing`) && length(`computing`) == 1)) {
          stop(paste("Error! Invalid data for `computing`. Must be a boolean:", `computing`))
        }
        self$`computing` <- `computing`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return CompoundId in JSON format
    #' @export
    toJSON = function() {
      CompoundIdObject <- list()
      if (!is.null(self$`id`)) {
        CompoundIdObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`name`)) {
        CompoundIdObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`index`)) {
        CompoundIdObject[["index"]] <-
          self$`index`
      }
      if (!is.null(self$`ionMass`)) {
        CompoundIdObject[["ionMass"]] <-
          self$`ionMass`
      }
      if (!is.null(self$`ionType`)) {
        CompoundIdObject[["ionType"]] <-
          self$`ionType`
      }
      if (!is.null(self$`rtStartSeconds`)) {
        CompoundIdObject[["rtStartSeconds"]] <-
          self$`rtStartSeconds`
      }
      if (!is.null(self$`rtEndSeconds`)) {
        CompoundIdObject[["rtEndSeconds"]] <-
          self$`rtEndSeconds`
      }
      if (!is.null(self$`topAnnotation`)) {
        CompoundIdObject[["topAnnotation"]] <-
          self$`topAnnotation`$toJSON()
      }
      if (!is.null(self$`msData`)) {
        CompoundIdObject[["msData"]] <-
          self$`msData`$toJSON()
      }
      if (!is.null(self$`computing`)) {
        CompoundIdObject[["computing"]] <-
          self$`computing`
      }
      CompoundIdObject
    },
    #' Deserialize JSON string into an instance of CompoundId
    #'
    #' @description
    #' Deserialize JSON string into an instance of CompoundId
    #'
    #' @param input_json the JSON input
    #' @return the instance of CompoundId
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`index`)) {
        self$`index` <- this_object$`index`
      }
      if (!is.null(this_object$`ionMass`)) {
        self$`ionMass` <- this_object$`ionMass`
      }
      if (!is.null(this_object$`ionType`)) {
        self$`ionType` <- this_object$`ionType`
      }
      if (!is.null(this_object$`rtStartSeconds`)) {
        self$`rtStartSeconds` <- this_object$`rtStartSeconds`
      }
      if (!is.null(this_object$`rtEndSeconds`)) {
        self$`rtEndSeconds` <- this_object$`rtEndSeconds`
      }
      if (!is.null(this_object$`topAnnotation`)) {
        topannotation_object <- CompoundAnnotation$new()
        topannotation_object$fromJSON(jsonlite::toJSON(this_object$topAnnotation, auto_unbox = TRUE, digits = NA))
        self$`topAnnotation` <- topannotation_object
      }
      if (!is.null(this_object$`msData`)) {
        msdata_object <- MsData$new()
        msdata_object$fromJSON(jsonlite::toJSON(this_object$msData, auto_unbox = TRUE, digits = NA))
        self$`msData` <- msdata_object
      }
      if (!is.null(this_object$`computing`)) {
        self$`computing` <- this_object$`computing`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return CompoundId in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`id`)) {
          sprintf(
          '"id":
            "%s"
                    ',
          self$`id`
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
        if (!is.null(self$`index`)) {
          sprintf(
          '"index":
            %f
                    ',
          self$`index`
          )
        },
        if (!is.null(self$`ionMass`)) {
          sprintf(
          '"ionMass":
            %f
                    ',
          self$`ionMass`
          )
        },
        if (!is.null(self$`ionType`)) {
          sprintf(
          '"ionType":
            "%s"
                    ',
          self$`ionType`
          )
        },
        if (!is.null(self$`rtStartSeconds`)) {
          sprintf(
          '"rtStartSeconds":
            %f
                    ',
          self$`rtStartSeconds`
          )
        },
        if (!is.null(self$`rtEndSeconds`)) {
          sprintf(
          '"rtEndSeconds":
            %f
                    ',
          self$`rtEndSeconds`
          )
        },
        if (!is.null(self$`topAnnotation`)) {
          sprintf(
          '"topAnnotation":
          %s
          ',
          jsonlite::toJSON(self$`topAnnotation`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`msData`)) {
          sprintf(
          '"msData":
          %s
          ',
          jsonlite::toJSON(self$`msData`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`computing`)) {
          sprintf(
          '"computing":
            %s
                    ',
          tolower(self$`computing`)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of CompoundId
    #'
    #' @description
    #' Deserialize JSON string into an instance of CompoundId
    #'
    #' @param input_json the JSON input
    #' @return the instance of CompoundId
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`name` <- this_object$`name`
      self$`index` <- this_object$`index`
      self$`ionMass` <- this_object$`ionMass`
      self$`ionType` <- this_object$`ionType`
      self$`rtStartSeconds` <- this_object$`rtStartSeconds`
      self$`rtEndSeconds` <- this_object$`rtEndSeconds`
      self$`topAnnotation` <- CompoundAnnotation$new()$fromJSON(jsonlite::toJSON(this_object$topAnnotation, auto_unbox = TRUE, digits = NA))
      self$`msData` <- MsData$new()$fromJSON(jsonlite::toJSON(this_object$msData, auto_unbox = TRUE, digits = NA))
      self$`computing` <- this_object$`computing`
      self
    },
    #' Validate JSON input with respect to CompoundId
    #'
    #' @description
    #' Validate JSON input with respect to CompoundId and throw an exception if invalid
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
    #' @return String representation of CompoundId
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
# CompoundId$unlock()
#
## Below is an example to define the print function
# CompoundId$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CompoundId$lock()

