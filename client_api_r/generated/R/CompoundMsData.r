# Sirius Nightsky Middleware API
#
# Sirius Nightsky Middleware API
#
# OpenAPI spec version: 0.9
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' CompoundMsData Class
#'
#' @field mergedMs1 
#' @field mergedMs2 
#' @field ms1Spectra 
#' @field ms2Spectra 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CompoundMsData <- R6::R6Class(
  'CompoundMsData',
  public = list(
    `mergedMs1` = NULL,
    `mergedMs2` = NULL,
    `ms1Spectra` = NULL,
    `ms2Spectra` = NULL,
    initialize = function(`mergedMs1`, `mergedMs2`, `ms1Spectra`, `ms2Spectra`){
      if (!missing(`mergedMs1`)) {
        stopifnot(R6::is.R6(`mergedMs1`))
        self$`mergedMs1` <- `mergedMs1`
      }
      if (!missing(`mergedMs2`)) {
        stopifnot(R6::is.R6(`mergedMs2`))
        self$`mergedMs2` <- `mergedMs2`
      }
      if (!missing(`ms1Spectra`)) {
        stopifnot(is.list(`ms1Spectra`), length(`ms1Spectra`) != 0)
        lapply(`ms1Spectra`, function(x) stopifnot(R6::is.R6(x)))
        self$`ms1Spectra` <- `ms1Spectra`
      }
      if (!missing(`ms2Spectra`)) {
        stopifnot(is.list(`ms2Spectra`), length(`ms2Spectra`) != 0)
        lapply(`ms2Spectra`, function(x) stopifnot(R6::is.R6(x)))
        self$`ms2Spectra` <- `ms2Spectra`
      }
    },
    toJSON = function() {
      CompoundMsDataObject <- list()
      if (!is.null(self$`mergedMs1`)) {
        CompoundMsDataObject[['mergedMs1']] <- self$`mergedMs1`$toJSON()
      }
      if (!is.null(self$`mergedMs2`)) {
        CompoundMsDataObject[['mergedMs2']] <- self$`mergedMs2`$toJSON()
      }
      if (!is.null(self$`ms1Spectra`)) {
        CompoundMsDataObject[['ms1Spectra']] <- lapply(self$`ms1Spectra`, function(x) x$toJSON())
      }
      if (!is.null(self$`ms2Spectra`)) {
        CompoundMsDataObject[['ms2Spectra']] <- lapply(self$`ms2Spectra`, function(x) x$toJSON())
      }

      CompoundMsDataObject
    },
    fromJSON = function(CompoundMsDataJson) {
      CompoundMsDataObject <- jsonlite::fromJSON(CompoundMsDataJson)
      if (!is.null(CompoundMsDataObject$`mergedMs1`)) {
        mergedMs1Object <- AnnotatedSpectrum$new()
        mergedMs1Object$fromJSON(jsonlite::toJSON(CompoundMsDataObject$mergedMs1, auto_unbox = TRUE))
        self$`mergedMs1` <- mergedMs1Object
      }
      if (!is.null(CompoundMsDataObject$`mergedMs2`)) {
        mergedMs2Object <- AnnotatedSpectrum$new()
        mergedMs2Object$fromJSON(jsonlite::toJSON(CompoundMsDataObject$mergedMs2, auto_unbox = TRUE))
        self$`mergedMs2` <- mergedMs2Object
      }
      if (!is.null(CompoundMsDataObject$`ms1Spectra`)) {
        self$`ms1Spectra` <- lapply(CompoundMsDataObject$`ms1Spectra`, function(x) {
          ms1SpectraObject <- AnnotatedSpectrum$new()
          ms1SpectraObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          ms1SpectraObject
        })
      }
      if (!is.null(CompoundMsDataObject$`ms2Spectra`)) {
        self$`ms2Spectra` <- lapply(CompoundMsDataObject$`ms2Spectra`, function(x) {
          ms2SpectraObject <- AnnotatedSpectrum$new()
          ms2SpectraObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          ms2SpectraObject
        })
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "mergedMs1": %s,
           "mergedMs2": %s,
           "ms1Spectra": [%s],
           "ms2Spectra": [%s]
        }',
        self$`mergedMs1`$toJSON(),
        self$`mergedMs2`$toJSON(),
        lapply(self$`ms1Spectra`, function(x) paste(x$toJSON(), sep=",")),
        lapply(self$`ms2Spectra`, function(x) paste(x$toJSON(), sep=","))
      )
    },
    fromJSONString = function(CompoundMsDataJson) {
      CompoundMsDataObject <- jsonlite::fromJSON(CompoundMsDataJson)
      AnnotatedSpectrumObject <- AnnotatedSpectrum$new()
      self$`mergedMs1` <- AnnotatedSpectrumObject$fromJSON(jsonlite::toJSON(CompoundMsDataObject$mergedMs1, auto_unbox = TRUE))
      AnnotatedSpectrumObject <- AnnotatedSpectrum$new()
      self$`mergedMs2` <- AnnotatedSpectrumObject$fromJSON(jsonlite::toJSON(CompoundMsDataObject$mergedMs2, auto_unbox = TRUE))
      self$`ms1Spectra` <- lapply(CompoundMsDataObject$`ms1Spectra`, function(x) AnnotatedSpectrum$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`ms2Spectra` <- lapply(CompoundMsDataObject$`ms2Spectra`, function(x) AnnotatedSpectrum$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
    }
  )
)
