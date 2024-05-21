# ProjectsApi

All URIs are relative to *http://localhost:42691*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CloseProjectSpace**](ProjectsApi.md#CloseProjectSpace) | **DELETE** /api/projects/{projectId} | Close project-space and remove it from application
[**CopyProjectSpace**](ProjectsApi.md#CopyProjectSpace) | **PUT** /api/projects/{projectId}/copy | Move an existing (opened) project-space to another location.
[**CreateProjectSpace**](ProjectsApi.md#CreateProjectSpace) | **POST** /api/projects/{projectId} | Create and open a new project-space at given location and make it accessible via the given projectId.
[**GetCanopusClassyFireData**](ProjectsApi.md#GetCanopusClassyFireData) | **GET** /api/projects/{projectId}/cf-data | Get CANOPUS prediction vector definition for ClassyFire classes
[**GetCanopusNpcData**](ProjectsApi.md#GetCanopusNpcData) | **GET** /api/projects/{projectId}/npc-data | Get CANOPUS prediction vector definition for NPC classes
[**GetFingerIdData**](ProjectsApi.md#GetFingerIdData) | **GET** /api/projects/{projectId}/fingerid-data | Get CSI:FingerID fingerprint (prediction vector) definition
[**GetProjectSpace**](ProjectsApi.md#GetProjectSpace) | **GET** /api/projects/{projectId} | Get project space info by its projectId.
[**GetProjectSpaces**](ProjectsApi.md#GetProjectSpaces) | **GET** /api/projects | List opened project spaces.
[**ImportMsRunData**](ProjectsApi.md#ImportMsRunData) | **POST** /api/projects/{projectId}/import/ms-data-files | Import and Align full MS-Runs from various formats into the specified project  Possible formats (mzML, mzXML)
[**ImportMsRunDataAsJob**](ProjectsApi.md#ImportMsRunDataAsJob) | **POST** /api/projects/{projectId}/jobs/import/ms-data-files-job | Import and Align full MS-Runs from various formats into the specified project as background job.
[**ImportPreprocessedData**](ProjectsApi.md#ImportPreprocessedData) | **POST** /api/projects/{projectId}/import/preprocessed-data-files | Import already preprocessed ms/ms data from various formats into the specified project  Possible formats (ms, mgf, cef, msp)
[**ImportPreprocessedDataAsJob**](ProjectsApi.md#ImportPreprocessedDataAsJob) | **POST** /api/projects/{projectId}/import/preprocessed-data-files-job | Import ms/ms data from the given format into the specified project-space as background job.
[**OpenProjectSpace**](ProjectsApi.md#OpenProjectSpace) | **PUT** /api/projects/{projectId} | Open an existing project-space and make it accessible via the given projectId.


# **CloseProjectSpace**
> CloseProjectSpace(project_id)

Close project-space and remove it from application

Close project-space and remove it from application. Project will NOT be deleted from disk.  <p>  ATTENTION: This will cancel and remove all jobs running on this Project before closing it.  If there are many jobs, this might take some time.

### Example
```R
library(Rsirius)

# Close project-space and remove it from application
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
| **200** | ProjectInfo of the newly created project if opened (copyProjectId !&#x3D; null) or the project info of  the source project otherwise  &lt;p&gt;  DEPRECATED: This endpoint relies on the local filesystem and will likely be removed in later versions of this API to allow for more flexible use cases. |  -  |

# **CreateProjectSpace**
> ProjectInfo CreateProjectSpace(project_id, path_to_project = var.path_to_project, opt_fields = [])

Create and open a new project-space at given location and make it accessible via the given projectId.

Create and open a new project-space at given location and make it accessible via the given projectId.

### Example
```R
library(Rsirius)

# Create and open a new project-space at given location and make it accessible via the given projectId.
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | unique name/identifier that shall be used to access the newly created project-space. Must consist only of [a-zA-Z0-9_-].
var_path_to_project <- "path_to_project_example" # character | local file path where the project will be created. If NULL, project will be stored by its projectId in default project location. DEPRECATED: This parameter relies on the local filesystem and will likely be removed in later versions of this API to allow for more flexible use cases. (Optional)
var_opt_fields <- c(ProjectInfoOptField$new()) # array[ProjectInfoOptField] |  (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateProjectSpace(var_project_id, path_to_project = var_path_to_project, opt_fields = var_opt_fieldsdata_file = "result.txt")
result <- api_instance$projects_api$CreateProjectSpace(var_project_id, path_to_project = var_path_to_project, opt_fields = var_opt_fields)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| unique name/identifier that shall be used to access the newly created project-space. Must consist only of [a-zA-Z0-9_-]. | 
 **path_to_project** | **character**| local file path where the project will be created. If NULL, project will be stored by its projectId in default project location. DEPRECATED: This parameter relies on the local filesystem and will likely be removed in later versions of this API to allow for more flexible use cases. | [optional] 
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

# **ImportMsRunData**
> ImportResult ImportMsRunData(project_id, align_runs = TRUE, allow_ms1_only = TRUE, input_files = var.input_files)

Import and Align full MS-Runs from various formats into the specified project  Possible formats (mzML, mzXML)

Import and Align full MS-Runs from various formats into the specified project  Possible formats (mzML, mzXML)

### Example
```R
library(Rsirius)

# Import and Align full MS-Runs from various formats into the specified project  Possible formats (mzML, mzXML)
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to import into.
var_align_runs <- TRUE # character |  (Optional)
var_allow_ms1_only <- TRUE # character |  (Optional)
var_input_files <- c(123) # array[data.frame] |  (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ImportMsRunData(var_project_id, align_runs = var_align_runs, allow_ms1_only = var_allow_ms1_only, input_files = var_input_filesdata_file = "result.txt")
result <- api_instance$projects_api$ImportMsRunData(var_project_id, align_runs = var_align_runs, allow_ms1_only = var_allow_ms1_only, input_files = var_input_files)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to import into. | 
 **align_runs** | **character**|  | [optional] [default to TRUE]
 **allow_ms1_only** | **character**|  | [optional] [default to TRUE]
 **input_files** | list( **data.frame** )|  | [optional] 

### Return type

[**ImportResult**](ImportResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

# **ImportMsRunDataAsJob**
> Job ImportMsRunDataAsJob(project_id, align_runs = TRUE, allow_ms1_only = TRUE, opt_fields = ["progress"], input_files = var.input_files)

Import and Align full MS-Runs from various formats into the specified project as background job.

Import and Align full MS-Runs from various formats into the specified project as background job.  Possible formats (mzML, mzXML)

### Example
```R
library(Rsirius)

# Import and Align full MS-Runs from various formats into the specified project as background job.
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to import into.
var_align_runs <- TRUE # character |  (Optional)
var_allow_ms1_only <- TRUE # character |  (Optional)
var_opt_fields <- c(JobOptField$new()) # array[JobOptField] | set of optional fields to be included. Use 'none' only to override defaults. (Optional)
var_input_files <- c(123) # array[data.frame] |  (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ImportMsRunDataAsJob(var_project_id, align_runs = var_align_runs, allow_ms1_only = var_allow_ms1_only, opt_fields = var_opt_fields, input_files = var_input_filesdata_file = "result.txt")
result <- api_instance$projects_api$ImportMsRunDataAsJob(var_project_id, align_runs = var_align_runs, allow_ms1_only = var_allow_ms1_only, opt_fields = var_opt_fields, input_files = var_input_files)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to import into. | 
 **align_runs** | **character**|  | [optional] [default to TRUE]
 **allow_ms1_only** | **character**|  | [optional] [default to TRUE]
 **opt_fields** | list( [**JobOptField**](JobOptField.md) )| set of optional fields to be included. Use &#39;none&#39; only to override defaults. | [optional] [default to [&quot;progress&quot;]]
 **input_files** | list( **data.frame** )|  | [optional] 

### Return type

[**Job**](Job.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | the import job. |  -  |

# **ImportPreprocessedData**
> ImportResult ImportPreprocessedData(project_id, ignore_formulas = FALSE, allow_ms1_only = TRUE, input_files = var.input_files)

Import already preprocessed ms/ms data from various formats into the specified project  Possible formats (ms, mgf, cef, msp)

Import already preprocessed ms/ms data from various formats into the specified project  Possible formats (ms, mgf, cef, msp)

### Example
```R
library(Rsirius)

# Import already preprocessed ms/ms data from various formats into the specified project  Possible formats (ms, mgf, cef, msp)
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to import into.
var_ignore_formulas <- FALSE # character |  (Optional)
var_allow_ms1_only <- TRUE # character |  (Optional)
var_input_files <- c(123) # array[data.frame] |  (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ImportPreprocessedData(var_project_id, ignore_formulas = var_ignore_formulas, allow_ms1_only = var_allow_ms1_only, input_files = var_input_filesdata_file = "result.txt")
result <- api_instance$projects_api$ImportPreprocessedData(var_project_id, ignore_formulas = var_ignore_formulas, allow_ms1_only = var_allow_ms1_only, input_files = var_input_files)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to import into. | 
 **ignore_formulas** | **character**|  | [optional] [default to FALSE]
 **allow_ms1_only** | **character**|  | [optional] [default to TRUE]
 **input_files** | list( **data.frame** )|  | [optional] 

### Return type

[**ImportResult**](ImportResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

# **ImportPreprocessedDataAsJob**
> Job ImportPreprocessedDataAsJob(project_id, ignore_formulas = FALSE, allow_ms1_only = TRUE, opt_fields = ["progress"], input_files = var.input_files)

Import ms/ms data from the given format into the specified project-space as background job.

Import ms/ms data from the given format into the specified project-space as background job.  Possible formats (ms, mgf, cef, msp)

### Example
```R
library(Rsirius)

# Import ms/ms data from the given format into the specified project-space as background job.
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to import into.
var_ignore_formulas <- FALSE # character |  (Optional)
var_allow_ms1_only <- TRUE # character |  (Optional)
var_opt_fields <- c(JobOptField$new()) # array[JobOptField] | set of optional fields to be included. Use 'none' only to override defaults. (Optional)
var_input_files <- c(123) # array[data.frame] |  (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ImportPreprocessedDataAsJob(var_project_id, ignore_formulas = var_ignore_formulas, allow_ms1_only = var_allow_ms1_only, opt_fields = var_opt_fields, input_files = var_input_filesdata_file = "result.txt")
result <- api_instance$projects_api$ImportPreprocessedDataAsJob(var_project_id, ignore_formulas = var_ignore_formulas, allow_ms1_only = var_allow_ms1_only, opt_fields = var_opt_fields, input_files = var_input_files)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to import into. | 
 **ignore_formulas** | **character**|  | [optional] [default to FALSE]
 **allow_ms1_only** | **character**|  | [optional] [default to TRUE]
 **opt_fields** | list( [**JobOptField**](JobOptField.md) )| set of optional fields to be included. Use &#39;none&#39; only to override defaults. | [optional] [default to [&quot;progress&quot;]]
 **input_files** | list( **data.frame** )|  | [optional] 

### Return type

[**Job**](Job.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | the import job. |  -  |

# **OpenProjectSpace**
> ProjectInfo OpenProjectSpace(project_id, path_to_project = var.path_to_project, opt_fields = [])

Open an existing project-space and make it accessible via the given projectId.

Open an existing project-space and make it accessible via the given projectId.

### Example
```R
library(Rsirius)

# Open an existing project-space and make it accessible via the given projectId.
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | unique name/identifier that shall be used to access the opened project-space. Must consist only of [a-zA-Z0-9_-].
var_path_to_project <- "path_to_project_example" # character | local file path to open the project from. If NULL, project will be loaded by it projectId from default project location.  DEPRECATED: This parameter relies on the local filesystem and will likely be removed in later versions of this API to allow for more flexible use cases. (Optional)
var_opt_fields <- c(ProjectInfoOptField$new()) # array[ProjectInfoOptField] |  (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$OpenProjectSpace(var_project_id, path_to_project = var_path_to_project, opt_fields = var_opt_fieldsdata_file = "result.txt")
result <- api_instance$projects_api$OpenProjectSpace(var_project_id, path_to_project = var_path_to_project, opt_fields = var_opt_fields)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| unique name/identifier that shall be used to access the opened project-space. Must consist only of [a-zA-Z0-9_-]. | 
 **path_to_project** | **character**| local file path to open the project from. If NULL, project will be loaded by it projectId from default project location.  DEPRECATED: This parameter relies on the local filesystem and will likely be removed in later versions of this API to allow for more flexible use cases. | [optional] 
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

