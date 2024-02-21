#' @docType class
#' @title FormulaCandidateOptField
#' @description FormulaCandidateOptField Class
#' @format An \code{R6Class} generator object
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FormulaCandidateOptField <- R6::R6Class(
  "FormulaCandidateOptField",
  public = list(
    #' Initialize a new FormulaCandidateOptField class.
    #'
    #' @description
    #' Initialize a new FormulaCandidateOptField class.
    #'
    #' @param ... Optional arguments.
    #' @export
    initialize = function(...) {
      local.optional.var <- list(...)
      val <- unlist(local.optional.var)
      enumvec <- .parse_FormulaCandidateOptField()

      stopifnot(length(val) == 1L)

      if (!val %in% enumvec)
          stop("Use one of the valid values: ",
              paste0(enumvec, collapse = ", "))
      private$value <- val
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return FormulaCandidateOptField in JSON format
    #' @export
    toJSON = function() {
        jsonlite::toJSON(private$value, auto_unbox = TRUE)
    },
    #' Deserialize JSON string into an instance of FormulaCandidateOptField
    #'
    #' @description
    #' Deserialize JSON string into an instance of FormulaCandidateOptField
    #'
    #' @param input_json the JSON input
    #' @return the instance of FormulaCandidateOptField
    #' @export
    fromJSON = function(input_json) {
      private$value <- jsonlite::fromJSON(input_json,
          simplifyVector = FALSE)
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return FormulaCandidateOptField in JSON format
    #' @export
    toJSONString = function() {
      as.character(jsonlite::toJSON(private$value,
          auto_unbox = TRUE))
    },
    #' Deserialize JSON string into an instance of FormulaCandidateOptField
    #'
    #' @description
    #' Deserialize JSON string into an instance of FormulaCandidateOptField
    #'
    #' @param input_json the JSON input
    #' @return the instance of FormulaCandidateOptField
    #' @export
    fromJSONString = function(input_json) {
      private$value <- jsonlite::fromJSON(input_json,
          simplifyVector = FALSE)
      self
    }
  ),
  private = list(
    value = NULL
  )
)

# add to utils.R
.parse_FormulaCandidateOptField <- function(vals) {
  res <- gsub("^\\[|\\]$", "", "[none, statistics, fragmentationTree, annotatedSpectrum, isotopePattern, lipidAnnotation, predictedFingerprint, compoundClasses, canopusPredictions]")
  unlist(strsplit(res, ", "))
}

