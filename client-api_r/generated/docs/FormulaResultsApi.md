# FormulaResultsApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetBestMatchingCanopusPredictions**](FormulaResultsApi.md#GetBestMatchingCanopusPredictions) | **GET** /api/projects/{projectId}/compounds/{compoundId}/formulas/{formulaId}/best-canopus-predictions | Best matching compound classes,  Set of the highest scoring compound classes CANOPUS) on each hierarchy level of  the ClassyFire and NPC ontology,
[**GetCanopusPredictions**](FormulaResultsApi.md#GetCanopusPredictions) | **GET** /api/projects/{projectId}/compounds/{compoundId}/formulas/{formulaId}/canopus-predictions | All predicted compound classes (CANOPUS) from ClassyFire and NPC and their probabilities,
[**GetFingerprintPrediction**](FormulaResultsApi.md#GetFingerprintPrediction) | **GET** /api/projects/{projectId}/compounds/{compoundId}/formulas/{formulaId}/fingerprint | Returns predicted fingerprint (CSI:FingerID) for the given formula result identifier  This fingerprint is used to perfom structure database search and predict compound classes.
[**GetFormulaIds**](FormulaResultsApi.md#GetFormulaIds) | **GET** /api/projects/{projectId}/compounds/{compoundId}/formulas | List of all FormulaResultContainers available for this compound/feature with minimal information.
[**GetFormulaResult**](FormulaResultsApi.md#GetFormulaResult) | **GET** /api/projects/{projectId}/compounds/{compoundId}/formulas/{formulaId} | FormulaResultContainers for the given &#39;formulaId&#39; with minimal information.
[**GetFragTree**](FormulaResultsApi.md#GetFragTree) | **GET** /api/projects/{projectId}/compounds/{compoundId}/formulas/{formulaId}/tree | Returns fragmentation tree (SIRIUS) for the given formula result identifier  This tree is used to rank formula candidates (treeScore).
[**GetSimulatedIsotopePattern**](FormulaResultsApi.md#GetSimulatedIsotopePattern) | **GET** /api/projects/{projectId}/compounds/{compoundId}/formulas/{formulaId}/isotope-pattern | Returns simulated isotope pattern (SIRIUS) for the given formula result identifier.
[**GetStructureCandidates**](FormulaResultsApi.md#GetStructureCandidates) | **GET** /api/projects/{projectId}/compounds/{compoundId}/formulas/{formulaId}/structures | List of StructureCandidates the given &#39;formulaId&#39; with minimal information.
[**GetTopStructureCandidate**](FormulaResultsApi.md#GetTopStructureCandidate) | **GET** /api/projects/{projectId}/compounds/{compoundId}/top-structure | Best Scoring StructureCandidate over all molecular formular resutls that belong to the specified  compound/feature (compoundId).


# **GetBestMatchingCanopusPredictions**
> CompoundClasses GetBestMatchingCanopusPredictions(project_id, compound_id, formula_id)

Best matching compound classes,  Set of the highest scoring compound classes CANOPUS) on each hierarchy level of  the ClassyFire and NPC ontology,

Best matching compound classes,  Set of the highest scoring compound classes CANOPUS) on each hierarchy level of  the ClassyFire and NPC ontology,

### Example
```R
library(RSirius)

# Best matching compound classes,  Set of the highest scoring compound classes CANOPUS) on each hierarchy level of  the ClassyFire and NPC ontology,
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to read from.
var_compound_id <- "compound_id_example" # character | compound/feature the formula result belongs to.
var_formula_id <- "formula_id_example" # character | identifier of the requested formula result

api_instance <- FormulaResultsApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetBestMatchingCanopusPredictions(var_project_id, var_compound_id, var_formula_iddata_file = "result.txt")
result <- api_instance$GetBestMatchingCanopusPredictions(var_project_id, var_compound_id, var_formula_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to read from. | 
 **compound_id** | **character**| compound/feature the formula result belongs to. | 
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

# **GetCanopusPredictions**
> CanopusPredictions GetCanopusPredictions(project_id, compound_id, formula_id)

All predicted compound classes (CANOPUS) from ClassyFire and NPC and their probabilities,

All predicted compound classes (CANOPUS) from ClassyFire and NPC and their probabilities,

### Example
```R
library(RSirius)

# All predicted compound classes (CANOPUS) from ClassyFire and NPC and their probabilities,
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to read from.
var_compound_id <- "compound_id_example" # character | compound/feature the formula result belongs to.
var_formula_id <- "formula_id_example" # character | identifier of the requested formula result

api_instance <- FormulaResultsApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetCanopusPredictions(var_project_id, var_compound_id, var_formula_iddata_file = "result.txt")
result <- api_instance$GetCanopusPredictions(var_project_id, var_compound_id, var_formula_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to read from. | 
 **compound_id** | **character**| compound/feature the formula result belongs to. | 
 **formula_id** | **character**| identifier of the requested formula result | 

### Return type

[**CanopusPredictions**](CanopusPredictions.md)

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
> array[numeric] GetFingerprintPrediction(project_id, compound_id, formula_id)

Returns predicted fingerprint (CSI:FingerID) for the given formula result identifier  This fingerprint is used to perfom structure database search and predict compound classes.

Returns predicted fingerprint (CSI:FingerID) for the given formula result identifier  This fingerprint is used to perfom structure database search and predict compound classes.

### Example
```R
library(RSirius)

# Returns predicted fingerprint (CSI:FingerID) for the given formula result identifier  This fingerprint is used to perfom structure database search and predict compound classes.
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to read from.
var_compound_id <- "compound_id_example" # character | compound/feature the formula result belongs to.
var_formula_id <- "formula_id_example" # character | identifier of the requested formula result

api_instance <- FormulaResultsApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetFingerprintPrediction(var_project_id, var_compound_id, var_formula_iddata_file = "result.txt")
result <- api_instance$GetFingerprintPrediction(var_project_id, var_compound_id, var_formula_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to read from. | 
 **compound_id** | **character**| compound/feature the formula result belongs to. | 
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

# **GetFormulaIds**
> array[FormulaResultContainer] GetFormulaIds(project_id, compound_id, result_overview = TRUE, formula_candidate = FALSE)

List of all FormulaResultContainers available for this compound/feature with minimal information.

List of all FormulaResultContainers available for this compound/feature with minimal information.  Can be enriched with an optional results overview.

### Example
```R
library(RSirius)

# List of all FormulaResultContainers available for this compound/feature with minimal information.
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to read from.
var_compound_id <- "compound_id_example" # character | compound/feature the formula result belongs to.
var_result_overview <- TRUE # character | add ResultOverview to the FormulaResultContainers (Optional)
var_formula_candidate <- FALSE # character | add extended formula candidate information to the FormulaResultContainers (Optional)

api_instance <- FormulaResultsApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetFormulaIds(var_project_id, var_compound_id, result_overview = var_result_overview, formula_candidate = var_formula_candidatedata_file = "result.txt")
result <- api_instance$GetFormulaIds(var_project_id, var_compound_id, result_overview = var_result_overview, formula_candidate = var_formula_candidate)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to read from. | 
 **compound_id** | **character**| compound/feature the formula result belongs to. | 
 **result_overview** | **character**| add ResultOverview to the FormulaResultContainers | [optional] [default to TRUE]
 **formula_candidate** | **character**| add extended formula candidate information to the FormulaResultContainers | [optional] [default to FALSE]

### Return type

[**array[FormulaResultContainer]**](FormulaResultContainer.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | All FormulaResultContainers of this compound/feature with. |  -  |

# **GetFormulaResult**
> FormulaResultContainer GetFormulaResult(project_id, compound_id, formula_id, result_overview = TRUE, formula_candidate = TRUE)

FormulaResultContainers for the given 'formulaId' with minimal information.

FormulaResultContainers for the given 'formulaId' with minimal information.  Can be enriched with an optional results overview and formula candidate information.

### Example
```R
library(RSirius)

# FormulaResultContainers for the given 'formulaId' with minimal information.
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to read from.
var_compound_id <- "compound_id_example" # character | compound/feature the formula result belongs to.
var_formula_id <- "formula_id_example" # character | identifier of the requested formula result
var_result_overview <- TRUE # character | add ResultOverview to the FormulaResultContainer (Optional)
var_formula_candidate <- TRUE # character | add extended formula candidate information to the FormulaResultContainer (Optional)

api_instance <- FormulaResultsApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetFormulaResult(var_project_id, var_compound_id, var_formula_id, result_overview = var_result_overview, formula_candidate = var_formula_candidatedata_file = "result.txt")
result <- api_instance$GetFormulaResult(var_project_id, var_compound_id, var_formula_id, result_overview = var_result_overview, formula_candidate = var_formula_candidate)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to read from. | 
 **compound_id** | **character**| compound/feature the formula result belongs to. | 
 **formula_id** | **character**| identifier of the requested formula result | 
 **result_overview** | **character**| add ResultOverview to the FormulaResultContainer | [optional] [default to TRUE]
 **formula_candidate** | **character**| add extended formula candidate information to the FormulaResultContainer | [optional] [default to TRUE]

### Return type

[**FormulaResultContainer**](FormulaResultContainer.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | FormulaResultContainers of this compound/feature with. |  -  |

# **GetFragTree**
> FragmentationTree GetFragTree(project_id, compound_id, formula_id)

Returns fragmentation tree (SIRIUS) for the given formula result identifier  This tree is used to rank formula candidates (treeScore).

Returns fragmentation tree (SIRIUS) for the given formula result identifier  This tree is used to rank formula candidates (treeScore).

### Example
```R
library(RSirius)

# Returns fragmentation tree (SIRIUS) for the given formula result identifier  This tree is used to rank formula candidates (treeScore).
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to read from.
var_compound_id <- "compound_id_example" # character | compound/feature the formula result belongs to.
var_formula_id <- "formula_id_example" # character | identifier of the requested formula result

api_instance <- FormulaResultsApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetFragTree(var_project_id, var_compound_id, var_formula_iddata_file = "result.txt")
result <- api_instance$GetFragTree(var_project_id, var_compound_id, var_formula_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to read from. | 
 **compound_id** | **character**| compound/feature the formula result belongs to. | 
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

# **GetSimulatedIsotopePattern**
> AnnotatedSpectrum GetSimulatedIsotopePattern(project_id, compound_id, formula_id)

Returns simulated isotope pattern (SIRIUS) for the given formula result identifier.

Returns simulated isotope pattern (SIRIUS) for the given formula result identifier.  This simulated isotope pattern is used to rank formula candidates (treeScore).

### Example
```R
library(RSirius)

# Returns simulated isotope pattern (SIRIUS) for the given formula result identifier.
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to read from.
var_compound_id <- "compound_id_example" # character | compound/feature the formula result belongs to.
var_formula_id <- "formula_id_example" # character | identifier of the requested formula result

api_instance <- FormulaResultsApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetSimulatedIsotopePattern(var_project_id, var_compound_id, var_formula_iddata_file = "result.txt")
result <- api_instance$GetSimulatedIsotopePattern(var_project_id, var_compound_id, var_formula_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to read from. | 
 **compound_id** | **character**| compound/feature the formula result belongs to. | 
 **formula_id** | **character**| identifier of the requested formula result | 

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
| **200** | Simulated isotope pattern |  -  |

# **GetStructureCandidates**
> array[StructureCandidate] GetStructureCandidates(project_id, compound_id, formula_id, fingerprint = FALSE, db_links = FALSE, pub_med_ids = FALSE, top_k = -1)

List of StructureCandidates the given 'formulaId' with minimal information.

List of StructureCandidates the given 'formulaId' with minimal information.  StructureCandidates can be enriched with molecular fingerprint, structure database links and pubmed ids,

### Example
```R
library(RSirius)

# List of StructureCandidates the given 'formulaId' with minimal information.
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to read from.
var_compound_id <- "compound_id_example" # character | compound/feature the formula result belongs to.
var_formula_id <- "formula_id_example" # character | identifier of the requested formula result
var_fingerprint <- FALSE # character | add molecular fingerprint to StructureCandidates (Optional)
var_db_links <- FALSE # character | add dbLinks to StructureCandidates (Optional)
var_pub_med_ids <- FALSE # character | add PubMedIds (citation count) to StructureCandidates (Optional)
var_top_k <- -1 # integer | retrieve only the top k StructureCandidates (Optional)

api_instance <- FormulaResultsApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetStructureCandidates(var_project_id, var_compound_id, var_formula_id, fingerprint = var_fingerprint, db_links = var_db_links, pub_med_ids = var_pub_med_ids, top_k = var_top_kdata_file = "result.txt")
result <- api_instance$GetStructureCandidates(var_project_id, var_compound_id, var_formula_id, fingerprint = var_fingerprint, db_links = var_db_links, pub_med_ids = var_pub_med_ids, top_k = var_top_k)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to read from. | 
 **compound_id** | **character**| compound/feature the formula result belongs to. | 
 **formula_id** | **character**| identifier of the requested formula result | 
 **fingerprint** | **character**| add molecular fingerprint to StructureCandidates | [optional] [default to FALSE]
 **db_links** | **character**| add dbLinks to StructureCandidates | [optional] [default to FALSE]
 **pub_med_ids** | **character**| add PubMedIds (citation count) to StructureCandidates | [optional] [default to FALSE]
 **top_k** | **integer**| retrieve only the top k StructureCandidates | [optional] [default to -1]

### Return type

[**array[StructureCandidate]**](StructureCandidate.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | FormulaResultContainers of this compound/feature with specified extensions. |  -  |

# **GetTopStructureCandidate**
> StructureCandidate GetTopStructureCandidate(project_id, compound_id, fingerprint = FALSE, db_links = FALSE, pub_med_ids = FALSE)

Best Scoring StructureCandidate over all molecular formular resutls that belong to the specified  compound/feature (compoundId).

Best Scoring StructureCandidate over all molecular formular resutls that belong to the specified  compound/feature (compoundId).

### Example
```R
library(RSirius)

# Best Scoring StructureCandidate over all molecular formular resutls that belong to the specified  compound/feature (compoundId).
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to read from.
var_compound_id <- "compound_id_example" # character | compound/feature the formula result belongs to.
var_fingerprint <- FALSE # character | add molecular fingerprint to StructureCandidates (Optional)
var_db_links <- FALSE # character | add dbLinks to StructureCandidates (Optional)
var_pub_med_ids <- FALSE # character | add PubMedIds (citation count) to StructureCandidates (Optional)

api_instance <- FormulaResultsApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetTopStructureCandidate(var_project_id, var_compound_id, fingerprint = var_fingerprint, db_links = var_db_links, pub_med_ids = var_pub_med_idsdata_file = "result.txt")
result <- api_instance$GetTopStructureCandidate(var_project_id, var_compound_id, fingerprint = var_fingerprint, db_links = var_db_links, pub_med_ids = var_pub_med_ids)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to read from. | 
 **compound_id** | **character**| compound/feature the formula result belongs to. | 
 **fingerprint** | **character**| add molecular fingerprint to StructureCandidates | [optional] [default to FALSE]
 **db_links** | **character**| add dbLinks to StructureCandidates | [optional] [default to FALSE]
 **pub_med_ids** | **character**| add PubMedIds (citation count) to StructureCandidates | [optional] [default to FALSE]

### Return type

[**StructureCandidate**](StructureCandidate.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Best scoring FormulaResultContainers of this compound/feature with specified extensions. |  -  |

