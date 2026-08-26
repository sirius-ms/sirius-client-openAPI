# THIS FILE IS NOT AUTO GENERATED AND MIGHT NEED TO BE CHANGED WHEN API ENDPOINTS CHANGE
#
# Deprecated aliases for API methods that were renamed by the SIRIUS API.
#
# SIRIUS API 3.2 corrected the Get*Paged operationIds to Get*Page. The HTTP routes are unchanged, so
# this is purely a source level problem: every existing script calling api$GetCompoundsPaged(...)
# fails with "attempt to apply non-function" against the new SDK. These wrappers put the old names
# back for one release while callers migrate.
#
# Same idea as the Java SDK's hand written *ApiCompat classes. In R the aliases are added to the
# generated R6 generators with $set() instead of by subclassing, because users reach the API objects
# through rsirius_api / SiriusSDK and never name a subclass themselves.
#
# Note that GetCompoundsPage and GetAlignedFeaturesPage also gained a search_query parameter, at
# different positions. The wrappers keep the *old* formals and forward by name, so positional call
# sites keep binding the values they always did.
#
# This file must be sourced after the API classes; the alphabetical collation of R/ takes care of
# that (compounds_api.R, features_api.R, jobs_api.R all sort before rsirius_compat.R).

#' @keywords internal
.deprecated_api_alias <- function(old, new) {
  .Deprecated(new = new, package = "RSirius", msg = paste0(
    old, "() was renamed to ", new, "() in SIRIUS API 3.2 and will be removed in the next major ",
    "SDK release. The HTTP endpoint is unchanged; only the method name moved."))
}

CompoundsApi$set("public", "GetCompoundsPaged", function(project_id, page = 0, size = 20, sort = NULL, ms_data_search_prepared = FALSE, opt_fields = list("none"), opt_fields_features = list("none"), data_file = NULL, ...) {
  .deprecated_api_alias("GetCompoundsPaged", "GetCompoundsPage")
  self$GetCompoundsPage(project_id = project_id, page = page, size = size, sort = sort, ms_data_search_prepared = ms_data_search_prepared, opt_fields = opt_fields, opt_fields_features = opt_fields_features, data_file = data_file, ...)
}, overwrite = TRUE)

CompoundsApi$set("public", "GetCompoundsPagedWithHttpInfo", function(project_id, page = 0, size = 20, sort = NULL, ms_data_search_prepared = FALSE, opt_fields = list("none"), opt_fields_features = list("none"), data_file = NULL, ...) {
  .deprecated_api_alias("GetCompoundsPagedWithHttpInfo", "GetCompoundsPageWithHttpInfo")
  self$GetCompoundsPageWithHttpInfo(project_id = project_id, page = page, size = size, sort = sort, ms_data_search_prepared = ms_data_search_prepared, opt_fields = opt_fields, opt_fields_features = opt_fields_features, data_file = data_file, ...)
}, overwrite = TRUE)

FeaturesApi$set("public", "GetAlignedFeaturesPaged", function(project_id, page = 0, size = 20, sort = NULL, ms_data_search_prepared = FALSE, opt_fields = list("none"), data_file = NULL, ...) {
  .deprecated_api_alias("GetAlignedFeaturesPaged", "GetAlignedFeaturesPage")
  self$GetAlignedFeaturesPage(project_id = project_id, page = page, size = size, sort = sort, ms_data_search_prepared = ms_data_search_prepared, opt_fields = opt_fields, data_file = data_file, ...)
}, overwrite = TRUE)

FeaturesApi$set("public", "GetAlignedFeaturesPagedWithHttpInfo", function(project_id, page = 0, size = 20, sort = NULL, ms_data_search_prepared = FALSE, opt_fields = list("none"), data_file = NULL, ...) {
  .deprecated_api_alias("GetAlignedFeaturesPagedWithHttpInfo", "GetAlignedFeaturesPageWithHttpInfo")
  self$GetAlignedFeaturesPageWithHttpInfo(project_id = project_id, page = page, size = size, sort = sort, ms_data_search_prepared = ms_data_search_prepared, opt_fields = opt_fields, data_file = data_file, ...)
}, overwrite = TRUE)

