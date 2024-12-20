# CompoundsApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AddCompounds**](CompoundsApi.md#AddCompounds) | **POST** /api/projects/{projectId}/compounds | Import Compounds and its contained features.
[**DeleteCompound**](CompoundsApi.md#DeleteCompound) | **DELETE** /api/projects/{projectId}/compounds/{compoundId} | Delete compound (group of ion identities) with the given identifier (and the included features) from the  specified project-space.
[**GetCompound**](CompoundsApi.md#GetCompound) | **GET** /api/projects/{projectId}/compounds/{compoundId} | Get compound (group of ion identities) with the given identifier from the specified project-space.
[**GetCompoundTracesExperimental**](CompoundsApi.md#GetCompoundTracesExperimental) | **GET** /api/projects/{projectId}/compounds/{compoundId}/traces | EXPERIMENTAL: This endpoint is experimental and may be changed (or even removed) without notice until it is declared stable.
[**GetCompounds**](CompoundsApi.md#GetCompounds) | **GET** /api/projects/{projectId}/compounds | List of all available compounds (group of ion identities) in the given project-space.
[**GetCompoundsPaged**](CompoundsApi.md#GetCompoundsPaged) | **GET** /api/projects/{projectId}/compounds/page | Page of available compounds (group of ion identities) in the given project-space.


# **AddCompounds**
> array[Compound] AddCompounds(project_id, compound_import, profile = var.profile, opt_fields = ["none"], opt_fields_features = ["none"])

Import Compounds and its contained features.

Import Compounds and its contained features. Compounds and Features must not exist in the project.  Otherwise, they will exist twice.

### Example
```R
library(Rsirius)

# Import Compounds and its contained features.
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to import into.
var_compound_import <- c(CompoundImport$new(c(FeatureImport$new(123, 123, "name_example", "externalFeatureId_example", c("detectedAdducts_example"), 123, 123, 123, "NOT_APPLICABLE", BasicSpectrum$new(c(SimplePeak$new(123, 123)), "name_example", 123, "collisionEnergy_example", "instrument_example", 123, 123, 123), c(BasicSpectrum$new(c(SimplePeak$new(..., ...)), "name_example", 123, "collisionEnergy_example", "instrument_example", 123, 123, 123)), c(BasicSpectrum$new(c(SimplePeak$new(..., ...)), "name_example", 123, "collisionEnergy_example", "instrument_example", 123, 123, 123)))), "name_example")) # array[CompoundImport] | the compound data to be imported
var_profile <- "profile_example" # character | profile describing the instrument used to measure the data. Used to merge spectra. (Optional)
var_opt_fields <- c("none") # array[character] | set of optional fields to be included. Use 'none' to override defaults. (Optional)
var_opt_fields_features <- c("none") # array[character] | set of optional fields of the nested features to be included. Use 'none' to override defaults. (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$AddCompounds(var_project_id, var_compound_import, profile = var_profile, opt_fields = var_opt_fields, opt_fields_features = var_opt_fields_featuresdata_file = "result.txt")
result <- api_instance$compounds_api$AddCompounds(var_project_id, var_compound_import, profile = var_profile, opt_fields = var_opt_fields, opt_fields_features = var_opt_fields_features)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to import into. | 
 **compound_import** | list( [**CompoundImport**](CompoundImport.md) )| the compound data to be imported | 
 **profile** | Enum [QTOF, ORBITRAP] | profile describing the instrument used to measure the data. Used to merge spectra. | [optional] 
 **opt_fields** | Enum [none, consensusAnnotations, consensusAnnotationsDeNovo, customAnnotations] | set of optional fields to be included. Use &#39;none&#39; to override defaults. | [optional] [default to [&quot;none&quot;]]
 **opt_fields_features** | Enum [none, msData, topAnnotations, topAnnotationsDeNovo, computedTools] | set of optional fields of the nested features to be included. Use &#39;none&#39; to override defaults. | [optional] [default to [&quot;none&quot;]]

### Return type

[**array[Compound]**](Compound.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | the Compounds that have been imported with specified optional fields |  -  |

# **DeleteCompound**
> DeleteCompound(project_id, compound_id)

Delete compound (group of ion identities) with the given identifier (and the included features) from the  specified project-space.

Delete compound (group of ion identities) with the given identifier (and the included features) from the  specified project-space.

### Example
```R
library(Rsirius)

# Delete compound (group of ion identities) with the given identifier (and the included features) from the  specified project-space.
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to delete from.
var_compound_id <- "compound_id_example" # character | identifier of the compound to delete.

api_instance <- rsirius_api$new()
api_instance$compounds_api$DeleteCompound(var_project_id, var_compound_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to delete from. | 
 **compound_id** | **character**| identifier of the compound to delete. | 

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

# **GetCompound**
> Compound GetCompound(project_id, compound_id, opt_fields = ["none"], opt_fields_features = ["none"])

Get compound (group of ion identities) with the given identifier from the specified project-space.

Get compound (group of ion identities) with the given identifier from the specified project-space.

### Example
```R
library(Rsirius)

# Get compound (group of ion identities) with the given identifier from the specified project-space.
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to read from.
var_compound_id <- "compound_id_example" # character | identifier of the compound (group of ion identities) to access.
var_opt_fields <- c("none") # array[character] | set of optional fields to be included. Use 'none' only to override defaults. (Optional)
var_opt_fields_features <- c("none") # array[character] |  (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetCompound(var_project_id, var_compound_id, opt_fields = var_opt_fields, opt_fields_features = var_opt_fields_featuresdata_file = "result.txt")
result <- api_instance$compounds_api$GetCompound(var_project_id, var_compound_id, opt_fields = var_opt_fields, opt_fields_features = var_opt_fields_features)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to read from. | 
 **compound_id** | **character**| identifier of the compound (group of ion identities) to access. | 
 **opt_fields** | Enum [none, consensusAnnotations, consensusAnnotationsDeNovo, customAnnotations] | set of optional fields to be included. Use &#39;none&#39; only to override defaults. | [optional] [default to [&quot;none&quot;]]
 **opt_fields_features** | Enum [none, msData, topAnnotations, topAnnotationsDeNovo, computedTools] |  | [optional] [default to [&quot;none&quot;]]

### Return type

[**Compound**](Compound.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Compounds with additional optional fields (if specified). |  -  |

# **GetCompoundTracesExperimental**
> TraceSetExperimental GetCompoundTracesExperimental(project_id, compound_id, feature_id = "")

EXPERIMENTAL: This endpoint is experimental and may be changed (or even removed) without notice until it is declared stable.

Returns the traces of the given compound. A trace consists of m/z and intensity values over the retention  time axis. All the returned traces are 'projected', which means they refer not to the original retention time axis,  but to a recalibrated axis. This means the data points in the trace are not exactly the same as in the raw data.  However, this also means that all traces can be directly compared against each other, as they all lie in the same  retention time axis.

### Example
```R
library(Rsirius)

# EXPERIMENTAL: This endpoint is experimental and may be changed (or even removed) without notice until it is declared stable.
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to read from.
var_compound_id <- "compound_id_example" # character | compound which intensities should be read out
var_feature_id <- "" # character |  (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetCompoundTracesExperimental(var_project_id, var_compound_id, feature_id = var_feature_iddata_file = "result.txt")
result <- api_instance$compounds_api$GetCompoundTracesExperimental(var_project_id, var_compound_id, feature_id = var_feature_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to read from. | 
 **compound_id** | **character**| compound which intensities should be read out | 
 **feature_id** | **character**|  | [optional] [default to &quot;&quot;]

### Return type

[**TraceSetExperimental**](TraceSetExperimental.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Traces of the given compound. |  -  |

# **GetCompounds**
> array[Compound] GetCompounds(project_id, opt_fields = ["none"], opt_fields_features = ["none"])

List of all available compounds (group of ion identities) in the given project-space.

List of all available compounds (group of ion identities) in the given project-space.

### Example
```R
library(Rsirius)

# List of all available compounds (group of ion identities) in the given project-space.
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to read from.
var_opt_fields <- c("none") # array[character] | set of optional fields to be included. Use 'none' only to override defaults. (Optional)
var_opt_fields_features <- c("none") # array[character] |  (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetCompounds(var_project_id, opt_fields = var_opt_fields, opt_fields_features = var_opt_fields_featuresdata_file = "result.txt")
result <- api_instance$compounds_api$GetCompounds(var_project_id, opt_fields = var_opt_fields, opt_fields_features = var_opt_fields_features)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to read from. | 
 **opt_fields** | Enum [none, consensusAnnotations, consensusAnnotationsDeNovo, customAnnotations] | set of optional fields to be included. Use &#39;none&#39; only to override defaults. | [optional] [default to [&quot;none&quot;]]
 **opt_fields_features** | Enum [none, msData, topAnnotations, topAnnotationsDeNovo, computedTools] |  | [optional] [default to [&quot;none&quot;]]

### Return type

[**array[Compound]**](Compound.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Compounds with additional optional fields (if specified). |  -  |

# **GetCompoundsPaged**
> PagedModelCompound GetCompoundsPaged(project_id, page = 0, size = 20, sort = var.sort, opt_fields = ["none"], opt_fields_features = ["none"])

Page of available compounds (group of ion identities) in the given project-space.

Page of available compounds (group of ion identities) in the given project-space.

### Example
```R
library(Rsirius)

# Page of available compounds (group of ion identities) in the given project-space.
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to read from.
var_page <- 0 # integer | Zero-based page index (0..N) (Optional)
var_size <- 20 # integer | The size of the page to be returned (Optional)
var_sort <- c("inner_example") # array[character] | Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported. (Optional)
var_opt_fields <- c("none") # array[character] | set of optional fields to be included. Use 'none' only to override defaults. (Optional)
var_opt_fields_features <- c("none") # array[character] |  (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetCompoundsPaged(var_project_id, page = var_page, size = var_size, sort = var_sort, opt_fields = var_opt_fields, opt_fields_features = var_opt_fields_featuresdata_file = "result.txt")
result <- api_instance$compounds_api$GetCompoundsPaged(var_project_id, page = var_page, size = var_size, sort = var_sort, opt_fields = var_opt_fields, opt_fields_features = var_opt_fields_features)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to read from. | 
 **page** | **integer**| Zero-based page index (0..N) | [optional] [default to 0]
 **size** | **integer**| The size of the page to be returned | [optional] [default to 20]
 **sort** | list( **character** )| Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] 
 **opt_fields** | Enum [none, consensusAnnotations, consensusAnnotationsDeNovo, customAnnotations] | set of optional fields to be included. Use &#39;none&#39; only to override defaults. | [optional] [default to [&quot;none&quot;]]
 **opt_fields_features** | Enum [none, msData, topAnnotations, topAnnotationsDeNovo, computedTools] |  | [optional] [default to [&quot;none&quot;]]

### Return type

[**PagedModelCompound**](PagedModelCompound.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Compounds with additional optional fields (if specified). |  -  |

