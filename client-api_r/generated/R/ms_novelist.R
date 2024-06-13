#' Create a new MsNovelist
#'
#' @description
#' MsNovelist Class
#'
#' @docType class
#' @title MsNovelist
#' @description MsNovelist Class
#' @format An \code{R6Class} generator object
#' @field enabled tags whether the tool is enabled character [optional]
#' @field numberOfCandidateToPredict Number of structure candidates to be predicted by MsNovelist.  Max Value 128. Values > 128 will be set to 128.  Actual number of returned candidate might be lower du to duplicates being created by MsNovelist. integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MsNovelist <- R6::R6Class(
  "MsNovelist",
  public = list(
    `enabled` = NULL,
    `numberOfCandidateToPredict` = NULL,
    #' Initialize a new MsNovelist class.
    #'
    #' @description
    #' Initialize a new MsNovelist class.
    #'
    #' @param enabled tags whether the tool is enabled
    #' @param numberOfCandidateToPredict Number of structure candidates to be predicted by MsNovelist.  Max Value 128. Values > 128 will be set to 128.  Actual number of returned candidate might be lower du to duplicates being created by MsNovelist.
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`enabled` = NULL, `numberOfCandidateToPredict` = NULL, ...) {
      if (!is.null(`enabled`)) {
        if (!(is.logical(`enabled`) && length(`enabled`) == 1)) {
          stop(paste("Error! Invalid data for `enabled`. Must be a boolean:", `enabled`))
        }
        self$`enabled` <- `enabled`
      }
      if (!is.null(`numberOfCandidateToPredict`)) {
        if (!(is.numeric(`numberOfCandidateToPredict`) && length(`numberOfCandidateToPredict`) == 1)) {
          stop(paste("Error! Invalid data for `numberOfCandidateToPredict`. Must be an integer:", `numberOfCandidateToPredict`))
        }
        self$`numberOfCandidateToPredict` <- `numberOfCandidateToPredict`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return MsNovelist in JSON format
    #' @export
    toJSON = function() {
      MsNovelistObject <- list()
      if (!is.null(self$`enabled`)) {
        MsNovelistObject[["enabled"]] <-
          self$`enabled`
      }
      if (!is.null(self$`numberOfCandidateToPredict`)) {
        MsNovelistObject[["numberOfCandidateToPredict"]] <-
          self$`numberOfCandidateToPredict`
      }
      MsNovelistObject
    },
    #' Deserialize JSON string into an instance of MsNovelist
    #'
    #' @description
    #' Deserialize JSON string into an instance of MsNovelist
    #'
    #' @param input_json the JSON input
    #' @return the instance of MsNovelist
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`enabled`)) {
        self$`enabled` <- this_object$`enabled`
      }
      if (!is.null(this_object$`numberOfCandidateToPredict`)) {
        self$`numberOfCandidateToPredict` <- this_object$`numberOfCandidateToPredict`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return MsNovelist in JSON format
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
        if (!is.null(self$`numberOfCandidateToPredict`)) {
          sprintf(
          '"numberOfCandidateToPredict":
            %f
                    ',
          self$`numberOfCandidateToPredict`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      # remove c() occurences
      jsoncontent <- gsub('c\\((.*?)\\)', '\\1', jsoncontent)
      # reduce resulting double escaped quotes \"\" into \"
      jsoncontent <- gsub('\\\"\\\"+', '\\\"', jsoncontent)
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of MsNovelist
    #'
    #' @description
    #' Deserialize JSON string into an instance of MsNovelist
    #'
    #' @param input_json the JSON input
    #' @return the instance of MsNovelist
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`enabled` <- this_object$`enabled`
      self$`numberOfCandidateToPredict` <- this_object$`numberOfCandidateToPredict`
      self
    },
    #' Validate JSON input with respect to MsNovelist
    #'
    #' @description
    #' Validate JSON input with respect to MsNovelist and throw an exception if invalid
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
    #' @return String representation of MsNovelist
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
# MsNovelist$unlock()
#
## Below is an example to define the print function
# MsNovelist$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# MsNovelist$lock()

