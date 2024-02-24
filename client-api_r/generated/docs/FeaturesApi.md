# FeaturesApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AddAlignedFeatures**](FeaturesApi.md#AddAlignedFeatures) | **POST** /api/projects/{projectId}/aligned-features | 
[**DeleteAlignedFeature**](FeaturesApi.md#DeleteAlignedFeature) | **DELETE** /api/projects/{projectId}/aligned-features/{alignedFeatureId} | Delete feature (aligned over runs) with the given identifier from the specified project-space.
[**GetAlignedFeature**](FeaturesApi.md#GetAlignedFeature) | **GET** /api/projects/{projectId}/aligned-features/{alignedFeatureId} | Get feature (aligned over runs) with the given identifier from the specified project-space.
[**GetAlignedFeatures**](FeaturesApi.md#GetAlignedFeatures) | **GET** /api/projects/{projectId}/aligned-features | Get all available features (aligned over runs) in the given project-space.
[**GetBestMatchingCompoundClasses**](FeaturesApi.md#GetBestMatchingCompoundClasses) | **GET** /api/projects/{projectId}/aligned-features/{alignedFeatureId}/formulas/{formulaId}/best-compound-classes | Best matching compound classes,  Set of the highest scoring compound classes (CANOPUS) on each hierarchy level of  the ClassyFire and NPC ontology,
[**GetCanopusPrediction**](FeaturesApi.md#GetCanopusPrediction) | **GET** /api/projects/{projectId}/aligned-features/{alignedFeatureId}/formulas/{formulaId}/canopus-prediction | All predicted compound classes (CANOPUS) from ClassyFire and NPC and their probabilities,
[**GetFingerprintPrediction**](FeaturesApi.md#GetFingerprintPrediction) | **GET** /api/projects/{projectId}/aligned-features/{alignedFeatureId}/formulas/{formulaId}/fingerprint | Returns predicted fingerprint (CSI:FingerID) for the given formula result identifier  This fingerprint is used to perform structure database search and predict compound classes.
[**GetFormulaAnnotatedMsMsData**](FeaturesApi.md#GetFormulaAnnotatedMsMsData) | **GET** /api/projects/{projectId}/aligned-features/{alignedFeatureId}/formulas/{formulaId}/annotated-msmsdata | Returns MS/MS Spectrum (Merged MS/MS and measured MS/MS) which is annotated with fragments and losses  for the given formula result identifier  These annotations are only available if a fragmentation tree and the structure candidate are available.
[**GetFormulaAnnotatedSpectrum**](FeaturesApi.md#GetFormulaAnnotatedSpectrum) | **GET** /api/projects/{projectId}/aligned-features/{alignedFeatureId}/formulas/{formulaId}/annotated-spectrum | Returns a fragmentation spectrum (e.g. Merged MS/MS) which is annotated with fragments and losses for the given formula result identifier  These annotations are only available if a fragmentation tree is available.
[**GetFormulaCandidate**](FeaturesApi.md#GetFormulaCandidate) | **GET** /api/projects/{projectId}/aligned-features/{alignedFeatureId}/formulas/{formulaId} | FormulaResultContainers for the given &#39;formulaId&#39; with minimal information.
[**GetFormulaCandidates**](FeaturesApi.md#GetFormulaCandidates) | **GET** /api/projects/{projectId}/aligned-features/{alignedFeatureId}/formulas | List of all FormulaResultContainers available for this feature with minimal information.
[**GetFragTree**](FeaturesApi.md#GetFragTree) | **GET** /api/projects/{projectId}/aligned-features/{alignedFeatureId}/formulas/{formulaId}/tree | Returns fragmentation tree (SIRIUS) for the given formula result identifier  This tree is used to rank formula candidates (treeScore).
[**GetIsotopePatternAnnotation**](FeaturesApi.md#GetIsotopePatternAnnotation) | **GET** /api/projects/{projectId}/aligned-features/{alignedFeatureId}/formulas/{formulaId}/isotope-pattern | Returns Isotope pattern information (simulated isotope pattern, measured isotope pattern, isotope pattern highlighting)  for the given formula result identifier.
[**GetLipidAnnotation**](FeaturesApi.md#GetLipidAnnotation) | **GET** /api/projects/{projectId}/aligned-features/{alignedFeatureId}/formulas/{formulaId}/lipid-annotation | Returns Lipid annotation (ElGordo) for the given formula result identifier.
[**GetMsData**](FeaturesApi.md#GetMsData) | **GET** /api/projects/{projectId}/aligned-features/{alignedFeatureId}/ms-data | Mass Spec data (input data) for the given &#39;alignedFeatureId&#39; .
[**GetSiriusFragTree**](FeaturesApi.md#GetSiriusFragTree) | **GET** /api/projects/{projectId}/aligned-features/{alignedFeatureId}/formulas/{formulaId}/sirius-tree | 
[**GetStructureAnnotatedMsData**](FeaturesApi.md#GetStructureAnnotatedMsData) | **GET** /api/projects/{projectId}/aligned-features/{alignedFeatureId}/formulas/{formulaId}/structures/{inchiKey}/annotated-msmsdata | Returns MS/MS Data (Merged MS/MS and list of measured MS/MS ) which are annotated with fragments and losses  for the given formula result identifier and structure candidate inChIKey.
[**GetStructureAnnotatedSpectrum**](FeaturesApi.md#GetStructureAnnotatedSpectrum) | **GET** /api/projects/{projectId}/aligned-features/{alignedFeatureId}/formulas/{formulaId}/structures/{inchiKey}/annotated-spectrum | Returns a fragmentation spectrum (e.g. Merged MS/MS) which is annotated with fragments and losses for the given formula result identifier  These annotations are only available if a fragmentation tree is available.
[**GetStructureCandidates**](FeaturesApi.md#GetStructureCandidates) | **GET** /api/projects/{projectId}/aligned-features/{alignedFeatureId}/structures | List of StructureCandidates for the given &#39;alignedFeatureId&#39; with minimal information.
[**GetStructureCandidatesByFormula**](FeaturesApi.md#GetStructureCandidatesByFormula) | **GET** /api/projects/{projectId}/aligned-features/{alignedFeatureId}/formulas/{formulaId}/structures | List of StructureCandidates the given &#39;formulaId&#39; with minimal information.


# **AddAlignedFeatures**
> array[AlignedFeature] AddAlignedFeatures(project_id, feature_import, opt_fields = [])



### Example
```R
library(Rsirius)

# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to import into.
var_feature_import <- c(FeatureImport$new(123, "adduct_example", c(BasicSpectrum$new(c(SimplePeak$new(123, 123)), "name_example", 123, "collisionEnergy_example", 123, 123, 123)), c(BasicSpectrum$new(c(SimplePeak$new(123, 123)), "name_example", 123, "collisionEnergy_example", 123, 123, 123)), "name_example", "featureId_example", 123, 123, BasicSpectrum$new(c(SimplePeak$new(123, 123)), "name_example", 123, "collisionEnergy_example", 123, 123, 123))) # array[FeatureImport] | the feature data to be imported
var_opt_fields <- c(AlignedFeatureOptField$new()) # array[AlignedFeatureOptField] | set of optional fields to be included. Use 'none' to override defaults. (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$AddAlignedFeatures(var_project_id, var_feature_import, opt_fields = var_opt_fieldsdata_file = "result.txt")
result <- api_instance$features_api$AddAlignedFeatures(var_project_id, var_feature_import, opt_fields = var_opt_fields)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to import into. | 
 **feature_import** | list( [**FeatureImport**](FeatureImport.md) )| the feature data to be imported | 
 **opt_fields** | list( [**AlignedFeatureOptField**](AlignedFeatureOptField.md) )| set of optional fields to be included. Use &#39;none&#39; to override defaults. | [optional] [default to []]

### Return type

[**array[AlignedFeature]**](AlignedFeature.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | the Features that have been imported with specified optional fields |  -  |

# **DeleteAlignedFeature**
> DeleteAlignedFeature(project_id, aligned_feature_id)

Delete feature (aligned over runs) with the given identifier from the specified project-space.

Delete feature (aligned over runs) with the given identifier from the specified project-space.

### Example
```R
library(Rsirius)

# Delete feature (aligned over runs) with the given identifier from the specified project-space.
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to delete from.
var_aligned_feature_id <- "aligned_feature_id_example" # character | identifier of feature (aligned over runs) to delete.

api_instance <- rsirius_api$new()
api_instance$features_api$DeleteAlignedFeature(var_project_id, var_aligned_feature_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to delete from. | 
 **aligned_feature_id** | **character**| identifier of feature (aligned over runs) to delete. | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

# **GetAlignedFeature**
> AlignedFeature GetAlignedFeature(project_id, aligned_feature_id, opt_fields = [])

Get feature (aligned over runs) with the given identifier from the specified project-space.

Get feature (aligned over runs) with the given identifier from the specified project-space.

### Example
```R
library(Rsirius)

# Get feature (aligned over runs) with the given identifier from the specified project-space.
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to read from.
var_aligned_feature_id <- "aligned_feature_id_example" # character | identifier of feature (aligned over runs) to access.
var_opt_fields <- c(AlignedFeatureOptField$new()) # array[AlignedFeatureOptField] | set of optional fields to be included. Use 'none' only to override defaults. (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetAlignedFeature(var_project_id, var_aligned_feature_id, opt_fields = var_opt_fieldsdata_file = "result.txt")
result <- api_instance$features_api$GetAlignedFeature(var_project_id, var_aligned_feature_id, opt_fields = var_opt_fields)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to read from. | 
 **aligned_feature_id** | **character**| identifier of feature (aligned over runs) to access. | 
 **opt_fields** | list( [**AlignedFeatureOptField**](AlignedFeatureOptField.md) )| set of optional fields to be included. Use &#39;none&#39; only to override defaults. | [optional] [default to []]

### Return type

[**AlignedFeature**](AlignedFeature.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | AlignedFeature with additional annotations and MS/MS data (if specified). |  -  |

# **GetAlignedFeatures**
> PageAlignedFeature GetAlignedFeatures(project_id, page = 0, size = 20, sort = var.sort, search_query = var.search_query, query_syntax = var.query_syntax, opt_fields = [])

Get all available features (aligned over runs) in the given project-space.

Get all available features (aligned over runs) in the given project-space.

### Example
```R
library(Rsirius)

# Get all available features (aligned over runs) in the given project-space.
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to read from.
var_page <- 0 # integer | Zero-based page index (0..N) (Optional)
var_size <- 20 # integer | The size of the page to be returned (Optional)
var_sort <- c("inner_example") # array[character] | Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported. (Optional)
var_search_query <- "search_query_example" # character | optional search query in specified format (Optional)
var_query_syntax <- SearchQueryType$new() # SearchQueryType | query syntax used fpr searchQuery (Optional)
var_opt_fields <- c(AlignedFeatureOptField$new()) # array[AlignedFeatureOptField] | set of optional fields to be included. Use 'none' only to override defaults. (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetAlignedFeatures(var_project_id, page = var_page, size = var_size, sort = var_sort, search_query = var_search_query, query_syntax = var_query_syntax, opt_fields = var_opt_fieldsdata_file = "result.txt")
result <- api_instance$features_api$GetAlignedFeatures(var_project_id, page = var_page, size = var_size, sort = var_sort, search_query = var_search_query, query_syntax = var_query_syntax, opt_fields = var_opt_fields)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to read from. | 
 **page** | **integer**| Zero-based page index (0..N) | [optional] [default to 0]
 **size** | **integer**| The size of the page to be returned | [optional] [default to 20]
 **sort** | list( **character** )| Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] 
 **search_query** | **character**| optional search query in specified format | [optional] 
 **query_syntax** | [**SearchQueryType**](.md)| query syntax used fpr searchQuery | [optional] 
 **opt_fields** | list( [**AlignedFeatureOptField**](AlignedFeatureOptField.md) )| set of optional fields to be included. Use &#39;none&#39; only to override defaults. | [optional] [default to []]

### Return type

[**PageAlignedFeature**](PageAlignedFeature.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | AlignedFeatures with additional annotations and MS/MS data (if specified). |  -  |

# **GetBestMatchingCompoundClasses**
> CompoundClasses GetBestMatchingCompoundClasses(project_id, aligned_feature_id, formula_id)

Best matching compound classes,  Set of the highest scoring compound classes (CANOPUS) on each hierarchy level of  the ClassyFire and NPC ontology,

Best matching compound classes,  Set of the highest scoring compound classes (CANOPUS) on each hierarchy level of  the ClassyFire and NPC ontology,

### Example
```R
library(Rsirius)

# Best matching compound classes,  Set of the highest scoring compound classes (CANOPUS) on each hierarchy level of  the ClassyFire and NPC ontology,
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to read from.
var_aligned_feature_id <- "aligned_feature_id_example" # character | feature (aligned over runs) the formula result belongs to.
var_formula_id <- "formula_id_example" # character | identifier of the requested formula result

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetBestMatchingCompoundClasses(var_project_id, var_aligned_feature_id, var_formula_iddata_file = "result.txt")
result <- api_instance$features_api$GetBestMatchingCompoundClasses(var_project_id, var_aligned_feature_id, var_formula_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to read from. | 
 **aligned_feature_id** | **character**| feature (aligned over runs) the formula result belongs to. | 
 **formula_id** | **character**| identifier of the requested formula result | 

### Return type

[**CompoundClasses**](CompoundClasses.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Best matching Predicted compound classes |  -  |

# **GetCanopusPrediction**
> CanopusPrediction GetCanopusPrediction(project_id, aligned_feature_id, formula_id)

All predicted compound classes (CANOPUS) from ClassyFire and NPC and their probabilities,

All predicted compound classes (CANOPUS) from ClassyFire and NPC and their probabilities,

### Example
```R
library(Rsirius)

# All predicted compound classes (CANOPUS) from ClassyFire and NPC and their probabilities,
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to read from.
var_aligned_feature_id <- "aligned_feature_id_example" # character | feature (aligned over runs) the formula result belongs to.
var_formula_id <- "formula_id_example" # character | identifier of the requested formula result

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetCanopusPrediction(var_project_id, var_aligned_feature_id, var_formula_iddata_file = "result.txt")
result <- api_instance$features_api$GetCanopusPrediction(var_project_id, var_aligned_feature_id, var_formula_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to read from. | 
 **aligned_feature_id** | **character**| feature (aligned over runs) the formula result belongs to. | 
 **formula_id** | **character**| identifier of the requested formula result | 

### Return type

[**CanopusPrediction**](CanopusPrediction.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Predicted compound classes |  -  |

# **GetFingerprintPrediction**
> array[numeric] GetFingerprintPrediction(project_id, aligned_feature_id, formula_id)

Returns predicted fingerprint (CSI:FingerID) for the given formula result identifier  This fingerprint is used to perform structure database search and predict compound classes.

Returns predicted fingerprint (CSI:FingerID) for the given formula result identifier  This fingerprint is used to perform structure database search and predict compound classes.

### Example
```R
library(Rsirius)

# Returns predicted fingerprint (CSI:FingerID) for the given formula result identifier  This fingerprint is used to perform structure database search and predict compound classes.
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to read from.
var_aligned_feature_id <- "aligned_feature_id_example" # character | feature (aligned over runs) the formula result belongs to.
var_formula_id <- "formula_id_example" # character | identifier of the requested formula result

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetFingerprintPrediction(var_project_id, var_aligned_feature_id, var_formula_iddata_file = "result.txt")
result <- api_instance$features_api$GetFingerprintPrediction(var_project_id, var_aligned_feature_id, var_formula_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to read from. | 
 **aligned_feature_id** | **character**| feature (aligned over runs) the formula result belongs to. | 
 **formula_id** | **character**| identifier of the requested formula result | 

### Return type

**array[numeric]**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | probabilistic fingerprint predicted by CSI:FingerID |  -  |

# **GetFormulaAnnotatedMsMsData**
> AnnotatedMsMsData GetFormulaAnnotatedMsMsData(project_id, aligned_feature_id, formula_id)

Returns MS/MS Spectrum (Merged MS/MS and measured MS/MS) which is annotated with fragments and losses  for the given formula result identifier  These annotations are only available if a fragmentation tree and the structure candidate are available.

Returns MS/MS Spectrum (Merged MS/MS and measured MS/MS) which is annotated with fragments and losses  for the given formula result identifier  These annotations are only available if a fragmentation tree and the structure candidate are available.

### Example
```R
library(Rsirius)

# Returns MS/MS Spectrum (Merged MS/MS and measured MS/MS) which is annotated with fragments and losses  for the given formula result identifier  These annotations are only available if a fragmentation tree and the structure candidate are available.
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to read from.
var_aligned_feature_id <- "aligned_feature_id_example" # character | feature (aligned over runs) the formula result belongs to.
var_formula_id <- "formula_id_example" # character | identifier of the requested formula result

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetFormulaAnnotatedMsMsData(var_project_id, var_aligned_feature_id, var_formula_iddata_file = "result.txt")
result <- api_instance$features_api$GetFormulaAnnotatedMsMsData(var_project_id, var_aligned_feature_id, var_formula_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to read from. | 
 **aligned_feature_id** | **character**| feature (aligned over runs) the formula result belongs to. | 
 **formula_id** | **character**| identifier of the requested formula result | 

### Return type

[**AnnotatedMsMsData**](AnnotatedMsMsData.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Fragmentation spectra annotated with fragment formulas and losses. |  -  |

# **GetFormulaAnnotatedSpectrum**
> AnnotatedSpectrum GetFormulaAnnotatedSpectrum(project_id, aligned_feature_id, formula_id, spectrum_index = -1)

Returns a fragmentation spectrum (e.g. Merged MS/MS) which is annotated with fragments and losses for the given formula result identifier  These annotations are only available if a fragmentation tree is available.

Returns a fragmentation spectrum (e.g. Merged MS/MS) which is annotated with fragments and losses for the given formula result identifier  These annotations are only available if a fragmentation tree is available.

### Example
```R
library(Rsirius)

# Returns a fragmentation spectrum (e.g. Merged MS/MS) which is annotated with fragments and losses for the given formula result identifier  These annotations are only available if a fragmentation tree is available.
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to read from.
var_aligned_feature_id <- "aligned_feature_id_example" # character | feature (aligned over runs) the formula result belongs to.
var_formula_id <- "formula_id_example" # character | identifier of the requested formula result
var_spectrum_index <- -1 # integer | index of the spectrum to be annotated. Merged MS/MS will be used if spectrumIndex < 0 (default) (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetFormulaAnnotatedSpectrum(var_project_id, var_aligned_feature_id, var_formula_id, spectrum_index = var_spectrum_indexdata_file = "result.txt")
result <- api_instance$features_api$GetFormulaAnnotatedSpectrum(var_project_id, var_aligned_feature_id, var_formula_id, spectrum_index = var_spectrum_index)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to read from. | 
 **aligned_feature_id** | **character**| feature (aligned over runs) the formula result belongs to. | 
 **formula_id** | **character**| identifier of the requested formula result | 
 **spectrum_index** | **integer**| index of the spectrum to be annotated. Merged MS/MS will be used if spectrumIndex &lt; 0 (default) | [optional] [default to -1]

### Return type

[**AnnotatedSpectrum**](AnnotatedSpectrum.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Fragmentation spectrum annotated with fragment formulas and losses. |  -  |

# **GetFormulaCandidate**
> FormulaCandidate GetFormulaCandidate(project_id, aligned_feature_id, formula_id, opt_fields = [])

FormulaResultContainers for the given 'formulaId' with minimal information.

FormulaResultContainers for the given 'formulaId' with minimal information.  Can be enriched with an optional results overview and formula candidate information.

### Example
```R
library(Rsirius)

# FormulaResultContainers for the given 'formulaId' with minimal information.
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to read from.
var_aligned_feature_id <- "aligned_feature_id_example" # character | feature (aligned over runs) the formula result belongs to.
var_formula_id <- "formula_id_example" # character | identifier of the requested formula result
var_opt_fields <- c(FormulaCandidateOptField$new()) # array[FormulaCandidateOptField] | set of optional fields to be included. Use 'none' only to override defaults. (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetFormulaCandidate(var_project_id, var_aligned_feature_id, var_formula_id, opt_fields = var_opt_fieldsdata_file = "result.txt")
result <- api_instance$features_api$GetFormulaCandidate(var_project_id, var_aligned_feature_id, var_formula_id, opt_fields = var_opt_fields)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to read from. | 
 **aligned_feature_id** | **character**| feature (aligned over runs) the formula result belongs to. | 
 **formula_id** | **character**| identifier of the requested formula result | 
 **opt_fields** | list( [**FormulaCandidateOptField**](FormulaCandidateOptField.md) )| set of optional fields to be included. Use &#39;none&#39; only to override defaults. | [optional] [default to []]

### Return type

[**FormulaCandidate**](FormulaCandidate.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | FormulaCandidate of this feature (aligned over runs) with. |  -  |

# **GetFormulaCandidates**
> PageFormulaCandidate GetFormulaCandidates(project_id, aligned_feature_id, page = 0, size = 20, sort = var.sort, search_query = var.search_query, query_syntax = var.query_syntax, opt_fields = [])

List of all FormulaResultContainers available for this feature with minimal information.

List of all FormulaResultContainers available for this feature with minimal information.  Can be enriched with an optional results overview.

### Example
```R
library(Rsirius)

# List of all FormulaResultContainers available for this feature with minimal information.
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to read from.
var_aligned_feature_id <- "aligned_feature_id_example" # character | feature (aligned over runs) the formula result belongs to.
var_page <- 0 # integer | Zero-based page index (0..N) (Optional)
var_size <- 20 # integer | The size of the page to be returned (Optional)
var_sort <- c("inner_example") # array[character] | Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported. (Optional)
var_search_query <- "search_query_example" # character | optional search query in specified format (Optional)
var_query_syntax <- SearchQueryType$new() # SearchQueryType | query syntax used fpr searchQuery (Optional)
var_opt_fields <- c(FormulaCandidateOptField$new()) # array[FormulaCandidateOptField] | set of optional fields to be included. Use 'none' only to override defaults. (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetFormulaCandidates(var_project_id, var_aligned_feature_id, page = var_page, size = var_size, sort = var_sort, search_query = var_search_query, query_syntax = var_query_syntax, opt_fields = var_opt_fieldsdata_file = "result.txt")
result <- api_instance$features_api$GetFormulaCandidates(var_project_id, var_aligned_feature_id, page = var_page, size = var_size, sort = var_sort, search_query = var_search_query, query_syntax = var_query_syntax, opt_fields = var_opt_fields)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to read from. | 
 **aligned_feature_id** | **character**| feature (aligned over runs) the formula result belongs to. | 
 **page** | **integer**| Zero-based page index (0..N) | [optional] [default to 0]
 **size** | **integer**| The size of the page to be returned | [optional] [default to 20]
 **sort** | list( **character** )| Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] 
 **search_query** | **character**| optional search query in specified format | [optional] 
 **query_syntax** | [**SearchQueryType**](.md)| query syntax used fpr searchQuery | [optional] 
 **opt_fields** | list( [**FormulaCandidateOptField**](FormulaCandidateOptField.md) )| set of optional fields to be included. Use &#39;none&#39; only to override defaults. | [optional] [default to []]

### Return type

[**PageFormulaCandidate**](PageFormulaCandidate.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | All FormulaCandidate of this feature with. |  -  |

# **GetFragTree**
> FragmentationTree GetFragTree(project_id, aligned_feature_id, formula_id)

Returns fragmentation tree (SIRIUS) for the given formula result identifier  This tree is used to rank formula candidates (treeScore).

Returns fragmentation tree (SIRIUS) for the given formula result identifier  This tree is used to rank formula candidates (treeScore).

### Example
```R
library(Rsirius)

# Returns fragmentation tree (SIRIUS) for the given formula result identifier  This tree is used to rank formula candidates (treeScore).
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to read from.
var_aligned_feature_id <- "aligned_feature_id_example" # character | feature (aligned over runs) the formula result belongs to.
var_formula_id <- "formula_id_example" # character | identifier of the requested formula result

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetFragTree(var_project_id, var_aligned_feature_id, var_formula_iddata_file = "result.txt")
result <- api_instance$features_api$GetFragTree(var_project_id, var_aligned_feature_id, var_formula_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to read from. | 
 **aligned_feature_id** | **character**| feature (aligned over runs) the formula result belongs to. | 
 **formula_id** | **character**| identifier of the requested formula result | 

### Return type

[**FragmentationTree**](FragmentationTree.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Fragmentation Tree |  -  |

# **GetIsotopePatternAnnotation**
> IsotopePatternAnnotation GetIsotopePatternAnnotation(project_id, aligned_feature_id, formula_id)

Returns Isotope pattern information (simulated isotope pattern, measured isotope pattern, isotope pattern highlighting)  for the given formula result identifier.

Returns Isotope pattern information (simulated isotope pattern, measured isotope pattern, isotope pattern highlighting)  for the given formula result identifier. This simulated isotope pattern is used to rank formula candidates (treeScore).

### Example
```R
library(Rsirius)

# Returns Isotope pattern information (simulated isotope pattern, measured isotope pattern, isotope pattern highlighting)  for the given formula result identifier.
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to read from.
var_aligned_feature_id <- "aligned_feature_id_example" # character | feature (aligned over runs) the formula result belongs to.
var_formula_id <- "formula_id_example" # character | identifier of the requested formula result

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetIsotopePatternAnnotation(var_project_id, var_aligned_feature_id, var_formula_iddata_file = "result.txt")
result <- api_instance$features_api$GetIsotopePatternAnnotation(var_project_id, var_aligned_feature_id, var_formula_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to read from. | 
 **aligned_feature_id** | **character**| feature (aligned over runs) the formula result belongs to. | 
 **formula_id** | **character**| identifier of the requested formula result | 

### Return type

[**IsotopePatternAnnotation**](IsotopePatternAnnotation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Isotope pattern information |  -  |

# **GetLipidAnnotation**
> LipidAnnotation GetLipidAnnotation(project_id, aligned_feature_id, formula_id)

Returns Lipid annotation (ElGordo) for the given formula result identifier.

Returns Lipid annotation (ElGordo) for the given formula result identifier.  ElGordo lipid annotation runs as part of the SIRIUS formula identification step.

### Example
```R
library(Rsirius)

# Returns Lipid annotation (ElGordo) for the given formula result identifier.
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to read from.
var_aligned_feature_id <- "aligned_feature_id_example" # character | feature (aligned over runs) the formula result belongs to.
var_formula_id <- "formula_id_example" # character | identifier of the requested formula result

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetLipidAnnotation(var_project_id, var_aligned_feature_id, var_formula_iddata_file = "result.txt")
result <- api_instance$features_api$GetLipidAnnotation(var_project_id, var_aligned_feature_id, var_formula_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to read from. | 
 **aligned_feature_id** | **character**| feature (aligned over runs) the formula result belongs to. | 
 **formula_id** | **character**| identifier of the requested formula result | 

### Return type

[**LipidAnnotation**](LipidAnnotation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | LipidAnnotation |  -  |

# **GetMsData**
> MsData GetMsData(project_id, aligned_feature_id)

Mass Spec data (input data) for the given 'alignedFeatureId' .

Mass Spec data (input data) for the given 'alignedFeatureId' .

### Example
```R
library(Rsirius)

# Mass Spec data (input data) for the given 'alignedFeatureId' .
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to read from.
var_aligned_feature_id <- "aligned_feature_id_example" # character | feature (aligned over runs) the Mass Spec data belong sto.

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetMsData(var_project_id, var_aligned_feature_iddata_file = "result.txt")
result <- api_instance$features_api$GetMsData(var_project_id, var_aligned_feature_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to read from. | 
 **aligned_feature_id** | **character**| feature (aligned over runs) the Mass Spec data belong sto. | 

### Return type

[**MsData**](MsData.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Mass Spec data of this feature (aligned over runs). |  -  |

# **GetSiriusFragTree**
> character GetSiriusFragTree(project_id, aligned_feature_id, formula_id)



### Example
```R
library(Rsirius)

# prepare function argument(s)
var_project_id <- "project_id_example" # character | 
var_aligned_feature_id <- "aligned_feature_id_example" # character | 
var_formula_id <- "formula_id_example" # character | 

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetSiriusFragTree(var_project_id, var_aligned_feature_id, var_formula_iddata_file = "result.txt")
result <- api_instance$features_api$GetSiriusFragTree(var_project_id, var_aligned_feature_id, var_formula_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**|  | 
 **aligned_feature_id** | **character**|  | 
 **formula_id** | **character**|  | 

### Return type

**character**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

# **GetStructureAnnotatedMsData**
> AnnotatedMsMsData GetStructureAnnotatedMsData(project_id, aligned_feature_id, formula_id, inchi_key)

Returns MS/MS Data (Merged MS/MS and list of measured MS/MS ) which are annotated with fragments and losses  for the given formula result identifier and structure candidate inChIKey.

Returns MS/MS Data (Merged MS/MS and list of measured MS/MS ) which are annotated with fragments and losses  for the given formula result identifier and structure candidate inChIKey.  These annotations are only available if a fragmentation tree and the structure candidate are available.

### Example
```R
library(Rsirius)

# Returns MS/MS Data (Merged MS/MS and list of measured MS/MS ) which are annotated with fragments and losses  for the given formula result identifier and structure candidate inChIKey.
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to read from.
var_aligned_feature_id <- "aligned_feature_id_example" # character | feature (aligned over runs) the formula result belongs to.
var_formula_id <- "formula_id_example" # character | identifier of the requested formula result
var_inchi_key <- "inchi_key_example" # character | 2d InChIKey of the structure candidate to be used to annotate the spectrum annotation

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetStructureAnnotatedMsData(var_project_id, var_aligned_feature_id, var_formula_id, var_inchi_keydata_file = "result.txt")
result <- api_instance$features_api$GetStructureAnnotatedMsData(var_project_id, var_aligned_feature_id, var_formula_id, var_inchi_key)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to read from. | 
 **aligned_feature_id** | **character**| feature (aligned over runs) the formula result belongs to. | 
 **formula_id** | **character**| identifier of the requested formula result | 
 **inchi_key** | **character**| 2d InChIKey of the structure candidate to be used to annotate the spectrum annotation | 

### Return type

[**AnnotatedMsMsData**](AnnotatedMsMsData.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Fragmentation spectrum annotated with fragments and sub-structures. |  -  |

# **GetStructureAnnotatedSpectrum**
> AnnotatedSpectrum GetStructureAnnotatedSpectrum(project_id, aligned_feature_id, formula_id, inchi_key, spectrum_index = -1)

Returns a fragmentation spectrum (e.g. Merged MS/MS) which is annotated with fragments and losses for the given formula result identifier  These annotations are only available if a fragmentation tree is available.

Returns a fragmentation spectrum (e.g. Merged MS/MS) which is annotated with fragments and losses for the given formula result identifier  These annotations are only available if a fragmentation tree is available.

### Example
```R
library(Rsirius)

# Returns a fragmentation spectrum (e.g. Merged MS/MS) which is annotated with fragments and losses for the given formula result identifier  These annotations are only available if a fragmentation tree is available.
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to read from.
var_aligned_feature_id <- "aligned_feature_id_example" # character | feature (aligned over runs) the formula result belongs to.
var_formula_id <- "formula_id_example" # character | identifier of the requested formula result
var_inchi_key <- "inchi_key_example" # character | 2d InChIKey of the structure candidate to be used to annotate the spectrum annotation
var_spectrum_index <- -1 # integer | index of the spectrum to be annotated. Merged MS/MS will be used if spectrumIndex < 0 (default) (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetStructureAnnotatedSpectrum(var_project_id, var_aligned_feature_id, var_formula_id, var_inchi_key, spectrum_index = var_spectrum_indexdata_file = "result.txt")
result <- api_instance$features_api$GetStructureAnnotatedSpectrum(var_project_id, var_aligned_feature_id, var_formula_id, var_inchi_key, spectrum_index = var_spectrum_index)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to read from. | 
 **aligned_feature_id** | **character**| feature (aligned over runs) the formula result belongs to. | 
 **formula_id** | **character**| identifier of the requested formula result | 
 **inchi_key** | **character**| 2d InChIKey of the structure candidate to be used to annotate the spectrum annotation | 
 **spectrum_index** | **integer**| index of the spectrum to be annotated. Merged MS/MS will be used if spectrumIndex &lt; 0 (default) | [optional] [default to -1]

### Return type

[**AnnotatedSpectrum**](AnnotatedSpectrum.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Fragmentation spectrum annotated with fragments and sub-structures. |  -  |

# **GetStructureCandidates**
> PageStructureCandidateFormula GetStructureCandidates(project_id, aligned_feature_id, page = 0, size = 20, sort = var.sort, search_query = var.search_query, query_syntax = var.query_syntax, opt_fields = [])

List of StructureCandidates for the given 'alignedFeatureId' with minimal information.

List of StructureCandidates for the given 'alignedFeatureId' with minimal information.  StructureCandidates can be enriched with molecular fingerprint, structure database links.

### Example
```R
library(Rsirius)

# List of StructureCandidates for the given 'alignedFeatureId' with minimal information.
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to read from.
var_aligned_feature_id <- "aligned_feature_id_example" # character | feature (aligned over runs) the structure candidates belong to.
var_page <- 0 # integer | Zero-based page index (0..N) (Optional)
var_size <- 20 # integer | The size of the page to be returned (Optional)
var_sort <- c("inner_example") # array[character] | Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported. (Optional)
var_search_query <- "search_query_example" # character | optional search query in specified format (Optional)
var_query_syntax <- SearchQueryType$new() # SearchQueryType | query syntax used fpr searchQuery (Optional)
var_opt_fields <- c(StructureCandidateOptField$new()) # array[StructureCandidateOptField] | set of optional fields to be included. Use 'none' only to override defaults. (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetStructureCandidates(var_project_id, var_aligned_feature_id, page = var_page, size = var_size, sort = var_sort, search_query = var_search_query, query_syntax = var_query_syntax, opt_fields = var_opt_fieldsdata_file = "result.txt")
result <- api_instance$features_api$GetStructureCandidates(var_project_id, var_aligned_feature_id, page = var_page, size = var_size, sort = var_sort, search_query = var_search_query, query_syntax = var_query_syntax, opt_fields = var_opt_fields)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to read from. | 
 **aligned_feature_id** | **character**| feature (aligned over runs) the structure candidates belong to. | 
 **page** | **integer**| Zero-based page index (0..N) | [optional] [default to 0]
 **size** | **integer**| The size of the page to be returned | [optional] [default to 20]
 **sort** | list( **character** )| Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] 
 **search_query** | **character**| optional search query in specified format | [optional] 
 **query_syntax** | [**SearchQueryType**](.md)| query syntax used fpr searchQuery | [optional] 
 **opt_fields** | list( [**StructureCandidateOptField**](StructureCandidateOptField.md) )| set of optional fields to be included. Use &#39;none&#39; only to override defaults. | [optional] [default to []]

### Return type

[**PageStructureCandidateFormula**](PageStructureCandidateFormula.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | StructureCandidate of this feature (aligned over runs) candidate with specified optional fields. |  -  |

# **GetStructureCandidatesByFormula**
> PageStructureCandidateScored GetStructureCandidatesByFormula(project_id, aligned_feature_id, formula_id, page = 0, size = 20, sort = var.sort, search_query = var.search_query, query_syntax = var.query_syntax, opt_fields = [])

List of StructureCandidates the given 'formulaId' with minimal information.

List of StructureCandidates the given 'formulaId' with minimal information.  StructureCandidates can be enriched with molecular fingerprint, structure database links.

### Example
```R
library(Rsirius)

# List of StructureCandidates the given 'formulaId' with minimal information.
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to read from.
var_aligned_feature_id <- "aligned_feature_id_example" # character | feature (aligned over runs) the formula result belongs to.
var_formula_id <- "formula_id_example" # character | identifier of the requested formula result
var_page <- 0 # integer | Zero-based page index (0..N) (Optional)
var_size <- 20 # integer | The size of the page to be returned (Optional)
var_sort <- c("inner_example") # array[character] | Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported. (Optional)
var_search_query <- "search_query_example" # character | optional search query in specified format (Optional)
var_query_syntax <- SearchQueryType$new() # SearchQueryType | query syntax used fpr searchQuery (Optional)
var_opt_fields <- c(StructureCandidateOptField$new()) # array[StructureCandidateOptField] | set of optional fields to be included. Use 'none' only to override defaults. (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetStructureCandidatesByFormula(var_project_id, var_aligned_feature_id, var_formula_id, page = var_page, size = var_size, sort = var_sort, search_query = var_search_query, query_syntax = var_query_syntax, opt_fields = var_opt_fieldsdata_file = "result.txt")
result <- api_instance$features_api$GetStructureCandidatesByFormula(var_project_id, var_aligned_feature_id, var_formula_id, page = var_page, size = var_size, sort = var_sort, search_query = var_search_query, query_syntax = var_query_syntax, opt_fields = var_opt_fields)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to read from. | 
 **aligned_feature_id** | **character**| feature (aligned over runs) the formula result belongs to. | 
 **formula_id** | **character**| identifier of the requested formula result | 
 **page** | **integer**| Zero-based page index (0..N) | [optional] [default to 0]
 **size** | **integer**| The size of the page to be returned | [optional] [default to 20]
 **sort** | list( **character** )| Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] 
 **search_query** | **character**| optional search query in specified format | [optional] 
 **query_syntax** | [**SearchQueryType**](.md)| query syntax used fpr searchQuery | [optional] 
 **opt_fields** | list( [**StructureCandidateOptField**](StructureCandidateOptField.md) )| set of optional fields to be included. Use &#39;none&#39; only to override defaults. | [optional] [default to []]

### Return type

[**PageStructureCandidateScored**](PageStructureCandidateScored.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | StructureCandidate of this formula candidate with specified optional fields. |  -  |
