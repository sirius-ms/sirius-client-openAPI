# swagger_client.GraphicalUserInterfaceApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apply_to_gui**](GraphicalUserInterfaceApi.md#apply_to_gui) | **PATCH** /api/projects/{projectId}/gui | Apply given changes to the running GUI instance.
[**close_gui**](GraphicalUserInterfaceApi.md#close_gui) | **DELETE** /api/projects/{projectId}/gui | Close GUI instance of given project-space if available.
[**open_gui**](GraphicalUserInterfaceApi.md#open_gui) | **POST** /api/projects/{projectId}/gui | Open GUI instance on specified project-space and bring the GUI window to foreground.

# **apply_to_gui**
> apply_to_gui(body, project_id)

Apply given changes to the running GUI instance.

Apply given changes to the running GUI instance.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.GraphicalUserInterfaceApi()
body = swagger_client.GuiParameters() # GuiParameters | parameters that should be applied.
project_id = 'project_id_example' # str | of project-space the GUI instance is connected to.

try:
    # Apply given changes to the running GUI instance.
    api_instance.apply_to_gui(body, project_id)
except ApiException as e:
    print("Exception when calling GraphicalUserInterfaceApi->apply_to_gui: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GuiParameters**](GuiParameters.md)| parameters that should be applied. | 
 **project_id** | **str**| of project-space the GUI instance is connected to. | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **close_gui**
> close_gui(project_id)

Close GUI instance of given project-space if available.

Close GUI instance of given project-space if available.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.GraphicalUserInterfaceApi()
project_id = 'project_id_example' # str | if project-space the GUI instance is connected to.

try:
    # Close GUI instance of given project-space if available.
    api_instance.close_gui(project_id)
except ApiException as e:
    print("Exception when calling GraphicalUserInterfaceApi->close_gui: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| if project-space the GUI instance is connected to. | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **open_gui**
> open_gui(project_id, read_only=read_only)

Open GUI instance on specified project-space and bring the GUI window to foreground.

Open GUI instance on specified project-space and bring the GUI window to foreground.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.GraphicalUserInterfaceApi()
project_id = 'project_id_example' # str | of project-space the GUI instance will connect to.
read_only = true # bool | open in read-only mode. (optional) (default to true)

try:
    # Open GUI instance on specified project-space and bring the GUI window to foreground.
    api_instance.open_gui(project_id, read_only=read_only)
except ApiException as e:
    print("Exception when calling GraphicalUserInterfaceApi->open_gui: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| of project-space the GUI instance will connect to. | 
 **read_only** | **bool**| open in read-only mode. | [optional] [default to true]

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

