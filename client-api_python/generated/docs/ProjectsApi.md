# PySirius.ProjectsApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**close_project_space**](ProjectsApi.md#close_project_space) | **DELETE** /api/projects/{projectId} | Close project-space and remove it from application.
[**copy_project_space**](ProjectsApi.md#copy_project_space) | **PUT** /api/projects/{projectId}/copy | Move an existing (opened) project-space to another location.
[**create_project_space**](ProjectsApi.md#create_project_space) | **POST** /api/projects/{projectId} | Create and open a new project-space at given location and make it accessible via the given projectId.
[**get_canopus_classy_fire_data**](ProjectsApi.md#get_canopus_classy_fire_data) | **GET** /api/projects/{projectId}/cf-data | Get CANOPUS prediction vector definition for ClassyFire classes
[**get_canopus_npc_data**](ProjectsApi.md#get_canopus_npc_data) | **GET** /api/projects/{projectId}/npc-data | Get CANOPUS prediction vector definition for NPC classes
[**get_finger_id_data**](ProjectsApi.md#get_finger_id_data) | **GET** /api/projects/{projectId}/fingerid-data | Get CSI:FingerID fingerprint (prediction vector) definition
[**get_project_space**](ProjectsApi.md#get_project_space) | **GET** /api/projects/{projectId} | Get project space info by its projectId.
[**get_project_spaces**](ProjectsApi.md#get_project_spaces) | **GET** /api/projects | List opened project spaces.
[**open_project_space**](ProjectsApi.md#open_project_space) | **PUT** /api/projects/{projectId} | Open an existing project-space and make it accessible via the given projectId.


# **close_project_space**
> close_project_space(project_id)

Close project-space and remove it from application.

Close project-space and remove it from application. Project will NOT be deleted from disk.   ATTENTION: This will cancel and remove all jobs running on this Project before closing it.  If there are many jobs, this might take some time.

### Example


```python
import PySirius
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
    api_instance = PySirius.ProjectsApi(api_client)
    project_id = 'project_id_example' # str | unique name/identifier of the  project-space to be closed.

    try:
        # Close project-space and remove it from application.
        api_instance.close_project_space(project_id)
    except Exception as e:
        print("Exception when calling ProjectsApi->close_project_space: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| unique name/identifier of the  project-space to be closed. | 

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

# **copy_project_space**
> ProjectInfo copy_project_space(project_id, path_to_copied_project, copy_project_id=copy_project_id, opt_fields=opt_fields)

Move an existing (opened) project-space to another location.

Move an existing (opened) project-space to another location.

### Example


```python
import PySirius
from PySirius.models.project_info import ProjectInfo
from PySirius.models.project_info_opt_field import ProjectInfoOptField
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
    api_instance = PySirius.ProjectsApi(api_client)
    project_id = 'project_id_example' # str | unique name/identifier of the project-space that shall be copied.
    path_to_copied_project = 'path_to_copied_project_example' # str | target location where the source project will be copied to.
    copy_project_id = 'copy_project_id_example' # str | optional id/mame of the newly created project (copy). If given the project will be opened. (optional)
    opt_fields = [] # List[ProjectInfoOptField] |  (optional) (default to [])

    try:
        # Move an existing (opened) project-space to another location.
        api_response = api_instance.copy_project_space(project_id, path_to_copied_project, copy_project_id=copy_project_id, opt_fields=opt_fields)
        print("The response of ProjectsApi->copy_project_space:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ProjectsApi->copy_project_space: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| unique name/identifier of the project-space that shall be copied. | 
 **path_to_copied_project** | **str**| target location where the source project will be copied to. | 
 **copy_project_id** | **str**| optional id/mame of the newly created project (copy). If given the project will be opened. | [optional] 
 **opt_fields** | [**List[ProjectInfoOptField]**](ProjectInfoOptField.md)|  | [optional] [default to []]

### Return type

[**ProjectInfo**](ProjectInfo.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | ProjectInfo of the newly created project if opened (copyProjectId !&#x3D; null) or the project info of  the source project otherwise |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_project_space**
> ProjectInfo create_project_space(project_id, path_to_project, path_to_source_project=path_to_source_project, await_import=await_import)

Create and open a new project-space at given location and make it accessible via the given projectId.

Create and open a new project-space at given location and make it accessible via the given projectId.

### Example


```python
import PySirius
from PySirius.models.project_info import ProjectInfo
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
    api_instance = PySirius.ProjectsApi(api_client)
    project_id = 'project_id_example' # str | unique name/identifier that shall be used to access the newly created project-space. Must consist only of [a-zA-Z0-9_-].
    path_to_project = 'path_to_project_example' # str | 
    path_to_source_project = 'path_to_source_project_example' # str |  (optional)
    await_import = True # bool |  (optional) (default to True)

    try:
        # Create and open a new project-space at given location and make it accessible via the given projectId.
        api_response = api_instance.create_project_space(project_id, path_to_project, path_to_source_project=path_to_source_project, await_import=await_import)
        print("The response of ProjectsApi->create_project_space:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ProjectsApi->create_project_space: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| unique name/identifier that shall be used to access the newly created project-space. Must consist only of [a-zA-Z0-9_-]. | 
 **path_to_project** | **str**|  | 
 **path_to_source_project** | **str**|  | [optional] 
 **await_import** | **bool**|  | [optional] [default to True]

### Return type

[**ProjectInfo**](ProjectInfo.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_canopus_classy_fire_data**
> str get_canopus_classy_fire_data(project_id, charge)

Get CANOPUS prediction vector definition for ClassyFire classes

### Example


```python
import PySirius
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
    api_instance = PySirius.ProjectsApi(api_client)
    project_id = 'project_id_example' # str | 
    charge = 56 # int | 

    try:
        # Get CANOPUS prediction vector definition for ClassyFire classes
        api_response = api_instance.get_canopus_classy_fire_data(project_id, charge)
        print("The response of ProjectsApi->get_canopus_classy_fire_data:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ProjectsApi->get_canopus_classy_fire_data: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**|  | 
 **charge** | **int**|  | 

### Return type

**str**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/csv

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_canopus_npc_data**
> str get_canopus_npc_data(project_id, charge)

Get CANOPUS prediction vector definition for NPC classes

### Example


```python
import PySirius
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
    api_instance = PySirius.ProjectsApi(api_client)
    project_id = 'project_id_example' # str | 
    charge = 56 # int | 

    try:
        # Get CANOPUS prediction vector definition for NPC classes
        api_response = api_instance.get_canopus_npc_data(project_id, charge)
        print("The response of ProjectsApi->get_canopus_npc_data:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ProjectsApi->get_canopus_npc_data: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**|  | 
 **charge** | **int**|  | 

### Return type

**str**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/csv

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_finger_id_data**
> str get_finger_id_data(project_id, charge)

Get CSI:FingerID fingerprint (prediction vector) definition

### Example


```python
import PySirius
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
    api_instance = PySirius.ProjectsApi(api_client)
    project_id = 'project_id_example' # str | 
    charge = 56 # int | 

    try:
        # Get CSI:FingerID fingerprint (prediction vector) definition
        api_response = api_instance.get_finger_id_data(project_id, charge)
        print("The response of ProjectsApi->get_finger_id_data:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ProjectsApi->get_finger_id_data: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**|  | 
 **charge** | **int**|  | 

### Return type

**str**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/csv

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_project_space**
> ProjectInfo get_project_space(project_id, opt_fields=opt_fields)

Get project space info by its projectId.

Get project space info by its projectId.

### Example


```python
import PySirius
from PySirius.models.project_info import ProjectInfo
from PySirius.models.project_info_opt_field import ProjectInfoOptField
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
    api_instance = PySirius.ProjectsApi(api_client)
    project_id = 'project_id_example' # str | unique name/identifier tof the project-space to be accessed.
    opt_fields = [] # List[ProjectInfoOptField] |  (optional) (default to [])

    try:
        # Get project space info by its projectId.
        api_response = api_instance.get_project_space(project_id, opt_fields=opt_fields)
        print("The response of ProjectsApi->get_project_space:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ProjectsApi->get_project_space: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| unique name/identifier tof the project-space to be accessed. | 
 **opt_fields** | [**List[ProjectInfoOptField]**](ProjectInfoOptField.md)|  | [optional] [default to []]

### Return type

[**ProjectInfo**](ProjectInfo.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_project_spaces**
> PageProjectInfo get_project_spaces(page=page, size=size, sort=sort, search_query=search_query, query_syntax=query_syntax)

List opened project spaces.

List opened project spaces.

### Example


```python
import PySirius
from PySirius.models.page_project_info import PageProjectInfo
from PySirius.models.search_query_type import SearchQueryType
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
    api_instance = PySirius.ProjectsApi(api_client)
    page = 0 # int | Zero-based page index (0..N) (optional) (default to 0)
    size = 20 # int | The size of the page to be returned (optional) (default to 20)
    sort = ['sort_example'] # List[str] | Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported. (optional)
    search_query = 'search_query_example' # str | optional search query in specified format (optional)
    query_syntax = PySirius.SearchQueryType() # SearchQueryType | query syntax used fpr searchQuery (optional)

    try:
        # List opened project spaces.
        api_response = api_instance.get_project_spaces(page=page, size=size, sort=sort, search_query=search_query, query_syntax=query_syntax)
        print("The response of ProjectsApi->get_project_spaces:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ProjectsApi->get_project_spaces: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Zero-based page index (0..N) | [optional] [default to 0]
 **size** | **int**| The size of the page to be returned | [optional] [default to 20]
 **sort** | [**List[str]**](str.md)| Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] 
 **search_query** | **str**| optional search query in specified format | [optional] 
 **query_syntax** | [**SearchQueryType**](.md)| query syntax used fpr searchQuery | [optional] 

### Return type

[**PageProjectInfo**](PageProjectInfo.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **open_project_space**
> ProjectInfo open_project_space(project_id, path_to_project, opt_fields=opt_fields)

Open an existing project-space and make it accessible via the given projectId.

Open an existing project-space and make it accessible via the given projectId.

### Example


```python
import PySirius
from PySirius.models.project_info import ProjectInfo
from PySirius.models.project_info_opt_field import ProjectInfoOptField
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
    api_instance = PySirius.ProjectsApi(api_client)
    project_id = 'project_id_example' # str | unique name/identifier that shall be used to access the opened project-space. Must consist only of [a-zA-Z0-9_-].
    path_to_project = 'path_to_project_example' # str | 
    opt_fields = [] # List[ProjectInfoOptField] |  (optional) (default to [])

    try:
        # Open an existing project-space and make it accessible via the given projectId.
        api_response = api_instance.open_project_space(project_id, path_to_project, opt_fields=opt_fields)
        print("The response of ProjectsApi->open_project_space:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ProjectsApi->open_project_space: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| unique name/identifier that shall be used to access the opened project-space. Must consist only of [a-zA-Z0-9_-]. | 
 **path_to_project** | **str**|  | 
 **opt_fields** | [**List[ProjectInfoOptField]**](ProjectInfoOptField.md)|  | [optional] [default to []]

### Return type

[**ProjectInfo**](ProjectInfo.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
