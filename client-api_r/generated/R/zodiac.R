#' Create a new Zodiac
#'
#' @description
#' User/developer friendly parameter subset for the ZODIAC tool (Network base molecular formula re-ranking).  Needs results from Formula/SIRIUS Tool
#'
#' @docType class
#' @title Zodiac
#' @description Zodiac Class
#' @format An \code{R6Class} generator object
#' @field enabled tags whether the tool is enabled character [optional]
#' @field consideredCandidatesAt300Mz Maximum number of candidate molecular formulas (fragmentation trees computed by SIRIUS) per compound which are considered by ZODIAC for compounds below 300 m/z. integer [optional]
#' @field consideredCandidatesAt800Mz Maximum number of candidate molecular formulas (fragmentation trees computed by SIRIUS) per compound which are considered by ZODIAC for compounds above 800 m/z. integer [optional]
#' @field runInTwoSteps As default ZODIAC runs a 2-step approach. First running 'good quality compounds' only, and afterwards including the remaining. character [optional]
#' @field edgeFilterThresholds  \link{ZodiacEdgeFilterThresholds} [optional]
#' @field gibbsSamplerParameters  \link{ZodiacEpochs} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Zodiac <- R6::R6Class(
  "Zodiac",
  public = list(
    `enabled` = NULL,
    `consideredCandidatesAt300Mz` = NULL,
    `consideredCandidatesAt800Mz` = NULL,
    `runInTwoSteps` = NULL,
    `edgeFilterThresholds` = NULL,
    `gibbsSamplerParameters` = NULL,
    #' Initialize a new Zodiac class.
    #'
    #' @description
    #' Initialize a new Zodiac class.
    #'
    #' @param enabled tags whether the tool is enabled
    #' @param consideredCandidatesAt300Mz Maximum number of candidate molecular formulas (fragmentation trees computed by SIRIUS) per compound which are considered by ZODIAC for compounds below 300 m/z.
    #' @param consideredCandidatesAt800Mz Maximum number of candidate molecular formulas (fragmentation trees computed by SIRIUS) per compound which are considered by ZODIAC for compounds above 800 m/z.
    #' @param runInTwoSteps As default ZODIAC runs a 2-step approach. First running 'good quality compounds' only, and afterwards including the remaining.
    #' @param edgeFilterThresholds edgeFilterThresholds
    #' @param gibbsSamplerParameters gibbsSamplerParameters
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`enabled` = NULL, `consideredCandidatesAt300Mz` = NULL, `consideredCandidatesAt800Mz` = NULL, `runInTwoSteps` = NULL, `edgeFilterThresholds` = NULL, `gibbsSamplerParameters` = NULL, ...) {
      if (!is.null(`enabled`)) {
        if (!(is.logical(`enabled`) && length(`enabled`) == 1)) {
          stop(paste("Error! Invalid data for `enabled`. Must be a boolean:", `enabled`))
        }
        self$`enabled` <- `enabled`
      }
      if (!is.null(`consideredCandidatesAt300Mz`)) {
        if (!(is.numeric(`consideredCandidatesAt300Mz`) && length(`consideredCandidatesAt300Mz`) == 1)) {
          stop(paste("Error! Invalid data for `consideredCandidatesAt300Mz`. Must be an integer:", `consideredCandidatesAt300Mz`))
        }
        self$`consideredCandidatesAt300Mz` <- `consideredCandidatesAt300Mz`
      }
      if (!is.null(`consideredCandidatesAt800Mz`)) {
        if (!(is.numeric(`consideredCandidatesAt800Mz`) && length(`consideredCandidatesAt800Mz`) == 1)) {
          stop(paste("Error! Invalid data for `consideredCandidatesAt800Mz`. Must be an integer:", `consideredCandidatesAt800Mz`))
        }
        self$`consideredCandidatesAt800Mz` <- `consideredCandidatesAt800Mz`
      }
      if (!is.null(`runInTwoSteps`)) {
        if (!(is.logical(`runInTwoSteps`) && length(`runInTwoSteps`) == 1)) {
          stop(paste("Error! Invalid data for `runInTwoSteps`. Must be a boolean:", `runInTwoSteps`))
        }
        self$`runInTwoSteps` <- `runInTwoSteps`
      }
      if (!is.null(`edgeFilterThresholds`)) {
        stopifnot(R6::is.R6(`edgeFilterThresholds`))
        self$`edgeFilterThresholds` <- `edgeFilterThresholds`
      }
      if (!is.null(`gibbsSamplerParameters`)) {
        stopifnot(R6::is.R6(`gibbsSamplerParameters`))
        self$`gibbsSamplerParameters` <- `gibbsSamplerParameters`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return Zodiac in JSON format
    #' @export
    toJSON = function() {
      ZodiacObject <- list()
      if (!is.null(self$`enabled`)) {
        ZodiacObject[["enabled"]] <-
          self$`enabled`
      }
      if (!is.null(self$`consideredCandidatesAt300Mz`)) {
        ZodiacObject[["consideredCandidatesAt300Mz"]] <-
          self$`consideredCandidatesAt300Mz`
      }
      if (!is.null(self$`consideredCandidatesAt800Mz`)) {
        ZodiacObject[["consideredCandidatesAt800Mz"]] <-
          self$`consideredCandidatesAt800Mz`
      }
      if (!is.null(self$`runInTwoSteps`)) {
        ZodiacObject[["runInTwoSteps"]] <-
          self$`runInTwoSteps`
      }
      if (!is.null(self$`edgeFilterThresholds`)) {
        ZodiacObject[["edgeFilterThresholds"]] <-
          if (is.list(self$`edgeFilterThresholds`$toJSON()) && length(self$`edgeFilterThresholds`$toJSON()) == 0L){
            NULL
          } else if (length(names(self$`edgeFilterThresholds`$toJSON())) == 0L && is.character(jsonlite::fromJSON(self$`edgeFilterThresholds`$toJSON()))) {
            jsonlite::fromJSON(self$`edgeFilterThresholds`$toJSON())
          } else {
            self$`edgeFilterThresholds`$toJSON()
          }
      }
      if (!is.null(self$`gibbsSamplerParameters`)) {
        ZodiacObject[["gibbsSamplerParameters"]] <-
          if (is.list(self$`gibbsSamplerParameters`$toJSON()) && length(self$`gibbsSamplerParameters`$toJSON()) == 0L){
            NULL
          } else if (length(names(self$`gibbsSamplerParameters`$toJSON())) == 0L && is.character(jsonlite::fromJSON(self$`gibbsSamplerParameters`$toJSON()))) {
            jsonlite::fromJSON(self$`gibbsSamplerParameters`$toJSON())
          } else {
            self$`gibbsSamplerParameters`$toJSON()
          }
      }
      ZodiacObject
    },
    #' Deserialize JSON string into an instance of Zodiac
    #'
    #' @description
    #' Deserialize JSON string into an instance of Zodiac
    #'
    #' @param input_json the JSON input
    #' @return the instance of Zodiac
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`enabled`)) {
        self$`enabled` <- this_object$`enabled`
      }
      if (!is.null(this_object$`consideredCandidatesAt300Mz`)) {
        self$`consideredCandidatesAt300Mz` <- this_object$`consideredCandidatesAt300Mz`
      }
      if (!is.null(this_object$`consideredCandidatesAt800Mz`)) {
        self$`consideredCandidatesAt800Mz` <- this_object$`consideredCandidatesAt800Mz`
      }
      if (!is.null(this_object$`runInTwoSteps`)) {
        self$`runInTwoSteps` <- this_object$`runInTwoSteps`
      }
      if (!is.null(this_object$`edgeFilterThresholds`)) {
        `edgefilterthresholds_object` <- ZodiacEdgeFilterThresholds$new()
        `edgefilterthresholds_object`$fromJSON(jsonlite::toJSON(this_object$`edgeFilterThresholds`, auto_unbox = TRUE, digits = NA))
        self$`edgeFilterThresholds` <- `edgefilterthresholds_object`
      }
      if (!is.null(this_object$`gibbsSamplerParameters`)) {
        `gibbssamplerparameters_object` <- ZodiacEpochs$new()
        `gibbssamplerparameters_object`$fromJSON(jsonlite::toJSON(this_object$`gibbsSamplerParameters`, auto_unbox = TRUE, digits = NA))
        self$`gibbsSamplerParameters` <- `gibbssamplerparameters_object`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return Zodiac in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`enabled`)) {
          sprintf(
          '"enabled":
            %s
                    ',
          tolower(self$`enabled`)
          )
        },
        if (!is.null(self$`consideredCandidatesAt300Mz`)) {
          sprintf(
          '"consideredCandidatesAt300Mz":
            %d
                    ',
          self$`consideredCandidatesAt300Mz`
          )
        },
        if (!is.null(self$`consideredCandidatesAt800Mz`)) {
          sprintf(
          '"consideredCandidatesAt800Mz":
            %d
                    ',
          self$`consideredCandidatesAt800Mz`
          )
        },
        if (!is.null(self$`runInTwoSteps`)) {
          sprintf(
          '"runInTwoSteps":
            %s
                    ',
          tolower(self$`runInTwoSteps`)
          )
        },
        if (!is.null(self$`edgeFilterThresholds`)) {
          sprintf(
          '"edgeFilterThresholds":
          %s
          ',
          jsonlite::toJSON(self$`edgeFilterThresholds`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`gibbsSamplerParameters`)) {
          sprintf(
          '"gibbsSamplerParameters":
          %s
          ',
          jsonlite::toJSON(self$`gibbsSamplerParameters`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of Zodiac
    #'
    #' @description
    #' Deserialize JSON string into an instance of Zodiac
    #'
    #' @param input_json the JSON input
    #' @return the instance of Zodiac
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`enabled` <- this_object$`enabled`
      self$`consideredCandidatesAt300Mz` <- this_object$`consideredCandidatesAt300Mz`
      self$`consideredCandidatesAt800Mz` <- this_object$`consideredCandidatesAt800Mz`
      self$`runInTwoSteps` <- this_object$`runInTwoSteps`
      self$`edgeFilterThresholds` <- ZodiacEdgeFilterThresholds$new()$fromJSON(jsonlite::toJSON(this_object$`edgeFilterThresholds`, auto_unbox = TRUE, digits = NA))
      self$`gibbsSamplerParameters` <- ZodiacEpochs$new()$fromJSON(jsonlite::toJSON(this_object$`gibbsSamplerParameters`, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to Zodiac
    #'
    #' @description
    #' Validate JSON input with respect to Zodiac and throw an exception if invalid
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
    #' @return String representation of Zodiac
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
# Zodiac$unlock()
#
## Below is an example to define the print function
# Zodiac$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Zodiac$lock()

