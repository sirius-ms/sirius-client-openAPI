# swagger_client.ComputationsApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_job**](ComputationsApi.md#delete_job) | **DELETE** /api/projects/{projectId}/jobs/{jobId} | Delete job.
[**delete_job_config**](ComputationsApi.md#delete_job_config) | **DELETE** /api/job-configs/{name} | Delete job configuration with given name.
[**get_default_job_config**](ComputationsApi.md#get_default_job_config) | **GET** /api/default-job-config | Request default job configuration
[**get_job**](ComputationsApi.md#get_job) | **GET** /api/projects/{projectId}/jobs/{jobId} | Get job information and its current state and progress (if available).
[**get_job_config**](ComputationsApi.md#get_job_config) | **GET** /api/job-configs/{name} | Request job configuration with given name.
[**get_job_configs**](ComputationsApi.md#get_job_configs) | **GET** /api/job-configs | Request all available job configurations
[**get_jobs**](ComputationsApi.md#get_jobs) | **GET** /api/projects/{projectId}/jobs | Get job information and its current state and progress (if available).
[**post_job_config**](ComputationsApi.md#post_job_config) | **POST** /api/job-configs/{name} | Add new job configuration with given name.
[**start_job**](ComputationsApi.md#start_job) | **POST** /api/projects/{projectId}/jobs | Start computation for given compounds and with given parameters.
[**start_job_from_config**](ComputationsApi.md#start_job_from_config) | **POST** /api/projects/{projectId}/jobs-from-config | Start computation for given compounds and with parameters from a stored job-config.

# **delete_job**
> delete_job(project_id, job_id, cancel_if_running=cancel_if_running, await_deletion=await_deletion)

Delete job.

Delete job. Specify how to behave for running jobs.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.ComputationsApi()
project_id = 'project_id_example' # str | project-space to run jobs on
job_id = 'job_id_example' # str | of the job to be deleted
cancel_if_running = True # bool | If True job will be canceled if it is not finished. Otherwise,                         deletion will fail for running jobs or request will block until job has finished. (optional) (default to True)
await_deletion = True # bool | If True request will block until deletion succeeded or failed.                         If the job is still running the request will wait until the job has finished. (optional) (default to True)

try:
    # Delete job.
    api_instance.delete_job(project_id, job_id, cancel_if_running=cancel_if_running, await_deletion=await_deletion)
except ApiException as e:
    print("Exception when calling ComputationsApi->delete_job: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to run jobs on | 
 **job_id** | **str**| of the job to be deleted | 
 **cancel_if_running** | **bool**| If True job will be canceled if it is not finished. Otherwise,                         deletion will fail for running jobs or request will block until job has finished. | [optional] [default to True]
 **await_deletion** | **bool**| If True request will block until deletion succeeded or failed.                         If the job is still running the request will wait until the job has finished. | [optional] [default to True]

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_job_config**
> delete_job_config(name)

Delete job configuration with given name.

Delete job configuration with given name.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.ComputationsApi()
name = 'name_example' # str | name of the job-config to delete

try:
    # Delete job configuration with given name.
    api_instance.delete_job_config(name)
except ApiException as e:
    print("Exception when calling ComputationsApi->delete_job_config: %s\n" % e)
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_default_job_config**
> JobSubmission get_default_job_config(include_config_map=include_config_map)

Request default job configuration

Request default job configuration

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.ComputationsApi()
include_config_map = False # bool | if True, generic configmap with-defaults will be included (optional) (default to False)

try:
    # Request default job configuration
    api_response = api_instance.get_default_job_config(include_config_map=include_config_map)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ComputationsApi->get_default_job_config: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include_config_map** | **bool**| if True, generic configmap with-defaults will be included | [optional] [default to False]

### Return type

[**JobSubmission**](JobSubmission.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_job**
> JobId get_job(project_id, job_id, include_state=include_state, include_command=include_command, include_affected_compounds=include_affected_compounds)

Get job information and its current state and progress (if available).

Get job information and its current state and progress (if available).

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.ComputationsApi()
project_id = 'project_id_example' # str | project-space to run jobs on
job_id = 'job_id_example' # str | of the job to be returned
include_state = True # bool | include {@link de.unijena.bioinf.ms.middleware.compute.model.JobProgress de.unijena.bioinf.ms.middleware.compute.model.JobProgress} state. (optional) (default to True)
include_command = False # bool | include job command. (optional) (default to False)
include_affected_compounds = False # bool | include list of compound ids affected by this job (if available) (optional) (default to False)

try:
    # Get job information and its current state and progress (if available).
    api_response = api_instance.get_job(project_id, job_id, include_state=include_state, include_command=include_command, include_affected_compounds=include_affected_compounds)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ComputationsApi->get_job: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to run jobs on | 
 **job_id** | **str**| of the job to be returned | 
 **include_state** | **bool**| include {@link de.unijena.bioinf.ms.middleware.compute.model.JobProgress de.unijena.bioinf.ms.middleware.compute.model.JobProgress} state. | [optional] [default to True]
 **include_command** | **bool**| include job command. | [optional] [default to False]
 **include_affected_compounds** | **bool**| include list of compound ids affected by this job (if available) | [optional] [default to False]

### Return type

[**JobId**](JobId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_job_config**
> JobSubmission get_job_config(name, include_config_map=include_config_map)

Request job configuration with given name.

Request job configuration with given name.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.ComputationsApi()
name = 'name_example' # str | name of the job-config to return
include_config_map = False # bool | if True the generic configmap will be part of the output (optional) (default to False)

try:
    # Request job configuration with given name.
    api_response = api_instance.get_job_config(name, include_config_map=include_config_map)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ComputationsApi->get_job_config: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**| name of the job-config to return | 
 **include_config_map** | **bool**| if True the generic configmap will be part of the output | [optional] [default to False]

### Return type

[**JobSubmission**](JobSubmission.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_job_configs**
> list[JobSubmission] get_job_configs(include_config_map=include_config_map)

Request all available job configurations

Request all available job configurations

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.ComputationsApi()
include_config_map = False # bool | if True the generic configmap will be part of the output (optional) (default to False)

try:
    # Request all available job configurations
    api_response = api_instance.get_job_configs(include_config_map=include_config_map)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ComputationsApi->get_job_configs: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include_config_map** | **bool**| if True the generic configmap will be part of the output | [optional] [default to False]

### Return type

[**list[JobSubmission]**](JobSubmission.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_jobs**
> list[JobId] get_jobs(project_id, include_state=include_state, include_command=include_command, include_affected_compounds=include_affected_compounds)

Get job information and its current state and progress (if available).

Get job information and its current state and progress (if available).

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.ComputationsApi()
project_id = 'project_id_example' # str | project-space to run jobs on
include_state = False # bool | include {@link de.unijena.bioinf.ms.middleware.compute.model.JobProgress de.unijena.bioinf.ms.middleware.compute.model.JobProgress} states. (optional) (default to False)
include_command = False # bool | include job commands. (optional) (default to False)
include_affected_compounds = False # bool | include list of compound ids affected by this job (if available) (optional) (default to False)

try:
    # Get job information and its current state and progress (if available).
    api_response = api_instance.get_jobs(project_id, include_state=include_state, include_command=include_command, include_affected_compounds=include_affected_compounds)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ComputationsApi->get_jobs: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to run jobs on | 
 **include_state** | **bool**| include {@link de.unijena.bioinf.ms.middleware.compute.model.JobProgress de.unijena.bioinf.ms.middleware.compute.model.JobProgress} states. | [optional] [default to False]
 **include_command** | **bool**| include job commands. | [optional] [default to False]
 **include_affected_compounds** | **bool**| include list of compound ids affected by this job (if available) | [optional] [default to False]

### Return type

[**list[JobId]**](JobId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_job_config**
> str post_job_config(body, name, override_existing=override_existing)

Add new job configuration with given name.

Add new job configuration with given name.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.ComputationsApi()
body = swagger_client.JobSubmission() # JobSubmission | to add
name = 'name_example' # str | name of the job-config to add
override_existing = False # bool |  (optional) (default to False)

try:
    # Add new job configuration with given name.
    api_response = api_instance.post_job_config(body, name, override_existing=override_existing)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ComputationsApi->post_job_config: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**JobSubmission**](JobSubmission.md)| to add | 
 **name** | **str**| name of the job-config to add | 
 **override_existing** | **bool**|  | [optional] [default to False]

### Return type

**str**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **start_job**
> JobId start_job(body, project_id, include_state=include_state, include_command=include_command, include_affected_compounds=include_affected_compounds)

Start computation for given compounds and with given parameters.

Start computation for given compounds and with given parameters.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.ComputationsApi()
body = swagger_client.JobSubmission() # JobSubmission | configuration of the job that will be submitted of the job to be returned
project_id = 'project_id_example' # str | project-space to run jobs on
include_state = True # bool | include {@link de.unijena.bioinf.ms.middleware.compute.model.JobProgress de.unijena.bioinf.ms.middleware.compute.model.JobProgress} state. (optional) (default to True)
include_command = True # bool | include job command. (optional) (default to True)
include_affected_compounds = False # bool | include list of compound ids affected by this job (if available) (optional) (default to False)

try:
    # Start computation for given compounds and with given parameters.
    api_response = api_instance.start_job(body, project_id, include_state=include_state, include_command=include_command, include_affected_compounds=include_affected_compounds)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ComputationsApi->start_job: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**JobSubmission**](JobSubmission.md)| configuration of the job that will be submitted of the job to be returned | 
 **project_id** | **str**| project-space to run jobs on | 
 **include_state** | **bool**| include {@link de.unijena.bioinf.ms.middleware.compute.model.JobProgress de.unijena.bioinf.ms.middleware.compute.model.JobProgress} state. | [optional] [default to True]
 **include_command** | **bool**| include job command. | [optional] [default to True]
 **include_affected_compounds** | **bool**| include list of compound ids affected by this job (if available) | [optional] [default to False]

### Return type

[**JobId**](JobId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **start_job_from_config**
> JobId start_job_from_config(body, job_config_name, project_id, recompute=recompute, include_state=include_state, include_command=include_command, include_affected_compounds=include_affected_compounds)

Start computation for given compounds and with parameters from a stored job-config.

Start computation for given compounds and with parameters from a stored job-config.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.ComputationsApi()
body = ['body_example'] # list[str] | compound ids to be computed
job_config_name = 'job_config_name_example' # str | name if the config to be used
project_id = 'project_id_example' # str | project-space to run jobs on
recompute = True # bool | enable or disable recompute. If null the stored value will be used. (optional)
include_state = True # bool | include {@link de.unijena.bioinf.ms.middleware.compute.model.JobProgress de.unijena.bioinf.ms.middleware.compute.model.JobProgress} state. (optional) (default to True)
include_command = True # bool | include job command. (optional) (default to True)
include_affected_compounds = False # bool | include list of compound ids affected by this job (if available) (optional) (default to False)

try:
    # Start computation for given compounds and with parameters from a stored job-config.
    api_response = api_instance.start_job_from_config(body, job_config_name, project_id, recompute=recompute, include_state=include_state, include_command=include_command, include_affected_compounds=include_affected_compounds)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ComputationsApi->start_job_from_config: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**list[str]**](str.md)| compound ids to be computed | 
 **job_config_name** | **str**| name if the config to be used | 
 **project_id** | **str**| project-space to run jobs on | 
 **recompute** | **bool**| enable or disable recompute. If null the stored value will be used. | [optional] 
 **include_state** | **bool**| include {@link de.unijena.bioinf.ms.middleware.compute.model.JobProgress de.unijena.bioinf.ms.middleware.compute.model.JobProgress} state. | [optional] [default to True]
 **include_command** | **bool**| include job command. | [optional] [default to True]
 **include_affected_compounds** | **bool**| include list of compound ids affected by this job (if available) | [optional] [default to False]

### Return type

[**JobId**](JobId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

