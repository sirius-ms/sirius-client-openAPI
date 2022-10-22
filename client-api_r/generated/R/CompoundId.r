# SIRIUS Nightsky API
#
# REST API that provides the full functionality of SIRIUS and its web services as background service. It is intended as entry-point for scripting languages and software integration SDKs.
#
# OpenAPI spec version: v0.9 on SIRIUS 5.6.1-SNAPSHOT
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' CompoundId Class
#'
#' @field id 
#' @field name 
#' @field index 
#' @field ionMass 
#' @field ionType 
#' @field rtStartSeconds 
#' @field rtEndSeconds 
#' @field topAnnotation 
#' @field msData 
#' @field computing 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CompoundId <- R6::R6Class(
  'CompoundId',
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
    initialize = function(`id`, `name`, `index`, `ionMass`, `ionType`, `rtStartSeconds`, `rtEndSeconds`, `topAnnotation`, `msData`, `computing`){
      if (!missing(`id`)) {
        stopifnot(is.character(`id`), length(`id`) == 1)
        self$`id` <- `id`
      }
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`index`)) {
        stopifnot(is.numeric(`index`), length(`index`) == 1)
        self$`index` <- `index`
      }
      if (!missing(`ionMass`)) {
        stopifnot(is.numeric(`ionMass`), length(`ionMass`) == 1)
        self$`ionMass` <- `ionMass`
      }
      if (!missing(`ionType`)) {
        stopifnot(is.character(`ionType`), length(`ionType`) == 1)
        self$`ionType` <- `ionType`
      }
      if (!missing(`rtStartSeconds`)) {
        stopifnot(is.numeric(`rtStartSeconds`), length(`rtStartSeconds`) == 1)
        self$`rtStartSeconds` <- `rtStartSeconds`
      }
      if (!missing(`rtEndSeconds`)) {
        stopifnot(is.numeric(`rtEndSeconds`), length(`rtEndSeconds`) == 1)
        self$`rtEndSeconds` <- `rtEndSeconds`
      }
      if (!missing(`topAnnotation`)) {
        stopifnot(R6::is.R6(`topAnnotation`))
        self$`topAnnotation` <- `topAnnotation`
      }
      if (!missing(`msData`)) {
        stopifnot(R6::is.R6(`msData`))
        self$`msData` <- `msData`
      }
      if (!missing(`computing`)) {
        self$`computing` <- `computing`
      }
    },
    toJSON = function() {
      CompoundIdObject <- list()
      if (!is.null(self$`id`)) {
        CompoundIdObject[['id']] <- self$`id`
      }
      if (!is.null(self$`name`)) {
        CompoundIdObject[['name']] <- self$`name`
      }
      if (!is.null(self$`index`)) {
        CompoundIdObject[['index']] <- self$`index`
      }
      if (!is.null(self$`ionMass`)) {
        CompoundIdObject[['ionMass']] <- self$`ionMass`
      }
      if (!is.null(self$`ionType`)) {
        CompoundIdObject[['ionType']] <- self$`ionType`
      }
      if (!is.null(self$`rtStartSeconds`)) {
        CompoundIdObject[['rtStartSeconds']] <- self$`rtStartSeconds`
      }
      if (!is.null(self$`rtEndSeconds`)) {
        CompoundIdObject[['rtEndSeconds']] <- self$`rtEndSeconds`
      }
      if (!is.null(self$`topAnnotation`)) {
        CompoundIdObject[['topAnnotation']] <- self$`topAnnotation`$toJSON()
      }
      if (!is.null(self$`msData`)) {
        CompoundIdObject[['msData']] <- self$`msData`$toJSON()
      }
      if (!is.null(self$`computing`)) {
        CompoundIdObject[['computing']] <- self$`computing`
      }

      CompoundIdObject
    },
    fromJSON = function(CompoundIdJson) {
      CompoundIdObject <- jsonlite::fromJSON(CompoundIdJson)
      if (!is.null(CompoundIdObject$`id`)) {
        self$`id` <- CompoundIdObject$`id`
      }
      if (!is.null(CompoundIdObject$`name`)) {
        self$`name` <- CompoundIdObject$`name`
      }
      if (!is.null(CompoundIdObject$`index`)) {
        self$`index` <- CompoundIdObject$`index`
      }
      if (!is.null(CompoundIdObject$`ionMass`)) {
        self$`ionMass` <- CompoundIdObject$`ionMass`
      }
      if (!is.null(CompoundIdObject$`ionType`)) {
        self$`ionType` <- CompoundIdObject$`ionType`
      }
      if (!is.null(CompoundIdObject$`rtStartSeconds`)) {
        self$`rtStartSeconds` <- CompoundIdObject$`rtStartSeconds`
      }
      if (!is.null(CompoundIdObject$`rtEndSeconds`)) {
        self$`rtEndSeconds` <- CompoundIdObject$`rtEndSeconds`
      }
      if (!is.null(CompoundIdObject$`topAnnotation`)) {
        topAnnotationObject <- CompoundAnnotation$new()
        topAnnotationObject$fromJSON(jsonlite::toJSON(CompoundIdObject$topAnnotation, auto_unbox = TRUE))
        self$`topAnnotation` <- topAnnotationObject
      }
      if (!is.null(CompoundIdObject$`msData`)) {
        msDataObject <- MsData$new()
        msDataObject$fromJSON(jsonlite::toJSON(CompoundIdObject$msData, auto_unbox = TRUE))
        self$`msData` <- msDataObject
      }
      if (!is.null(CompoundIdObject$`computing`)) {
        self$`computing` <- CompoundIdObject$`computing`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "id": %s,
           "name": %s,
           "index": %d,
           "ionMass": %d,
           "ionType": %s,
           "rtStartSeconds": %d,
           "rtEndSeconds": %d,
           "topAnnotation": %s,
           "msData": %s,
           "computing": %s
        }',
        self$`id`,
        self$`name`,
        self$`index`,
        self$`ionMass`,
        self$`ionType`,
        self$`rtStartSeconds`,
        self$`rtEndSeconds`,
        self$`topAnnotation`$toJSON(),
        self$`msData`$toJSON(),
        self$`computing`
      )
    },
    fromJSONString = function(CompoundIdJson) {
      CompoundIdObject <- jsonlite::fromJSON(CompoundIdJson)
      self$`id` <- CompoundIdObject$`id`
      self$`name` <- CompoundIdObject$`name`
      self$`index` <- CompoundIdObject$`index`
      self$`ionMass` <- CompoundIdObject$`ionMass`
      self$`ionType` <- CompoundIdObject$`ionType`
      self$`rtStartSeconds` <- CompoundIdObject$`rtStartSeconds`
      self$`rtEndSeconds` <- CompoundIdObject$`rtEndSeconds`
      CompoundAnnotationObject <- CompoundAnnotation$new()
      self$`topAnnotation` <- CompoundAnnotationObject$fromJSON(jsonlite::toJSON(CompoundIdObject$topAnnotation, auto_unbox = TRUE))
      MsDataObject <- MsData$new()
      self$`msData` <- MsDataObject$fromJSON(jsonlite::toJSON(CompoundIdObject$msData, auto_unbox = TRUE))
      self$`computing` <- CompoundIdObject$`computing`
    }
  )
)