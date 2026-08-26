#' Create a new SearchableField
#'
#' @description
#' Describes one field of the search index that can be used in lucene search queries (searchQuery parameter).  Use this information to build valid queries, e.g. which fields support range queries ([300 TO 400])  and which support word based (full text) search.
#'
#' @docType class
#' @title SearchableField
#' @description SearchableField Class
#' @format An \code{R6Class} generator object
#' @field name Name of the field to be used in search queries, e.g. <code>ionMass:[300 TO 400]</code>.  Nested fields are addressed with dot notation. Dynamic, map-like fields are reported as concrete,  directly usable field names - one entry per key currently present in the project index - rather  than a wildcard template, e.g. <code>tags.&lt;tagName&gt;</code>, an element symbol in  <code>...molecularFormula.&lt;element&gt;</code>, or a database id in  <code>topAnnotations.matchedDatabases.&lt;dbId&gt;</code>. character
#' @field fieldType  \link{SearchableFieldType}
#' @field fullTextSearch If true, the field content is split into words and can be searched word by word (full text search).  If false, TEXT fields only match as exact terms (though wildcards and regex are still possible). character [optional]
#' @field sortable If true, search results can be sorted by this field. character [optional]
#' @field defaultSearchField If true, this field is searched when a query term does not specify a field name. character [optional]
#' @field possibleValues The values this field can take, exactly as they are indexed, or null if the field accepts free text.  <p>  Reported for ENUM and BOOLEAN fields, for TEXT fields that hold a closed vocabulary (the compound class  ontologies), and for fields whose values are project state: a tag restricted by its definition, or the  adducts detected in this project. Searchable fields are described per project, so the latter are the  values actually present in it rather than everything that could ever occur.  <p>  Note that the indexed value is not always the notation you would expect: an adduct is indexed as  '[M + H]+', with spaces. Use the values as offered rather than constructing them. list(character) [optional]
#' @field description Optional human-readable description of the field content, as shown in the API documentation.  Plain text suitable for direct display (e.g. tooltips); deliberate paragraph breaks are newlines. character [optional]
#' @field significantSuffixLength How many trailing dot-separated segments of the field name carry its meaning, for compact  display. <code>1</code> for a normal field (show the terminal segment, e.g. <code>lipid</code>); <code>2</code>  for a dynamic map key (show field + key, e.g. <code>matchedDatabases.GNPS</code>,  <code>qualities.PEAK_QUALITY</code>, <code>tags.pfas</code>); larger for multi-segment keys. Clients may  show the last <code>significantSuffixLength</code> name segments as a short label; the full field name  always stays authoritative for queries. integer
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SearchableField <- R6::R6Class(
  "SearchableField",
  public = list(
    `name` = NULL,
    `fieldType` = NULL,
    `fullTextSearch` = NULL,
    `sortable` = NULL,
    `defaultSearchField` = NULL,
    `possibleValues` = NULL,
    `description` = NULL,
    `significantSuffixLength` = NULL,

    #' @description
    #' Initialize a new SearchableField class.
    #'
    #' @param name Name of the field to be used in search queries, e.g. <code>ionMass:[300 TO 400]</code>.  Nested fields are addressed with dot notation. Dynamic, map-like fields are reported as concrete,  directly usable field names - one entry per key currently present in the project index - rather  than a wildcard template, e.g. <code>tags.&lt;tagName&gt;</code>, an element symbol in  <code>...molecularFormula.&lt;element&gt;</code>, or a database id in  <code>topAnnotations.matchedDatabases.&lt;dbId&gt;</code>.
    #' @param fieldType fieldType
    #' @param significantSuffixLength How many trailing dot-separated segments of the field name carry its meaning, for compact  display. <code>1</code> for a normal field (show the terminal segment, e.g. <code>lipid</code>); <code>2</code>  for a dynamic map key (show field + key, e.g. <code>matchedDatabases.GNPS</code>,  <code>qualities.PEAK_QUALITY</code>, <code>tags.pfas</code>); larger for multi-segment keys. Clients may  show the last <code>significantSuffixLength</code> name segments as a short label; the full field name  always stays authoritative for queries.
    #' @param fullTextSearch If true, the field content is split into words and can be searched word by word (full text search).  If false, TEXT fields only match as exact terms (though wildcards and regex are still possible).
    #' @param sortable If true, search results can be sorted by this field.
    #' @param defaultSearchField If true, this field is searched when a query term does not specify a field name.
    #' @param possibleValues The values this field can take, exactly as they are indexed, or null if the field accepts free text.  <p>  Reported for ENUM and BOOLEAN fields, for TEXT fields that hold a closed vocabulary (the compound class  ontologies), and for fields whose values are project state: a tag restricted by its definition, or the  adducts detected in this project. Searchable fields are described per project, so the latter are the  values actually present in it rather than everything that could ever occur.  <p>  Note that the indexed value is not always the notation you would expect: an adduct is indexed as  '[M + H]+', with spaces. Use the values as offered rather than constructing them.
    #' @param description Optional human-readable description of the field content, as shown in the API documentation.  Plain text suitable for direct display (e.g. tooltips); deliberate paragraph breaks are newlines.
    #' @param ... Other optional arguments.
    initialize = function(`name`, `fieldType`, `significantSuffixLength`, `fullTextSearch` = NULL, `sortable` = NULL, `defaultSearchField` = NULL, `possibleValues` = NULL, `description` = NULL, ...) {
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`fieldType`)) {
        if (!(`fieldType` %in% c())) {
          stop(paste("Error! \"", `fieldType`, "\" cannot be assigned to `fieldType`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`fieldType`))
        self$`fieldType` <- `fieldType`
      }
      if (!missing(`significantSuffixLength`)) {
        if (!(is.numeric(`significantSuffixLength`) && length(`significantSuffixLength`) == 1)) {
          stop(paste("Error! Invalid data for `significantSuffixLength`. Must be an integer:", `significantSuffixLength`))
        }
        self$`significantSuffixLength` <- `significantSuffixLength`
      }
      if (!is.null(`fullTextSearch`)) {
        if (!(is.logical(`fullTextSearch`) && length(`fullTextSearch`) == 1)) {
          stop(paste("Error! Invalid data for `fullTextSearch`. Must be a boolean:", `fullTextSearch`))
        }
        self$`fullTextSearch` <- `fullTextSearch`
      }
      if (!is.null(`sortable`)) {
        if (!(is.logical(`sortable`) && length(`sortable`) == 1)) {
          stop(paste("Error! Invalid data for `sortable`. Must be a boolean:", `sortable`))
        }
        self$`sortable` <- `sortable`
      }
      if (!is.null(`defaultSearchField`)) {
        if (!(is.logical(`defaultSearchField`) && length(`defaultSearchField`) == 1)) {
          stop(paste("Error! Invalid data for `defaultSearchField`. Must be a boolean:", `defaultSearchField`))
        }
        self$`defaultSearchField` <- `defaultSearchField`
      }
      if (!is.null(`possibleValues`)) {
        stopifnot(is.vector(`possibleValues`), length(`possibleValues`) != 0)
        sapply(`possibleValues`, function(x) stopifnot(is.character(x)))
        self$`possibleValues` <- `possibleValues`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
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
    #' @return SearchableField as a base R list.
    #' @examples
    #' # convert array of SearchableField (x) to a data frame
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
    #' Convert SearchableField to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SearchableFieldObject <- list()
      if (!is.null(self$`name`)) {
        SearchableFieldObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`fieldType`)) {
        SearchableFieldObject[["fieldType"]] <-
          self$`fieldType`$toSimpleType()
      }
      if (!is.null(self$`fullTextSearch`)) {
        SearchableFieldObject[["fullTextSearch"]] <-
          self$`fullTextSearch`
      }
      if (!is.null(self$`sortable`)) {
        SearchableFieldObject[["sortable"]] <-
          self$`sortable`
      }
      if (!is.null(self$`defaultSearchField`)) {
        SearchableFieldObject[["defaultSearchField"]] <-
          self$`defaultSearchField`
      }
      if (!is.null(self$`possibleValues`)) {
        SearchableFieldObject[["possibleValues"]] <-
          self$`possibleValues`
      }
      if (!is.null(self$`description`)) {
        SearchableFieldObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`significantSuffixLength`)) {
        SearchableFieldObject[["significantSuffixLength"]] <-
          self$`significantSuffixLength`
      }
      return(SearchableFieldObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of SearchableField
    #'
    #' @param input_json the JSON input
    #' @return the instance of SearchableField
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`fieldType`)) {
        `fieldtype_object` <- SearchableFieldType$new()
        `fieldtype_object`$fromJSON(jsonlite::toJSON(this_object$`fieldType`, auto_unbox = TRUE, digits = NA, null = 'null'))
        self$`fieldType` <- `fieldtype_object`
      }
      if (!is.null(this_object$`fullTextSearch`)) {
        self$`fullTextSearch` <- this_object$`fullTextSearch`
      }
      if (!is.null(this_object$`sortable`)) {
        self$`sortable` <- this_object$`sortable`
      }
      if (!is.null(this_object$`defaultSearchField`)) {
        self$`defaultSearchField` <- this_object$`defaultSearchField`
      }
      if (!is.null(this_object$`possibleValues`)) {
        self$`possibleValues` <- ApiClient$new()$deserializeObj(this_object$`possibleValues`, "array[character]", loadNamespace("RSirius"))
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`significantSuffixLength`)) {
        self$`significantSuffixLength` <- this_object$`significantSuffixLength`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SearchableField in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, null = 'null', ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SearchableField
    #'
    #' @param input_json the JSON input
    #' @return the instance of SearchableField
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name` <- this_object$`name`
      self$`fieldType` <- SearchableFieldType$new()$fromJSON(jsonlite::toJSON(this_object$`fieldType`, auto_unbox = TRUE, digits = NA, null = 'null'))
      self$`fullTextSearch` <- this_object$`fullTextSearch`
      self$`sortable` <- this_object$`sortable`
      self$`defaultSearchField` <- this_object$`defaultSearchField`
      self$`possibleValues` <- ApiClient$new()$deserializeObj(this_object$`possibleValues`, "array[character]", loadNamespace("RSirius"))
      self$`description` <- this_object$`description`
      self$`significantSuffixLength` <- this_object$`significantSuffixLength`
      self
    },

    #' @description
    #' Validate JSON input with respect to SearchableField and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SearchableField: the required field `name` is missing."))
      }
      # check the required field `fieldType`
      if (!is.null(input_json$`fieldType`)) {
        stopifnot(R6::is.R6(input_json$`fieldType`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SearchableField: the required field `fieldType` is missing."))
      }
      # check the required field `significantSuffixLength`
      if (!is.null(input_json$`significantSuffixLength`)) {
        if (!(is.numeric(input_json$`significantSuffixLength`) && length(input_json$`significantSuffixLength`) == 1)) {
          stop(paste("Error! Invalid data for `significantSuffixLength`. Must be an integer:", input_json$`significantSuffixLength`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SearchableField: the required field `significantSuffixLength` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SearchableField
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `name` is null
      if (is.null(self$`name`)) {
        return(FALSE)
      }

      # check if the required `fieldType` is null
      if (is.null(self$`fieldType`)) {
        return(FALSE)
      }

      # check if the required `significantSuffixLength` is null
      if (is.null(self$`significantSuffixLength`)) {
        return(FALSE)
      }

      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      # check if the required `fieldType` is null
      if (is.null(self$`fieldType`)) {
        invalid_fields["fieldType"] <- "Non-nullable required field `fieldType` cannot be null."
      }

      # check if the required `significantSuffixLength` is null
      if (is.null(self$`significantSuffixLength`)) {
        invalid_fields["significantSuffixLength"] <- "Non-nullable required field `significantSuffixLength` cannot be null."
      }

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
# SearchableField$unlock()
#
## Below is an example to define the print function
# SearchableField$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SearchableField$lock()

