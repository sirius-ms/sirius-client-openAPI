# PySirius.JobsApi

All URIs are relative to *http://localhost:8888*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_job**](JobsApi.md#delete_job) | **DELETE** /api/projects/{projectId}/jobs/{jobId} | Delete job.
[**delete_job_config**](JobsApi.md#delete_job_config) | **DELETE** /api/job-configs/{name} | Delete job configuration with given name.
[**delete_jobs**](JobsApi.md#delete_jobs) | **DELETE** /api/projects/{projectId}/jobs | * Delete ALL jobs.
[**get_command**](JobsApi.md#get_command) | **POST** /api/job-configs/get-command | Get a CLI command for the given job configuration.
[**get_default_job_config**](JobsApi.md#get_default_job_config) | **GET** /api/default-job-config | Request default job configuration
[**get_job**](JobsApi.md#get_job) | **GET** /api/projects/{projectId}/jobs/{jobId} | Get job information and its current state and progress (if available).
[**get_job_config**](JobsApi.md#get_job_config) | **GET** /api/job-configs/{name} | Request job configuration with given name.
[**get_job_config_names**](JobsApi.md#get_job_config_names) | **GET** /api/job-config-names | [DEPRECATED] Get all (non-default) job configuration names  
[**get_job_configs**](JobsApi.md#get_job_configs) | **GET** /api/job-configs | Request all available job configurations
[**get_jobs**](JobsApi.md#get_jobs) | **GET** /api/projects/{projectId}/jobs | Get List of all available jobs with information such as current state and progress (if available).
[**get_jobs_paged**](JobsApi.md#get_jobs_paged) | **GET** /api/projects/{projectId}/jobs/page | Get Page of jobs with information such as current state and progress (if available).
[**has_jobs**](JobsApi.md#has_jobs) | **GET** /api/projects/{projectId}/has-jobs | 
[**save_job_config**](JobsApi.md#save_job_config) | **POST** /api/job-configs/{name} | Add new job configuration with given name.
[**start_command**](JobsApi.md#start_command) | **POST** /api/projects/{projectId}/jobs/run-command | [DEPRECATED] Start computation for given command and input
[**start_job**](JobsApi.md#start_job) | **POST** /api/projects/{projectId}/jobs | Start computation for given compounds and with given parameters.
[**start_job_from_config**](JobsApi.md#start_job_from_config) | **POST** /api/projects/{projectId}/jobs/from-config | Start computation for given compounds and with parameters from a stored job-config.


# **delete_job**
> delete_job(project_id, job_id, cancel_if_running=cancel_if_running, await_deletion=await_deletion)

Delete job.

Delete job. Specify how to behave for running jobs.

### Example


```python
import PySirius
from PySirius.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8888
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8888"
)


# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = PySirius.JobsApi(api_client)
    project_id = 'project_id_example' # str | project-space to delete job from
    job_id = 'job_id_example' # str | of the job to be deleted
    cancel_if_running = True # bool | If true, job will be canceled if it is not finished. Otherwise,                         deletion will fail for running jobs or request will block until job has finished. (optional) (default to True)
    await_deletion = True # bool | If true, request will block until deletion succeeded or failed.                         If the job is still running the request will wait until the job has finished. (optional) (default to True)

    try:
        # Delete job.
        api_instance.delete_job(project_id, job_id, cancel_if_running=cancel_if_running, await_deletion=await_deletion)
    except Exception as e:
        print("Exception when calling JobsApi->delete_job: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to delete job from | 
 **job_id** | **str**| of the job to be deleted | 
 **cancel_if_running** | **bool**| If true, job will be canceled if it is not finished. Otherwise,                         deletion will fail for running jobs or request will block until job has finished. | [optional] [default to True]
 **await_deletion** | **bool**| If true, request will block until deletion succeeded or failed.                         If the job is still running the request will wait until the job has finished. | [optional] [default to True]

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
**202** | Accepted |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_job_config**
> delete_job_config(name)

Delete job configuration with given name.

Delete job configuration with given name.

### Example


```python
import PySirius
from PySirius.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8888
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8888"
)


# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = PySirius.JobsApi(api_client)
    name = 'name_example' # str | name of the job-config to delete

    try:
        # Delete job configuration with given name.
        api_instance.delete_job_config(name)
    except Exception as e:
        print("Exception when calling JobsApi->delete_job_config: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**| name of the job-config to delete | 

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
**202** | Accepted |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_jobs**
> delete_jobs(project_id, cancel_if_running=cancel_if_running, await_deletion=await_deletion)

* Delete ALL jobs.

* Delete ALL jobs. Specify how to behave for running jobs.

### Example


```python
import PySirius
from PySirius.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8888
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8888"
)


# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = PySirius.JobsApi(api_client)
    project_id = 'project_id_example' # str | project-space to delete jobs from
    cancel_if_running = True # bool | If true, job will be canceled if it is not finished. Otherwise,                         deletion will fail for running jobs or request will block until job has finished. (optional) (default to True)
    await_deletion = True # bool | If true, request will block until deletion succeeded or failed.                         If the job is still running the request will wait until the job has finished. (optional) (default to True)

    try:
        # * Delete ALL jobs.
        api_instance.delete_jobs(project_id, cancel_if_running=cancel_if_running, await_deletion=await_deletion)
    except Exception as e:
        print("Exception when calling JobsApi->delete_jobs: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to delete jobs from | 
 **cancel_if_running** | **bool**| If true, job will be canceled if it is not finished. Otherwise,                         deletion will fail for running jobs or request will block until job has finished. | [optional] [default to True]
 **await_deletion** | **bool**| If true, request will block until deletion succeeded or failed.                         If the job is still running the request will wait until the job has finished. | [optional] [default to True]

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
**202** | Accepted |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_command**
> List[str] get_command(job_submission)

Get a CLI command for the given job configuration.

Get a CLI command for the given job configuration.

### Example


```python
import PySirius
from PySirius.models.job_submission import JobSubmission
from PySirius.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8888
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8888"
)


# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = PySirius.JobsApi(api_client)
    job_submission = PySirius.JobSubmission() # JobSubmission | 

    try:
        # Get a CLI command for the given job configuration.
        api_response = api_instance.get_command(job_submission)
        print("The response of JobsApi->get_command:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling JobsApi->get_command: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_submission** | [**JobSubmission**](JobSubmission.md)|  | 

### Return type

**List[str]**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_default_job_config**
> JobSubmission get_default_job_config(include_config_map=include_config_map, move_parameters_to_config_map=move_parameters_to_config_map, include_custom_dbs_for_structure_search=include_custom_dbs_for_structure_search)

Request default job configuration

Request default job configuration

### Example


```python
import PySirius
from PySirius.models.job_submission import JobSubmission
from PySirius.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8888
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8888"
)


# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = PySirius.JobsApi(api_client)
    include_config_map = False # bool | if true, generic configmap with-defaults will be included (optional) (default to False)
    move_parameters_to_config_map = False # bool | if true, object-based parameters will be converted to and added to the generic configMap parameters (optional) (default to False)
    include_custom_dbs_for_structure_search = False # bool | if true, default database selection of structure db search                                            spectral library search contains also all available custom DB.                                            If No custom dbs are selected, spectral library search is disabled by default. (optional) (default to False)

    try:
        # Request default job configuration
        api_response = api_instance.get_default_job_config(include_config_map=include_config_map, move_parameters_to_config_map=move_parameters_to_config_map, include_custom_dbs_for_structure_search=include_custom_dbs_for_structure_search)
        print("The response of JobsApi->get_default_job_config:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling JobsApi->get_default_job_config: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include_config_map** | **bool**| if true, generic configmap with-defaults will be included | [optional] [default to False]
 **move_parameters_to_config_map** | **bool**| if true, object-based parameters will be converted to and added to the generic configMap parameters | [optional] [default to False]
 **include_custom_dbs_for_structure_search** | **bool**| if true, default database selection of structure db search                                            spectral library search contains also all available custom DB.                                            If No custom dbs are selected, spectral library search is disabled by default. | [optional] [default to False]

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
**200** | {@link JobSubmission JobSubmission} with all parameters set to default values. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_job**
> Job get_job(project_id, job_id, opt_fields=opt_fields)

Get job information and its current state and progress (if available).

Get job information and its current state and progress (if available).

### Example


```python
import PySirius
from PySirius.models.job import Job
from PySirius.models.job_opt_field import JobOptField
from PySirius.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8888
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8888"
)


# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = PySirius.JobsApi(api_client)
    project_id = 'project_id_example' # str | project-space to run jobs on
    job_id = 'job_id_example' # str | of the job to be returned
    opt_fields = ["progress"] # List[JobOptField] | set of optional fields to be included. Use 'none' only to override defaults. (optional) (default to ["progress"])

    try:
        # Get job information and its current state and progress (if available).
        api_response = api_instance.get_job(project_id, job_id, opt_fields=opt_fields)
        print("The response of JobsApi->get_job:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling JobsApi->get_job: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to run jobs on | 
 **job_id** | **str**| of the job to be returned | 
 **opt_fields** | [**List[JobOptField]**](JobOptField.md)| set of optional fields to be included. Use &#39;none&#39; only to override defaults. | [optional] [default to [&quot;progress&quot;]]

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
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_job_config**
> StoredJobSubmission get_job_config(name, move_parameters_to_config_map=move_parameters_to_config_map)

Request job configuration with given name.

Request job configuration with given name.

### Example


```python
import PySirius
from PySirius.models.stored_job_submission import StoredJobSubmission
from PySirius.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8888
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8888"
)


# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = PySirius.JobsApi(api_client)
    name = 'name_example' # str | name of the job-config to return
    move_parameters_to_config_map = False # bool | if true, object-based parameters will be converted to and added to the generic configMap parameters (optional) (default to False)

    try:
        # Request job configuration with given name.
        api_response = api_instance.get_job_config(name, move_parameters_to_config_map=move_parameters_to_config_map)
        print("The response of JobsApi->get_job_config:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling JobsApi->get_job_config: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**| name of the job-config to return | 
 **move_parameters_to_config_map** | **bool**| if true, object-based parameters will be converted to and added to the generic configMap parameters | [optional] [default to False]

### Return type

[**StoredJobSubmission**](StoredJobSubmission.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | {@link JobSubmission JobSubmission} for given name. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_job_config_names**
> List[str] get_job_config_names()

[DEPRECATED] Get all (non-default) job configuration names  

[DEPRECATED] Get all (non-default) job configuration names
 <p>
 [DEPRECATED] Use /job-configs to get all configs with names. This endpoint is based on local file paths and will likely be removed in future versions of this API.

### Example


```python
import PySirius
from PySirius.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8888
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8888"
)


# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = PySirius.JobsApi(api_client)

    try:
        # [DEPRECATED] Get all (non-default) job configuration names  
        api_response = api_instance.get_job_config_names()
        print("The response of JobsApi->get_job_config_names:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling JobsApi->get_job_config_names: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

**List[str]**

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

# **get_job_configs**
> List[StoredJobSubmission] get_job_configs()

Request all available job configurations

Request all available job configurations

### Example


```python
import PySirius
from PySirius.models.stored_job_submission import StoredJobSubmission
from PySirius.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8888
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8888"
)


# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = PySirius.JobsApi(api_client)

    try:
        # Request all available job configurations
        api_response = api_instance.get_job_configs()
        print("The response of JobsApi->get_job_configs:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling JobsApi->get_job_configs: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**List[StoredJobSubmission]**](StoredJobSubmission.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | list of available {@link JobSubmission JobSubmission}s |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_jobs**
> List[Job] get_jobs(project_id, opt_fields=opt_fields)

Get List of all available jobs with information such as current state and progress (if available).

Get List of all available jobs with information such as current state and progress (if available).

### Example


```python
import PySirius
from PySirius.models.job import Job
from PySirius.models.job_opt_field import JobOptField
from PySirius.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8888
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8888"
)


# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = PySirius.JobsApi(api_client)
    project_id = 'project_id_example' # str | project-space to run jobs on
    opt_fields = ["none"] # List[JobOptField] | set of optional fields to be included. Use 'none' only to override defaults. (optional) (default to ["none"])

    try:
        # Get List of all available jobs with information such as current state and progress (if available).
        api_response = api_instance.get_jobs(project_id, opt_fields=opt_fields)
        print("The response of JobsApi->get_jobs:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling JobsApi->get_jobs: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to run jobs on | 
 **opt_fields** | [**List[JobOptField]**](JobOptField.md)| set of optional fields to be included. Use &#39;none&#39; only to override defaults. | [optional] [default to [&quot;none&quot;]]

### Return type

[**List[Job]**](Job.md)

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

# **get_jobs_paged**
> PagedModelJob get_jobs_paged(project_id, page=page, size=size, sort=sort, opt_fields=opt_fields)

Get Page of jobs with information such as current state and progress (if available).

Get Page of jobs with information such as current state and progress (if available).

### Example


```python
import PySirius
from PySirius.models.job_opt_field import JobOptField
from PySirius.models.paged_model_job import PagedModelJob
from PySirius.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8888
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8888"
)


# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = PySirius.JobsApi(api_client)
    project_id = 'project_id_example' # str | project-space to run jobs on
    page = 0 # int | Zero-based page index (0..N) (optional) (default to 0)
    size = 20 # int | The size of the page to be returned (optional) (default to 20)
    sort = ['sort_example'] # List[str] | Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported. (optional)
    opt_fields = ["none"] # List[JobOptField] | set of optional fields to be included. Use 'none' only to override defaults. (optional) (default to ["none"])

    try:
        # Get Page of jobs with information such as current state and progress (if available).
        api_response = api_instance.get_jobs_paged(project_id, page=page, size=size, sort=sort, opt_fields=opt_fields)
        print("The response of JobsApi->get_jobs_paged:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling JobsApi->get_jobs_paged: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to run jobs on | 
 **page** | **int**| Zero-based page index (0..N) | [optional] [default to 0]
 **size** | **int**| The size of the page to be returned | [optional] [default to 20]
 **sort** | [**List[str]**](str.md)| Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] 
 **opt_fields** | [**List[JobOptField]**](JobOptField.md)| set of optional fields to be included. Use &#39;none&#39; only to override defaults. | [optional] [default to [&quot;none&quot;]]

### Return type

[**PagedModelJob**](PagedModelJob.md)

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

# **has_jobs**
> bool has_jobs(project_id, include_finished=include_finished)

### Example


```python
import PySirius
from PySirius.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8888
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8888"
)


# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = PySirius.JobsApi(api_client)
    project_id = 'project_id_example' # str | 
    include_finished = False # bool |  (optional) (default to False)

    try:
        api_response = api_instance.has_jobs(project_id, include_finished=include_finished)
        print("The response of JobsApi->has_jobs:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling JobsApi->has_jobs: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**|  | 
 **include_finished** | **bool**|  | [optional] [default to False]

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

# **save_job_config**
> StoredJobSubmission save_job_config(name, job_submission, override_existing=override_existing, move_parameters_to_config_map=move_parameters_to_config_map)

Add new job configuration with given name.

Add new job configuration with given name.

### Example


```python
import PySirius
from PySirius.models.job_submission import JobSubmission
from PySirius.models.stored_job_submission import StoredJobSubmission
from PySirius.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8888
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8888"
)


# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = PySirius.JobsApi(api_client)
    name = 'name_example' # str | name of the job-config to add
    job_submission = PySirius.JobSubmission() # JobSubmission | to add
    override_existing = False # bool |  (optional) (default to False)
    move_parameters_to_config_map = False # bool | if true, object-based parameters will be converted to and added to the generic configMap parameters in the return object (optional) (default to False)

    try:
        # Add new job configuration with given name.
        api_response = api_instance.save_job_config(name, job_submission, override_existing=override_existing, move_parameters_to_config_map=move_parameters_to_config_map)
        print("The response of JobsApi->save_job_config:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling JobsApi->save_job_config: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**| name of the job-config to add | 
 **job_submission** | [**JobSubmission**](JobSubmission.md)| to add | 
 **override_existing** | **bool**|  | [optional] [default to False]
 **move_parameters_to_config_map** | **bool**| if true, object-based parameters will be converted to and added to the generic configMap parameters in the return object | [optional] [default to False]

### Return type

[**StoredJobSubmission**](StoredJobSubmission.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | StoredJobSubmission that contains the JobSubmission and the probably modified name of the config (to ensure path compatibility). |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **start_command**
> Job start_command(project_id, command_submission, opt_fields=opt_fields)

[DEPRECATED] Start computation for given command and input

[DEPRECATED] Start computation for given command and input.
 <p>
 [DEPRECATED] this endpoint is based on local file paths and will likely be removed in future versions of this API.

### Example


```python
import PySirius
from PySirius.models.command_submission import CommandSubmission
from PySirius.models.job import Job
from PySirius.models.job_opt_field import JobOptField
from PySirius.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8888
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8888"
)


# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = PySirius.JobsApi(api_client)
    project_id = 'project_id_example' # str | project-space to perform the command for.
    command_submission = PySirius.CommandSubmission() # CommandSubmission | the command and the input to be executed
    opt_fields = ["progress"] # List[JobOptField] | set of optional fields to be included. Use 'none' only to override defaults. (optional) (default to ["progress"])

    try:
        # [DEPRECATED] Start computation for given command and input
        api_response = api_instance.start_command(project_id, command_submission, opt_fields=opt_fields)
        print("The response of JobsApi->start_command:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling JobsApi->start_command: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to perform the command for. | 
 **command_submission** | [**CommandSubmission**](CommandSubmission.md)| the command and the input to be executed | 
 **opt_fields** | [**List[JobOptField]**](JobOptField.md)| set of optional fields to be included. Use &#39;none&#39; only to override defaults. | [optional] [default to [&quot;progress&quot;]]

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
**200** | Job of the command to be executed. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **start_job**
> Job start_job(project_id, job_submission, opt_fields=opt_fields)

Start computation for given compounds and with given parameters.

Start computation for given compounds and with given parameters.

### Example


```python
import PySirius
from PySirius.models.job import Job
from PySirius.models.job_opt_field import JobOptField
from PySirius.models.job_submission import JobSubmission
from PySirius.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8888
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8888"
)


# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = PySirius.JobsApi(api_client)
    project_id = 'project_id_example' # str | project-space to run jobs on
    job_submission = PySirius.JobSubmission() # JobSubmission | configuration of the job that will be submitted of the job to be returned
    opt_fields = ["command","progress"] # List[JobOptField] | set of optional fields to be included. Use 'none' only to override defaults. (optional) (default to ["command","progress"])

    try:
        # Start computation for given compounds and with given parameters.
        api_response = api_instance.start_job(project_id, job_submission, opt_fields=opt_fields)
        print("The response of JobsApi->start_job:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling JobsApi->start_job: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to run jobs on | 
 **job_submission** | [**JobSubmission**](JobSubmission.md)| configuration of the job that will be submitted of the job to be returned | 
 **opt_fields** | [**List[JobOptField]**](JobOptField.md)| set of optional fields to be included. Use &#39;none&#39; only to override defaults. | [optional] [default to [&quot;command&quot;,&quot;progress&quot;]]

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
**202** | Accepted |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **start_job_from_config**
> Job start_job_from_config(project_id, job_config_name, request_body, recompute=recompute, opt_fields=opt_fields)

Start computation for given compounds and with parameters from a stored job-config.

Start computation for given compounds and with parameters from a stored job-config.

### Example


```python
import PySirius
from PySirius.models.job import Job
from PySirius.models.job_opt_field import JobOptField
from PySirius.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8888
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8888"
)


# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = PySirius.JobsApi(api_client)
    project_id = 'project_id_example' # str | project-space to run jobs on
    job_config_name = 'job_config_name_example' # str | name if the config to be used
    request_body = ['request_body_example'] # List[str] | List of alignedFeatureIds to be computed
    recompute = True # bool | enable or disable recompute. If null the stored value will be used. (optional)
    opt_fields = ["command","progress"] # List[JobOptField] | set of optional fields to be included. Use 'none' only to override defaults. (optional) (default to ["command","progress"])

    try:
        # Start computation for given compounds and with parameters from a stored job-config.
        api_response = api_instance.start_job_from_config(project_id, job_config_name, request_body, recompute=recompute, opt_fields=opt_fields)
        print("The response of JobsApi->start_job_from_config:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling JobsApi->start_job_from_config: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to run jobs on | 
 **job_config_name** | **str**| name if the config to be used | 
 **request_body** | [**List[str]**](str.md)| List of alignedFeatureIds to be computed | 
 **recompute** | **bool**| enable or disable recompute. If null the stored value will be used. | [optional] 
 **opt_fields** | [**List[JobOptField]**](JobOptField.md)| set of optional fields to be included. Use &#39;none&#39; only to override defaults. | [optional] [default to [&quot;command&quot;,&quot;progress&quot;]]

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
**202** | Accepted |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

