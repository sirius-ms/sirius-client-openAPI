# ProjectsApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CloseProjectSpace**](ProjectsApi.md#CloseProjectSpace) | **DELETE** /api/projects/{projectId} | Close project-space and remove it from application.
[**CopyProjectSpace**](ProjectsApi.md#CopyProjectSpace) | **PUT** /api/projects/{projectId}/copy | Move an existing (opened) project-space to another location.
[**CreateProjectSpace**](ProjectsApi.md#CreateProjectSpace) | **POST** /api/projects/{projectId} | Create and open a new project-space at given location and make it accessible via the given projectId.
[**GetCanopusClassyFireData**](ProjectsApi.md#GetCanopusClassyFireData) | **GET** /api/projects/{projectId}/cf-data | Get CANOPUS prediction vector definition for ClassyFire classes
[**GetCanopusNpcData**](ProjectsApi.md#GetCanopusNpcData) | **GET** /api/projects/{projectId}/npc-data | Get CANOPUS prediction vector definition for NPC classes
[**GetFingerIdData**](ProjectsApi.md#GetFingerIdData) | **GET** /api/projects/{projectId}/fingerid-data | Get CSI:FingerID fingerprint (prediction vector) definition
[**GetProjectSpace**](ProjectsApi.md#GetProjectSpace) | **GET** /api/projects/{projectId} | Get project space info by its projectId.
[**GetProjectSpaces**](ProjectsApi.md#GetProjectSpaces) | **GET** /api/projects | List opened project spaces.
[**OpenProjectSpace**](ProjectsApi.md#OpenProjectSpace) | **PUT** /api/projects/{projectId} | Open an existing project-space and make it accessible via the given projectId.


# **CloseProjectSpace**
> CloseProjectSpace(project_id)

Close project-space and remove it from application.

Close project-space and remove it from application. Project will NOT be deleted from disk.   ATTENTION: This will cancel and remove all jobs running on this Project before closing it.  If there are many jobs, this might take some time.

### Example
```R
library(Rsirius)

# Close project-space and remove it from application.
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | unique name/identifier of the  project-space to be closed.

api_instance <- rsirius_api$new()
api_instance$projects_api$CloseProjectSpace(var_project_id)
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

# **CopyProjectSpace**
> ProjectInfo CopyProjectSpace(project_id, path_to_copied_project, copy_project_id = var.copy_project_id, opt_fields = [])

Move an existing (opened) project-space to another location.

Move an existing (opened) project-space to another location.

### Example
```R
library(Rsirius)

# Move an existing (opened) project-space to another location.
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | unique name/identifier of the project-space that shall be copied.
var_path_to_copied_project <- "path_to_copied_project_example" # character | target location where the source project will be copied to.
var_copy_project_id <- "copy_project_id_example" # character | optional id/mame of the newly created project (copy). If given the project will be opened. (Optional)
var_opt_fields <- c(ProjectInfoOptField$new()) # array[ProjectInfoOptField] |  (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CopyProjectSpace(var_project_id, var_path_to_copied_project, copy_project_id = var_copy_project_id, opt_fields = var_opt_fieldsdata_file = "result.txt")
result <- api_instance$projects_api$CopyProjectSpace(var_project_id, var_path_to_copied_project, copy_project_id = var_copy_project_id, opt_fields = var_opt_fields)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| unique name/identifier of the project-space that shall be copied. | 
 **path_to_copied_project** | **character**| target location where the source project will be copied to. | 
 **copy_project_id** | **character**| optional id/mame of the newly created project (copy). If given the project will be opened. | [optional] 
 **opt_fields** | list( [**ProjectInfoOptField**](ProjectInfoOptField.md) )|  | [optional] [default to []]

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
| **200** | ProjectInfo of the newly created project if opened (copyProjectId !&#x3D; null) or the project info of  the source project otherwise |  -  |

# **CreateProjectSpace**
> ProjectInfo CreateProjectSpace(project_id, path_to_project, path_to_source_project = var.path_to_source_project, await_import = TRUE)

Create and open a new project-space at given location and make it accessible via the given projectId.

Create and open a new project-space at given location and make it accessible via the given projectId.

### Example
```R
library(Rsirius)

# Create and open a new project-space at given location and make it accessible via the given projectId.
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | unique name/identifier that shall be used to access the newly created project-space. Must consist only of [a-zA-Z0-9_-].
var_path_to_project <- "path_to_project_example" # character | 
var_path_to_source_project <- "path_to_source_project_example" # character |  (Optional)
var_await_import <- TRUE # character |  (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateProjectSpace(var_project_id, var_path_to_project, path_to_source_project = var_path_to_source_project, await_import = var_await_importdata_file = "result.txt")
result <- api_instance$projects_api$CreateProjectSpace(var_project_id, var_path_to_project, path_to_source_project = var_path_to_source_project, await_import = var_await_import)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| unique name/identifier that shall be used to access the newly created project-space. Must consist only of [a-zA-Z0-9_-]. | 
 **path_to_project** | **character**|  | 
 **path_to_source_project** | **character**|  | [optional] 
 **await_import** | **character**|  | [optional] [default to TRUE]

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
| **200** | OK |  -  |

# **GetCanopusClassyFireData**
> character GetCanopusClassyFireData(project_id, charge)

Get CANOPUS prediction vector definition for ClassyFire classes

### Example
```R
library(Rsirius)

# Get CANOPUS prediction vector definition for ClassyFire classes
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | 
var_charge <- 56 # integer | 

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetCanopusClassyFireData(var_project_id, var_chargedata_file = "result.txt")
result <- api_instance$projects_api$GetCanopusClassyFireData(var_project_id, var_charge)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**|  | 
 **charge** | **integer**|  | 

### Return type

**character**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/csv

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

# **GetCanopusNpcData**
> character GetCanopusNpcData(project_id, charge)

Get CANOPUS prediction vector definition for NPC classes

### Example
```R
library(Rsirius)

# Get CANOPUS prediction vector definition for NPC classes
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | 
var_charge <- 56 # integer | 

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetCanopusNpcData(var_project_id, var_chargedata_file = "result.txt")
result <- api_instance$projects_api$GetCanopusNpcData(var_project_id, var_charge)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**|  | 
 **charge** | **integer**|  | 

### Return type

**character**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/csv

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

# **GetFingerIdData**
> character GetFingerIdData(project_id, charge)

Get CSI:FingerID fingerprint (prediction vector) definition

### Example
```R
library(Rsirius)

# Get CSI:FingerID fingerprint (prediction vector) definition
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | 
var_charge <- 56 # integer | 

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetFingerIdData(var_project_id, var_chargedata_file = "result.txt")
result <- api_instance$projects_api$GetFingerIdData(var_project_id, var_charge)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**|  | 
 **charge** | **integer**|  | 

### Return type

**character**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/csv

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

# **GetProjectSpace**
> ProjectInfo GetProjectSpace(project_id, opt_fields = [])

Get project space info by its projectId.

Get project space info by its projectId.

### Example
```R
library(Rsirius)

# Get project space info by its projectId.
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | unique name/identifier tof the project-space to be accessed.
var_opt_fields <- c(ProjectInfoOptField$new()) # array[ProjectInfoOptField] |  (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetProjectSpace(var_project_id, opt_fields = var_opt_fieldsdata_file = "result.txt")
result <- api_instance$projects_api$GetProjectSpace(var_project_id, opt_fields = var_opt_fields)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| unique name/identifier tof the project-space to be accessed. | 
 **opt_fields** | list( [**ProjectInfoOptField**](ProjectInfoOptField.md) )|  | [optional] [default to []]

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
| **200** | OK |  -  |

# **GetProjectSpaces**
> array[ProjectInfo] GetProjectSpaces()

List opened project spaces.

List opened project spaces.

### Example
```R
library(Rsirius)

# List opened project spaces.
#

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetProjectSpaces(data_file = "result.txt")
result <- api_instance$projects_api$GetProjectSpaces()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[ProjectInfo]**](ProjectInfo.md)

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
> ProjectInfo OpenProjectSpace(project_id, path_to_project, opt_fields = [])

Open an existing project-space and make it accessible via the given projectId.

Open an existing project-space and make it accessible via the given projectId.

### Example
```R
library(Rsirius)

# Open an existing project-space and make it accessible via the given projectId.
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | unique name/identifier that shall be used to access the opened project-space. Must consist only of [a-zA-Z0-9_-].
var_path_to_project <- "path_to_project_example" # character | 
var_opt_fields <- c(ProjectInfoOptField$new()) # array[ProjectInfoOptField] |  (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$OpenProjectSpace(var_project_id, var_path_to_project, opt_fields = var_opt_fieldsdata_file = "result.txt")
result <- api_instance$projects_api$OpenProjectSpace(var_project_id, var_path_to_project, opt_fields = var_opt_fields)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| unique name/identifier that shall be used to access the opened project-space. Must consist only of [a-zA-Z0-9_-]. | 
 **path_to_project** | **character**|  | 
 **opt_fields** | list( [**ProjectInfoOptField**](ProjectInfoOptField.md) )|  | [optional] [default to []]

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
| **200** | OK |  -  |

