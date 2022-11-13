<a name="__pageTop"></a>
# PySirius.apis.tags.project_spaces_api.ProjectSpacesApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**close_project_space**](#close_project_space) | **delete** /api/projects/{projectId} | Close project-space and remove it from application.
[**create_project_space**](#create_project_space) | **post** /api/projects/{projectId} | Create and open a new project-space at given location and make it accessible via the given projectId.
[**get_project_space**](#get_project_space) | **get** /api/projects/{projectId} | Get project space info by its projectId.
[**get_project_spaces**](#get_project_spaces) | **get** /api/projects | List all opened project spaces.
[**open_project_space**](#open_project_space) | **put** /api/projects/{projectId} | Open an existing project-space and make it accessible via the given projectId.

# **close_project_space**
<a name="close_project_space"></a>
> close_project_space(project_id)

Close project-space and remove it from application.

Close project-space and remove it from application. Project-space will NOT be deleted from disk.

### Example

```python
import PySirius
from PySirius.apis.tags import project_spaces_api
from pprint import pprint
# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8080"
)

# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = project_spaces_api.ProjectSpacesApi(api_client)

    # example passing only required values which don't have defaults set
    path_params = {
        'projectId': "projectId_example",
    }
    try:
        # Close project-space and remove it from application.
        api_response = api_instance.close_project_space(
            path_params=path_params,
        )
    except PySirius.ApiException as e:
        print("Exception when calling ProjectSpacesApi->close_project_space: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
path_params | RequestPathParams | |
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### path_params
#### RequestPathParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
projectId | ProjectIdSchema | | 

# ProjectIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#close_project_space.ApiResponseFor200) | OK

#### close_project_space.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **create_project_space**
<a name="create_project_space"></a>
> ProjectSpaceId create_project_space(project_idpath_to_project)

Create and open a new project-space at given location and make it accessible via the given projectId.

Create and open a new project-space at given location and make it accessible via the given projectId.

### Example

```python
import PySirius
from PySirius.apis.tags import project_spaces_api
from PySirius.model.project_space_id import ProjectSpaceId
from pprint import pprint
# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8080"
)

# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = project_spaces_api.ProjectSpacesApi(api_client)

    # example passing only required values which don't have defaults set
    path_params = {
        'projectId': "projectId_example",
    }
    query_params = {
        'pathToProject': "pathToProject_example",
    }
    try:
        # Create and open a new project-space at given location and make it accessible via the given projectId.
        api_response = api_instance.create_project_space(
            path_params=path_params,
            query_params=query_params,
        )
        pprint(api_response)
    except PySirius.ApiException as e:
        print("Exception when calling ProjectSpacesApi->create_project_space: %s\n" % e)

    # example passing only optional values
    path_params = {
        'projectId': "projectId_example",
    }
    query_params = {
        'pathToProject': "pathToProject_example",
        'pathToSourceProject': "pathToSourceProject_example",
        'awaitImport': True,
    }
    try:
        # Create and open a new project-space at given location and make it accessible via the given projectId.
        api_response = api_instance.create_project_space(
            path_params=path_params,
            query_params=query_params,
        )
        pprint(api_response)
    except PySirius.ApiException as e:
        print("Exception when calling ProjectSpacesApi->create_project_space: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
path_params | RequestPathParams | |
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
pathToProject | PathToProjectSchema | | 
pathToSourceProject | PathToSourceProjectSchema | | optional
awaitImport | AwaitImportSchema | | optional


# PathToProjectSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# PathToSourceProjectSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# AwaitImportSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
bool,  | BoolClass,  |  | if omitted the server will use the default value of True

### path_params
#### RequestPathParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
projectId | ProjectIdSchema | | 

# ProjectIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#create_project_space.ApiResponseFor200) | OK

#### create_project_space.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**ProjectSpaceId**](../../models/ProjectSpaceId.md) |  | 


### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **get_project_space**
<a name="get_project_space"></a>
> ProjectSpaceId get_project_space(project_id)

Get project space info by its projectId.

Get project space info by its projectId.

### Example

```python
import PySirius
from PySirius.apis.tags import project_spaces_api
from PySirius.model.project_space_id import ProjectSpaceId
from pprint import pprint
# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8080"
)

# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = project_spaces_api.ProjectSpacesApi(api_client)

    # example passing only required values which don't have defaults set
    path_params = {
        'projectId': "projectId_example",
    }
    try:
        # Get project space info by its projectId.
        api_response = api_instance.get_project_space(
            path_params=path_params,
        )
        pprint(api_response)
    except PySirius.ApiException as e:
        print("Exception when calling ProjectSpacesApi->get_project_space: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
path_params | RequestPathParams | |
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### path_params
#### RequestPathParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
projectId | ProjectIdSchema | | 

# ProjectIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#get_project_space.ApiResponseFor200) | OK

#### get_project_space.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**ProjectSpaceId**](../../models/ProjectSpaceId.md) |  | 


### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **get_project_spaces**
<a name="get_project_spaces"></a>
> [ProjectSpaceId] get_project_spaces()

List all opened project spaces.

List all opened project spaces.

### Example

```python
import PySirius
from PySirius.apis.tags import project_spaces_api
from PySirius.model.project_space_id import ProjectSpaceId
from pprint import pprint
# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8080"
)

# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = project_spaces_api.ProjectSpacesApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        # List all opened project spaces.
        api_response = api_instance.get_project_spaces()
        pprint(api_response)
    except PySirius.ApiException as e:
        print("Exception when calling ProjectSpacesApi->get_project_spaces: %s\n" % e)
```
### Parameters
This endpoint does not need any parameter.

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#get_project_spaces.ApiResponseFor200) | OK

#### get_project_spaces.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**ProjectSpaceId**]({{complexTypePrefix}}ProjectSpaceId.md) | [**ProjectSpaceId**]({{complexTypePrefix}}ProjectSpaceId.md) | [**ProjectSpaceId**]({{complexTypePrefix}}ProjectSpaceId.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **open_project_space**
<a name="open_project_space"></a>
> ProjectSpaceId open_project_space(project_idpath_to_project)

Open an existing project-space and make it accessible via the given projectId.

Open an existing project-space and make it accessible via the given projectId.

### Example

```python
import PySirius
from PySirius.apis.tags import project_spaces_api
from PySirius.model.project_space_id import ProjectSpaceId
from pprint import pprint
# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8080"
)

# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = project_spaces_api.ProjectSpacesApi(api_client)

    # example passing only required values which don't have defaults set
    path_params = {
        'projectId': "projectId_example",
    }
    query_params = {
        'pathToProject': "pathToProject_example",
    }
    try:
        # Open an existing project-space and make it accessible via the given projectId.
        api_response = api_instance.open_project_space(
            path_params=path_params,
            query_params=query_params,
        )
        pprint(api_response)
    except PySirius.ApiException as e:
        print("Exception when calling ProjectSpacesApi->open_project_space: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
path_params | RequestPathParams | |
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
pathToProject | PathToProjectSchema | | 


# PathToProjectSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### path_params
#### RequestPathParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
projectId | ProjectIdSchema | | 

# ProjectIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#open_project_space.ApiResponseFor200) | OK

#### open_project_space.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**ProjectSpaceId**](../../models/ProjectSpaceId.md) |  | 


### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

