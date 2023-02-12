#' Create a new GuiParameters
#'
#' @description
#' Parameters to \"remote control\" the SIRIUS GUI.
#'
#' @docType class
#' @title GuiParameters
#' @description GuiParameters Class
#' @format An \code{R6Class} generator object
#' @field selectedTab Selected Result ab. character [optional]
#' @field cid ID of Selected compound. character [optional]
#' @field fid ID of Selected Formula candidate of the selected compound. character [optional]
#' @field structureCandidateInChIKey InChIKey of selected structure candidate of selected formula candidate. character [optional]
#' @field bringToFront If true bring SIRIUS GUI window to foreground. character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GuiParameters <- R6::R6Class(
  "GuiParameters",
  public = list(
    `selectedTab` = NULL,
    `cid` = NULL,
    `fid` = NULL,
    `structureCandidateInChIKey` = NULL,
    `bringToFront` = NULL,
    #' Initialize a new GuiParameters class.
    #'
    #' @description
    #' Initialize a new GuiParameters class.
    #'
    #' @param selectedTab Selected Result ab.
    #' @param cid ID of Selected compound.
    #' @param fid ID of Selected Formula candidate of the selected compound.
    #' @param structureCandidateInChIKey InChIKey of selected structure candidate of selected formula candidate.
    #' @param bringToFront If true bring SIRIUS GUI window to foreground.
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`selectedTab` = NULL, `cid` = NULL, `fid` = NULL, `structureCandidateInChIKey` = NULL, `bringToFront` = NULL, ...) {
      if (!is.null(`selectedTab`)) {
        if (!(is.character(`selectedTab`) && length(`selectedTab`) == 1)) {
          stop(paste("Error! Invalid data for `selectedTab`. Must be a string:", `selectedTab`))
        }
        self$`selectedTab` <- `selectedTab`
      }
      if (!is.null(`cid`)) {
        if (!(is.character(`cid`) && length(`cid`) == 1)) {
          stop(paste("Error! Invalid data for `cid`. Must be a string:", `cid`))
        }
        self$`cid` <- `cid`
      }
      if (!is.null(`fid`)) {
        if (!(is.character(`fid`) && length(`fid`) == 1)) {
          stop(paste("Error! Invalid data for `fid`. Must be a string:", `fid`))
        }
        self$`fid` <- `fid`
      }
      if (!is.null(`structureCandidateInChIKey`)) {
        if (!(is.character(`structureCandidateInChIKey`) && length(`structureCandidateInChIKey`) == 1)) {
          stop(paste("Error! Invalid data for `structureCandidateInChIKey`. Must be a string:", `structureCandidateInChIKey`))
        }
        self$`structureCandidateInChIKey` <- `structureCandidateInChIKey`
      }
      if (!is.null(`bringToFront`)) {
        if (!(is.logical(`bringToFront`) && length(`bringToFront`) == 1)) {
          stop(paste("Error! Invalid data for `bringToFront`. Must be a boolean:", `bringToFront`))
        }
        self$`bringToFront` <- `bringToFront`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return GuiParameters in JSON format
    #' @export
    toJSON = function() {
      GuiParametersObject <- list()
      if (!is.null(self$`selectedTab`)) {
        GuiParametersObject[["selectedTab"]] <-
          self$`selectedTab`
      }
      if (!is.null(self$`cid`)) {
        GuiParametersObject[["cid"]] <-
          self$`cid`
      }
      if (!is.null(self$`fid`)) {
        GuiParametersObject[["fid"]] <-
          self$`fid`
      }
      if (!is.null(self$`structureCandidateInChIKey`)) {
        GuiParametersObject[["structureCandidateInChIKey"]] <-
          self$`structureCandidateInChIKey`
      }
      if (!is.null(self$`bringToFront`)) {
        GuiParametersObject[["bringToFront"]] <-
          self$`bringToFront`
      }
      GuiParametersObject
    },
    #' Deserialize JSON string into an instance of GuiParameters
    #'
    #' @description
    #' Deserialize JSON string into an instance of GuiParameters
    #'
    #' @param input_json the JSON input
    #' @return the instance of GuiParameters
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`selectedTab`)) {
        self$`selectedTab` <- this_object$`selectedTab`
      }
      if (!is.null(this_object$`cid`)) {
        self$`cid` <- this_object$`cid`
      }
      if (!is.null(this_object$`fid`)) {
        self$`fid` <- this_object$`fid`
      }
      if (!is.null(this_object$`structureCandidateInChIKey`)) {
        self$`structureCandidateInChIKey` <- this_object$`structureCandidateInChIKey`
      }
      if (!is.null(this_object$`bringToFront`)) {
        self$`bringToFront` <- this_object$`bringToFront`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return GuiParameters in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`selectedTab`)) {
          sprintf(
          '"selectedTab":
            "%s"
                    ',
          self$`selectedTab`
          )
        },
        if (!is.null(self$`cid`)) {
          sprintf(
          '"cid":
            "%s"
                    ',
          self$`cid`
          )
        },
        if (!is.null(self$`fid`)) {
          sprintf(
          '"fid":
            "%s"
                    ',
          self$`fid`
          )
        },
        if (!is.null(self$`structureCandidateInChIKey`)) {
          sprintf(
          '"structureCandidateInChIKey":
            "%s"
                    ',
          self$`structureCandidateInChIKey`
          )
        },
        if (!is.null(self$`bringToFront`)) {
          sprintf(
          '"bringToFront":
            %s
                    ',
          tolower(self$`bringToFront`)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of GuiParameters
    #'
    #' @description
    #' Deserialize JSON string into an instance of GuiParameters
    #'
    #' @param input_json the JSON input
    #' @return the instance of GuiParameters
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`selectedTab` <- this_object$`selectedTab`
      self$`cid` <- this_object$`cid`
      self$`fid` <- this_object$`fid`
      self$`structureCandidateInChIKey` <- this_object$`structureCandidateInChIKey`
      self$`bringToFront` <- this_object$`bringToFront`
      self
    },
    #' Validate JSON input with respect to GuiParameters
    #'
    #' @description
    #' Validate JSON input with respect to GuiParameters and throw an exception if invalid
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
    #' @return String representation of GuiParameters
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
# GuiParameters$unlock()
#
## Below is an example to define the print function
# GuiParameters$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GuiParameters$lock()

