# CompoundsApi

All URIs are relative to *http://localhost:8888*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AddCompounds**](CompoundsApi.md#AddCompounds) | **POST** /api/projects/{projectId}/compounds | Import Compounds and its contained features.
[**AddTagsToCompoundExperimental**](CompoundsApi.md#AddTagsToCompoundExperimental) | **PUT** /api/projects/{projectId}/compounds/tags/{compoundId} | [EXPERIMENTAL] Tags with the same name will be overwritten
[**AddTagsToObjects**](CompoundsApi.md#AddTagsToObjects) | **PUT** /api/projects/{projectId}/compounds/tags | Tags with the same name will be overwritten.
[**DeleteCompound**](CompoundsApi.md#DeleteCompound) | **DELETE** /api/projects/{projectId}/compounds/{compoundId} | Delete compound (group of ion identities) with the given identifier (and the included features) from the  specified project-space.
[**GetCompound**](CompoundsApi.md#GetCompound) | **GET** /api/projects/{projectId}/compounds/{compoundId} | Get compound (group of ion identities) with the given identifier from the specified project-space.
[**GetCompoundQuantTableExperimental**](CompoundsApi.md#GetCompoundQuantTableExperimental) | **GET** /api/projects/{projectId}/compounds/quant-table | [EXPERIMENTAL] Returns the full quantification table of compounds
[**GetCompoundQuantTableRowExperimental**](CompoundsApi.md#GetCompoundQuantTableRowExperimental) | **GET** /api/projects/{projectId}/compounds/{compoundId}/quant-table-row | [EXPERIMENTAL] Returns a single quantification table row for the given compound
[**GetCompoundTracesExperimental**](CompoundsApi.md#GetCompoundTracesExperimental) | **GET** /api/projects/{projectId}/compounds/{compoundId}/traces | [EXPERIMENTAL] Returns the traces of the given compound
[**GetCompounds**](CompoundsApi.md#GetCompounds) | **GET** /api/projects/{projectId}/compounds | List of all available compounds (group of ion identities) in the given project-space.
[**GetCompoundsByGroupExperimental**](CompoundsApi.md#GetCompoundsByGroupExperimental) | **GET** /api/projects/{projectId}/compounds/grouped | [EXPERIMENTAL] Get compounds (group of ion identities) by tag group
[**GetCompoundsPageExperimental**](CompoundsApi.md#GetCompoundsPageExperimental) | **GET** /api/projects/{projectId}/compounds/page | [EXPERIMENTAL] Page of available compounds (group of ion identities) in the given project-space
[**GetTagsForCompoundExperimental**](CompoundsApi.md#GetTagsForCompoundExperimental) | **GET** /api/projects/{projectId}/compounds/tags/{objectId} | [EXPERIMENTAL] Get all tags associated with this Compound
[**RemoveTagFromCompoundExperimental**](CompoundsApi.md#RemoveTagFromCompoundExperimental) | **DELETE** /api/projects/{projectId}/compounds/tags/{compoundId}/{tagName} | [EXPERIMENTAL] Delete tag with the given name from the compound (group of ion identities) with the specified ID in the specified project-space


# **AddCompounds**
> array[Compound] AddCompounds(project_id, compound_import, profile = var.profile, opt_fields = ["none"], opt_fields_features = ["none"])

Import Compounds and its contained features.

Import Compounds and its contained features. Compounds and Features must not exist in the project.  Otherwise, they will exist twice.

### Example
```R
library(RSirius)

# Import Compounds and its contained features.
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to import into.
var_compound_import <- c(CompoundImport$new(c(FeatureImport$new(123, 123, "name_example", "externalFeatureId_example", c("detectedAdducts_example"), 123, 123, 123, "NOT_APPLICABLE", BasicSpectrum$new("cosineQuery_example", c(SimplePeak$new(123, 123)), "name_example", 123, "collisionEnergy_example", "instrument_example", 123, 123, SimplePeak$new(123, 123), 123, 123, 123, 123, 123), c(BasicSpectrum$new("cosineQuery_example", c(SimplePeak$new(..., ...)), "name_example", 123, "collisionEnergy_example", "instrument_example", 123, 123, SimplePeak$new(123, 123), 123, 123, 123, 123, 123)), c(BasicSpectrum$new("cosineQuery_example", c(SimplePeak$new(..., ...)), "name_example", 123, "collisionEnergy_example", "instrument_example", 123, 123, SimplePeak$new(123, 123), 123, 123, 123, 123, 123)))), "name_example")) # array[CompoundImport] | the compound data to be imported
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
 **opt_fields** | Enum [none, consensusAnnotations, consensusAnnotationsDeNovo, customAnnotations, tags] | set of optional fields to be included. Use &#39;none&#39; to override defaults. | [optional] [default to [&quot;none&quot;]]
 **opt_fields_features** | Enum [none, msData, topAnnotationsSummary, topAnnotations, topAnnotationsDeNovo, computedTools, qualities, tags] | set of optional fields of the nested features to be included. Use &#39;none&#39; to override defaults. | [optional] [default to [&quot;none&quot;]]

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

# **AddTagsToCompoundExperimental**
> array[Tag] AddTagsToCompoundExperimental(project_id, compound_id, tag)

[EXPERIMENTAL] Tags with the same name will be overwritten

[EXPERIMENTAL] Tags with the same name will be overwritten.  <p>  [EXPERIMENTAL] This endpoint is experimental and not part of the stable API specification. This endpoint can change at any time, even in minor updates.

### Example
```R
library(RSirius)

# [EXPERIMENTAL] Tags with the same name will be overwritten
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to add to.
var_compound_id <- "compound_id_example" # character | compound (group of ion identities) to add tags to.
var_tag <- c(Tag$new("tagName_example", 123)) # array[Tag] | tags to add.

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$AddTagsToCompoundExperimental(var_project_id, var_compound_id, var_tagdata_file = "result.txt")
result <- api_instance$compounds_api$AddTagsToCompoundExperimental(var_project_id, var_compound_id, var_tag)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to add to. | 
 **compound_id** | **character**| compound (group of ion identities) to add tags to. | 
 **tag** | list( [**Tag**](Tag.md) )| tags to add. | 

### Return type

[**array[Tag]**](Tag.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | the tags that have been added |  -  |

# **AddTagsToObjects**
> AddTagsToObjects(project_id, tag_submission)

Tags with the same name will be overwritten.

Tags with the same name will be overwritten.

### Example
```R
library(RSirius)

# Tags with the same name will be overwritten.
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to add to.
var_tag_submission <- c(TagSubmission$new("tagName_example", "taggedObjectId_example", 123)) # array[TagSubmission] | tags with id of the object to be added to.

api_instance <- rsirius_api$new()
api_instance$compounds_api$AddTagsToObjects(var_project_id, var_tag_submission)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to add to. | 
 **tag_submission** | list( [**TagSubmission**](TagSubmission.md) )| tags with id of the object to be added to. | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

# **DeleteCompound**
> DeleteCompound(project_id, compound_id)

Delete compound (group of ion identities) with the given identifier (and the included features) from the  specified project-space.

Delete compound (group of ion identities) with the given identifier (and the included features) from the  specified project-space.

### Example
```R
library(RSirius)

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
> Compound GetCompound(project_id, compound_id, ms_data_search_prepared = FALSE, opt_fields = ["none"], opt_fields_features = ["none"])

Get compound (group of ion identities) with the given identifier from the specified project-space.

Get compound (group of ion identities) with the given identifier from the specified project-space.

### Example
```R
library(RSirius)

# Get compound (group of ion identities) with the given identifier from the specified project-space.
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to read from.
var_compound_id <- "compound_id_example" # character | identifier of the compound (group of ion identities) to access.
var_ms_data_search_prepared <- FALSE # character | Returns all fragment spectra in a preprocessed form as used for fast                             Cosine/Modified Cosine computation. Gives you spectra compatible with SpectralLibraryMatch                             peak assignments and reference spectra. (Optional)
var_opt_fields <- c("none") # array[character] | set of optional fields to be included. Use 'none' only to override defaults. (Optional)
var_opt_fields_features <- c("none") # array[character] |  (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetCompound(var_project_id, var_compound_id, ms_data_search_prepared = var_ms_data_search_prepared, opt_fields = var_opt_fields, opt_fields_features = var_opt_fields_featuresdata_file = "result.txt")
result <- api_instance$compounds_api$GetCompound(var_project_id, var_compound_id, ms_data_search_prepared = var_ms_data_search_prepared, opt_fields = var_opt_fields, opt_fields_features = var_opt_fields_features)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to read from. | 
 **compound_id** | **character**| identifier of the compound (group of ion identities) to access. | 
 **ms_data_search_prepared** | **character**| Returns all fragment spectra in a preprocessed form as used for fast                             Cosine/Modified Cosine computation. Gives you spectra compatible with SpectralLibraryMatch                             peak assignments and reference spectra. | [optional] [default to FALSE]
 **opt_fields** | Enum [none, consensusAnnotations, consensusAnnotationsDeNovo, customAnnotations, tags] | set of optional fields to be included. Use &#39;none&#39; only to override defaults. | [optional] [default to [&quot;none&quot;]]
 **opt_fields_features** | Enum [none, msData, topAnnotationsSummary, topAnnotations, topAnnotationsDeNovo, computedTools, qualities, tags] |  | [optional] [default to [&quot;none&quot;]]

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

# **GetCompoundQuantTableExperimental**
> QuantTableExperimental GetCompoundQuantTableExperimental(project_id, type = "APEX_HEIGHT")

[EXPERIMENTAL] Returns the full quantification table of compounds

[EXPERIMENTAL] Returns the full quantification table of compounds.  <p>  The quantification table contains a quantification of the features within all  runs they are contained in.  <p>  [EXPERIMENTAL] This endpoint is experimental and not part of the stable API specification. This endpoint can change at any time, even in minor updates.*

### Example
```R
library(RSirius)

# [EXPERIMENTAL] Returns the full quantification table of compounds
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to read from.
var_type <- "APEX_HEIGHT" # character | quantification type. (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetCompoundQuantTableExperimental(var_project_id, type = var_typedata_file = "result.txt")
result <- api_instance$compounds_api$GetCompoundQuantTableExperimental(var_project_id, type = var_type)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to read from. | 
 **type** | Enum [APEX_INTENSITY, AREA_UNDER_CURVE] | quantification type. | [optional] [default to &quot;APEX_HEIGHT&quot;]

### Return type

[**QuantTableExperimental**](QuantTableExperimental.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

# **GetCompoundQuantTableRowExperimental**
> QuantTableExperimental GetCompoundQuantTableRowExperimental(project_id, compound_id, type = "APEX_HEIGHT")

[EXPERIMENTAL] Returns a single quantification table row for the given compound

[EXPERIMENTAL] Returns a single quantification table row for the given compound.  <p>  The quantification table contains a quantification of the feature within all  samples it is contained in.  <p>  [EXPERIMENTAL] This endpoint is experimental and not part of the stable API specification. This endpoint can change at any time, even in minor updates.*

### Example
```R
library(RSirius)

# [EXPERIMENTAL] Returns a single quantification table row for the given compound
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to read from.
var_compound_id <- "compound_id_example" # character | compound which should be read out
var_type <- "APEX_HEIGHT" # character | quantification type. (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetCompoundQuantTableRowExperimental(var_project_id, var_compound_id, type = var_typedata_file = "result.txt")
result <- api_instance$compounds_api$GetCompoundQuantTableRowExperimental(var_project_id, var_compound_id, type = var_type)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to read from. | 
 **compound_id** | **character**| compound which should be read out | 
 **type** | Enum [APEX_INTENSITY, AREA_UNDER_CURVE] | quantification type. | [optional] [default to &quot;APEX_HEIGHT&quot;]

### Return type

[**QuantTableExperimental**](QuantTableExperimental.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

# **GetCompoundTracesExperimental**
> TraceSetExperimental GetCompoundTracesExperimental(project_id, compound_id, feature_id = "")

[EXPERIMENTAL] Returns the traces of the given compound

[EXPERIMENTAL] Returns the traces of the given compound.  <p>  A trace consists of m/z and intensity values over the retention  time axis. All the returned traces are 'projected', which means they refer not to the original retention time axis,  but to a recalibrated axis. This means the data points in the trace are not exactly the same as in the raw data.  However, this also means that all traces can be directly compared against each other, as they all lie in the same  retention time axis.  <p>  [EXPERIMENTAL] This endpoint is experimental and not part of the stable API specification. This endpoint can change at any time, even in minor updates.*

### Example
```R
library(RSirius)

# [EXPERIMENTAL] Returns the traces of the given compound
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
> array[Compound] GetCompounds(project_id, ms_data_search_prepared = FALSE, opt_fields = ["none"], opt_fields_features = ["none"])

List of all available compounds (group of ion identities) in the given project-space.

List of all available compounds (group of ion identities) in the given project-space.

### Example
```R
library(RSirius)

# List of all available compounds (group of ion identities) in the given project-space.
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to read from.
var_ms_data_search_prepared <- FALSE # character | Returns all fragment spectra in a preprocessed form as used for fast                             Cosine/Modified Cosine computation. Gives you spectra compatible with SpectralLibraryMatch                             peak assignments and reference spectra. (Optional)
var_opt_fields <- c("none") # array[character] | set of optional fields to be included. Use 'none' only to override defaults. (Optional)
var_opt_fields_features <- c("none") # array[character] |  (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetCompounds(var_project_id, ms_data_search_prepared = var_ms_data_search_prepared, opt_fields = var_opt_fields, opt_fields_features = var_opt_fields_featuresdata_file = "result.txt")
result <- api_instance$compounds_api$GetCompounds(var_project_id, ms_data_search_prepared = var_ms_data_search_prepared, opt_fields = var_opt_fields, opt_fields_features = var_opt_fields_features)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to read from. | 
 **ms_data_search_prepared** | **character**| Returns all fragment spectra in a preprocessed form as used for fast                             Cosine/Modified Cosine computation. Gives you spectra compatible with SpectralLibraryMatch                             peak assignments and reference spectra. | [optional] [default to FALSE]
 **opt_fields** | Enum [none, consensusAnnotations, consensusAnnotationsDeNovo, customAnnotations, tags] | set of optional fields to be included. Use &#39;none&#39; only to override defaults. | [optional] [default to [&quot;none&quot;]]
 **opt_fields_features** | Enum [none, msData, topAnnotationsSummary, topAnnotations, topAnnotationsDeNovo, computedTools, qualities, tags] |  | [optional] [default to [&quot;none&quot;]]

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

# **GetCompoundsByGroupExperimental**
> PagedModelCompound GetCompoundsByGroupExperimental(project_id, group_name, page = 0, size = 20, sort = var.sort, ms_data_as_cosine_query = FALSE, opt_fields = ["none"], opt_fields_features = ["none"])

[EXPERIMENTAL] Get compounds (group of ion identities) by tag group

[EXPERIMENTAL] Get compounds (group of ion identities) by tag group.  <p>  [EXPERIMENTAL] This endpoint is experimental and not part of the stable API specification. This endpoint can change at any time, even in minor updates.

### Example
```R
library(RSirius)

# [EXPERIMENTAL] Get compounds (group of ion identities) by tag group
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to delete from.
var_group_name <- "group_name_example" # character | tag group name.
var_page <- 0 # integer | Zero-based page index (0..N) (Optional)
var_size <- 20 # integer | The size of the page to be returned (Optional)
var_sort <- c("inner_example") # array[character] | Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported. (Optional)
var_ms_data_as_cosine_query <- FALSE # character | Returns all fragment spectra in a preprocessed form as used for fast                             Cosine/Modified Cosine computation. Gives you spectra compatible with SpectralLibraryMatch                             peak assignments and reference spectra. (Optional)
var_opt_fields <- c("none") # array[character] | set of optional fields to be included. Use 'none' only to override defaults. (Optional)
var_opt_fields_features <- c("none") # array[character] |  (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetCompoundsByGroupExperimental(var_project_id, var_group_name, page = var_page, size = var_size, sort = var_sort, ms_data_as_cosine_query = var_ms_data_as_cosine_query, opt_fields = var_opt_fields, opt_fields_features = var_opt_fields_featuresdata_file = "result.txt")
result <- api_instance$compounds_api$GetCompoundsByGroupExperimental(var_project_id, var_group_name, page = var_page, size = var_size, sort = var_sort, ms_data_as_cosine_query = var_ms_data_as_cosine_query, opt_fields = var_opt_fields, opt_fields_features = var_opt_fields_features)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to delete from. | 
 **group_name** | **character**| tag group name. | 
 **page** | **integer**| Zero-based page index (0..N) | [optional] [default to 0]
 **size** | **integer**| The size of the page to be returned | [optional] [default to 20]
 **sort** | list( **character** )| Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] 
 **ms_data_as_cosine_query** | **character**| Returns all fragment spectra in a preprocessed form as used for fast                             Cosine/Modified Cosine computation. Gives you spectra compatible with SpectralLibraryMatch                             peak assignments and reference spectra. | [optional] [default to FALSE]
 **opt_fields** | Enum [none, consensusAnnotations, consensusAnnotationsDeNovo, customAnnotations, tags] | set of optional fields to be included. Use &#39;none&#39; only to override defaults. | [optional] [default to [&quot;none&quot;]]
 **opt_fields_features** | Enum [none, msData, topAnnotationsSummary, topAnnotations, topAnnotationsDeNovo, computedTools, qualities, tags] |  | [optional] [default to [&quot;none&quot;]]

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
| **200** | tagged compounds (group of ion identities) |  -  |

# **GetCompoundsPageExperimental**
> PagedModelCompound GetCompoundsPageExperimental(project_id, search_query = var.search_query, page = 0, size = 20, sort = var.sort, ms_data_search_prepared = FALSE, opt_fields = ["none"], opt_fields_features = ["none"])

[EXPERIMENTAL] Page of available compounds (group of ion identities) in the given project-space

[EXPERIMENTAL] Page of available compounds (group of ion identities) in the given project-space.   <h2>Supported filter syntax</h2>   <p>The filter string must contain one or more clauses. A clause is prefíxed  by a field name.  </p>  <p>  Currently the only searchable fields are names of tags (<code>tagName</code>) followed by a clause that is valued for the value type of the tag (See TagDefinition).  Tag name based field need to be prefixed with the namespace <code>tags.</code>.  Possible value types of tags are <strong>bool</strong>, <strong>integer</strong>, <strong>real</strong>, <strong>text</strong>, <strong>date</strong>, or <strong>time</strong> - tag value   <p>The format of the <strong>date</strong> type is <code>yyyy-MM-dd</code> and of the <strong>time</strong> type is <code>HH\\:mm\\:ss</code>.</p>   <p>A clause may be:</p>  <ul>      <li>a <strong>term</strong>: field name followed by a colon and the search term, e.g. <code>tags.MyTagA:sample</code></li>      <li>a <strong>phrase</strong>: field name followed by a colon and the search phrase in doublequotes, e.g. <code>tags.MyTagA:&quot;Some Text&quot;</code></li>      <li>a <strong>regular expression</strong>: field name followed by a colon and the regex in slashes, e.g. <code>tags.MyTagA:/[mb]oat/</code></li>      <li>a <strong>comparison</strong>: field name followed by a comparison operator and a value, e.g. <code>tags.MyTagB&lt;3</code></li>      <li>a <strong>range</strong>: field name followed by a colon and an open (indiced by <code>[ </code> and <code>] </code>) or (semi-)closed range (indiced by <code>{</code> and <code>}</code>), e.g. <code>tags.MyTagB:[* TO 3] </code></li>  </ul>   <p>Clauses may be <strong>grouped</strong> with brackets <code>( </code> and <code>) </code> and / or <strong>joined</strong> with <code>AND</code> or <code>OR </code> (or <code>&amp;&amp; </code> and <code>|| </code>)</p>   <h3>Example</h3>   <p>The syntax allows to build complex filter queries such as:</p>   <p><code>tags.city:&quot;new york&quot; AND tags.ATextTag:/[mb]oat/ AND tags.count:[1 TO *] OR tags.realNumberTag&lt;=3.2 OR tags.MyDateTag:2024-01-01 OR tags.MyDateTag:[2023-10-01 TO 2023-12-24] OR tags.MyDateTag&lt;2022-01-01 OR tags.time:12\\:00\\:00 OR tags.time:[12\\:00\\:00 TO 14\\:00\\:00] OR tags.time&lt;10\\:00\\:00 </code></p>  <p>  [EXPERIMENTAL] This endpoint is experimental and not part of the stable API specification. This endpoint can change at any time, even in minor updates.

### Example
```R
library(RSirius)

# [EXPERIMENTAL] Page of available compounds (group of ion identities) in the given project-space
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to read from.
var_search_query <- "search_query_example" # character | search query in lucene syntax. (Optional)
var_page <- 0 # integer | Zero-based page index (0..N) (Optional)
var_size <- 20 # integer | The size of the page to be returned (Optional)
var_sort <- c("inner_example") # array[character] | Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported. (Optional)
var_ms_data_search_prepared <- FALSE # character | Returns all fragment spectra in a preprocessed form as used for fast                             Cosine/Modified Cosine computation. Gives you spectra compatible with SpectralLibraryMatch                             peak assignments and reference spectra. (Optional)
var_opt_fields <- c("none") # array[character] | set of optional fields to be included. Use 'none' only to override defaults. (Optional)
var_opt_fields_features <- c("none") # array[character] |  (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetCompoundsPageExperimental(var_project_id, search_query = var_search_query, page = var_page, size = var_size, sort = var_sort, ms_data_search_prepared = var_ms_data_search_prepared, opt_fields = var_opt_fields, opt_fields_features = var_opt_fields_featuresdata_file = "result.txt")
result <- api_instance$compounds_api$GetCompoundsPageExperimental(var_project_id, search_query = var_search_query, page = var_page, size = var_size, sort = var_sort, ms_data_search_prepared = var_ms_data_search_prepared, opt_fields = var_opt_fields, opt_fields_features = var_opt_fields_features)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to read from. | 
 **search_query** | **character**| search query in lucene syntax. | [optional] 
 **page** | **integer**| Zero-based page index (0..N) | [optional] [default to 0]
 **size** | **integer**| The size of the page to be returned | [optional] [default to 20]
 **sort** | list( **character** )| Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] 
 **ms_data_search_prepared** | **character**| Returns all fragment spectra in a preprocessed form as used for fast                             Cosine/Modified Cosine computation. Gives you spectra compatible with SpectralLibraryMatch                             peak assignments and reference spectra. | [optional] [default to FALSE]
 **opt_fields** | Enum [none, consensusAnnotations, consensusAnnotationsDeNovo, customAnnotations, tags] | set of optional fields to be included. Use &#39;none&#39; only to override defaults. | [optional] [default to [&quot;none&quot;]]
 **opt_fields_features** | Enum [none, msData, topAnnotationsSummary, topAnnotations, topAnnotationsDeNovo, computedTools, qualities, tags] |  | [optional] [default to [&quot;none&quot;]]

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
| **200** | tagged compounds (group of ion identities) |  -  |

# **GetTagsForCompoundExperimental**
> array[Tag] GetTagsForCompoundExperimental(project_id, object_id)

[EXPERIMENTAL] Get all tags associated with this Compound

[EXPERIMENTAL] Get all tags associated with this Compound

### Example
```R
library(RSirius)

# [EXPERIMENTAL] Get all tags associated with this Compound
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to get from.
var_object_id <- "object_id_example" # character | CompoundId to get tags for.

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetTagsForCompoundExperimental(var_project_id, var_object_iddata_file = "result.txt")
result <- api_instance$compounds_api$GetTagsForCompoundExperimental(var_project_id, var_object_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to get from. | 
 **object_id** | **character**| CompoundId to get tags for. | 

### Return type

[**array[Tag]**](Tag.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | the tags of the requested Compound |  -  |

# **RemoveTagFromCompoundExperimental**
> RemoveTagFromCompoundExperimental(project_id, compound_id, tag_name)

[EXPERIMENTAL] Delete tag with the given name from the compound (group of ion identities) with the specified ID in the specified project-space

[EXPERIMENTAL] Delete tag with the given name from the compound (group of ion identities) with the specified ID in the specified project-space.  <p>  [EXPERIMENTAL] This endpoint is experimental and not part of the stable API specification. This endpoint can change at any time, even in minor updates.

### Example
```R
library(RSirius)

# [EXPERIMENTAL] Delete tag with the given name from the compound (group of ion identities) with the specified ID in the specified project-space
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to delete from.
var_compound_id <- "compound_id_example" # character | compound (group of ion identities) to delete tag from.
var_tag_name <- "tag_name_example" # character | name of the tag to delete.

api_instance <- rsirius_api$new()
api_instance$compounds_api$RemoveTagFromCompoundExperimental(var_project_id, var_compound_id, var_tag_name)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to delete from. | 
 **compound_id** | **character**| compound (group of ion identities) to delete tag from. | 
 **tag_name** | **character**| name of the tag to delete. | 

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

