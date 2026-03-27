# GuiApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CloseGui**](GuiApi.md#CloseGui) | **DELETE** /api/projects/{projectId}/gui | Close GUI instance of given project-space if available.
[**GetGuis**](GuiApi.md#GetGuis) | **GET** /api/guis | Get list of currently running gui windows, managed by this SIRIUS instance.
[**OpenGui**](GuiApi.md#OpenGui) | **POST** /api/projects/{projectId}/gui | Open GUI instance on specified project-space and bring the GUI window to foreground.


# **CloseGui**
> character CloseGui(project_id, close_project = var.close_project)

Close GUI instance of given project-space if available.

Close GUI instance of given project-space if available.

### Example
```R
library(RSirius)

# Close GUI instance of given project-space if available.
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | if project-space the GUI instance is connected to.
var_close_project <- "close_project_example" # character |  (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CloseGui(var_project_id, close_project = var_close_projectdata_file = "result.txt")
result <- api_instance$gui_api$CloseGui(var_project_id, close_project = var_close_project)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| if project-space the GUI instance is connected to. | 
 **close_project** | **character**|  | [optional] 

### Return type

**character**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

# **GetGuis**
> array[GuiInfo] GetGuis()

Get list of currently running gui windows, managed by this SIRIUS instance.

Get list of currently running gui windows, managed by this SIRIUS instance.  Note this will not show any Clients that are connected from a separate process!

### Example
```R
library(RSirius)

# Get list of currently running gui windows, managed by this SIRIUS instance.
#

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetGuis(data_file = "result.txt")
result <- api_instance$gui_api$GetGuis()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[GuiInfo]**](GuiInfo.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | List of GUI windows that are currently managed by this SIRIUS instance. |  -  |

# **OpenGui**
> OpenGui(project_id)

Open GUI instance on specified project-space and bring the GUI window to foreground.

Open GUI instance on specified project-space and bring the GUI window to foreground.

### Example
```R
library(RSirius)

# Open GUI instance on specified project-space and bring the GUI window to foreground.
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | of project-space the GUI instance will connect to.

api_instance <- rsirius_api$new()
api_instance$gui_api$OpenGui(var_project_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| of project-space the GUI instance will connect to. | 

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
| **201** | Created |  -  |

