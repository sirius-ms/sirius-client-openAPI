# RunsApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetRun**](RunsApi.md#GetRun) | **GET** /api/projects/{projectId}/runs/{runId} | Get run with the given identifier from the specified project-space.
[**GetRunsPage**](RunsApi.md#GetRunsPage) | **GET** /api/projects/{projectId}/runs/page | Get runs in the given project-space
[**GetRunsSearchableFields**](RunsApi.md#GetRunsSearchableFields) | **GET** /api/projects/{projectId}/runs/searchable-fields | Get all fields that can be used in the searchQuery parameter of run endpoints


# **GetRun**
> Run GetRun(project_id, run_id, opt_fields = [])

Get run with the given identifier from the specified project-space.

Get run with the given identifier from the specified project-space.

### Example
```R
library(RSirius)

# Get run with the given identifier from the specified project-space.
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to read from.
var_run_id <- "run_id_example" # character | identifier of run to access.
var_opt_fields <- c(RunOptField$new()) # array[RunOptField] | set of optional fields to be included. Use 'none' only to override defaults. (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetRun(var_project_id, var_run_id, opt_fields = var_opt_fieldsdata_file = "result.txt")
result <- api_instance$runs_api$GetRun(var_project_id, var_run_id, opt_fields = var_opt_fields)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to read from. | 
 **run_id** | **character**| identifier of run to access. | 
 **opt_fields** | list( [**RunOptField**](RunOptField.md) )| set of optional fields to be included. Use &#39;none&#39; only to override defaults. | [optional] [default to []]

### Return type

[**Run**](Run.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Run with tags (if specified). |  -  |
| **500** | Unexpected server-side error. The problem detail carries the reason. |  -  |
| **404** | The referenced object does not exist in this SIRIUS instance or project. |  -  |
| **400** | The request body or a parameter is malformed or violates a constraint. |  -  |

# **GetRunsPage**
> PagedModelRun GetRunsPage(project_id, search_query = var.search_query, page = 0, size = 20, sort = var.sort, opt_fields = [])

Get runs in the given project-space

Get runs in the given project-space.   <h2>Supported filter syntax</h2>   <p>The filter string must contain one or more clauses. A clause is prefixed  by a field name.  </p>   Searchable fields are the indexed properties of the run (e.g. <code>name</code>, <code>source</code>,  <code>chromatography</code>, <code>ionization</code>) and project tags prefixed with the namespace  <code>tags.</code> (e.g. <code>tags.MyTag</code>).  Use the <code>searchable-fields</code> endpoint (getRunsSearchableFields) to list all fields that can be  searched, including their value type, whether they support word based (full text) search, and whether  results can be sorted by them.  Possible value types are <strong>text</strong>, <strong>integer</strong>, <strong>double</strong>,  <strong>boolean</strong>, <strong>date</strong>, or <strong>time</strong>.   <p>The format of the <strong>date</strong> type is <code>yyyy-MM-dd</code> and of the <strong>time</strong> type is <code>HH\\:mm\\:ss</code>.</p>   <p>A clause may be:</p>  <ul>      <li>a <strong>term</strong>: field name followed by a colon and the search term, e.g. <code>chromatography:LC</code></li>      <li>a <strong>phrase</strong>: field name followed by a colon and the search phrase in doublequotes, e.g. <code>name:&quot;Blank Sample 25&quot;</code></li>      <li>a <strong>regular expression</strong>: field name followed by a colon and the regex in slashes, e.g. <code>tags.MyTagA:/[mb]oat/</code></li>      <li>a <strong>comparison</strong>: field name followed by a comparison operator and a value, e.g. <code>tags.MyTagB&lt;3</code></li>      <li>a <strong>range</strong>: field name followed by a colon and an open (indiced by <code>[ </code> and <code>] </code>) or (semi-)closed range (indiced by <code>{</code> and <code>}</code>), e.g. <code>tags.MyTagB:[* TO 3] </code></li>  </ul>   <p>Clauses may be <strong>grouped</strong> with brackets <code>( </code> and <code>) </code> and / or <strong>joined</strong> with <code>AND</code> or <code>OR </code> (or <code>&amp;&amp; </code> and <code>|| </code>)</p>   <h3>Example</h3>   <p>The syntax allows to build complex filter queries such as:</p>   <p><code>name:&quot;Blank&quot; AND chromatography:LC AND tags.city:&quot;new york&quot; OR tags.MyDateTag:[2023-10-01 TO 2023-12-24] OR tags.time&lt;10\\:00\\:00 </code></p>

### Example
```R
library(RSirius)

# Get runs in the given project-space
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project space to get runs from.
var_search_query <- "search_query_example" # character | Optional search query in lucene syntax. Omit this parameter to page over all runs. (Optional)
var_page <- 0 # integer | Zero-based page index (0..N) (Optional)
var_size <- 20 # integer | The size of the page to be returned (Optional)
var_sort <- c("inner_example") # array[character] | Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported. (Optional)
var_opt_fields <- c(RunOptField$new()) # array[RunOptField] | set of optional fields to be included. Use 'none' only to override defaults. (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetRunsPage(var_project_id, search_query = var_search_query, page = var_page, size = var_size, sort = var_sort, opt_fields = var_opt_fieldsdata_file = "result.txt")
result <- api_instance$runs_api$GetRunsPage(var_project_id, search_query = var_search_query, page = var_page, size = var_size, sort = var_sort, opt_fields = var_opt_fields)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project space to get runs from. | 
 **search_query** | **character**| Optional search query in lucene syntax. Omit this parameter to page over all runs. | [optional] 
 **page** | **integer**| Zero-based page index (0..N) | [optional] [default to 0]
 **size** | **integer**| The size of the page to be returned | [optional] [default to 20]
 **sort** | list( **character** )| Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] 
 **opt_fields** | list( [**RunOptField**](RunOptField.md) )| set of optional fields to be included. Use &#39;none&#39; only to override defaults. | [optional] [default to []]

### Return type

[**PagedModelRun**](PagedModelRun.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | tagged runs |  -  |
| **500** | Unexpected server-side error. The problem detail carries the reason. |  -  |
| **404** | The referenced object does not exist in this SIRIUS instance or project. |  -  |
| **400** | The request body or a parameter is malformed or violates a constraint. |  -  |

# **GetRunsSearchableFields**
> array[SearchableField] GetRunsSearchableFields(project_id)

Get all fields that can be used in the searchQuery parameter of run endpoints

Get all fields that can be used in the searchQuery parameter of run endpoints.  <p>  Use this to build valid lucene queries: the field type determines which clauses are supported  (e.g. range queries for numeric fields, word based search for full-text fields). Includes the  dynamic tag fields (<code>tags.&lt;tagName&gt;</code>) of this project. An empty list means there are no  searchable fields.

### Example
```R
library(RSirius)

# Get all fields that can be used in the searchQuery parameter of run endpoints
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project space to read the searchable run fields from.

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetRunsSearchableFields(var_project_iddata_file = "result.txt")
result <- api_instance$runs_api$GetRunsSearchableFields(var_project_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project space to read the searchable run fields from. | 

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
| **200** | fields usable in searchQuery parameters of run endpoints. |  -  |
| **500** | Unexpected server-side error. The problem detail carries the reason. |  -  |
| **404** | The referenced object does not exist in this SIRIUS instance or project. |  -  |
| **400** | The request body or a parameter is malformed or violates a constraint. |  -  |

