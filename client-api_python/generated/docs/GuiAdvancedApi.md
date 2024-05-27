# PySirius.GuiAdvancedApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apply_to_gui**](GuiAdvancedApi.md#apply_to_gui) | **PATCH** /api/projects/{projectId}/gui | Apply given changes to the running GUI instance.
[**close_gui**](GuiAdvancedApi.md#close_gui) | **DELETE** /api/projects/{projectId}/gui | Close GUI instance of given project-space if available.
[**get_guis**](GuiAdvancedApi.md#get_guis) | **GET** /api/guis | Get list of currently running gui windows, managed by this SIRIUS instance.
[**open_gui**](GuiAdvancedApi.md#open_gui) | **POST** /api/projects/{projectId}/gui | Open GUI instance on specified project-space and bring the GUI window to foreground.


# **apply_to_gui**
> apply_to_gui(project_id, gui_parameters)

Apply given changes to the running GUI instance.

Apply given changes to the running GUI instance.

### Example


```python
import PySirius
from PySirius.models.gui_parameters import GuiParameters
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
    api_instance = PySirius.GuiAdvancedApi(api_client)
    project_id = 'project_id_example' # str | of project-space the GUI instance is connected to.
    gui_parameters = PySirius.GuiParameters() # GuiParameters | parameters that should be applied.

    try:
        # Apply given changes to the running GUI instance.
        api_instance.apply_to_gui(project_id, gui_parameters)
    except Exception as e:
        print("Exception when calling GuiAdvancedApi->apply_to_gui: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| of project-space the GUI instance is connected to. | 
 **gui_parameters** | [**GuiParameters**](GuiParameters.md)| parameters that should be applied. | 

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

# **close_gui**
> bool close_gui(project_id, close_project=close_project)

Close GUI instance of given project-space if available.

Close GUI instance of given project-space if available.

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
    api_instance = PySirius.GuiAdvancedApi(api_client)
    project_id = 'project_id_example' # str | if project-space the GUI instance is connected to.
    close_project = True # bool |  (optional)

    try:
        # Close GUI instance of given project-space if available.
        api_response = api_instance.close_gui(project_id, close_project=close_project)
        print("The response of GuiAdvancedApi->close_gui:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling GuiAdvancedApi->close_gui: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| if project-space the GUI instance is connected to. | 
 **close_project** | **bool**|  | [optional] 

### Return type

**bool**

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

# **get_guis**
> List[GuiInfo] get_guis()

Get list of currently running gui windows, managed by this SIRIUS instance.

Get list of currently running gui windows, managed by this SIRIUS instance.  Note this will not show any Clients that are connected from a separate process!

### Example


```python
import PySirius
from PySirius.models.gui_info import GuiInfo
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
    api_instance = PySirius.GuiAdvancedApi(api_client)

    try:
        # Get list of currently running gui windows, managed by this SIRIUS instance.
        api_response = api_instance.get_guis()
        print("The response of GuiAdvancedApi->get_guis:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling GuiAdvancedApi->get_guis: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**List[GuiInfo]**](GuiInfo.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | List of GUI windows that are currently managed by this SIRIUS instance. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **open_gui**
> open_gui(project_id, read_only=read_only, gui_parameters=gui_parameters)

Open GUI instance on specified project-space and bring the GUI window to foreground.

Open GUI instance on specified project-space and bring the GUI window to foreground.

### Example


```python
import PySirius
from PySirius.models.gui_parameters import GuiParameters
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
    api_instance = PySirius.GuiAdvancedApi(api_client)
    project_id = 'project_id_example' # str | of project-space the GUI instance will connect to.
    read_only = False # bool | open in read-only mode. (optional) (default to False)
    gui_parameters = PySirius.GuiParameters() # GuiParameters |  (optional)

    try:
        # Open GUI instance on specified project-space and bring the GUI window to foreground.
        api_instance.open_gui(project_id, read_only=read_only, gui_parameters=gui_parameters)
    except Exception as e:
        print("Exception when calling GuiAdvancedApi->open_gui: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| of project-space the GUI instance will connect to. | 
 **read_only** | **bool**| open in read-only mode. | [optional] [default to False]
 **gui_parameters** | [**GuiParameters**](GuiParameters.md)|  | [optional] 

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
**201** | Created |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

