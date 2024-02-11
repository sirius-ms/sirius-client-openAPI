# PySirius.ProjectSpacesApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**close_project_space**](ProjectSpacesApi.md#close_project_space) | **DELETE** /api/projects/{projectId} | Close project-space and remove it from application.
[**create_project_space**](ProjectSpacesApi.md#create_project_space) | **POST** /api/projects/{projectId} | Create and open a new project-space at given location and make it accessible via the given projectId.
[**get_project_space**](ProjectSpacesApi.md#get_project_space) | **GET** /api/projects/{projectId} | Get project space info by its projectId.
[**get_project_spaces**](ProjectSpacesApi.md#get_project_spaces) | **GET** /api/projects | List all opened project spaces.
[**open_project_space**](ProjectSpacesApi.md#open_project_space) | **PUT** /api/projects/{projectId} | Open an existing project-space and make it accessible via the given projectId.

# **close_project_space**
> close_project_space(project_id)

Close project-space and remove it from application.

Close project-space and remove it from application. Project-space will NOT be deleted from disk.

### Example
```python
from __future__ import print_function
import time
import PySirius
from PySirius.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = PySirius.ProjectSpacesApi()
project_id = 'project_id_example' # str | unique name/identifier of the  project-space to be closed.

try:
    # Close project-space and remove it from application.
    api_instance.close_project_space(project_id)
except ApiException as e:
    print("Exception when calling ProjectSpacesApi->close_project_space: %s\n" % e)
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_project_space**
> ProjectSpaceId create_project_space(project_id, path_to_project, path_to_source_project=path_to_source_project, await_import=await_import)

Create and open a new project-space at given location and make it accessible via the given projectId.

Create and open a new project-space at given location and make it accessible via the given projectId.

### Example
```python
from __future__ import print_function
import time
import PySirius
from PySirius.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = PySirius.ProjectSpacesApi()
project_id = 'project_id_example' # str | unique name/identifier that shall be used to access the newly created project-space.
path_to_project = 'path_to_project_example' # str | 
path_to_source_project = 'path_to_source_project_example' # str |  (optional)
await_import = true # bool |  (optional)

try:
    # Create and open a new project-space at given location and make it accessible via the given projectId.
    api_response = api_instance.create_project_space(project_id, path_to_project, path_to_source_project=path_to_source_project, await_import=await_import)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ProjectSpacesApi->create_project_space: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| unique name/identifier that shall be used to access the newly created project-space. | 
 **path_to_project** | **str**|  | 
 **path_to_source_project** | **str**|  | [optional] 
 **await_import** | **bool**|  | [optional] 

### Return type

[**ProjectSpaceId**](ProjectSpaceId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_project_space**
> ProjectSpaceId get_project_space(project_id)

Get project space info by its projectId.

Get project space info by its projectId.

### Example
```python
from __future__ import print_function
import time
import PySirius
from PySirius.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = PySirius.ProjectSpacesApi()
project_id = 'project_id_example' # str | unique name/identifier tof the project-space to be accessed.

try:
    # Get project space info by its projectId.
    api_response = api_instance.get_project_space(project_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ProjectSpacesApi->get_project_space: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| unique name/identifier tof the project-space to be accessed. | 

### Return type

[**ProjectSpaceId**](ProjectSpaceId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_project_spaces**
> list[ProjectSpaceId] get_project_spaces()

List all opened project spaces.

List all opened project spaces.

### Example
```python
from __future__ import print_function
import time
import PySirius
from PySirius.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = PySirius.ProjectSpacesApi()

try:
    # List all opened project spaces.
    api_response = api_instance.get_project_spaces()
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ProjectSpacesApi->get_project_spaces: %s\n" % e)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**list[ProjectSpaceId]**](ProjectSpaceId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **open_project_space**
> ProjectSpaceId open_project_space(project_id, path_to_project)

Open an existing project-space and make it accessible via the given projectId.

Open an existing project-space and make it accessible via the given projectId.

### Example
```python
from __future__ import print_function
import time
import PySirius
from PySirius.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = PySirius.ProjectSpacesApi()
project_id = 'project_id_example' # str | unique name/identifier that shall be used to access the opened project-space.
path_to_project = 'path_to_project_example' # str | 

try:
    # Open an existing project-space and make it accessible via the given projectId.
    api_response = api_instance.open_project_space(project_id, path_to_project)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ProjectSpacesApi->open_project_space: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| unique name/identifier that shall be used to access the opened project-space. | 
 **path_to_project** | **str**|  | 

### Return type

[**ProjectSpaceId**](ProjectSpaceId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

