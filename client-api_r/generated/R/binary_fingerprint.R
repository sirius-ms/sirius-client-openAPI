#' Create a new BinaryFingerprint
#'
#' @description
#' BinaryFingerprint Class
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

    #' @description
    #' Initialize a new BinaryFingerprint class.
    #'
    #' @param bitsSet Array that contains all RELATIVE indices (masked FP) of bits that are set (are 1)
    #' @param length Size of the fingerprint (masked fp), e.g. to reconstruct the binary array from the array of set bits
    #' @param ... Other optional arguments.
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
    #' @return BinaryFingerprint as a base R list.
    #' @examples
    #' # convert array of BinaryFingerprint (x) to a data frame
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
    #' Convert BinaryFingerprint to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      BinaryFingerprintObject <- list()
      if (!is.null(self$`bitsSet`)) {
        BinaryFingerprintObject[["bitsSet"]] <-
          self$`bitsSet`
      }
      if (!is.null(self$`length`)) {
        BinaryFingerprintObject[["length"]] <-
          self$`length`
      }
      return(BinaryFingerprintObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of BinaryFingerprint
    #'
    #' @param input_json the JSON input
    #' @return the instance of BinaryFingerprint
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

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return BinaryFingerprint in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of BinaryFingerprint
    #'
    #' @param input_json the JSON input
    #' @return the instance of BinaryFingerprint
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`bitsSet` <- ApiClient$new()$deserializeObj(this_object$`bitsSet`, "array[integer]", loadNamespace("Rsirius"))
      self$`length` <- this_object$`length`
      self
    },

    #' @description
    #' Validate JSON input with respect to BinaryFingerprint and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of BinaryFingerprint
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
# BinaryFingerprint$unlock()
#
## Below is an example to define the print function
# BinaryFingerprint$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# BinaryFingerprint$lock()

