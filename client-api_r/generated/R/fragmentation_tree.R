#' Create a new FragmentationTree
#'
#' @description
#' 
#'
#' @docType class
#' @title FragmentationTree
#' @description FragmentationTree Class
#' @format An \code{R6Class} generator object
#' @field fragments  list(\link{FragmentNode}) [optional]
#' @field losses  list(\link{LossEdge}) [optional]
#' @field treeScore  numeric [optional]
#' @field root  \link{FragmentNode} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FragmentationTree <- R6::R6Class(
  "FragmentationTree",
  public = list(
    `fragments` = NULL,
    `losses` = NULL,
    `treeScore` = NULL,
    `root` = NULL,
    #' Initialize a new FragmentationTree class.
    #'
    #' @description
    #' Initialize a new FragmentationTree class.
    #'
    #' @param fragments fragments
    #' @param losses losses
    #' @param treeScore treeScore
    #' @param root root
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`fragments` = NULL, `losses` = NULL, `treeScore` = NULL, `root` = NULL, ...) {
      if (!is.null(`fragments`)) {
        stopifnot(is.vector(`fragments`), length(`fragments`) != 0)
        sapply(`fragments`, function(x) stopifnot(R6::is.R6(x)))
        self$`fragments` <- `fragments`
      }
      if (!is.null(`losses`)) {
        stopifnot(is.vector(`losses`), length(`losses`) != 0)
        sapply(`losses`, function(x) stopifnot(R6::is.R6(x)))
        self$`losses` <- `losses`
      }
      if (!is.null(`treeScore`)) {
        if (!(is.numeric(`treeScore`) && length(`treeScore`) == 1)) {
          stop(paste("Error! Invalid data for `treeScore`. Must be a number:", `treeScore`))
        }
        self$`treeScore` <- `treeScore`
      }
      if (!is.null(`root`)) {
        stopifnot(R6::is.R6(`root`))
        self$`root` <- `root`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return FragmentationTree in JSON format
    #' @export
    toJSON = function() {
      FragmentationTreeObject <- list()
      if (!is.null(self$`fragments`)) {
        FragmentationTreeObject[["fragments"]] <-
          lapply(self$`fragments`, function(x) x$toJSON())
      }
      if (!is.null(self$`losses`)) {
        FragmentationTreeObject[["losses"]] <-
          lapply(self$`losses`, function(x) x$toJSON())
      }
      if (!is.null(self$`treeScore`)) {
        FragmentationTreeObject[["treeScore"]] <-
          self$`treeScore`
      }
      if (!is.null(self$`root`)) {
        FragmentationTreeObject[["root"]] <-
          self$`root`$toJSON()
      }
      FragmentationTreeObject
    },
    #' Deserialize JSON string into an instance of FragmentationTree
    #'
    #' @description
    #' Deserialize JSON string into an instance of FragmentationTree
    #'
    #' @param input_json the JSON input
    #' @return the instance of FragmentationTree
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`fragments`)) {
        self$`fragments` <- ApiClient$new()$deserializeObj(this_object$`fragments`, "array[FragmentNode]", loadNamespace("RSirius"))
      }
      if (!is.null(this_object$`losses`)) {
        self$`losses` <- ApiClient$new()$deserializeObj(this_object$`losses`, "array[LossEdge]", loadNamespace("RSirius"))
      }
      if (!is.null(this_object$`treeScore`)) {
        self$`treeScore` <- this_object$`treeScore`
      }
      if (!is.null(this_object$`root`)) {
        root_object <- FragmentNode$new()
        root_object$fromJSON(jsonlite::toJSON(this_object$root, auto_unbox = TRUE, digits = NA))
        self$`root` <- root_object
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return FragmentationTree in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`fragments`)) {
          sprintf(
          '"fragments":
          [%s]
',
          paste(sapply(self$`fragments`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        },
        if (!is.null(self$`losses`)) {
          sprintf(
          '"losses":
          [%s]
',
          paste(sapply(self$`losses`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        },
        if (!is.null(self$`treeScore`)) {
          sprintf(
          '"treeScore":
            %d
                    ',
          self$`treeScore`
          )
        },
        if (!is.null(self$`root`)) {
          sprintf(
          '"root":
          %s
          ',
          jsonlite::toJSON(self$`root`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of FragmentationTree
    #'
    #' @description
    #' Deserialize JSON string into an instance of FragmentationTree
    #'
    #' @param input_json the JSON input
    #' @return the instance of FragmentationTree
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`fragments` <- ApiClient$new()$deserializeObj(this_object$`fragments`, "array[FragmentNode]", loadNamespace("RSirius"))
      self$`losses` <- ApiClient$new()$deserializeObj(this_object$`losses`, "array[LossEdge]", loadNamespace("RSirius"))
      self$`treeScore` <- this_object$`treeScore`
      self$`root` <- FragmentNode$new()$fromJSON(jsonlite::toJSON(this_object$root, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to FragmentationTree
    #'
    #' @description
    #' Validate JSON input with respect to FragmentationTree and throw an exception if invalid
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
    #' @return String representation of FragmentationTree
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
# FragmentationTree$unlock()
#
## Below is an example to define the print fnuction
# FragmentationTree$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# FragmentationTree$lock()

