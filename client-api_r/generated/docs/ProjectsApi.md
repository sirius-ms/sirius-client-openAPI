# ProjectsApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CloseProject**](ProjectsApi.md#CloseProject) | **DELETE** /api/projects/{projectId} | Close project-space and remove it from the application
[**CreateProject**](ProjectsApi.md#CreateProject) | **POST** /api/projects/{projectId} | Create and open a new project-space at given location and make it accessible via the given projectId.
[**GetCanopusClassyFireData**](ProjectsApi.md#GetCanopusClassyFireData) | **GET** /api/projects/{projectId}/cf-data | Get CANOPUS prediction vector definition for ClassyFire classes
[**GetCanopusNpcData**](ProjectsApi.md#GetCanopusNpcData) | **GET** /api/projects/{projectId}/npc-data | Get CANOPUS prediction vector definition for NPC classes
[**GetFingerIdData**](ProjectsApi.md#GetFingerIdData) | **GET** /api/projects/{projectId}/fingerid-data | Get CSI:FingerID fingerprint (prediction vector) definition
[**GetProject**](ProjectsApi.md#GetProject) | **GET** /api/projects/{projectId} | Get project space info by its projectId.
[**GetProjects**](ProjectsApi.md#GetProjects) | **GET** /api/projects | List opened project spaces.
[**ImportMsRunData**](ProjectsApi.md#ImportMsRunData) | **POST** /api/projects/{projectId}/import/ms-data-files | Import and Align full MS-Runs from various formats into the specified project  Possible formats (mzML, mzXML)
[**ImportMsRunDataAsJob**](ProjectsApi.md#ImportMsRunDataAsJob) | **POST** /api/projects/{projectId}/import/ms-data-files-job | Import and Align full MS-Runs from various formats into the specified project as background job.
[**ImportPreprocessedData**](ProjectsApi.md#ImportPreprocessedData) | **POST** /api/projects/{projectId}/import/preprocessed-data-files | Import already preprocessed ms/ms data from various formats into the specified project  Possible formats (ms, mgf, cef, msp)
[**ImportPreprocessedDataAsJob**](ProjectsApi.md#ImportPreprocessedDataAsJob) | **POST** /api/projects/{projectId}/import/preprocessed-data-files-job | Import ms/ms data from the given format into the specified project-space as background job.
[**OpenProject**](ProjectsApi.md#OpenProject) | **PUT** /api/projects/{projectId} | Open an existing project-space and make it accessible via the given projectId.


# **CloseProject**
> CloseProject(project_id, compact = FALSE)

Close project-space and remove it from the application

Close project-space and remove it from the application. The Project will NOT be deleted from disk.  <p>  ATTENTION: This will cancel and remove all jobs running on this Project before closing it.  If there are many jobs, this might take some time.

### Example
```R
library(Rsirius)

# Close project-space and remove it from the application
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | unique name/identifier of the  project-space to be closed.
var_compact <- FALSE # character | if true, compact project storage after closing. DEPRECATED: Compacting acts on the local filesystem and will likely be removed in a later version. (Optional)

api_instance <- rsirius_api$new()
api_instance$projects_api$CloseProject(var_project_id, compact = var_compact)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| unique name/identifier of the  project-space to be closed. | 
 **compact** | **character**| if true, compact project storage after closing. DEPRECATED: Compacting acts on the local filesystem and will likely be removed in a later version. | [optional] [default to FALSE]

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

# **CreateProject**
> ProjectInfo CreateProject(project_id, path_to_project = var.path_to_project, opt_fields = [none])

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
var_opt_fields <- c("none") # array[character] |  (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateProject(var_project_id, path_to_project = var_path_to_project, opt_fields = var_opt_fieldsdata_file = "result.txt")
result <- api_instance$projects_api$CreateProject(var_project_id, path_to_project = var_path_to_project, opt_fields = var_opt_fields)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| unique name/identifier that shall be used to access the newly created project-space. Must consist only of [a-zA-Z0-9_-]. | 
 **path_to_project** | **character**| local file path where the project will be created. If NULL, project will be stored by its projectId in default project location. DEPRECATED: This parameter relies on the local filesystem and will likely be removed in later versions of this API to allow for more flexible use cases. | [optional] 
 **opt_fields** | Enum [none, compatibilityInfo, sizeInformation] |  | [optional] [default to [none]]

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
 - **Accept**: application/csv, application/CSV

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
 - **Accept**: application/csv, application/CSV

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
 - **Accept**: application/csv, application/CSV

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

# **GetProject**
> ProjectInfo GetProject(project_id, opt_fields = ["none"])

Get project space info by its projectId.

Get project space info by its projectId.

### Example
```R
library(Rsirius)

# Get project space info by its projectId.
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | unique name/identifier tof the project-space to be accessed.
var_opt_fields <- c("none") # array[character] |  (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetProject(var_project_id, opt_fields = var_opt_fieldsdata_file = "result.txt")
result <- api_instance$projects_api$GetProject(var_project_id, opt_fields = var_opt_fields)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| unique name/identifier tof the project-space to be accessed. | 
 **opt_fields** | Enum [none, compatibilityInfo, sizeInformation] |  | [optional] [default to [&quot;none&quot;]]

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

# **GetProjects**
> array[ProjectInfo] GetProjects()

List opened project spaces.

List opened project spaces.

### Example
```R
library(Rsirius)

# List opened project spaces.
#

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetProjects(data_file = "result.txt")
result <- api_instance$projects_api$GetProjects()
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
> ImportResult ImportMsRunData(project_id, input_files, parameters)

Import and Align full MS-Runs from various formats into the specified project  Possible formats (mzML, mzXML)

Import and Align full MS-Runs from various formats into the specified project  Possible formats (mzML, mzXML)

### Example
```R
library(Rsirius)

# Import and Align full MS-Runs from various formats into the specified project  Possible formats (mzML, mzXML)
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | Project-space to import into.
var_input_files <- c(123) # array[data.frame] | Files to import into project.
var_parameters <- LcmsSubmissionParameters$new("alignLCMSRuns_example", 123, Deviation$new(123, 123), Deviation$new(123, 123), 123, 123) # LcmsSubmissionParameters | Parameters for feature alignment and feature finding.

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ImportMsRunData(var_project_id, var_input_files, var_parametersdata_file = "result.txt")
result <- api_instance$projects_api$ImportMsRunData(var_project_id, var_input_files, var_parameters)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| Project-space to import into. | 
 **input_files** | list( **data.frame** )| Files to import into project. | 
 **parameters** | [**LcmsSubmissionParameters**](LcmsSubmissionParameters.md)| Parameters for feature alignment and feature finding. | 

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
> Job ImportMsRunDataAsJob(project_id, input_files, parameters, opt_fields = [progress])

Import and Align full MS-Runs from various formats into the specified project as background job.

Import and Align full MS-Runs from various formats into the specified project as background job.  Possible formats (mzML, mzXML)

### Example
```R
library(Rsirius)

# Import and Align full MS-Runs from various formats into the specified project as background job.
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | Project-space to import into.
var_input_files <- c(123) # array[data.frame] | Files to import into project.
var_parameters <- LcmsSubmissionParameters$new("alignLCMSRuns_example", 123, Deviation$new(123, 123), Deviation$new(123, 123), 123, 123) # LcmsSubmissionParameters | Parameters for feature alignment and feature finding.
var_opt_fields <- c("none") # array[character] | Set of optional fields to be included. Use 'none' only to override defaults. (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ImportMsRunDataAsJob(var_project_id, var_input_files, var_parameters, opt_fields = var_opt_fieldsdata_file = "result.txt")
result <- api_instance$projects_api$ImportMsRunDataAsJob(var_project_id, var_input_files, var_parameters, opt_fields = var_opt_fields)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| Project-space to import into. | 
 **input_files** | list( **data.frame** )| Files to import into project. | 
 **parameters** | [**LcmsSubmissionParameters**](LcmsSubmissionParameters.md)| Parameters for feature alignment and feature finding. | 
 **opt_fields** | Enum [none, command, progress, affectedIds] | Set of optional fields to be included. Use &#39;none&#39; only to override defaults. | [optional] [default to [progress]]

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
> ImportResult ImportPreprocessedData(project_id, input_files, ignore_formulas = FALSE, allow_ms1_only = TRUE)

Import already preprocessed ms/ms data from various formats into the specified project  Possible formats (ms, mgf, cef, msp)

Import already preprocessed ms/ms data from various formats into the specified project  Possible formats (ms, mgf, cef, msp)

### Example
```R
library(Rsirius)

# Import already preprocessed ms/ms data from various formats into the specified project  Possible formats (ms, mgf, cef, msp)
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to import into.
var_input_files <- c(123) # array[data.frame] | files to import into project
var_ignore_formulas <- FALSE # character |  (Optional)
var_allow_ms1_only <- TRUE # character |  (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ImportPreprocessedData(var_project_id, var_input_files, ignore_formulas = var_ignore_formulas, allow_ms1_only = var_allow_ms1_onlydata_file = "result.txt")
result <- api_instance$projects_api$ImportPreprocessedData(var_project_id, var_input_files, ignore_formulas = var_ignore_formulas, allow_ms1_only = var_allow_ms1_only)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to import into. | 
 **input_files** | list( **data.frame** )| files to import into project | 
 **ignore_formulas** | **character**|  | [optional] [default to FALSE]
 **allow_ms1_only** | **character**|  | [optional] [default to TRUE]

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
> Job ImportPreprocessedDataAsJob(project_id, input_files, ignore_formulas = FALSE, allow_ms1_only = TRUE, opt_fields = [progress])

Import ms/ms data from the given format into the specified project-space as background job.

Import ms/ms data from the given format into the specified project-space as background job.  Possible formats (ms, mgf, cef, msp)

### Example
```R
library(Rsirius)

# Import ms/ms data from the given format into the specified project-space as background job.
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to import into.
var_input_files <- c(123) # array[data.frame] | 
var_ignore_formulas <- FALSE # character |  (Optional)
var_allow_ms1_only <- TRUE # character |  (Optional)
var_opt_fields <- c("none") # array[character] | set of optional fields to be included. Use 'none' only to override defaults. (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ImportPreprocessedDataAsJob(var_project_id, var_input_files, ignore_formulas = var_ignore_formulas, allow_ms1_only = var_allow_ms1_only, opt_fields = var_opt_fieldsdata_file = "result.txt")
result <- api_instance$projects_api$ImportPreprocessedDataAsJob(var_project_id, var_input_files, ignore_formulas = var_ignore_formulas, allow_ms1_only = var_allow_ms1_only, opt_fields = var_opt_fields)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to import into. | 
 **input_files** | list( **data.frame** )|  | 
 **ignore_formulas** | **character**|  | [optional] [default to FALSE]
 **allow_ms1_only** | **character**|  | [optional] [default to TRUE]
 **opt_fields** | Enum [none, command, progress, affectedIds] | set of optional fields to be included. Use &#39;none&#39; only to override defaults. | [optional] [default to [progress]]

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

# **OpenProject**
> ProjectInfo OpenProject(project_id, path_to_project = var.path_to_project, opt_fields = [none])

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
var_opt_fields <- c("none") # array[character] |  (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$OpenProject(var_project_id, path_to_project = var_path_to_project, opt_fields = var_opt_fieldsdata_file = "result.txt")
result <- api_instance$projects_api$OpenProject(var_project_id, path_to_project = var_path_to_project, opt_fields = var_opt_fields)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| unique name/identifier that shall be used to access the opened project-space. Must consist only of [a-zA-Z0-9_-]. | 
 **path_to_project** | **character**| local file path to open the project from. If NULL, project will be loaded by it projectId from default project location.  DEPRECATED: This parameter relies on the local filesystem and will likely be removed in later versions of this API to allow for more flexible use cases. | [optional] 
 **opt_fields** | Enum [none, compatibilityInfo, sizeInformation] |  | [optional] [default to [none]]

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

