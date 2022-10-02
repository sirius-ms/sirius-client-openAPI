# swagger_client.ProjectSpaceControllerApi

All URIs are relative to *//localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_project_space_using_get**](ProjectSpaceControllerApi.md#get_project_space_using_get) | **GET** /api/projects/{name} | getProjectSpace
[**get_project_spaces_using_get**](ProjectSpaceControllerApi.md#get_project_spaces_using_get) | **GET** /api/projects | getProjectSpaces
[**open_project_space_using_post**](ProjectSpaceControllerApi.md#open_project_space_using_post) | **POST** /api/projects/new | openProjectSpace
[**open_project_space_using_put**](ProjectSpaceControllerApi.md#open_project_space_using_put) | **PUT** /api/projects/{name} | openProjectSpace

# **get_project_space_using_get**
> ProjectSpaceId get_project_space_using_get(name)

getProjectSpace

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.ProjectSpaceControllerApi()
name = 'name_example' # str | name

try:
    # getProjectSpace
    api_response = api_instance.get_project_space_using_get(name)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ProjectSpaceControllerApi->get_project_space_using_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**| name | 

### Return type

[**ProjectSpaceId**](ProjectSpaceId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_project_spaces_using_get**
> list[ProjectSpaceId] get_project_spaces_using_get()

getProjectSpaces

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.ProjectSpaceControllerApi()

try:
    # getProjectSpaces
    api_response = api_instance.get_project_spaces_using_get()
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ProjectSpaceControllerApi->get_project_spaces_using_get: %s\n" % e)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**list[ProjectSpaceId]**](ProjectSpaceId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **open_project_space_using_post**
> ProjectSpaceId open_project_space_using_post(path)

openProjectSpace

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.ProjectSpaceControllerApi()
path = 'path_example' # str | path

try:
    # openProjectSpace
    api_response = api_instance.open_project_space_using_post(path)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ProjectSpaceControllerApi->open_project_space_using_post: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **str**| path | 

### Return type

[**ProjectSpaceId**](ProjectSpaceId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **open_project_space_using_put**
> ProjectSpaceId open_project_space_using_put(name, path)

openProjectSpace

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.ProjectSpaceControllerApi()
name = 'name_example' # str | name
path = 'path_example' # str | path

try:
    # openProjectSpace
    api_response = api_instance.open_project_space_using_put(name, path)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ProjectSpaceControllerApi->open_project_space_using_put: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**| name | 
 **path** | **str**| path | 

### Return type

[**ProjectSpaceId**](ProjectSpaceId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