FeaturesApi$set("public", "GetDeNovoStructureCandidatesByFormulaPaged", function(project_id, aligned_feature_id, formula_id, page = 0, size = 20, sort = NULL, opt_fields = list("none"), data_file = NULL, ...) {
  .deprecated_api_alias("GetDeNovoStructureCandidatesByFormulaPaged", "GetDeNovoStructureCandidatesByFormulaPage")
  self$GetDeNovoStructureCandidatesByFormulaPage(project_id = project_id, aligned_feature_id = aligned_feature_id, formula_id = formula_id, page = page, size = size, sort = sort, opt_fields = opt_fields, data_file = data_file, ...)
}, overwrite = TRUE)

FeaturesApi$set("public", "GetDeNovoStructureCandidatesByFormulaPagedWithHttpInfo", function(project_id, aligned_feature_id, formula_id, page = 0, size = 20, sort = NULL, opt_fields = list("none"), data_file = NULL, ...) {
  .deprecated_api_alias("GetDeNovoStructureCandidatesByFormulaPagedWithHttpInfo", "GetDeNovoStructureCandidatesByFormulaPageWithHttpInfo")
  self$GetDeNovoStructureCandidatesByFormulaPageWithHttpInfo(project_id = project_id, aligned_feature_id = aligned_feature_id, formula_id = formula_id, page = page, size = size, sort = sort, opt_fields = opt_fields, data_file = data_file, ...)
}, overwrite = TRUE)

FeaturesApi$set("public", "GetDeNovoStructureCandidatesPaged", function(project_id, aligned_feature_id, page = 0, size = 20, sort = NULL, opt_fields = list("none"), data_file = NULL, ...) {
  .deprecated_api_alias("GetDeNovoStructureCandidatesPaged", "GetDeNovoStructureCandidatesPage")
  self$GetDeNovoStructureCandidatesPage(project_id = project_id, aligned_feature_id = aligned_feature_id, page = page, size = size, sort = sort, opt_fields = opt_fields, data_file = data_file, ...)
}, overwrite = TRUE)

FeaturesApi$set("public", "GetDeNovoStructureCandidatesPagedWithHttpInfo", function(project_id, aligned_feature_id, page = 0, size = 20, sort = NULL, opt_fields = list("none"), data_file = NULL, ...) {
  .deprecated_api_alias("GetDeNovoStructureCandidatesPagedWithHttpInfo", "GetDeNovoStructureCandidatesPageWithHttpInfo")
  self$GetDeNovoStructureCandidatesPageWithHttpInfo(project_id = project_id, aligned_feature_id = aligned_feature_id, page = page, size = size, sort = sort, opt_fields = opt_fields, data_file = data_file, ...)
}, overwrite = TRUE)

FeaturesApi$set("public", "GetFormulaCandidatesPaged", function(project_id, aligned_feature_id, page = 0, size = 20, sort = NULL, ms_data_search_prepared = FALSE, opt_fields = list("none"), data_file = NULL, ...) {
  .deprecated_api_alias("GetFormulaCandidatesPaged", "GetFormulaCandidatesPage")
  self$GetFormulaCandidatesPage(project_id = project_id, aligned_feature_id = aligned_feature_id, page = page, size = size, sort = sort, ms_data_search_prepared = ms_data_search_prepared, opt_fields = opt_fields, data_file = data_file, ...)
}, overwrite = TRUE)

FeaturesApi$set("public", "GetFormulaCandidatesPagedWithHttpInfo", function(project_id, aligned_feature_id, page = 0, size = 20, sort = NULL, ms_data_search_prepared = FALSE, opt_fields = list("none"), data_file = NULL, ...) {
  .deprecated_api_alias("GetFormulaCandidatesPagedWithHttpInfo", "GetFormulaCandidatesPageWithHttpInfo")
  self$GetFormulaCandidatesPageWithHttpInfo(project_id = project_id, aligned_feature_id = aligned_feature_id, page = page, size = size, sort = sort, ms_data_search_prepared = ms_data_search_prepared, opt_fields = opt_fields, data_file = data_file, ...)
}, overwrite = TRUE)

FeaturesApi$set("public", "GetSpectralLibraryMatchesPaged", function(project_id, aligned_feature_id, page = 0, size = 20, sort = NULL, min_shared_peaks = 1, min_similarity = 0.2, inchi_key = "", opt_fields = list("none"), data_file = NULL, ...) {
  .deprecated_api_alias("GetSpectralLibraryMatchesPaged", "GetSpectralLibraryMatchesPage")
  self$GetSpectralLibraryMatchesPage(project_id = project_id, aligned_feature_id = aligned_feature_id, page = page, size = size, sort = sort, min_shared_peaks = min_shared_peaks, min_similarity = min_similarity, inchi_key = inchi_key, opt_fields = opt_fields, data_file = data_file, ...)
}, overwrite = TRUE)

