# PySirius.RunsApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_run**](RunsApi.md#get_run) | **GET** /api/projects/{projectId}/runs/{runId} | Get run with the given identifier from the specified project-space.
[**get_runs_page**](RunsApi.md#get_runs_page) | **GET** /api/projects/{projectId}/runs/page | Get runs in the given project-space
[**get_runs_searchable_fields**](RunsApi.md#get_runs_searchable_fields) | **GET** /api/projects/{projectId}/runs/searchable-fields | Get all fields that can be used in the searchQuery parameter of run endpoints


# **get_run**
> Run get_run(project_id, run_id, opt_fields=opt_fields)

Get run with the given identifier from the specified project-space.

Get run with the given identifier from the specified project-space.

### Example


```python
import PySirius
from PySirius.models.run import Run
from PySirius.models.run_opt_field import RunOptField
from PySirius.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8080"
)


# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = PySirius.RunsApi(api_client)
    project_id = 'project_id_example' # str | project-space to read from.
    run_id = 'run_id_example' # str | identifier of run to access.
    opt_fields = [] # List[RunOptField] | set of optional fields to be included. Use 'none' only to override defaults. (optional) (default to [])

    try:
        # Get run with the given identifier from the specified project-space.
        api_response = api_instance.get_run(project_id, run_id, opt_fields=opt_fields)
        print("The response of RunsApi->get_run:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling RunsApi->get_run: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to read from. | 
 **run_id** | **str**| identifier of run to access. | 
 **opt_fields** | [**List[RunOptField]**](RunOptField.md)| set of optional fields to be included. Use &#39;none&#39; only to override defaults. | [optional] [default to []]

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
**200** | Run with tags (if specified). |  -  |
**500** | Unexpected server-side error. The problem detail carries the reason. |  -  |
**404** | The referenced object does not exist in this SIRIUS instance or project. |  -  |
**400** | The request body or a parameter is malformed or violates a constraint. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_runs_page**
> PagedModelRun get_runs_page(project_id, search_query=search_query, page=page, size=size, sort=sort, opt_fields=opt_fields)

Get runs in the given project-space

Get runs in the given project-space.

 <h2>Supported filter syntax</h2>

 <p>The filter string must contain one or more clauses. A clause is prefixed
 by a field name.
 </p>

 Searchable fields are the indexed properties of the run (e.g. <code>name</code>, <code>source</code>,
 <code>chromatography</code>, <code>ionization</code>) and project tags prefixed with the namespace
 <code>tags.</code> (e.g. <code>tags.MyTag</code>).
 Use the <code>searchable-fields</code> endpoint (getRunsSearchableFields) to list all fields that can be
 searched, including their value type, whether they support word based (full text) search, and whether
 results can be sorted by them.
 Possible value types are <strong>text</strong>, <strong>integer</strong>, <strong>double</strong>,
 <strong>boolean</strong>, <strong>date</strong>, or <strong>time</strong>.

 <p>The format of the <strong>date</strong> type is <code>yyyy-MM-dd</code> and of the <strong>time</strong> type is <code>HH\:mm\:ss</code>.</p>

 <p>A clause may be:</p>
 <ul>
     <li>a <strong>term</strong>: field name followed by a colon and the search term, e.g. <code>chromatography:LC</code></li>
     <li>a <strong>phrase</strong>: field name followed by a colon and the search phrase in doublequotes, e.g. <code>name:&quot;Blank Sample 25&quot;</code></li>
     <li>a <strong>regular expression</strong>: field name followed by a colon and the regex in slashes, e.g. <code>tags.MyTagA:/[mb]oat/</code></li>
     <li>a <strong>comparison</strong>: field name followed by a comparison operator and a value, e.g. <code>tags.MyTagB&lt;3</code></li>
     <li>a <strong>range</strong>: field name followed by a colon and an open (indiced by <code>[ </code> and <code>] </code>) or (semi-)closed range (indiced by <code>{</code> and <code>}</code>), e.g. <code>tags.MyTagB:[* TO 3] </code></li>
 </ul>

 <p>Clauses may be <strong>grouped</strong> with brackets <code>( </code> and <code>) </code> and / or <strong>joined</strong> with <code>AND</code> or <code>OR </code> (or <code>&amp;&amp; </code> and <code>|| </code>)</p>

 <h3>Example</h3>

 <p>The syntax allows to build complex filter queries such as:</p>

 <p><code>name:&quot;Blank&quot; AND chromatography:LC AND tags.city:&quot;new york&quot; OR tags.MyDateTag:[2023-10-01 TO 2023-12-24] OR tags.time&lt;10\:00\:00 </code></p>

### Example


```python
import PySirius
from PySirius.models.paged_model_run import PagedModelRun
from PySirius.models.run_opt_field import RunOptField
from PySirius.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8080"
)


# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = PySirius.RunsApi(api_client)
    project_id = 'project_id_example' # str | project space to get runs from.
    search_query = 'search_query_example' # str | Optional search query in lucene syntax. Omit this parameter to page over all runs. (optional)
    page = 0 # int | Zero-based page index (0..N) (optional) (default to 0)
    size = 20 # int | The size of the page to be returned (optional) (default to 20)
    sort = ['sort_example'] # List[str] | Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported. (optional)
    opt_fields = [] # List[RunOptField] | set of optional fields to be included. Use 'none' only to override defaults. (optional) (default to [])

    try:
        # Get runs in the given project-space
        api_response = api_instance.get_runs_page(project_id, search_query=search_query, page=page, size=size, sort=sort, opt_fields=opt_fields)
        print("The response of RunsApi->get_runs_page:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling RunsApi->get_runs_page: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project space to get runs from. | 
 **search_query** | **str**| Optional search query in lucene syntax. Omit this parameter to page over all runs. | [optional] 
 **page** | **int**| Zero-based page index (0..N) | [optional] [default to 0]
 **size** | **int**| The size of the page to be returned | [optional] [default to 20]
 **sort** | [**List[str]**](str.md)| Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] 
 **opt_fields** | [**List[RunOptField]**](RunOptField.md)| set of optional fields to be included. Use &#39;none&#39; only to override defaults. | [optional] [default to []]

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
**200** | tagged runs |  -  |
**500** | Unexpected server-side error. The problem detail carries the reason. |  -  |
**404** | The referenced object does not exist in this SIRIUS instance or project. |  -  |
**400** | The request body or a parameter is malformed or violates a constraint. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_runs_searchable_fields**
> List[SearchableField] get_runs_searchable_fields(project_id)

Get all fields that can be used in the searchQuery parameter of run endpoints

Get all fields that can be used in the searchQuery parameter of run endpoints.
 <p>
 Use this to build valid lucene queries: the field type determines which clauses are supported
 (e.g. range queries for numeric fields, word based search for full-text fields). Includes the
 dynamic tag fields (<code>tags.&lt;tagName&gt;</code>) of this project. An empty list means there are no
 searchable fields.

### Example


```python
import PySirius
from PySirius.models.searchable_field import SearchableField
from PySirius.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8080"
)


# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = PySirius.RunsApi(api_client)
    project_id = 'project_id_example' # str | project space to read the searchable run fields from.

    try:
        # Get all fields that can be used in the searchQuery parameter of run endpoints
        api_response = api_instance.get_runs_searchable_fields(project_id)
        print("The response of RunsApi->get_runs_searchable_fields:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling RunsApi->get_runs_searchable_fields: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project space to read the searchable run fields from. | 

### Return type

[**List[SearchableField]**](SearchableField.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | fields usable in searchQuery parameters of run endpoints. |  -  |
**500** | Unexpected server-side error. The problem detail carries the reason. |  -  |
**404** | The referenced object does not exist in this SIRIUS instance or project. |  -  |
**400** | The request body or a parameter is malformed or violates a constraint. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

