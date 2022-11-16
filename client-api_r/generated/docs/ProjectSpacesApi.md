# ProjectSpacesApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CloseProjectSpace**](ProjectSpacesApi.md#CloseProjectSpace) | **DELETE** /api/projects/{projectId} | Close project-space and remove it from application.
[**CreateProjectSpace**](ProjectSpacesApi.md#CreateProjectSpace) | **POST** /api/projects/{projectId} | Create and open a new project-space at given location and make it accessible via the given projectId.
[**GetProjectSpace**](ProjectSpacesApi.md#GetProjectSpace) | **GET** /api/projects/{projectId} | Get project space info by its projectId.
[**GetProjectSpaces**](ProjectSpacesApi.md#GetProjectSpaces) | **GET** /api/projects | List all opened project spaces.
[**OpenProjectSpace**](ProjectSpacesApi.md#OpenProjectSpace) | **PUT** /api/projects/{projectId} | Open an existing project-space and make it accessible via the given projectId.


# **CloseProjectSpace**
> CloseProjectSpace(project_id)

Close project-space and remove it from application.

Close project-space and remove it from application. Project-space will NOT be deleted from disk.

### Example
```R
library(Rsirius)

# Close project-space and remove it from application.
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | unique name/identifier of the  project-space to be closed.

api_instance <- ProjectSpacesApi$new()
api_instance$CloseProjectSpace(var_project_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| unique name/identifier of the  project-space to be closed. | 

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

# **CreateProjectSpace**
> ProjectSpaceId CreateProjectSpace(project_id, path_to_project, path_to_source_project = var.path_to_source_project, await_import = TRUE)

Create and open a new project-space at given location and make it accessible via the given projectId.

Create and open a new project-space at given location and make it accessible via the given projectId.

### Example
```R
library(Rsirius)

# Create and open a new project-space at given location and make it accessible via the given projectId.
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | unique name/identifier that shall be used to access the newly created project-space.
var_path_to_project <- "path_to_project_example" # character | 
var_path_to_source_project <- "path_to_source_project_example" # character |  (Optional)
var_await_import <- TRUE # character |  (Optional)

api_instance <- ProjectSpacesApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateProjectSpace(var_project_id, var_path_to_project, path_to_source_project = var_path_to_source_project, await_import = var_await_importdata_file = "result.txt")
result <- api_instance$CreateProjectSpace(var_project_id, var_path_to_project, path_to_source_project = var_path_to_source_project, await_import = var_await_import)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| unique name/identifier that shall be used to access the newly created project-space. | 
 **path_to_project** | **character**|  | 
 **path_to_source_project** | **character**|  | [optional] 
 **await_import** | **character**|  | [optional] [default to TRUE]

### Return type

[**ProjectSpaceId**](ProjectSpaceId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

# **GetProjectSpace**
> ProjectSpaceId GetProjectSpace(project_id)

Get project space info by its projectId.

Get project space info by its projectId.

### Example
```R
library(Rsirius)

# Get project space info by its projectId.
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | unique name/identifier tof the project-space to be accessed.

api_instance <- ProjectSpacesApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetProjectSpace(var_project_iddata_file = "result.txt")
result <- api_instance$GetProjectSpace(var_project_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| unique name/identifier tof the project-space to be accessed. | 

### Return type

[**ProjectSpaceId**](ProjectSpaceId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

# **GetProjectSpaces**
> array[ProjectSpaceId] GetProjectSpaces()

List all opened project spaces.

List all opened project spaces.

### Example
```R
library(Rsirius)

# List all opened project spaces.
#

api_instance <- ProjectSpacesApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetProjectSpaces(data_file = "result.txt")
result <- api_instance$GetProjectSpaces()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[ProjectSpaceId]**](ProjectSpaceId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

# **OpenProjectSpace**
> ProjectSpaceId OpenProjectSpace(project_id, path_to_project)

Open an existing project-space and make it accessible via the given projectId.

Open an existing project-space and make it accessible via the given projectId.

### Example
```R
library(Rsirius)

# Open an existing project-space and make it accessible via the given projectId.
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | unique name/identifier that shall be used to access the opened project-space.
var_path_to_project <- "path_to_project_example" # character | 

api_instance <- ProjectSpacesApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$OpenProjectSpace(var_project_id, var_path_to_projectdata_file = "result.txt")
result <- api_instance$OpenProjectSpace(var_project_id, var_path_to_project)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| unique name/identifier that shall be used to access the opened project-space. | 
 **path_to_project** | **character**|  | 

### Return type

[**ProjectSpaceId**](ProjectSpaceId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

