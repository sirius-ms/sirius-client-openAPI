# PySirius.RunsApi

All URIs are relative to *http://localhost:8888*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_tags_to_run_experimental**](RunsApi.md#add_tags_to_run_experimental) | **PUT** /api/projects/{projectId}/runs/tags/{runId} | [EXPERIMENTAL] Add tags to a run in the project
[**add_tags_to_runs_experimental**](RunsApi.md#add_tags_to_runs_experimental) | **PUT** /api/projects/{projectId}/runs/tags | [EXPERIMENTAL] Add tags to a run in the project
[**get_run_experimental**](RunsApi.md#get_run_experimental) | **GET** /api/projects/{projectId}/runs/{runId} | [EXPERIMENTAL] Get run with the given identifier from the specified project-space
[**get_runs_by_group_experimental**](RunsApi.md#get_runs_by_group_experimental) | **GET** /api/projects/{projectId}/runs/grouped | [EXPERIMENTAL] Get runs by tag group
[**get_runs_page_experimental**](RunsApi.md#get_runs_page_experimental) | **GET** /api/projects/{projectId}/runs/page | [EXPERIMENTAL] Get runs in the given project-space
[**get_tags_for_run_experimental**](RunsApi.md#get_tags_for_run_experimental) | **GET** /api/projects/{projectId}/runs/tags/{objectId} | [EXPERIMENTAL] Get all tags associated with this Run
[**remove_tag_from_run_experimental**](RunsApi.md#remove_tag_from_run_experimental) | **DELETE** /api/projects/{projectId}/runs/tags/{runId}/{tagName} | [EXPERIMENTAL] Delete tag with the given name from the run with the specified ID in the specified project-space


# **add_tags_to_run_experimental**
> List[Tag] add_tags_to_run_experimental(project_id, run_id, tag)

[EXPERIMENTAL] Add tags to a run in the project

[EXPERIMENTAL] Add tags to a run in the project. Tags with the same name will be overwritten.
 <p>
 [EXPERIMENTAL] This endpoint is experimental and not part of the stable API specification. This endpoint can change at any time, even in minor updates.

### Example


```python
import PySirius
from PySirius.models.tag import Tag
from PySirius.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8888
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8888"
)


# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = PySirius.RunsApi(api_client)
    project_id = 'project_id_example' # str | project-space to add to.
    run_id = 'run_id_example' # str | run to add tags to.
    tag = [PySirius.Tag()] # List[Tag] | tags to add.

    try:
        # [EXPERIMENTAL] Add tags to a run in the project
        api_response = api_instance.add_tags_to_run_experimental(project_id, run_id, tag)
        print("The response of RunsApi->add_tags_to_run_experimental:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling RunsApi->add_tags_to_run_experimental: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to add to. | 
 **run_id** | **str**| run to add tags to. | 
 **tag** | [**List[Tag]**](Tag.md)| tags to add. | 

### Return type

[**List[Tag]**](Tag.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | the tags that have been added |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **add_tags_to_runs_experimental**
> add_tags_to_runs_experimental(project_id, tag_submission)

[EXPERIMENTAL] Add tags to a run in the project

[EXPERIMENTAL] Add tags to a run in the project. Tags with the same name will be overwritten.
 <p>
 [EXPERIMENTAL] This endpoint is experimental and not part of the stable API specification. This endpoint can change at any time, even in minor updates.

### Example


```python
import PySirius
from PySirius.models.tag_submission import TagSubmission
from PySirius.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8888
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8888"
)


# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = PySirius.RunsApi(api_client)
    project_id = 'project_id_example' # str | project-space to add to.
    tag_submission = [PySirius.TagSubmission()] # List[TagSubmission] | tags with the id of run they shall be added to.

    try:
        # [EXPERIMENTAL] Add tags to a run in the project
        api_instance.add_tags_to_runs_experimental(project_id, tag_submission)
    except Exception as e:
        print("Exception when calling RunsApi->add_tags_to_runs_experimental: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to add to. | 
 **tag_submission** | [**List[TagSubmission]**](TagSubmission.md)| tags with the id of run they shall be added to. | 

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
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_run_experimental**
> Run get_run_experimental(project_id, run_id, opt_fields=opt_fields)

[EXPERIMENTAL] Get run with the given identifier from the specified project-space

[EXPERIMENTAL] Get run with the given identifier from the specified project-space.
 <p>
 [EXPERIMENTAL] This endpoint is experimental and not part of the stable API specification. This endpoint can change at any time, even in minor updates.

### Example


```python
import PySirius
from PySirius.models.run import Run
from PySirius.models.run_opt_field import RunOptField
from PySirius.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8888
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8888"
)


# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = PySirius.RunsApi(api_client)
    project_id = 'project_id_example' # str | project-space to read from.
    run_id = 'run_id_example' # str | identifier of run to access.
    opt_fields = [] # List[RunOptField] | set of optional fields to be included. Use 'none' only to override defaults. (optional) (default to [])

    try:
        # [EXPERIMENTAL] Get run with the given identifier from the specified project-space
        api_response = api_instance.get_run_experimental(project_id, run_id, opt_fields=opt_fields)
        print("The response of RunsApi->get_run_experimental:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling RunsApi->get_run_experimental: %s\n" % e)
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
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Run with tags (if specified). |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_runs_by_group_experimental**
> PagedModelRun get_runs_by_group_experimental(project_id, group_name, page=page, size=size, sort=sort, opt_fields=opt_fields)

[EXPERIMENTAL] Get runs by tag group

[EXPERIMENTAL] Get runs by tag group.
 <p>
 [EXPERIMENTAL] This endpoint is experimental and not part of the stable API specification. This endpoint can change at any time, even in minor updates.

### Example


```python
import PySirius
from PySirius.models.paged_model_run import PagedModelRun
from PySirius.models.run_opt_field import RunOptField
from PySirius.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8888
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8888"
)


# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = PySirius.RunsApi(api_client)
    project_id = 'project_id_example' # str | project-space to delete from.
    group_name = 'group_name_example' # str | tag group name.
    page = 0 # int | Zero-based page index (0..N) (optional) (default to 0)
    size = 20 # int | The size of the page to be returned (optional) (default to 20)
    sort = ['sort_example'] # List[str] | Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported. (optional)
    opt_fields = ["none"] # List[RunOptField] | set of optional fields to be included. Use 'none' only to override defaults. (optional) (default to ["none"])

    try:
        # [EXPERIMENTAL] Get runs by tag group
        api_response = api_instance.get_runs_by_group_experimental(project_id, group_name, page=page, size=size, sort=sort, opt_fields=opt_fields)
        print("The response of RunsApi->get_runs_by_group_experimental:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling RunsApi->get_runs_by_group_experimental: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to delete from. | 
 **group_name** | **str**| tag group name. | 
 **page** | **int**| Zero-based page index (0..N) | [optional] [default to 0]
 **size** | **int**| The size of the page to be returned | [optional] [default to 20]
 **sort** | [**List[str]**](str.md)| Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] 
 **opt_fields** | [**List[RunOptField]**](RunOptField.md)| set of optional fields to be included. Use &#39;none&#39; only to override defaults. | [optional] [default to [&quot;none&quot;]]

### Return type

[**PagedModelRun**](PagedModelRun.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | tagged runs |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_runs_page_experimental**
> PagedModelRun get_runs_page_experimental(project_id, search_query=search_query, page=page, size=size, sort=sort, opt_fields=opt_fields)

[EXPERIMENTAL] Get runs in the given project-space

[EXPERIMENTAL] Get runs in the given project-space.

 <h2>Supported filter syntax</h2>

 <p>The filter string must contain one or more clauses. A clause is prefíxed
 by a field name.
 </p>

 Currently the only searchable fields are names of tags (<code>tagName</code>) followed by a clause that is valued for the value type of the tag (See TagDefinition).
 Tag name based field need to be prefixed with the namespace <code>tags.</code>.
 Possible value types of tags are <strong>bool</strong>, <strong>integer</strong>, <strong>real</strong>, <strong>text</strong>, <strong>date</strong>, or <strong>time</strong> - tag value

 <p>The format of the <strong>date</strong> type is <code>yyyy-MM-dd</code> and of the <strong>time</strong> type is <code>HH\:mm\:ss</code>.</p>

 <p>A clause may be:</p>
 <ul>
     <li>a <strong>term</strong>: field name followed by a colon and the search term, e.g. <code>tags.MyTagA:sample</code></li>
     <li>a <strong>phrase</strong>: field name followed by a colon and the search phrase in doublequotes, e.g. <code>tags.MyTagA:&quot;Some Text&quot;</code></li>
     <li>a <strong>regular expression</strong>: field name followed by a colon and the regex in slashes, e.g. <code>tags.MyTagA:/[mb]oat/</code></li>
     <li>a <strong>comparison</strong>: field name followed by a comparison operator and a value, e.g. <code>tags.MyTagB&lt;3</code></li>
     <li>a <strong>range</strong>: field name followed by a colon and an open (indiced by <code>[ </code> and <code>] </code>) or (semi-)closed range (indiced by <code>{</code> and <code>}</code>), e.g. <code>tags.MyTagB:[* TO 3] </code></li>
 </ul>

 <p>Clauses may be <strong>grouped</strong> with brackets <code>( </code> and <code>) </code> and / or <strong>joined</strong> with <code>AND</code> or <code>OR </code> (or <code>&amp;&amp; </code> and <code>|| </code>)</p>

 <h3>Example</h3>

 <p>The syntax allows to build complex filter queries such as:</p>

 <p><code>tags.city:&quot;new york&quot; AND tags.ATextTag:/[mb]oat/ AND tags.count:[1 TO *] OR tags.realNumberTag&lt;=3.2 OR tags.MyDateTag:2024-01-01 OR tags.MyDateTag:[2023-10-01 TO 2023-12-24] OR tags.MyDateTag&lt;2022-01-01 OR tags.time:12\:00\:00 OR tags.time:[12\:00\:00 TO 14\:00\:00] OR tags.time&lt;10\:00\:00 </code></p>

 [EXPERIMENTAL] This endpoint is experimental and not part of the stable API specification. This endpoint can change at any time, even in minor updates.

### Example


```python
import PySirius
from PySirius.models.paged_model_run import PagedModelRun
from PySirius.models.run_opt_field import RunOptField
from PySirius.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8888
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8888"
)


# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = PySirius.RunsApi(api_client)
    project_id = 'project_id_example' # str | project space to get runs from.
    search_query = 'search_query_example' # str | optional search query in lucene syntax. (optional)
    page = 0 # int | Zero-based page index (0..N) (optional) (default to 0)
    size = 20 # int | The size of the page to be returned (optional) (default to 20)
    sort = ['sort_example'] # List[str] | Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported. (optional)
    opt_fields = [] # List[RunOptField] | set of optional fields to be included. Use 'none' only to override defaults. (optional) (default to [])

    try:
        # [EXPERIMENTAL] Get runs in the given project-space
        api_response = api_instance.get_runs_page_experimental(project_id, search_query=search_query, page=page, size=size, sort=sort, opt_fields=opt_fields)
        print("The response of RunsApi->get_runs_page_experimental:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling RunsApi->get_runs_page_experimental: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project space to get runs from. | 
 **search_query** | **str**| optional search query in lucene syntax. | [optional] 
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
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | tagged runs |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_tags_for_run_experimental**
> List[Tag] get_tags_for_run_experimental(project_id, object_id)

[EXPERIMENTAL] Get all tags associated with this Run

[EXPERIMENTAL] Get all tags associated with this Run

### Example


```python
import PySirius
from PySirius.models.tag import Tag
from PySirius.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8888
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8888"
)


# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = PySirius.RunsApi(api_client)
    project_id = 'project_id_example' # str | project-space to get from.
    object_id = 'object_id_example' # str | RunId to get tags for.

    try:
        # [EXPERIMENTAL] Get all tags associated with this Run
        api_response = api_instance.get_tags_for_run_experimental(project_id, object_id)
        print("The response of RunsApi->get_tags_for_run_experimental:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling RunsApi->get_tags_for_run_experimental: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to get from. | 
 **object_id** | **str**| RunId to get tags for. | 

### Return type

[**List[Tag]**](Tag.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | the tags of the requested object |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **remove_tag_from_run_experimental**
> remove_tag_from_run_experimental(project_id, run_id, tag_name)

[EXPERIMENTAL] Delete tag with the given name from the run with the specified ID in the specified project-space

[EXPERIMENTAL] Delete tag with the given name from the run with the specified ID in the specified project-space.
 <p>
 [EXPERIMENTAL] This endpoint is experimental and not part of the stable API specification. This endpoint can change at any time, even in minor updates.

### Example


```python
import PySirius
from PySirius.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8888
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8888"
)


# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = PySirius.RunsApi(api_client)
    project_id = 'project_id_example' # str | project-space to delete from.
    run_id = 'run_id_example' # str | run to delete tag from.
    tag_name = 'tag_name_example' # str | name of the tag to delete.

    try:
        # [EXPERIMENTAL] Delete tag with the given name from the run with the specified ID in the specified project-space
        api_instance.remove_tag_from_run_experimental(project_id, run_id, tag_name)
    except Exception as e:
        print("Exception when calling RunsApi->remove_tag_from_run_experimental: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to delete from. | 
 **run_id** | **str**| run to delete tag from. | 
 **tag_name** | **str**| name of the tag to delete. | 

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
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

