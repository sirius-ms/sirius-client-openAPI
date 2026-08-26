# CompoundsApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AddCompounds**](CompoundsApi.md#AddCompounds) | **POST** /api/projects/{projectId}/compounds | Import compounds and their contained features.
[**DeleteCompound**](CompoundsApi.md#DeleteCompound) | **DELETE** /api/projects/{projectId}/compounds/{compoundId} | Delete compound (group of ion identities) with the given identifier (and the included features) from the  specified project-space.
[**GetCompound**](CompoundsApi.md#GetCompound) | **GET** /api/projects/{projectId}/compounds/{compoundId} | Get compound (group of ion identities) with the given identifier from the specified project-space.
[**GetCompoundQuantTable**](CompoundsApi.md#GetCompoundQuantTable) | **GET** /api/projects/{projectId}/compounds/quant-table | Returns the full quantification table of compounds
[**GetCompounds**](CompoundsApi.md#GetCompounds) | **GET** /api/projects/{projectId}/compounds | [DEPRECATED] List of all available compounds (group of ion identities) in the given project-space
[**GetCompoundsPage**](CompoundsApi.md#GetCompoundsPage) | **GET** /api/projects/{projectId}/compounds/page | Page of available compounds (group of ion identities) in the given project-space
[**GetCompoundsSearchableFields**](CompoundsApi.md#GetCompoundsSearchableFields) | **GET** /api/projects/{projectId}/compounds/searchable-fields | Get all fields that can be used in the searchQuery parameter of compound endpoints


# **AddCompounds**
> array[Compound] AddCompounds(project_id, compound_import, profile = var.profile, opt_fields = ["none"], opt_fields_features = ["none"])

Import compounds and their contained features.

Import compounds and their contained features. Compounds and features must not exist in the project.  Otherwise, they will exist twice.

### Example
```R
library(RSirius)

# Import compounds and their contained features.
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
 - **Accept**: application/json, application/problem+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | the Compounds that have been imported with specified optional fields |  -  |
| **500** | Unexpected server-side error. The problem detail carries the reason. |  -  |
| **404** | The referenced object does not exist in this SIRIUS instance or project. |  -  |
| **400** | The request body or a parameter is malformed or violates a constraint. |  -  |

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
| **500** | Unexpected server-side error. The problem detail carries the reason. |  -  |
| **404** | The referenced object does not exist in this SIRIUS instance or project. |  -  |
| **400** | The request body or a parameter is malformed or violates a constraint. |  -  |

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
 - **Accept**: application/json, application/problem+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Compounds with additional optional fields (if specified). |  -  |
| **500** | Unexpected server-side error. The problem detail carries the reason. |  -  |
| **404** | The referenced object does not exist in this SIRIUS instance or project. |  -  |
| **400** | The request body or a parameter is malformed or violates a constraint. |  -  |

# **GetCompoundQuantTable**
> QuantTable GetCompoundQuantTable(project_id, search_query = var.search_query, type = "APEX_INTENSITY", opt_fields = ["none"])

Returns the full quantification table of compounds

Returns the full quantification table of compounds.  <p>  The quantification table contains the quantities of the compounds within all runs they are contained in.  Rows refer to compounds, columns to runs, both given as ids and names.  <p>  Compounds are not indexed yet, so the optional search query may only refer to the compound id, e.g.  <code>compoundId:1 OR compoundId:2</code> or <code>NOT compoundId:3</code>. Such a query is answered with the same  semantics the search index would apply. Any query referring to other fields is rejected. Omit the query to  quantify all compounds.

### Example
```R
library(RSirius)

# Returns the full quantification table of compounds
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to read from.
var_search_query <- "search_query_example" # character | Optional query in lucene syntax selecting compounds by id. Omit this parameter to quantify all compounds. (Optional)
var_type <- "APEX_INTENSITY" # character | quantification type. (Optional)
var_opt_fields <- c(QuantTableOptField$new()) # array[QuantTableOptField] |  (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetCompoundQuantTable(var_project_id, search_query = var_search_query, type = var_type, opt_fields = var_opt_fieldsdata_file = "result.txt")
result <- api_instance$compounds_api$GetCompoundQuantTable(var_project_id, search_query = var_search_query, type = var_type, opt_fields = var_opt_fields)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to read from. | 
 **search_query** | **character**| Optional query in lucene syntax selecting compounds by id. Omit this parameter to quantify all compounds. | [optional] 
 **type** | Enum [APEX_INTENSITY, AREA_UNDER_CURVE] | quantification type. | [optional] [default to &quot;APEX_INTENSITY&quot;]
 **opt_fields** | list( [**QuantTableOptField**](QuantTableOptField.md) )|  | [optional] [default to [&quot;none&quot;]]

### Return type

[**QuantTable**](QuantTable.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Quant table of the compounds of this project |  -  |
| **500** | Unexpected server-side error. The problem detail carries the reason. |  -  |
| **404** | The referenced object does not exist in this SIRIUS instance or project. |  -  |
| **400** | The request body or a parameter is malformed or violates a constraint. |  -  |

# **GetCompounds**
> array[Compound] GetCompounds(project_id, ms_data_search_prepared = FALSE, opt_fields = ["none"], opt_fields_features = ["none"])

[DEPRECATED] List of all available compounds (group of ion identities) in the given project-space

[DEPRECATED] List of all available compounds (group of ion identities) in the given project-space.  <p>  [DEPRECATED] Use /compounds/page instead. Loading all compounds at once does not scale for large projects.  This endpoint will be removed in the next major version of this API.

### Example
```R
library(RSirius)

# [DEPRECATED] List of all available compounds (group of ion identities) in the given project-space
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
 - **Accept**: application/json, application/problem+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Compounds with additional optional fields (if specified). |  -  |
| **500** | Unexpected server-side error. The problem detail carries the reason. |  -  |
| **404** | The referenced object does not exist in this SIRIUS instance or project. |  -  |
| **400** | The request body or a parameter is malformed or violates a constraint. |  -  |

# **GetCompoundsPage**
> PagedModelCompound GetCompoundsPage(project_id, search_query = var.search_query, page = 0, size = 20, sort = var.sort, ms_data_search_prepared = FALSE, opt_fields = ["none"], opt_fields_features = ["none"])

Page of available compounds (group of ion identities) in the given project-space

Page of available compounds (group of ion identities) in the given project-space.   <h2>Supported filter syntax</h2>   <p>The filter string must contain one or more clauses. A clause is prefixed  by a field name.  </p>  <p>  Use the <code>searchable-fields</code> endpoint (getCompoundsSearchableFields) to list the fields that can be  searched - since compound-level indexing is not implemented yet, it currently returns an empty list  (nothing searchable). The syntax below describes how queries will work once compound search is supported;  tag based fields are prefixed with the namespace <code>tags.</code>.  Possible value types are <strong>text</strong>, <strong>integer</strong>, <strong>double</strong>,  <strong>boolean</strong>, <strong>date</strong>, or <strong>time</strong>.   <p>The format of the <strong>date</strong> type is <code>yyyy-MM-dd</code> and of the <strong>time</strong> type is <code>HH\\:mm\\:ss</code>.</p>   <p>A clause may be:</p>  <ul>      <li>a <strong>term</strong>: field name followed by a colon and the search term, e.g. <code>tags.MyTagA:sample</code></li>      <li>a <strong>phrase</strong>: field name followed by a colon and the search phrase in doublequotes, e.g. <code>tags.MyTagA:&quot;Some Text&quot;</code></li>      <li>a <strong>regular expression</strong>: field name followed by a colon and the regex in slashes, e.g. <code>tags.MyTagA:/[mb]oat/</code></li>      <li>a <strong>comparison</strong>: field name followed by a comparison operator and a value, e.g. <code>tags.MyTagB&lt;3</code></li>      <li>a <strong>range</strong>: field name followed by a colon and an open (indiced by <code>[ </code> and <code>] </code>) or (semi-)closed range (indiced by <code>{</code> and <code>}</code>), e.g. <code>tags.MyTagB:[* TO 3] </code></li>  </ul>   <p>Clauses may be <strong>grouped</strong> with brackets <code>( </code> and <code>) </code> and / or <strong>joined</strong> with <code>AND</code> or <code>OR </code> (or <code>&amp;&amp; </code> and <code>|| </code>)</p>   <h3>Example</h3>   <p>The syntax allows to build complex filter queries such as:</p>   <p><code>tags.city:&quot;new york&quot; AND tags.ATextTag:/[mb]oat/ AND tags.count:[1 TO *] OR tags.realNumberTag&lt;=3.2 OR tags.MyDateTag:2024-01-01 OR tags.MyDateTag:[2023-10-01 TO 2023-12-24] OR tags.MyDateTag&lt;2022-01-01 OR tags.time:12\\:00\\:00 OR tags.time:[12\\:00\\:00 TO 14\\:00\\:00] OR tags.time&lt;10\\:00\\:00 </code></p>  <p>  <strong>Note:</strong> compound-level indexing is not implemented yet, so this endpoint always reads from the  project database. Passing a non-empty <code>searchQuery</code> is therefore not supported and responds with  405 METHOD_NOT_ALLOWED. Omit the parameter to page over all compounds.

### Example
```R
library(RSirius)

# Page of available compounds (group of ion identities) in the given project-space
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to read from.
var_search_query <- "search_query_example" # character | Optional search query in lucene syntax. Not yet supported for compounds; a non-empty                      query responds with 405 METHOD_NOT_ALLOWED. Omit this parameter to page over all compounds. (Optional)
var_page <- 0 # integer | Zero-based page index (0..N) (Optional)
var_size <- 20 # integer | The size of the page to be returned (Optional)
var_sort <- c("inner_example") # array[character] | Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported. (Optional)
var_ms_data_search_prepared <- FALSE # character | Returns all fragment spectra in a preprocessed form as used for fast                             Cosine/Modified Cosine computation. Gives you spectra compatible with SpectralLibraryMatch                             peak assignments and reference spectra. (Optional)
var_opt_fields <- c("none") # array[character] | set of optional fields to be included. Use 'none' only to override defaults. (Optional)
var_opt_fields_features <- c("none") # array[character] |  (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetCompoundsPage(var_project_id, search_query = var_search_query, page = var_page, size = var_size, sort = var_sort, ms_data_search_prepared = var_ms_data_search_prepared, opt_fields = var_opt_fields, opt_fields_features = var_opt_fields_featuresdata_file = "result.txt")
result <- api_instance$compounds_api$GetCompoundsPage(var_project_id, search_query = var_search_query, page = var_page, size = var_size, sort = var_sort, ms_data_search_prepared = var_ms_data_search_prepared, opt_fields = var_opt_fields, opt_fields_features = var_opt_fields_features)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to read from. | 
 **search_query** | **character**| Optional search query in lucene syntax. Not yet supported for compounds; a non-empty                      query responds with 405 METHOD_NOT_ALLOWED. Omit this parameter to page over all compounds. | [optional] 
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
 - **Accept**: application/json, application/problem+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | tagged compounds (group of ion identities) |  -  |
| **500** | Unexpected server-side error. The problem detail carries the reason. |  -  |
| **404** | The referenced object does not exist in this SIRIUS instance or project. |  -  |
| **400** | The request body or a parameter is malformed or violates a constraint. |  -  |

# **GetCompoundsSearchableFields**
> array[SearchableField] GetCompoundsSearchableFields(project_id)

Get all fields that can be used in the searchQuery parameter of compound endpoints

Get all fields that can be used in the searchQuery parameter of compound endpoints.  <p>  An empty list means there are no searchable fields. Since compound-level indexing is not implemented yet,  this currently always returns an empty list; it will list the searchable compound fields once compound  search is supported.

### Example
```R
library(RSirius)

# Get all fields that can be used in the searchQuery parameter of compound endpoints
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project space to read the searchable compound fields from.

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetCompoundsSearchableFields(var_project_iddata_file = "result.txt")
result <- api_instance$compounds_api$GetCompoundsSearchableFields(var_project_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project space to read the searchable compound fields from. | 

### Return type

[**array[SearchableField]**](SearchableField.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | fields usable in searchQuery parameters of compound endpoints. |  -  |
| **500** | Unexpected server-side error. The problem detail carries the reason. |  -  |
| **404** | The referenced object does not exist in this SIRIUS instance or project. |  -  |
| **400** | The request body or a parameter is malformed or violates a constraint. |  -  |

