#' Create a new AlignedFeature
#'
#' @description
#' The AlignedFeature contains the ID of a feature (aligned over runs) together with some read-only information  that might be displayed in some summary view.
#'
#' @docType class
#' @title AlignedFeature
#' @description AlignedFeature Class
#' @format An \code{R6Class} generator object
#' @field alignedFeatureId  character [optional]
#' @field compoundId  character [optional]
#' @field name  character [optional]
#' @field externalFeatureId Externally provided FeatureId (e.g. by some preprocessing tool).  This FeatureId is NOT used by SIRIUS but is stored to ease mapping information back to the source. character [optional]
#' @field ionMass  numeric [optional]
#' @field charge Ion mode (charge) this feature has been measured in. integer
#' @field detectedAdducts Adducts of this feature that have been detected during preprocessing. list(character)
#' @field rtStartSeconds  numeric [optional]
#' @field rtEndSeconds  numeric [optional]
#' @field rtApexSeconds  numeric [optional]
#' @field quality  \link{DataQuality} [optional]
#' @field hasMs1 If true, the feature has at lease one MS1 spectrum character [optional]
#' @field hasMsMs If true, the feature has at lease one MS/MS spectrum character [optional]
#' @field msData  \link{MsData} [optional]
#' @field topAnnotations  \link{FeatureAnnotations} [optional]
#' @field topAnnotationsDeNovo  \link{FeatureAnnotations} [optional]
#' @field computing Write lock for this feature. If the feature is locked no write operations are possible.  True if any computation is modifying this feature or its results character [optional]
#' @field computedTools  \link{ComputedSubtools} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AlignedFeature <- R6::R6Class(
  "AlignedFeature",
  public = list(
    `alignedFeatureId` = NULL,
    `compoundId` = NULL,
    `name` = NULL,
    `externalFeatureId` = NULL,
    `ionMass` = NULL,
    `charge` = NULL,
    `detectedAdducts` = NULL,
    `rtStartSeconds` = NULL,
    `rtEndSeconds` = NULL,
    `rtApexSeconds` = NULL,
    `quality` = NULL,
    `hasMs1` = NULL,
    `hasMsMs` = NULL,
    `msData` = NULL,
    `topAnnotations` = NULL,
    `topAnnotationsDeNovo` = NULL,
    `computing` = NULL,
    `computedTools` = NULL,
    #' Initialize a new AlignedFeature class.
    #'
    #' @description
    #' Initialize a new AlignedFeature class.
    #'
    #' @param charge Ion mode (charge) this feature has been measured in.
    #' @param detectedAdducts Adducts of this feature that have been detected during preprocessing.
    #' @param alignedFeatureId alignedFeatureId
    #' @param compoundId compoundId
    #' @param name name
    #' @param externalFeatureId Externally provided FeatureId (e.g. by some preprocessing tool).  This FeatureId is NOT used by SIRIUS but is stored to ease mapping information back to the source.
    #' @param ionMass ionMass
    #' @param rtStartSeconds rtStartSeconds
    #' @param rtEndSeconds rtEndSeconds
    #' @param rtApexSeconds rtApexSeconds
    #' @param quality quality
    #' @param hasMs1 If true, the feature has at lease one MS1 spectrum
    #' @param hasMsMs If true, the feature has at lease one MS/MS spectrum
    #' @param msData msData
    #' @param topAnnotations topAnnotations
    #' @param topAnnotationsDeNovo topAnnotationsDeNovo
    #' @param computing Write lock for this feature. If the feature is locked no write operations are possible.  True if any computation is modifying this feature or its results
    #' @param computedTools computedTools
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`charge`, `detectedAdducts`, `alignedFeatureId` = NULL, `compoundId` = NULL, `name` = NULL, `externalFeatureId` = NULL, `ionMass` = NULL, `rtStartSeconds` = NULL, `rtEndSeconds` = NULL, `rtApexSeconds` = NULL, `quality` = NULL, `hasMs1` = NULL, `hasMsMs` = NULL, `msData` = NULL, `topAnnotations` = NULL, `topAnnotationsDeNovo` = NULL, `computing` = NULL, `computedTools` = NULL, ...) {
      if (!missing(`charge`)) {
        if (!(is.numeric(`charge`) && length(`charge`) == 1)) {
          stop(paste("Error! Invalid data for `charge`. Must be an integer:", `charge`))
        }
        self$`charge` <- `charge`
      }
      if (!missing(`detectedAdducts`)) {
        stopifnot(is.vector(`detectedAdducts`), length(`detectedAdducts`) != 0)
        sapply(`detectedAdducts`, function(x) stopifnot(is.character(x)))
        if (!identical(`detectedAdducts`, unique(`detectedAdducts`))) {
          stop("Error! Items in `detectedAdducts` are not unique.")
        }
        self$`detectedAdducts` <- `detectedAdducts`
      }
      if (!is.null(`alignedFeatureId`)) {
        if (!(is.character(`alignedFeatureId`) && length(`alignedFeatureId`) == 1)) {
          stop(paste("Error! Invalid data for `alignedFeatureId`. Must be a string:", `alignedFeatureId`))
        }
        self$`alignedFeatureId` <- `alignedFeatureId`
      }
      if (!is.null(`compoundId`)) {
        if (!(is.character(`compoundId`) && length(`compoundId`) == 1)) {
          stop(paste("Error! Invalid data for `compoundId`. Must be a string:", `compoundId`))
        }
        self$`compoundId` <- `compoundId`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`externalFeatureId`)) {
        if (!(is.character(`externalFeatureId`) && length(`externalFeatureId`) == 1)) {
          stop(paste("Error! Invalid data for `externalFeatureId`. Must be a string:", `externalFeatureId`))
        }
        self$`externalFeatureId` <- `externalFeatureId`
      }
      if (!is.null(`ionMass`)) {
        if (!(is.numeric(`ionMass`) && length(`ionMass`) == 1)) {
          stop(paste("Error! Invalid data for `ionMass`. Must be a number:", `ionMass`))
        }
        self$`ionMass` <- `ionMass`
      }
      if (!is.null(`rtStartSeconds`)) {
        if (!(is.numeric(`rtStartSeconds`) && length(`rtStartSeconds`) == 1)) {
          stop(paste("Error! Invalid data for `rtStartSeconds`. Must be a number:", `rtStartSeconds`))
        }
        self$`rtStartSeconds` <- `rtStartSeconds`
      }
      if (!is.null(`rtEndSeconds`)) {
        if (!(is.numeric(`rtEndSeconds`) && length(`rtEndSeconds`) == 1)) {
          stop(paste("Error! Invalid data for `rtEndSeconds`. Must be a number:", `rtEndSeconds`))
        }
        self$`rtEndSeconds` <- `rtEndSeconds`
      }
      if (!is.null(`rtApexSeconds`)) {
        if (!(is.numeric(`rtApexSeconds`) && length(`rtApexSeconds`) == 1)) {
          stop(paste("Error! Invalid data for `rtApexSeconds`. Must be a number:", `rtApexSeconds`))
        }
        self$`rtApexSeconds` <- `rtApexSeconds`
      }
      if (!is.null(`quality`)) {
        # disabled, as it is broken and checks for `quality` %in% c()
        # if (!(`quality` %in% c())) {
        #  stop(paste("Error! \"", `quality`, "\" cannot be assigned to `quality`. Must be .", sep = ""))
        # }
        stopifnot(R6::is.R6(`quality`))
        self$`quality` <- `quality`
      }
      if (!is.null(`hasMs1`)) {
        if (!(is.logical(`hasMs1`) && length(`hasMs1`) == 1)) {
          stop(paste("Error! Invalid data for `hasMs1`. Must be a boolean:", `hasMs1`))
        }
        self$`hasMs1` <- `hasMs1`
      }
      if (!is.null(`hasMsMs`)) {
        if (!(is.logical(`hasMsMs`) && length(`hasMsMs`) == 1)) {
          stop(paste("Error! Invalid data for `hasMsMs`. Must be a boolean:", `hasMsMs`))
        }
        self$`hasMsMs` <- `hasMsMs`
      }
      if (!is.null(`msData`)) {
        stopifnot(R6::is.R6(`msData`))
        self$`msData` <- `msData`
      }
      if (!is.null(`topAnnotations`)) {
        stopifnot(R6::is.R6(`topAnnotations`))
        self$`topAnnotations` <- `topAnnotations`
      }
      if (!is.null(`topAnnotationsDeNovo`)) {
        stopifnot(R6::is.R6(`topAnnotationsDeNovo`))
        self$`topAnnotationsDeNovo` <- `topAnnotationsDeNovo`
      }
      if (!is.null(`computing`)) {
        if (!(is.logical(`computing`) && length(`computing`) == 1)) {
          stop(paste("Error! Invalid data for `computing`. Must be a boolean:", `computing`))
        }
        self$`computing` <- `computing`
      }
      if (!is.null(`computedTools`)) {
        stopifnot(R6::is.R6(`computedTools`))
        self$`computedTools` <- `computedTools`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return AlignedFeature in JSON format
    #' @export
    toJSON = function() {
      AlignedFeatureObject <- list()
      if (!is.null(self$`alignedFeatureId`)) {
        AlignedFeatureObject[["alignedFeatureId"]] <-
          self$`alignedFeatureId`
      }
      if (!is.null(self$`compoundId`)) {
        AlignedFeatureObject[["compoundId"]] <-
          self$`compoundId`
      }
      if (!is.null(self$`name`)) {
        AlignedFeatureObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`externalFeatureId`)) {
        AlignedFeatureObject[["externalFeatureId"]] <-
          self$`externalFeatureId`
      }
      if (!is.null(self$`ionMass`)) {
        AlignedFeatureObject[["ionMass"]] <-
          self$`ionMass`
      }
      if (!is.null(self$`charge`)) {
        AlignedFeatureObject[["charge"]] <-
          self$`charge`
      }
      if (!is.null(self$`detectedAdducts`)) {
        AlignedFeatureObject[["detectedAdducts"]] <-
          self$`detectedAdducts`
      }
      if (!is.null(self$`rtStartSeconds`)) {
        AlignedFeatureObject[["rtStartSeconds"]] <-
          self$`rtStartSeconds`
      }
      if (!is.null(self$`rtEndSeconds`)) {
        AlignedFeatureObject[["rtEndSeconds"]] <-
          self$`rtEndSeconds`
      }
      if (!is.null(self$`rtApexSeconds`)) {
        AlignedFeatureObject[["rtApexSeconds"]] <-
          self$`rtApexSeconds`
      }
      if (!is.null(self$`quality`)) {
        AlignedFeatureObject[["quality"]] <-
          if (is.list(self$`quality`$toJSON()) && length(self$`quality`$toJSON()) == 0L){
            NULL
          } else if (length(names(self$`quality`$toJSON())) == 0L && is.character(jsonlite::fromJSON(self$`quality`$toJSON()))) {
            jsonlite::fromJSON(self$`quality`$toJSON())
          } else {
            self$`quality`$toJSON()
          }
      }
      if (!is.null(self$`hasMs1`)) {
        AlignedFeatureObject[["hasMs1"]] <-
          self$`hasMs1`
      }
      if (!is.null(self$`hasMsMs`)) {
        AlignedFeatureObject[["hasMsMs"]] <-
          self$`hasMsMs`
      }
      if (!is.null(self$`msData`)) {
        AlignedFeatureObject[["msData"]] <-
          if (is.list(self$`msData`$toJSON()) && length(self$`msData`$toJSON()) == 0L){
            NULL
          } else if (length(names(self$`msData`$toJSON())) == 0L && is.character(jsonlite::fromJSON(self$`msData`$toJSON()))) {
            jsonlite::fromJSON(self$`msData`$toJSON())
          } else {
            self$`msData`$toJSON()
          }
      }
      if (!is.null(self$`topAnnotations`)) {
        AlignedFeatureObject[["topAnnotations"]] <-
          if (is.list(self$`topAnnotations`$toJSON()) && length(self$`topAnnotations`$toJSON()) == 0L){
            NULL
          } else if (length(names(self$`topAnnotations`$toJSON())) == 0L && is.character(jsonlite::fromJSON(self$`topAnnotations`$toJSON()))) {
            jsonlite::fromJSON(self$`topAnnotations`$toJSON())
          } else {
            self$`topAnnotations`$toJSON()
          }
      }
      if (!is.null(self$`topAnnotationsDeNovo`)) {
        AlignedFeatureObject[["topAnnotationsDeNovo"]] <-
          if (is.list(self$`topAnnotationsDeNovo`$toJSON()) && length(self$`topAnnotationsDeNovo`$toJSON()) == 0L){
            NULL
          } else if (length(names(self$`topAnnotationsDeNovo`$toJSON())) == 0L && is.character(jsonlite::fromJSON(self$`topAnnotationsDeNovo`$toJSON()))) {
            jsonlite::fromJSON(self$`topAnnotationsDeNovo`$toJSON())
          } else {
            self$`topAnnotationsDeNovo`$toJSON()
          }
      }
      if (!is.null(self$`computing`)) {
        AlignedFeatureObject[["computing"]] <-
          self$`computing`
      }
      if (!is.null(self$`computedTools`)) {
        AlignedFeatureObject[["computedTools"]] <-
          if (is.list(self$`computedTools`$toJSON()) && length(self$`computedTools`$toJSON()) == 0L){
            NULL
          } else if (length(names(self$`computedTools`$toJSON())) == 0L && is.character(jsonlite::fromJSON(self$`computedTools`$toJSON()))) {
            jsonlite::fromJSON(self$`computedTools`$toJSON())
          } else {
            self$`computedTools`$toJSON()
          }
      }
      AlignedFeatureObject
    },
    #' Deserialize JSON string into an instance of AlignedFeature
    #'
    #' @description
    #' Deserialize JSON string into an instance of AlignedFeature
    #'
    #' @param input_json the JSON input
    #' @return the instance of AlignedFeature
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`alignedFeatureId`)) {
        self$`alignedFeatureId` <- this_object$`alignedFeatureId`
      }
      if (!is.null(this_object$`compoundId`)) {
        self$`compoundId` <- this_object$`compoundId`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`externalFeatureId`)) {
        self$`externalFeatureId` <- this_object$`externalFeatureId`
      }
      if (!is.null(this_object$`ionMass`)) {
        self$`ionMass` <- this_object$`ionMass`
      }
      if (!is.null(this_object$`charge`)) {
        self$`charge` <- this_object$`charge`
      }
      if (!is.null(this_object$`detectedAdducts`)) {
        self$`detectedAdducts` <- ApiClient$new()$deserializeObj(this_object$`detectedAdducts`, "set[character]", loadNamespace("Rsirius"))
        if (!identical(self$`detectedAdducts`, unique(self$`detectedAdducts`))) {
          stop("Error! Items in `detectedAdducts` are not unique.")
        }
      }
      if (!is.null(this_object$`rtStartSeconds`)) {
        self$`rtStartSeconds` <- this_object$`rtStartSeconds`
      }
      if (!is.null(this_object$`rtEndSeconds`)) {
        self$`rtEndSeconds` <- this_object$`rtEndSeconds`
      }
      if (!is.null(this_object$`rtApexSeconds`)) {
        self$`rtApexSeconds` <- this_object$`rtApexSeconds`
      }
      if (!is.null(this_object$`quality`)) {
        `quality_object` <- DataQuality$new()
        `quality_object`$fromJSON(jsonlite::toJSON(this_object$`quality`, auto_unbox = TRUE, digits = NA))
        self$`quality` <- `quality_object`
      }
      if (!is.null(this_object$`hasMs1`)) {
        self$`hasMs1` <- this_object$`hasMs1`
      }
      if (!is.null(this_object$`hasMsMs`)) {
        self$`hasMsMs` <- this_object$`hasMsMs`
      }
      if (!is.null(this_object$`msData`)) {
        `msdata_object` <- MsData$new()
        `msdata_object`$fromJSON(jsonlite::toJSON(this_object$`msData`, auto_unbox = TRUE, digits = NA))
        self$`msData` <- `msdata_object`
      }
      if (!is.null(this_object$`topAnnotations`)) {
        `topannotations_object` <- FeatureAnnotations$new()
        `topannotations_object`$fromJSON(jsonlite::toJSON(this_object$`topAnnotations`, auto_unbox = TRUE, digits = NA))
        self$`topAnnotations` <- `topannotations_object`
      }
      if (!is.null(this_object$`topAnnotationsDeNovo`)) {
        `topannotationsdenovo_object` <- FeatureAnnotations$new()
        `topannotationsdenovo_object`$fromJSON(jsonlite::toJSON(this_object$`topAnnotationsDeNovo`, auto_unbox = TRUE, digits = NA))
        self$`topAnnotationsDeNovo` <- `topannotationsdenovo_object`
      }
      if (!is.null(this_object$`computing`)) {
        self$`computing` <- this_object$`computing`
      }
      if (!is.null(this_object$`computedTools`)) {
        `computedtools_object` <- ComputedSubtools$new()
        `computedtools_object`$fromJSON(jsonlite::toJSON(this_object$`computedTools`, auto_unbox = TRUE, digits = NA))
        self$`computedTools` <- `computedtools_object`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return AlignedFeature in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`alignedFeatureId`)) {
          sprintf(
          '"alignedFeatureId":
            "%s"
                    ',
          self$`alignedFeatureId`
          )
        },
        if (!is.null(self$`compoundId`)) {
          sprintf(
          '"compoundId":
            "%s"
                    ',
          self$`compoundId`
          )
        },
        if (!is.null(self$`name`)) {
          sprintf(
          '"name":
            "%s"
                    ',
          self$`name`
          )
        },
        if (!is.null(self$`externalFeatureId`)) {
          sprintf(
          '"externalFeatureId":
            "%s"
                    ',
          self$`externalFeatureId`
          )
        },
        if (!is.null(self$`ionMass`)) {
          sprintf(
          '"ionMass":
            %f
                    ',
          self$`ionMass`
          )
        },
        if (!is.null(self$`charge`)) {
          sprintf(
          '"charge":
            %f
                    ',
          self$`charge`
          )
        },
        if (!is.null(self$`detectedAdducts`)) {
          sprintf(
          '"detectedAdducts":
             [%s]
          ',
          paste(unlist(lapply(self$`detectedAdducts`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`rtStartSeconds`)) {
          sprintf(
          '"rtStartSeconds":
            %f
                    ',
          self$`rtStartSeconds`
          )
        },
        if (!is.null(self$`rtEndSeconds`)) {
          sprintf(
          '"rtEndSeconds":
            %f
                    ',
          self$`rtEndSeconds`
          )
        },
        if (!is.null(self$`rtApexSeconds`)) {
          sprintf(
          '"rtApexSeconds":
            %f
                    ',
          self$`rtApexSeconds`
          )
        },
        if (!is.null(self$`quality`)) {
          sprintf(
          '"quality":
          %s
          ',
          jsonlite::toJSON(self$`quality`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`hasMs1`)) {
          sprintf(
          '"hasMs1":
            %s
                    ',
          tolower(self$`hasMs1`)
          )
        },
        if (!is.null(self$`hasMsMs`)) {
          sprintf(
          '"hasMsMs":
            %s
                    ',
          tolower(self$`hasMsMs`)
          )
        },
        if (!is.null(self$`msData`)) {
          sprintf(
          '"msData":
          %s
          ',
          jsonlite::toJSON(self$`msData`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`topAnnotations`)) {
          sprintf(
          '"topAnnotations":
          %s
          ',
          jsonlite::toJSON(self$`topAnnotations`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`topAnnotationsDeNovo`)) {
          sprintf(
          '"topAnnotationsDeNovo":
          %s
          ',
          jsonlite::toJSON(self$`topAnnotationsDeNovo`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`computing`)) {
          sprintf(
          '"computing":
            %s
                    ',
          tolower(self$`computing`)
          )
        },
        if (!is.null(self$`computedTools`)) {
          sprintf(
          '"computedTools":
          %s
          ',
          jsonlite::toJSON(self$`computedTools`$toJSON(), auto_unbox = TRUE, digits = NA)
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
    #' Deserialize JSON string into an instance of AlignedFeature
    #'
    #' @description
    #' Deserialize JSON string into an instance of AlignedFeature
    #'
    #' @param input_json the JSON input
    #' @return the instance of AlignedFeature
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`alignedFeatureId` <- this_object$`alignedFeatureId`
      self$`compoundId` <- this_object$`compoundId`
      self$`name` <- this_object$`name`
      self$`externalFeatureId` <- this_object$`externalFeatureId`
      self$`ionMass` <- this_object$`ionMass`
      self$`charge` <- this_object$`charge`
      self$`detectedAdducts` <- ApiClient$new()$deserializeObj(this_object$`detectedAdducts`, "set[character]", loadNamespace("Rsirius"))
      if (!identical(self$`detectedAdducts`, unique(self$`detectedAdducts`))) {
        stop("Error! Items in `detectedAdducts` are not unique.")
      }
      self$`rtStartSeconds` <- this_object$`rtStartSeconds`
      self$`rtEndSeconds` <- this_object$`rtEndSeconds`
      self$`rtApexSeconds` <- this_object$`rtApexSeconds`
      self$`quality` <- DataQuality$new()$fromJSON(jsonlite::toJSON(this_object$`quality`, auto_unbox = TRUE, digits = NA))
      self$`hasMs1` <- this_object$`hasMs1`
      self$`hasMsMs` <- this_object$`hasMsMs`
      self$`msData` <- MsData$new()$fromJSON(jsonlite::toJSON(this_object$`msData`, auto_unbox = TRUE, digits = NA))
      self$`topAnnotations` <- FeatureAnnotations$new()$fromJSON(jsonlite::toJSON(this_object$`topAnnotations`, auto_unbox = TRUE, digits = NA))
      self$`topAnnotationsDeNovo` <- FeatureAnnotations$new()$fromJSON(jsonlite::toJSON(this_object$`topAnnotationsDeNovo`, auto_unbox = TRUE, digits = NA))
      self$`computing` <- this_object$`computing`
      self$`computedTools` <- ComputedSubtools$new()$fromJSON(jsonlite::toJSON(this_object$`computedTools`, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to AlignedFeature
    #'
    #' @description
    #' Validate JSON input with respect to AlignedFeature and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `charge`
      if (!is.null(input_json$`charge`)) {
        if (!(is.numeric(input_json$`charge`) && length(input_json$`charge`) == 1)) {
          stop(paste("Error! Invalid data for `charge`. Must be an integer:", input_json$`charge`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AlignedFeature: the required field `charge` is missing."))
      }
      # check the required field `detectedAdducts`
      if (!is.null(input_json$`detectedAdducts`)) {
        stopifnot(is.vector(input_json$`detectedAdducts`), length(input_json$`detectedAdducts`) != 0)
        if (!identical(input_json$`detectedAdducts`, unique(input_json$`detectedAdducts`))) {
          stop("Error! Items in `detectedAdducts` are not unique.")
        }
        tmp <- sapply(input_json$`detectedAdducts`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AlignedFeature: the required field `detectedAdducts` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AlignedFeature
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
      # check if the required `charge` is null
      if (is.null(self$`charge`)) {
        return(FALSE)
      }

      # check if the required `detectedAdducts` is null
      if (is.null(self$`detectedAdducts`)) {
        return(FALSE)
      }


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
      # check if the required `charge` is null
      if (is.null(self$`charge`)) {
        invalid_fields["charge"] <- "Non-nullable required field `charge` cannot be null."
      }

      # check if the required `detectedAdducts` is null
      if (is.null(self$`detectedAdducts`)) {
        invalid_fields["detectedAdducts"] <- "Non-nullable required field `detectedAdducts` cannot be null."
      }


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
# AlignedFeature$unlock()
#
## Below is an example to define the print function
# AlignedFeature$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AlignedFeature$lock()

