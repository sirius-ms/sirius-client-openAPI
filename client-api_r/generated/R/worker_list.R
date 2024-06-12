#' Create a new WorkerList
#'
#' @description
#' WorkerList Class
#'
#' @docType class
#' @title WorkerList
#' @description WorkerList Class
#' @format An \code{R6Class} generator object
#' @field pendingJobs  integer
#' @field workerList  list(\link{WorkerInfo})
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
WorkerList <- R6::R6Class(
  "WorkerList",
  public = list(
    `pendingJobs` = NULL,
    `workerList` = NULL,
    #' Initialize a new WorkerList class.
    #'
    #' @description
    #' Initialize a new WorkerList class.
    #'
    #' @param pendingJobs pendingJobs
    #' @param workerList workerList
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`pendingJobs`, `workerList`, ...) {
      if (!missing(`pendingJobs`)) {
        if (!(is.numeric(`pendingJobs`) && length(`pendingJobs`) == 1)) {
          stop(paste("Error! Invalid data for `pendingJobs`. Must be an integer:", `pendingJobs`))
        }
        self$`pendingJobs` <- `pendingJobs`
      }
      if (!missing(`workerList`)) {
        stopifnot(is.vector(`workerList`), length(`workerList`) != 0)
        sapply(`workerList`, function(x) stopifnot(R6::is.R6(x)))
        self$`workerList` <- `workerList`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return WorkerList in JSON format
    #' @export
    toJSON = function() {
      WorkerListObject <- list()
      if (!is.null(self$`pendingJobs`)) {
        WorkerListObject[["pendingJobs"]] <-
          self$`pendingJobs`
      }
      if (!is.null(self$`workerList`)) {
        WorkerListObject[["workerList"]] <-
          lapply(self$`workerList`, function(x) x$toJSON())
      }
      WorkerListObject
    },
    #' Deserialize JSON string into an instance of WorkerList
    #'
    #' @description
    #' Deserialize JSON string into an instance of WorkerList
    #'
    #' @param input_json the JSON input
    #' @return the instance of WorkerList
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`pendingJobs`)) {
        self$`pendingJobs` <- this_object$`pendingJobs`
      }
      if (!is.null(this_object$`workerList`)) {
        self$`workerList` <- ApiClient$new()$deserializeObj(this_object$`workerList`, "array[WorkerInfo]", loadNamespace("Rsirius"))
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return WorkerList in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`pendingJobs`)) {
          sprintf(
          '"pendingJobs":
            %f
                    ',
          self$`pendingJobs`
          )
        },
        if (!is.null(self$`workerList`)) {
          sprintf(
          '"workerList":
          [%s]
',
          paste(sapply(self$`workerList`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of WorkerList
    #'
    #' @description
    #' Deserialize JSON string into an instance of WorkerList
    #'
    #' @param input_json the JSON input
    #' @return the instance of WorkerList
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`pendingJobs` <- this_object$`pendingJobs`
      self$`workerList` <- ApiClient$new()$deserializeObj(this_object$`workerList`, "array[WorkerInfo]", loadNamespace("Rsirius"))
      self
    },
    #' Validate JSON input with respect to WorkerList
    #'
    #' @description
    #' Validate JSON input with respect to WorkerList and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `pendingJobs`
      if (!is.null(input_json$`pendingJobs`)) {
        if (!(is.numeric(input_json$`pendingJobs`) && length(input_json$`pendingJobs`) == 1)) {
          stop(paste("Error! Invalid data for `pendingJobs`. Must be an integer:", input_json$`pendingJobs`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for WorkerList: the required field `pendingJobs` is missing."))
      }
      # check the required field `workerList`
      if (!is.null(input_json$`workerList`)) {
        stopifnot(is.vector(input_json$`workerList`), length(input_json$`workerList`) != 0)
        tmp <- sapply(input_json$`workerList`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for WorkerList: the required field `workerList` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of WorkerList
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
      # check if the required `pendingJobs` is null
      if (is.null(self$`pendingJobs`)) {
        return(FALSE)
      }

      # check if the required `workerList` is null
      if (is.null(self$`workerList`)) {
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
      # check if the required `pendingJobs` is null
      if (is.null(self$`pendingJobs`)) {
        invalid_fields["pendingJobs"] <- "Non-nullable required field `pendingJobs` cannot be null."
      }

      # check if the required `workerList` is null
      if (is.null(self$`workerList`)) {
        invalid_fields["workerList"] <- "Non-nullable required field `workerList` cannot be null."
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
# WorkerList$unlock()
#
## Below is an example to define the print function
# WorkerList$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# WorkerList$lock()