FeaturesApi$set("public", "GetSpectralLibraryMatchesPagedWithHttpInfo", function(project_id, aligned_feature_id, page = 0, size = 20, sort = NULL, min_shared_peaks = 1, min_similarity = 0.2, inchi_key = "", opt_fields = list("none"), data_file = NULL, ...) {
  .deprecated_api_alias("GetSpectralLibraryMatchesPagedWithHttpInfo", "GetSpectralLibraryMatchesPageWithHttpInfo")
  self$GetSpectralLibraryMatchesPageWithHttpInfo(project_id = project_id, aligned_feature_id = aligned_feature_id, page = page, size = size, sort = sort, min_shared_peaks = min_shared_peaks, min_similarity = min_similarity, inchi_key = inchi_key, opt_fields = opt_fields, data_file = data_file, ...)
}, overwrite = TRUE)

FeaturesApi$set("public", "GetStructureCandidatesByFormulaPaged", function(project_id, aligned_feature_id, formula_id, page = 0, size = 20, sort = NULL, opt_fields = list("none"), data_file = NULL, ...) {
  .deprecated_api_alias("GetStructureCandidatesByFormulaPaged", "GetStructureCandidatesByFormulaPage")
  self$GetStructureCandidatesByFormulaPage(project_id = project_id, aligned_feature_id = aligned_feature_id, formula_id = formula_id, page = page, size = size, sort = sort, opt_fields = opt_fields, data_file = data_file, ...)
}, overwrite = TRUE)

FeaturesApi$set("public", "GetStructureCandidatesByFormulaPagedWithHttpInfo", function(project_id, aligned_feature_id, formula_id, page = 0, size = 20, sort = NULL, opt_fields = list("none"), data_file = NULL, ...) {
  .deprecated_api_alias("GetStructureCandidatesByFormulaPagedWithHttpInfo", "GetStructureCandidatesByFormulaPageWithHttpInfo")
  self$GetStructureCandidatesByFormulaPageWithHttpInfo(project_id = project_id, aligned_feature_id = aligned_feature_id, formula_id = formula_id, page = page, size = size, sort = sort, opt_fields = opt_fields, data_file = data_file, ...)
}, overwrite = TRUE)

FeaturesApi$set("public", "GetStructureCandidatesPaged", function(project_id, aligned_feature_id, page = 0, size = 20, sort = NULL, opt_fields = list("none"), data_file = NULL, ...) {
  .deprecated_api_alias("GetStructureCandidatesPaged", "GetStructureCandidatesPage")
  self$GetStructureCandidatesPage(project_id = project_id, aligned_feature_id = aligned_feature_id, page = page, size = size, sort = sort, opt_fields = opt_fields, data_file = data_file, ...)
}, overwrite = TRUE)

FeaturesApi$set("public", "GetStructureCandidatesPagedWithHttpInfo", function(project_id, aligned_feature_id, page = 0, size = 20, sort = NULL, opt_fields = list("none"), data_file = NULL, ...) {
  .deprecated_api_alias("GetStructureCandidatesPagedWithHttpInfo", "GetStructureCandidatesPageWithHttpInfo")
  self$GetStructureCandidatesPageWithHttpInfo(project_id = project_id, aligned_feature_id = aligned_feature_id, page = page, size = size, sort = sort, opt_fields = opt_fields, data_file = data_file, ...)
}, overwrite = TRUE)

JobsApi$set("public", "GetJobsPaged", function(project_id, page = 0, size = 20, sort = NULL, opt_fields = list("none"), data_file = NULL, ...) {
  .deprecated_api_alias("GetJobsPaged", "GetJobsPage")
  self$GetJobsPage(project_id = project_id, page = page, size = size, sort = sort, opt_fields = opt_fields, data_file = data_file, ...)
}, overwrite = TRUE)

JobsApi$set("public", "GetJobsPagedWithHttpInfo", function(project_id, page = 0, size = 20, sort = NULL, opt_fields = list("none"), data_file = NULL, ...) {
  .deprecated_api_alias("GetJobsPagedWithHttpInfo", "GetJobsPageWithHttpInfo")
  self$GetJobsPageWithHttpInfo(project_id = project_id, page = page, size = size, sort = sort, opt_fields = opt_fields, data_file = data_file, ...)
}, overwrite = TRUE)
