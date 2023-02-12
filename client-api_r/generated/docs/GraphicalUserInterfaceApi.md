# GraphicalUserInterfaceApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ApplyToGui**](GraphicalUserInterfaceApi.md#ApplyToGui) | **PATCH** /api/projects/{projectId}/gui | Apply given changes to the running GUI instance.
[**CloseGui**](GraphicalUserInterfaceApi.md#CloseGui) | **DELETE** /api/projects/{projectId}/gui | Close GUI instance of given project-space if available.
[**OpenGui**](GraphicalUserInterfaceApi.md#OpenGui) | **POST** /api/projects/{projectId}/gui | Open GUI instance on specified project-space and bring the GUI window to foreground.


# **ApplyToGui**
> ApplyToGui(project_id, gui_parameters)

Apply given changes to the running GUI instance.

Apply given changes to the running GUI instance.

### Example
```R
library(Rsirius)

# Apply given changes to the running GUI instance.
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | of project-space the GUI instance is connected to.
var_gui_parameters <- GuiParameters$new("FORMULAS", "cid_example", "fid_example", "structureCandidateInChIKey_example", "bringToFront_example") # GuiParameters | parameters that should be applied.

api_instance <- rsirius_api$new()
api_instance$graphical_user_interface_api$ApplyToGui(var_project_id, var_gui_parameters)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| of project-space the GUI instance is connected to. | 
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
| **200** | OK |  -  |

# **CloseGui**
> CloseGui(project_id)

Close GUI instance of given project-space if available.

Close GUI instance of given project-space if available.

### Example
```R
library(Rsirius)

# Close GUI instance of given project-space if available.
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | if project-space the GUI instance is connected to.

api_instance <- rsirius_api$new()
api_instance$graphical_user_interface_api$CloseGui(var_project_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| if project-space the GUI instance is connected to. | 

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
| **200** | OK |  -  |

# **OpenGui**
> OpenGui(project_id, read_only = TRUE)

Open GUI instance on specified project-space and bring the GUI window to foreground.

Open GUI instance on specified project-space and bring the GUI window to foreground.

### Example
```R
library(Rsirius)

# Open GUI instance on specified project-space and bring the GUI window to foreground.
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | of project-space the GUI instance will connect to.
var_read_only <- TRUE # character | open in read-only mode. (Optional)

api_instance <- rsirius_api$new()
api_instance$graphical_user_interface_api$OpenGui(var_project_id, read_only = var_read_only)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| of project-space the GUI instance will connect to. | 
 **read_only** | **character**| open in read-only mode. | [optional] [default to TRUE]

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
| **200** | OK |  -  |

