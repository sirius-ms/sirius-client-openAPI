#' Create a new FragmentNode
#'
#' @description
#' FragmentNode Class
#'
#' @docType class
#' @title FragmentNode
#' @description FragmentNode Class
#' @format An \code{R6Class} generator object
#' @field fragmentId  integer [optional]
#' @field molecularFormula neutral molecular formula of the fragment without adduct character [optional]
#' @field adduct This combines the ionization plus adduct of the fragment. In contrast to the {@link FragmentationTree FragmentationTree}s adduct,  this adduct may not include any in-source loss. character [optional]
#' @field massDeviationDa  numeric [optional]
#' @field massDeviationPpm  numeric [optional]
#' @field score  numeric [optional]
#' @field intensity  numeric [optional]
#' @field mz  numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FragmentNode <- R6::R6Class(
  "FragmentNode",
  public = list(
    `fragmentId` = NULL,
    `molecularFormula` = NULL,
    `adduct` = NULL,
    `massDeviationDa` = NULL,
    `massDeviationPpm` = NULL,
    `score` = NULL,
    `intensity` = NULL,
    `mz` = NULL,
    #' Initialize a new FragmentNode class.
    #'
    #' @description
    #' Initialize a new FragmentNode class.
    #'
    #' @param fragmentId fragmentId
    #' @param molecularFormula neutral molecular formula of the fragment without adduct
    #' @param adduct This combines the ionization plus adduct of the fragment. In contrast to the {@link FragmentationTree FragmentationTree}s adduct,  this adduct may not include any in-source loss.
    #' @param massDeviationDa massDeviationDa
    #' @param massDeviationPpm massDeviationPpm
    #' @param score score
    #' @param intensity intensity
    #' @param mz mz
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`fragmentId` = NULL, `molecularFormula` = NULL, `adduct` = NULL, `massDeviationDa` = NULL, `massDeviationPpm` = NULL, `score` = NULL, `intensity` = NULL, `mz` = NULL, ...) {
      if (!is.null(`fragmentId`)) {
        if (!(is.numeric(`fragmentId`) && length(`fragmentId`) == 1)) {
          stop(paste("Error! Invalid data for `fragmentId`. Must be an integer:", `fragmentId`))
        }
        self$`fragmentId` <- `fragmentId`
      }
      if (!is.null(`molecularFormula`)) {
        if (!(is.character(`molecularFormula`) && length(`molecularFormula`) == 1)) {
          stop(paste("Error! Invalid data for `molecularFormula`. Must be a string:", `molecularFormula`))
        }
        self$`molecularFormula` <- `molecularFormula`
      }
      if (!is.null(`adduct`)) {
        if (!(is.character(`adduct`) && length(`adduct`) == 1)) {
          stop(paste("Error! Invalid data for `adduct`. Must be a string:", `adduct`))
        }
        self$`adduct` <- `adduct`
      }
      if (!is.null(`massDeviationDa`)) {
        if (!(is.numeric(`massDeviationDa`) && length(`massDeviationDa`) == 1)) {
          stop(paste("Error! Invalid data for `massDeviationDa`. Must be a number:", `massDeviationDa`))
        }
        self$`massDeviationDa` <- `massDeviationDa`
      }
      if (!is.null(`massDeviationPpm`)) {
        if (!(is.numeric(`massDeviationPpm`) && length(`massDeviationPpm`) == 1)) {
          stop(paste("Error! Invalid data for `massDeviationPpm`. Must be a number:", `massDeviationPpm`))
        }
        self$`massDeviationPpm` <- `massDeviationPpm`
      }
      if (!is.null(`score`)) {
        if (!(is.numeric(`score`) && length(`score`) == 1)) {
          stop(paste("Error! Invalid data for `score`. Must be a number:", `score`))
        }
        self$`score` <- `score`
      }
      if (!is.null(`intensity`)) {
        if (!(is.numeric(`intensity`) && length(`intensity`) == 1)) {
          stop(paste("Error! Invalid data for `intensity`. Must be a number:", `intensity`))
        }
        self$`intensity` <- `intensity`
      }
      if (!is.null(`mz`)) {
        if (!(is.numeric(`mz`) && length(`mz`) == 1)) {
          stop(paste("Error! Invalid data for `mz`. Must be a number:", `mz`))
        }
        self$`mz` <- `mz`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return FragmentNode in JSON format
    #' @export
    toJSON = function() {
      FragmentNodeObject <- list()
      if (!is.null(self$`fragmentId`)) {
        FragmentNodeObject[["fragmentId"]] <-
          self$`fragmentId`
      }
      if (!is.null(self$`molecularFormula`)) {
        FragmentNodeObject[["molecularFormula"]] <-
          self$`molecularFormula`
      }
      if (!is.null(self$`adduct`)) {
        FragmentNodeObject[["adduct"]] <-
          self$`adduct`
      }
      if (!is.null(self$`massDeviationDa`)) {
        FragmentNodeObject[["massDeviationDa"]] <-
          self$`massDeviationDa`
      }
      if (!is.null(self$`massDeviationPpm`)) {
        FragmentNodeObject[["massDeviationPpm"]] <-
          self$`massDeviationPpm`
      }
      if (!is.null(self$`score`)) {
        FragmentNodeObject[["score"]] <-
          self$`score`
      }
      if (!is.null(self$`intensity`)) {
        FragmentNodeObject[["intensity"]] <-
          self$`intensity`
      }
      if (!is.null(self$`mz`)) {
        FragmentNodeObject[["mz"]] <-
          self$`mz`
      }
      FragmentNodeObject
    },
    #' Deserialize JSON string into an instance of FragmentNode
    #'
    #' @description
    #' Deserialize JSON string into an instance of FragmentNode
    #'
    #' @param input_json the JSON input
    #' @return the instance of FragmentNode
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`fragmentId`)) {
        self$`fragmentId` <- this_object$`fragmentId`
      }
      if (!is.null(this_object$`molecularFormula`)) {
        self$`molecularFormula` <- this_object$`molecularFormula`
      }
      if (!is.null(this_object$`adduct`)) {
        self$`adduct` <- this_object$`adduct`
      }
      if (!is.null(this_object$`massDeviationDa`)) {
        self$`massDeviationDa` <- this_object$`massDeviationDa`
      }
      if (!is.null(this_object$`massDeviationPpm`)) {
        self$`massDeviationPpm` <- this_object$`massDeviationPpm`
      }
      if (!is.null(this_object$`score`)) {
        self$`score` <- this_object$`score`
      }
      if (!is.null(this_object$`intensity`)) {
        self$`intensity` <- this_object$`intensity`
      }
      if (!is.null(this_object$`mz`)) {
        self$`mz` <- this_object$`mz`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return FragmentNode in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`fragmentId`)) {
          sprintf(
          '"fragmentId":
            %f
                    ',
          self$`fragmentId`
          )
        },
        if (!is.null(self$`molecularFormula`)) {
          sprintf(
          '"molecularFormula":
            "%s"
                    ',
          self$`molecularFormula`
          )
        },
        if (!is.null(self$`adduct`)) {
          sprintf(
          '"adduct":
            "%s"
                    ',
          self$`adduct`
          )
        },
        if (!is.null(self$`massDeviationDa`)) {
          sprintf(
          '"massDeviationDa":
            %f
                    ',
          self$`massDeviationDa`
          )
        },
        if (!is.null(self$`massDeviationPpm`)) {
          sprintf(
          '"massDeviationPpm":
            %f
                    ',
          self$`massDeviationPpm`
          )
        },
        if (!is.null(self$`score`)) {
          sprintf(
          '"score":
            %f
                    ',
          self$`score`
          )
        },
        if (!is.null(self$`intensity`)) {
          sprintf(
          '"intensity":
            %f
                    ',
          self$`intensity`
          )
        },
        if (!is.null(self$`mz`)) {
          sprintf(
          '"mz":
            %f
                    ',
          self$`mz`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      # remove c() occurences and reduce resulting double escaped quotes \"\" into \"
      jsoncontent <- gsub('\\\"c\\((.*?)\\\"\\)', '\\1', jsoncontent)
      # fix wrong serialization of "\"ENUM\"" to "ENUM"
      jsoncontent <- gsub("\\\\\"([A-Z]+)\\\\\"", "\\1", jsoncontent)
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of FragmentNode
    #'
    #' @description
    #' Deserialize JSON string into an instance of FragmentNode
    #'
    #' @param input_json the JSON input
    #' @return the instance of FragmentNode
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`fragmentId` <- this_object$`fragmentId`
      self$`molecularFormula` <- this_object$`molecularFormula`
      self$`adduct` <- this_object$`adduct`
      self$`massDeviationDa` <- this_object$`massDeviationDa`
      self$`massDeviationPpm` <- this_object$`massDeviationPpm`
      self$`score` <- this_object$`score`
      self$`intensity` <- this_object$`intensity`
      self$`mz` <- this_object$`mz`
      self
    },
    #' Validate JSON input with respect to FragmentNode
    #'
    #' @description
    #' Validate JSON input with respect to FragmentNode and throw an exception if invalid
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
    #' @return String representation of FragmentNode
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
# FragmentNode$unlock()
#
## Below is an example to define the print function
# FragmentNode$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# FragmentNode$lock()

