#' Create a new BinaryFingerprint
#'
#' @description
#' 
#'
#' @docType class
#' @title BinaryFingerprint
#' @description BinaryFingerprint Class
#' @format An \code{R6Class} generator object
#' @field bitsSet Array that contains all RELATIVE indices (masked FP) of bits that are set (are 1) list(integer) [optional]
#' @field length Size of the fingerprint (masked fp), e.g. to reconstruct the binary array from the array of set bits integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BinaryFingerprint <- R6::R6Class(
  "BinaryFingerprint",
  public = list(
    `bitsSet` = NULL,
    `length` = NULL,
    #' Initialize a new BinaryFingerprint class.
    #'
    #' @description
    #' Initialize a new BinaryFingerprint class.
    #'
    #' @param bitsSet Array that contains all RELATIVE indices (masked FP) of bits that are set (are 1)
    #' @param length Size of the fingerprint (masked fp), e.g. to reconstruct the binary array from the array of set bits
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`bitsSet` = NULL, `length` = NULL, ...) {
      if (!is.null(`bitsSet`)) {
        stopifnot(is.vector(`bitsSet`), length(`bitsSet`) != 0)
        sapply(`bitsSet`, function(x) stopifnot(is.character(x)))
        self$`bitsSet` <- `bitsSet`
      }
      if (!is.null(`length`)) {
        if (!(is.numeric(`length`) && length(`length`) == 1)) {
          stop(paste("Error! Invalid data for `length`. Must be an integer:", `length`))
        }
        self$`length` <- `length`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return BinaryFingerprint in JSON format
    #' @export
    toJSON = function() {
      BinaryFingerprintObject <- list()
      if (!is.null(self$`bitsSet`)) {
        BinaryFingerprintObject[["bitsSet"]] <-
          self$`bitsSet`
      }
      if (!is.null(self$`length`)) {
        BinaryFingerprintObject[["length"]] <-
          self$`length`
      }
      BinaryFingerprintObject
    },
    #' Deserialize JSON string into an instance of BinaryFingerprint
    #'
    #' @description
    #' Deserialize JSON string into an instance of BinaryFingerprint
    #'
    #' @param input_json the JSON input
    #' @return the instance of BinaryFingerprint
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`bitsSet`)) {
        self$`bitsSet` <- ApiClient$new()$deserializeObj(this_object$`bitsSet`, "array[integer]", loadNamespace("Rsirius"))
      }
      if (!is.null(this_object$`length`)) {
        self$`length` <- this_object$`length`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return BinaryFingerprint in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`bitsSet`)) {
          sprintf(
          '"bitsSet":
             [%s]
          ',
          paste(unlist(lapply(self$`bitsSet`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`length`)) {
          sprintf(
          '"length":
            %d
                    ',
          self$`length`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of BinaryFingerprint
    #'
    #' @description
    #' Deserialize JSON string into an instance of BinaryFingerprint
    #'
    #' @param input_json the JSON input
    #' @return the instance of BinaryFingerprint
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`bitsSet` <- ApiClient$new()$deserializeObj(this_object$`bitsSet`, "array[integer]", loadNamespace("Rsirius"))
      self$`length` <- this_object$`length`
      self
    },
    #' Validate JSON input with respect to BinaryFingerprint
    #'
    #' @description
    #' Validate JSON input with respect to BinaryFingerprint and throw an exception if invalid
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
    #' @return String representation of BinaryFingerprint
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
# BinaryFingerprint$unlock()
#
## Below is an example to define the print function
# BinaryFingerprint$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# BinaryFingerprint$lock()

