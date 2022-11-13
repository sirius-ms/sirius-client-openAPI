# ComputationsApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**DeleteJob**](ComputationsApi.md#DeleteJob) | **DELETE** /api/projects/{projectId}/jobs/{jobId} | Delete job.
[**DeleteJobConfig**](ComputationsApi.md#DeleteJobConfig) | **DELETE** /api/job-configs/{name} | Delete job configuration with given name.
[**GetDefaultJobConfig**](ComputationsApi.md#GetDefaultJobConfig) | **GET** /api/default-job-config | Request default job configuration
[**GetJob**](ComputationsApi.md#GetJob) | **GET** /api/projects/{projectId}/jobs/{jobId} | Get job information and its current state and progress (if available).
[**GetJobConfig**](ComputationsApi.md#GetJobConfig) | **GET** /api/job-configs/{name} | Request job configuration with given name.
[**GetJobConfigs**](ComputationsApi.md#GetJobConfigs) | **GET** /api/job-configs | Request all available job configurations
[**GetJobs**](ComputationsApi.md#GetJobs) | **GET** /api/projects/{projectId}/jobs | Get job information and its current state and progress (if available).
[**PostJobConfig**](ComputationsApi.md#PostJobConfig) | **POST** /api/job-configs/{name} | Add new job configuration with given name.
[**StartJob**](ComputationsApi.md#StartJob) | **POST** /api/projects/{projectId}/jobs | Start computation for given compounds and with given parameters.
[**StartJobFromConfig**](ComputationsApi.md#StartJobFromConfig) | **POST** /api/projects/{projectId}/jobs-from-config | Start computation for given compounds and with parameters from a stored job-config.


# **DeleteJob**
> DeleteJob(project_id, job_id, cancel_if_running = TRUE, await_deletion = TRUE)

Delete job.

Delete job. Specify how to behave for running jobs.

### Example
```R
library(RSirius)

# Delete job.
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to run jobs on
var_job_id <- "job_id_example" # character | of the job to be deleted
var_cancel_if_running <- TRUE # character | If true job will be canceled if it is not finished. Otherwise,                         deletion will fail for running jobs or request will block until job has finished. (Optional)
var_await_deletion <- TRUE # character | If true request will block until deletion succeeded or failed.                         If the job is still running the request will wait until the job has finished. (Optional)

api_instance <- ComputationsApi$new()
api_instance$DeleteJob(var_project_id, var_job_id, cancel_if_running = var_cancel_if_running, await_deletion = var_await_deletion)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to run jobs on | 
 **job_id** | **character**| of the job to be deleted | 
 **cancel_if_running** | **character**| If true job will be canceled if it is not finished. Otherwise,                         deletion will fail for running jobs or request will block until job has finished. | [optional] [default to TRUE]
 **await_deletion** | **character**| If true request will block until deletion succeeded or failed.                         If the job is still running the request will wait until the job has finished. | [optional] [default to TRUE]

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
| **202** | Accepted |  -  |

# **DeleteJobConfig**
> DeleteJobConfig(name)

Delete job configuration with given name.

Delete job configuration with given name.

### Example
```R
library(RSirius)

# Delete job configuration with given name.
#
# prepare function argument(s)
var_name <- "name_example" # character | name of the job-config to delete

api_instance <- ComputationsApi$new()
api_instance$DeleteJobConfig(var_name)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **character**| name of the job-config to delete | 

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
| **202** | Accepted |  -  |

# **GetDefaultJobConfig**
> JobSubmission GetDefaultJobConfig(include_config_map = FALSE)

Request default job configuration

Request default job configuration

### Example
```R
library(RSirius)

# Request default job configuration
#
# prepare function argument(s)
var_include_config_map <- FALSE # character | if true, generic configmap with-defaults will be included (Optional)

api_instance <- ComputationsApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetDefaultJobConfig(include_config_map = var_include_config_mapdata_file = "result.txt")
result <- api_instance$GetDefaultJobConfig(include_config_map = var_include_config_map)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include_config_map** | **character**| if true, generic configmap with-defaults will be included | [optional] [default to FALSE]

### Return type

[**JobSubmission**](JobSubmission.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | {@link JobSubmission JobSubmission} with all parameters set to default values. |  -  |

# **GetJob**
> JobId GetJob(project_id, job_id, include_state = TRUE, include_command = FALSE, include_affected_compounds = FALSE)

Get job information and its current state and progress (if available).

Get job information and its current state and progress (if available).

### Example
```R
library(RSirius)

# Get job information and its current state and progress (if available).
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to run jobs on
var_job_id <- "job_id_example" # character | of the job to be returned
var_include_state <- TRUE # character | include {@link de.unijena.bioinf.ms.middleware.compute.model.JobProgress de.unijena.bioinf.ms.middleware.compute.model.JobProgress} state. (Optional)
var_include_command <- FALSE # character | include job command. (Optional)
var_include_affected_compounds <- FALSE # character | include list of compound ids affected by this job (if available) (Optional)

api_instance <- ComputationsApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetJob(var_project_id, var_job_id, include_state = var_include_state, include_command = var_include_command, include_affected_compounds = var_include_affected_compoundsdata_file = "result.txt")
result <- api_instance$GetJob(var_project_id, var_job_id, include_state = var_include_state, include_command = var_include_command, include_affected_compounds = var_include_affected_compounds)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to run jobs on | 
 **job_id** | **character**| of the job to be returned | 
 **include_state** | **character**| include {@link de.unijena.bioinf.ms.middleware.compute.model.JobProgress de.unijena.bioinf.ms.middleware.compute.model.JobProgress} state. | [optional] [default to TRUE]
 **include_command** | **character**| include job command. | [optional] [default to FALSE]
 **include_affected_compounds** | **character**| include list of compound ids affected by this job (if available) | [optional] [default to FALSE]

### Return type

[**JobId**](JobId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

# **GetJobConfig**
> JobSubmission GetJobConfig(name, include_config_map = FALSE)

Request job configuration with given name.

Request job configuration with given name.

### Example
```R
library(RSirius)

# Request job configuration with given name.
#
# prepare function argument(s)
var_name <- "name_example" # character | name of the job-config to return
var_include_config_map <- FALSE # character | if true the generic configmap will be part of the output (Optional)

api_instance <- ComputationsApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetJobConfig(var_name, include_config_map = var_include_config_mapdata_file = "result.txt")
result <- api_instance$GetJobConfig(var_name, include_config_map = var_include_config_map)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **character**| name of the job-config to return | 
 **include_config_map** | **character**| if true the generic configmap will be part of the output | [optional] [default to FALSE]

### Return type

[**JobSubmission**](JobSubmission.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | {@link JobSubmission JobSubmission} for given name. |  -  |

# **GetJobConfigs**
> array[JobSubmission] GetJobConfigs(include_config_map = FALSE)

Request all available job configurations

Request all available job configurations

### Example
```R
library(RSirius)

# Request all available job configurations
#
# prepare function argument(s)
var_include_config_map <- FALSE # character | if true the generic configmap will be part of the output (Optional)

api_instance <- ComputationsApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetJobConfigs(include_config_map = var_include_config_mapdata_file = "result.txt")
result <- api_instance$GetJobConfigs(include_config_map = var_include_config_map)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include_config_map** | **character**| if true the generic configmap will be part of the output | [optional] [default to FALSE]

### Return type

[**array[JobSubmission]**](JobSubmission.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | list of available {@link JobSubmission JobSubmission}s |  -  |

# **GetJobs**
> array[JobId] GetJobs(project_id, include_state = FALSE, include_command = FALSE, include_affected_compounds = FALSE)

Get job information and its current state and progress (if available).

Get job information and its current state and progress (if available).

### Example
```R
library(RSirius)

# Get job information and its current state and progress (if available).
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to run jobs on
var_include_state <- FALSE # character | include {@link de.unijena.bioinf.ms.middleware.compute.model.JobProgress de.unijena.bioinf.ms.middleware.compute.model.JobProgress} states. (Optional)
var_include_command <- FALSE # character | include job commands. (Optional)
var_include_affected_compounds <- FALSE # character | include list of compound ids affected by this job (if available) (Optional)

api_instance <- ComputationsApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetJobs(var_project_id, include_state = var_include_state, include_command = var_include_command, include_affected_compounds = var_include_affected_compoundsdata_file = "result.txt")
result <- api_instance$GetJobs(var_project_id, include_state = var_include_state, include_command = var_include_command, include_affected_compounds = var_include_affected_compounds)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to run jobs on | 
 **include_state** | **character**| include {@link de.unijena.bioinf.ms.middleware.compute.model.JobProgress de.unijena.bioinf.ms.middleware.compute.model.JobProgress} states. | [optional] [default to FALSE]
 **include_command** | **character**| include job commands. | [optional] [default to FALSE]
 **include_affected_compounds** | **character**| include list of compound ids affected by this job (if available) | [optional] [default to FALSE]

### Return type

[**array[JobId]**](JobId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

# **PostJobConfig**
> character PostJobConfig(name, job_submission, override_existing = FALSE)

Add new job configuration with given name.

Add new job configuration with given name.

### Example
```R
library(RSirius)

# Add new job configuration with given name.
#
# prepare function argument(s)
var_name <- "name_example" # character | name of the job-config to add
var_job_submission <- JobSubmission$new(c("compoundIds_example"), c("fallbackAdducts_example"), c("enforcedAdducts_example"), c("detectableAdducts_example"), "recompute_example", Sirius$new("enabled_example", "QTOF", 123, 123, 123, "IGNORE", c("ALL"), "enforcedFormulaConstraints_example", "fallbackFormulaConstraints_example", c("detectableElements_example"), Timeout$new(123, 123, "identifier_example"), UseHeuristic$new(123, 123, "identifier_example")), Zodiac$new("enabled_example", ZodiacNumberOfConsideredCandidatesAt300Mz$new(123, "identifier_example"), ZodiacNumberOfConsideredCandidatesAt800Mz$new(123, "identifier_example"), ZodiacRunInTwoSteps$new("value_example", "identifier_example"), ZodiacEdgeFilterThresholds$new(123, 123, 123, "identifier_example"), ZodiacEpochs$new(123, 123, 123, "identifier_example")), FingerprintPrediction$new("enabled_example", "useScoreThreshold_example"), StructureDbSearch$new("enabled_example", c("ALL"), "tagLipids_example"), Canopus$new("enabled_example"), c(key = "inner_example")) # JobSubmission | to add
var_override_existing <- FALSE # character |  (Optional)

api_instance <- ComputationsApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$PostJobConfig(var_name, var_job_submission, override_existing = var_override_existingdata_file = "result.txt")
result <- api_instance$PostJobConfig(var_name, var_job_submission, override_existing = var_override_existing)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **character**| name of the job-config to add | 
 **job_submission** | [**JobSubmission**](JobSubmission.md)| to add | 
 **override_existing** | **character**|  | [optional] [default to FALSE]

### Return type

**character**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Probably modified name of the config (to ensure filesystem path compatibility). |  -  |

# **StartJob**
> JobId StartJob(project_id, job_submission, include_state = TRUE, include_command = TRUE, include_affected_compounds = FALSE)

Start computation for given compounds and with given parameters.

Start computation for given compounds and with given parameters.

### Example
```R
library(RSirius)

# Start computation for given compounds and with given parameters.
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to run jobs on
var_job_submission <- JobSubmission$new(c("compoundIds_example"), c("fallbackAdducts_example"), c("enforcedAdducts_example"), c("detectableAdducts_example"), "recompute_example", Sirius$new("enabled_example", "QTOF", 123, 123, 123, "IGNORE", c("ALL"), "enforcedFormulaConstraints_example", "fallbackFormulaConstraints_example", c("detectableElements_example"), Timeout$new(123, 123, "identifier_example"), UseHeuristic$new(123, 123, "identifier_example")), Zodiac$new("enabled_example", ZodiacNumberOfConsideredCandidatesAt300Mz$new(123, "identifier_example"), ZodiacNumberOfConsideredCandidatesAt800Mz$new(123, "identifier_example"), ZodiacRunInTwoSteps$new("value_example", "identifier_example"), ZodiacEdgeFilterThresholds$new(123, 123, 123, "identifier_example"), ZodiacEpochs$new(123, 123, 123, "identifier_example")), FingerprintPrediction$new("enabled_example", "useScoreThreshold_example"), StructureDbSearch$new("enabled_example", c("ALL"), "tagLipids_example"), Canopus$new("enabled_example"), c(key = "inner_example")) # JobSubmission | configuration of the job that will be submitted of the job to be returned
var_include_state <- TRUE # character | include {@link de.unijena.bioinf.ms.middleware.compute.model.JobProgress de.unijena.bioinf.ms.middleware.compute.model.JobProgress} state. (Optional)
var_include_command <- TRUE # character | include job command. (Optional)
var_include_affected_compounds <- FALSE # character | include list of compound ids affected by this job (if available) (Optional)

api_instance <- ComputationsApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$StartJob(var_project_id, var_job_submission, include_state = var_include_state, include_command = var_include_command, include_affected_compounds = var_include_affected_compoundsdata_file = "result.txt")
result <- api_instance$StartJob(var_project_id, var_job_submission, include_state = var_include_state, include_command = var_include_command, include_affected_compounds = var_include_affected_compounds)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to run jobs on | 
 **job_submission** | [**JobSubmission**](JobSubmission.md)| configuration of the job that will be submitted of the job to be returned | 
 **include_state** | **character**| include {@link de.unijena.bioinf.ms.middleware.compute.model.JobProgress de.unijena.bioinf.ms.middleware.compute.model.JobProgress} state. | [optional] [default to TRUE]
 **include_command** | **character**| include job command. | [optional] [default to TRUE]
 **include_affected_compounds** | **character**| include list of compound ids affected by this job (if available) | [optional] [default to FALSE]

### Return type

[**JobId**](JobId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **202** | Accepted |  -  |

# **StartJobFromConfig**
> JobId StartJobFromConfig(project_id, job_config_name, request_body, recompute = var.recompute, include_state = TRUE, include_command = TRUE, include_affected_compounds = FALSE)

Start computation for given compounds and with parameters from a stored job-config.

Start computation for given compounds and with parameters from a stored job-config.

### Example
```R
library(RSirius)

# Start computation for given compounds and with parameters from a stored job-config.
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to run jobs on
var_job_config_name <- "job_config_name_example" # character | name if the config to be used
var_request_body <- c("property_example") # array[character] | compound ids to be computed
var_recompute <- "recompute_example" # character | enable or disable recompute. If null the stored value will be used. (Optional)
var_include_state <- TRUE # character | include {@link de.unijena.bioinf.ms.middleware.compute.model.JobProgress de.unijena.bioinf.ms.middleware.compute.model.JobProgress} state. (Optional)
var_include_command <- TRUE # character | include job command. (Optional)
var_include_affected_compounds <- FALSE # character | include list of compound ids affected by this job (if available) (Optional)

api_instance <- ComputationsApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$StartJobFromConfig(var_project_id, var_job_config_name, var_request_body, recompute = var_recompute, include_state = var_include_state, include_command = var_include_command, include_affected_compounds = var_include_affected_compoundsdata_file = "result.txt")
result <- api_instance$StartJobFromConfig(var_project_id, var_job_config_name, var_request_body, recompute = var_recompute, include_state = var_include_state, include_command = var_include_command, include_affected_compounds = var_include_affected_compounds)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to run jobs on | 
 **job_config_name** | **character**| name if the config to be used | 
 **request_body** | list( **character** )| compound ids to be computed | 
 **recompute** | **character**| enable or disable recompute. If null the stored value will be used. | [optional] 
 **include_state** | **character**| include {@link de.unijena.bioinf.ms.middleware.compute.model.JobProgress de.unijena.bioinf.ms.middleware.compute.model.JobProgress} state. | [optional] [default to TRUE]
 **include_command** | **character**| include job command. | [optional] [default to TRUE]
 **include_affected_compounds** | **character**| include list of compound ids affected by this job (if available) | [optional] [default to FALSE]

### Return type

[**JobId**](JobId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **202** | Accepted |  -  |

