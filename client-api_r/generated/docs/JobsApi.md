# JobsApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**DeleteJob**](JobsApi.md#DeleteJob) | **DELETE** /api/projects/{projectId}/jobs/{jobId} | Delete job.
[**DeleteJobConfig**](JobsApi.md#DeleteJobConfig) | **DELETE** /api/job-configs/{name} | Delete job configuration with given name.
[**DeleteJobs**](JobsApi.md#DeleteJobs) | **DELETE** /api/projects/{projectId}/jobs | * Delete ALL jobs.
[**GetDefaultJobConfig**](JobsApi.md#GetDefaultJobConfig) | **GET** /api/default-job-config | Request default job configuration
[**GetJob**](JobsApi.md#GetJob) | **GET** /api/projects/{projectId}/jobs/{jobId} | Get job information and its current state and progress (if available).
[**GetJobConfig**](JobsApi.md#GetJobConfig) | **GET** /api/job-configs/{name} | Request job configuration with given name.
[**GetJobConfigs**](JobsApi.md#GetJobConfigs) | **GET** /api/job-configs | Request all available job configurations
[**GetJobs**](JobsApi.md#GetJobs) | **GET** /api/projects/{projectId}/jobs | Get List of all available jobs with information such as current state and progress (if available).
[**GetJobsPaged**](JobsApi.md#GetJobsPaged) | **GET** /api/projects/{projectId}/jobs/page | Get Page of jobs with information such as current state and progress (if available).
[**HasJobs**](JobsApi.md#HasJobs) | **GET** /api/projects/{projectId}/has-jobs | 
[**SaveJobConfig**](JobsApi.md#SaveJobConfig) | **POST** /api/job-configs/{name} | Add new job configuration with given name.
[**StartCommand**](JobsApi.md#StartCommand) | **POST** /api/{projectId}/jobs/run-command | Start computation for given command and input.
[**StartJob**](JobsApi.md#StartJob) | **POST** /api/projects/{projectId}/jobs | Start computation for given compounds and with given parameters.
[**StartJobFromConfig**](JobsApi.md#StartJobFromConfig) | **POST** /api/projects/{projectId}/jobs/from-config | Start computation for given compounds and with parameters from a stored job-config.


# **DeleteJob**
> DeleteJob(project_id, job_id, cancel_if_running = TRUE, await_deletion = TRUE)

Delete job.

Delete job. Specify how to behave for running jobs.

### Example
```R
library(Rsirius)

# Delete job.
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to delete job from
var_job_id <- "job_id_example" # character | of the job to be deleted
var_cancel_if_running <- TRUE # character | If true job will be canceled if it is not finished. Otherwise,                         deletion will fail for running jobs or request will block until job has finished. (Optional)
var_await_deletion <- TRUE # character | If true request will block until deletion succeeded or failed.                         If the job is still running the request will wait until the job has finished. (Optional)

api_instance <- rsirius_api$new()
api_instance$jobs_api$DeleteJob(var_project_id, var_job_id, cancel_if_running = var_cancel_if_running, await_deletion = var_await_deletion)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to delete job from | 
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
library(Rsirius)

# Delete job configuration with given name.
#
# prepare function argument(s)
var_name <- "name_example" # character | name of the job-config to delete

api_instance <- rsirius_api$new()
api_instance$jobs_api$DeleteJobConfig(var_name)
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

# **DeleteJobs**
> DeleteJobs(project_id, cancel_if_running = TRUE, await_deletion = TRUE)

* Delete ALL jobs.

* Delete ALL jobs. Specify how to behave for running jobs.

### Example
```R
library(Rsirius)

# * Delete ALL jobs.
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to delete jobs from
var_cancel_if_running <- TRUE # character | If true job will be canceled if it is not finished. Otherwise,                         deletion will fail for running jobs or request will block until job has finished. (Optional)
var_await_deletion <- TRUE # character | If true request will block until deletion succeeded or failed.                         If the job is still running the request will wait until the job has finished. (Optional)

api_instance <- rsirius_api$new()
api_instance$jobs_api$DeleteJobs(var_project_id, cancel_if_running = var_cancel_if_running, await_deletion = var_await_deletion)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to delete jobs from | 
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

# **GetDefaultJobConfig**
> JobSubmission GetDefaultJobConfig(include_config_map = FALSE)

Request default job configuration

Request default job configuration

### Example
```R
library(Rsirius)

# Request default job configuration
#
# prepare function argument(s)
var_include_config_map <- FALSE # character | if true, generic configmap with-defaults will be included (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetDefaultJobConfig(include_config_map = var_include_config_mapdata_file = "result.txt")
result <- api_instance$jobs_api$GetDefaultJobConfig(include_config_map = var_include_config_map)
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
> Job GetJob(project_id, job_id, opt_fields = ["progress"])

Get job information and its current state and progress (if available).

Get job information and its current state and progress (if available).

### Example
```R
library(Rsirius)

# Get job information and its current state and progress (if available).
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to run jobs on
var_job_id <- "job_id_example" # character | of the job to be returned
var_opt_fields <- c(JobOptField$new()) # array[JobOptField] | set of optional fields to be included. Use 'none' only to override defaults. (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetJob(var_project_id, var_job_id, opt_fields = var_opt_fieldsdata_file = "result.txt")
result <- api_instance$jobs_api$GetJob(var_project_id, var_job_id, opt_fields = var_opt_fields)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to run jobs on | 
 **job_id** | **character**| of the job to be returned | 
 **opt_fields** | list( [**JobOptField**](JobOptField.md) )| set of optional fields to be included. Use &#39;none&#39; only to override defaults. | [optional] [default to [&quot;progress&quot;]]

### Return type

[**Job**](Job.md)

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
library(Rsirius)

# Request job configuration with given name.
#
# prepare function argument(s)
var_name <- "name_example" # character | name of the job-config to return
var_include_config_map <- FALSE # character | if true the generic configmap will be part of the output (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetJobConfig(var_name, include_config_map = var_include_config_mapdata_file = "result.txt")
result <- api_instance$jobs_api$GetJobConfig(var_name, include_config_map = var_include_config_map)
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
library(Rsirius)

# Request all available job configurations
#
# prepare function argument(s)
var_include_config_map <- FALSE # character | if true the generic configmap will be part of the output (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetJobConfigs(include_config_map = var_include_config_mapdata_file = "result.txt")
result <- api_instance$jobs_api$GetJobConfigs(include_config_map = var_include_config_map)
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
> array[Job] GetJobs(project_id, opt_fields = [])

Get List of all available jobs with information such as current state and progress (if available).

Get List of all available jobs with information such as current state and progress (if available).

### Example
```R
library(Rsirius)

# Get List of all available jobs with information such as current state and progress (if available).
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to run jobs on
var_opt_fields <- c(JobOptField$new()) # array[JobOptField] | set of optional fields to be included. Use 'none' only to override defaults. (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetJobs(var_project_id, opt_fields = var_opt_fieldsdata_file = "result.txt")
result <- api_instance$jobs_api$GetJobs(var_project_id, opt_fields = var_opt_fields)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to run jobs on | 
 **opt_fields** | list( [**JobOptField**](JobOptField.md) )| set of optional fields to be included. Use &#39;none&#39; only to override defaults. | [optional] [default to []]

### Return type

[**array[Job]**](Job.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

# **GetJobsPaged**
> PageJob GetJobsPaged(project_id, page = 0, size = 20, sort = var.sort, opt_fields = [])

Get Page of jobs with information such as current state and progress (if available).

Get Page of jobs with information such as current state and progress (if available).

### Example
```R
library(Rsirius)

# Get Page of jobs with information such as current state and progress (if available).
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to run jobs on
var_page <- 0 # integer | Zero-based page index (0..N) (Optional)
var_size <- 20 # integer | The size of the page to be returned (Optional)
var_sort <- c("inner_example") # array[character] | Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported. (Optional)
var_opt_fields <- c(JobOptField$new()) # array[JobOptField] | set of optional fields to be included. Use 'none' only to override defaults. (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetJobsPaged(var_project_id, page = var_page, size = var_size, sort = var_sort, opt_fields = var_opt_fieldsdata_file = "result.txt")
result <- api_instance$jobs_api$GetJobsPaged(var_project_id, page = var_page, size = var_size, sort = var_sort, opt_fields = var_opt_fields)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to run jobs on | 
 **page** | **integer**| Zero-based page index (0..N) | [optional] [default to 0]
 **size** | **integer**| The size of the page to be returned | [optional] [default to 20]
 **sort** | list( **character** )| Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] 
 **opt_fields** | list( [**JobOptField**](JobOptField.md) )| set of optional fields to be included. Use &#39;none&#39; only to override defaults. | [optional] [default to []]

### Return type

[**PageJob**](PageJob.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

# **HasJobs**
> character HasJobs(project_id, include_finished = FALSE)



### Example
```R
library(Rsirius)

# prepare function argument(s)
var_project_id <- "project_id_example" # character | 
var_include_finished <- FALSE # character |  (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$HasJobs(var_project_id, include_finished = var_include_finisheddata_file = "result.txt")
result <- api_instance$jobs_api$HasJobs(var_project_id, include_finished = var_include_finished)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**|  | 
 **include_finished** | **character**|  | [optional] [default to FALSE]

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

# **SaveJobConfig**
> character SaveJobConfig(name, job_submission, override_existing = FALSE)

Add new job configuration with given name.

Add new job configuration with given name.

### Example
```R
library(Rsirius)

# Add new job configuration with given name.
#
# prepare function argument(s)
var_name <- "name_example" # character | name of the job-config to add
var_job_submission <- JobSubmission$new(c("compoundIds_example"), c("alignedFeatureIds_example"), c("fallbackAdducts_example"), c("enforcedAdducts_example"), c("detectableAdducts_example"), "recompute_example", SpectralLibrarySearch$new("enabled_example", c("spectraSearchDBs_example"), 123, 123, SpectralMatchingType$new()), Sirius$new("enabled_example", Instrument$new(), 123, 123, 123, "IGNORE", "filterByIsotopePattern_example", "enforceElGordoFormula_example", "performBottomUpSearch_example", 123, c("formulaSearchDBs_example"), "applyFormulaConstraintsToDBAndBottomUpSearch_example", "enforcedFormulaConstraints_example", "fallbackFormulaConstraints_example", c("detectableElements_example"), Timeout$new(123, 123), UseHeuristic$new(123, 123), "injectSpecLibMatchFormulas_example", 123, 123), Zodiac$new("enabled_example", 123, 123, "runInTwoSteps_example", ZodiacEdgeFilterThresholds$new(123, 123, 123), ZodiacEpochs$new(123, 123, 123)), FingerprintPrediction$new("enabled_example", "useScoreThreshold_example", "alwaysPredictHighRefMatches_example"), Canopus$new("enabled_example"), StructureDbSearch$new("enabled_example", c("structureSearchDBs_example"), "tagStructuresWithLipidClass_example", Mode$new()), MsNovelist$new("enabled_example", 123), c(key = "inner_example")) # JobSubmission | to add
var_override_existing <- FALSE # character |  (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$SaveJobConfig(var_name, var_job_submission, override_existing = var_override_existingdata_file = "result.txt")
result <- api_instance$jobs_api$SaveJobConfig(var_name, var_job_submission, override_existing = var_override_existing)
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

# **StartCommand**
> Job StartCommand(project_id, command_submission, opt_fields = ["progress"])

Start computation for given command and input.

Start computation for given command and input.

### Example
```R
library(Rsirius)

# Start computation for given command and input.
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to perform the command for.
var_command_submission <- CommandSubmission$new(c("command_example"), c("compoundIds_example"), c("alignedFeatureIds_example")) # CommandSubmission | the command and the input to be executed
var_opt_fields <- c(JobOptField$new()) # array[JobOptField] | set of optional fields to be included. Use 'none' only to override defaults. (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$StartCommand(var_project_id, var_command_submission, opt_fields = var_opt_fieldsdata_file = "result.txt")
result <- api_instance$jobs_api$StartCommand(var_project_id, var_command_submission, opt_fields = var_opt_fields)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to perform the command for. | 
 **command_submission** | [**CommandSubmission**](CommandSubmission.md)| the command and the input to be executed | 
 **opt_fields** | list( [**JobOptField**](JobOptField.md) )| set of optional fields to be included. Use &#39;none&#39; only to override defaults. | [optional] [default to [&quot;progress&quot;]]

### Return type

[**Job**](Job.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Job of the command to be executed.   DEPRECATED: this endpoint is based on local file paths and will likely be removed in future versions of this API. |  -  |

# **StartJob**
> Job StartJob(project_id, job_submission, opt_fields = ["command","progress"])

Start computation for given compounds and with given parameters.

Start computation for given compounds and with given parameters.

### Example
```R
library(Rsirius)

# Start computation for given compounds and with given parameters.
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to run jobs on
var_job_submission <- JobSubmission$new(c("compoundIds_example"), c("alignedFeatureIds_example"), c("fallbackAdducts_example"), c("enforcedAdducts_example"), c("detectableAdducts_example"), "recompute_example", SpectralLibrarySearch$new("enabled_example", c("spectraSearchDBs_example"), 123, 123, SpectralMatchingType$new()), Sirius$new("enabled_example", Instrument$new(), 123, 123, 123, "IGNORE", "filterByIsotopePattern_example", "enforceElGordoFormula_example", "performBottomUpSearch_example", 123, c("formulaSearchDBs_example"), "applyFormulaConstraintsToDBAndBottomUpSearch_example", "enforcedFormulaConstraints_example", "fallbackFormulaConstraints_example", c("detectableElements_example"), Timeout$new(123, 123), UseHeuristic$new(123, 123), "injectSpecLibMatchFormulas_example", 123, 123), Zodiac$new("enabled_example", 123, 123, "runInTwoSteps_example", ZodiacEdgeFilterThresholds$new(123, 123, 123), ZodiacEpochs$new(123, 123, 123)), FingerprintPrediction$new("enabled_example", "useScoreThreshold_example", "alwaysPredictHighRefMatches_example"), Canopus$new("enabled_example"), StructureDbSearch$new("enabled_example", c("structureSearchDBs_example"), "tagStructuresWithLipidClass_example", Mode$new()), MsNovelist$new("enabled_example", 123), c(key = "inner_example")) # JobSubmission | configuration of the job that will be submitted of the job to be returned
var_opt_fields <- c(JobOptField$new()) # array[JobOptField] | set of optional fields to be included. Use 'none' only to override defaults. (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$StartJob(var_project_id, var_job_submission, opt_fields = var_opt_fieldsdata_file = "result.txt")
result <- api_instance$jobs_api$StartJob(var_project_id, var_job_submission, opt_fields = var_opt_fields)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to run jobs on | 
 **job_submission** | [**JobSubmission**](JobSubmission.md)| configuration of the job that will be submitted of the job to be returned | 
 **opt_fields** | list( [**JobOptField**](JobOptField.md) )| set of optional fields to be included. Use &#39;none&#39; only to override defaults. | [optional] [default to [&quot;command&quot;,&quot;progress&quot;]]

### Return type

[**Job**](Job.md)

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
> Job StartJobFromConfig(project_id, job_config_name, request_body, recompute = var.recompute, opt_fields = ["command","progress"])

Start computation for given compounds and with parameters from a stored job-config.

Start computation for given compounds and with parameters from a stored job-config.

### Example
```R
library(Rsirius)

# Start computation for given compounds and with parameters from a stored job-config.
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to run jobs on
var_job_config_name <- "job_config_name_example" # character | name if the config to be used
var_request_body <- c("property_example") # array[character] | List of alignedFeatureIds to be computed
var_recompute <- "recompute_example" # character | enable or disable recompute. If null the stored value will be used. (Optional)
var_opt_fields <- c(JobOptField$new()) # array[JobOptField] | set of optional fields to be included. Use 'none' only to override defaults. (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$StartJobFromConfig(var_project_id, var_job_config_name, var_request_body, recompute = var_recompute, opt_fields = var_opt_fieldsdata_file = "result.txt")
result <- api_instance$jobs_api$StartJobFromConfig(var_project_id, var_job_config_name, var_request_body, recompute = var_recompute, opt_fields = var_opt_fields)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to run jobs on | 
 **job_config_name** | **character**| name if the config to be used | 
 **request_body** | list( **character** )| List of alignedFeatureIds to be computed | 
 **recompute** | **character**| enable or disable recompute. If null the stored value will be used. | [optional] 
 **opt_fields** | list( [**JobOptField**](JobOptField.md) )| set of optional fields to be included. Use &#39;none&#39; only to override defaults. | [optional] [default to [&quot;command&quot;,&quot;progress&quot;]]

### Return type

[**Job**](Job.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **202** | Accepted |  -  |

