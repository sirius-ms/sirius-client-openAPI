<a name="__pageTop"></a>
# PySirius.apis.tags.computations_api.ComputationsApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_job**](#delete_job) | **delete** /api/projects/{projectId}/jobs/{jobId} | Delete job.
[**delete_job_config**](#delete_job_config) | **delete** /api/job-configs/{name} | Delete job configuration with given name.
[**get_default_job_config**](#get_default_job_config) | **get** /api/default-job-config | Request default job configuration
[**get_job**](#get_job) | **get** /api/projects/{projectId}/jobs/{jobId} | Get job information and its current state and progress (if available).
[**get_job_config**](#get_job_config) | **get** /api/job-configs/{name} | Request job configuration with given name.
[**get_job_configs**](#get_job_configs) | **get** /api/job-configs | Request all available job configurations
[**get_jobs**](#get_jobs) | **get** /api/projects/{projectId}/jobs | Get job information and its current state and progress (if available).
[**post_job_config**](#post_job_config) | **post** /api/job-configs/{name} | Add new job configuration with given name.
[**start_job**](#start_job) | **post** /api/projects/{projectId}/jobs | Start computation for given compounds and with given parameters.
[**start_job_from_config**](#start_job_from_config) | **post** /api/projects/{projectId}/jobs-from-config | Start computation for given compounds and with parameters from a stored job-config.

# **delete_job**
<a name="delete_job"></a>
> delete_job(project_idjob_id)

Delete job.

Delete job. Specify how to behave for running jobs.

### Example

```python
import PySirius
from PySirius.apis.tags import computations_api
from pprint import pprint
# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8080"
)

# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = computations_api.ComputationsApi(api_client)

    # example passing only required values which don't have defaults set
    path_params = {
        'projectId': "projectId_example",
        'jobId': "jobId_example",
    }
    query_params = {
    }
    try:
        # Delete job.
        api_response = api_instance.delete_job(
            path_params=path_params,
            query_params=query_params,
        )
    except PySirius.ApiException as e:
        print("Exception when calling ComputationsApi->delete_job: %s\n" % e)

    # example passing only optional values
    path_params = {
        'projectId': "projectId_example",
        'jobId': "jobId_example",
    }
    query_params = {
        'cancelIfRunning': True,
        'awaitDeletion': True,
    }
    try:
        # Delete job.
        api_response = api_instance.delete_job(
            path_params=path_params,
            query_params=query_params,
        )
    except PySirius.ApiException as e:
        print("Exception when calling ComputationsApi->delete_job: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
path_params | RequestPathParams | |
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
cancelIfRunning | CancelIfRunningSchema | | optional
awaitDeletion | AwaitDeletionSchema | | optional


# CancelIfRunningSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
bool,  | BoolClass,  |  | if omitted the server will use the default value of True

# AwaitDeletionSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
bool,  | BoolClass,  |  | if omitted the server will use the default value of True

### path_params
#### RequestPathParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
projectId | ProjectIdSchema | | 
jobId | JobIdSchema | | 

# ProjectIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# JobIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
202 | [ApiResponseFor202](#delete_job.ApiResponseFor202) | Accepted

#### delete_job.ApiResponseFor202
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **delete_job_config**
<a name="delete_job_config"></a>
> delete_job_config(name)

Delete job configuration with given name.

Delete job configuration with given name.

### Example

```python
import PySirius
from PySirius.apis.tags import computations_api
from pprint import pprint
# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8080"
)

# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = computations_api.ComputationsApi(api_client)

    # example passing only required values which don't have defaults set
    path_params = {
        'name': "name_example",
    }
    try:
        # Delete job configuration with given name.
        api_response = api_instance.delete_job_config(
            path_params=path_params,
        )
    except PySirius.ApiException as e:
        print("Exception when calling ComputationsApi->delete_job_config: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
path_params | RequestPathParams | |
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### path_params
#### RequestPathParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
name | NameSchema | | 

# NameSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
202 | [ApiResponseFor202](#delete_job_config.ApiResponseFor202) | Accepted

#### delete_job_config.ApiResponseFor202
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **get_default_job_config**
<a name="get_default_job_config"></a>
> JobSubmission get_default_job_config()

Request default job configuration

Request default job configuration

### Example

```python
import PySirius
from PySirius.apis.tags import computations_api
from PySirius.model.job_submission import JobSubmission
from pprint import pprint
# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8080"
)

# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = computations_api.ComputationsApi(api_client)

    # example passing only optional values
    query_params = {
        'includeConfigMap': False,
    }
    try:
        # Request default job configuration
        api_response = api_instance.get_default_job_config(
            query_params=query_params,
        )
        pprint(api_response)
    except PySirius.ApiException as e:
        print("Exception when calling ComputationsApi->get_default_job_config: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
includeConfigMap | IncludeConfigMapSchema | | optional


# IncludeConfigMapSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
bool,  | BoolClass,  |  | if omitted the server will use the default value of False

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#get_default_job_config.ApiResponseFor200) | {@link JobSubmission JobSubmission} with all parameters set to default values.

#### get_default_job_config.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**JobSubmission**](../../models/JobSubmission.md) |  | 


### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **get_job**
<a name="get_job"></a>
> JobId get_job(project_idjob_id)

Get job information and its current state and progress (if available).

Get job information and its current state and progress (if available).

### Example

```python
import PySirius
from PySirius.apis.tags import computations_api
from PySirius.model.job_id import JobId
from pprint import pprint
# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8080"
)

# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = computations_api.ComputationsApi(api_client)

    # example passing only required values which don't have defaults set
    path_params = {
        'projectId': "projectId_example",
        'jobId': "jobId_example",
    }
    query_params = {
    }
    try:
        # Get job information and its current state and progress (if available).
        api_response = api_instance.get_job(
            path_params=path_params,
            query_params=query_params,
        )
        pprint(api_response)
    except PySirius.ApiException as e:
        print("Exception when calling ComputationsApi->get_job: %s\n" % e)

    # example passing only optional values
    path_params = {
        'projectId': "projectId_example",
        'jobId': "jobId_example",
    }
    query_params = {
        'includeState': True,
        'includeCommand': False,
        'includeAffectedCompounds': False,
    }
    try:
        # Get job information and its current state and progress (if available).
        api_response = api_instance.get_job(
            path_params=path_params,
            query_params=query_params,
        )
        pprint(api_response)
    except PySirius.ApiException as e:
        print("Exception when calling ComputationsApi->get_job: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
path_params | RequestPathParams | |
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
includeState | IncludeStateSchema | | optional
includeCommand | IncludeCommandSchema | | optional
includeAffectedCompounds | IncludeAffectedCompoundsSchema | | optional


# IncludeStateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
bool,  | BoolClass,  |  | if omitted the server will use the default value of True

# IncludeCommandSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
bool,  | BoolClass,  |  | if omitted the server will use the default value of False

# IncludeAffectedCompoundsSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
bool,  | BoolClass,  |  | if omitted the server will use the default value of False

### path_params
#### RequestPathParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
projectId | ProjectIdSchema | | 
jobId | JobIdSchema | | 

# ProjectIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# JobIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#get_job.ApiResponseFor200) | OK

#### get_job.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**JobId**](../../models/JobId.md) |  | 


### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **get_job_config**
<a name="get_job_config"></a>
> JobSubmission get_job_config(name)

Request job configuration with given name.

Request job configuration with given name.

### Example

```python
import PySirius
from PySirius.apis.tags import computations_api
from PySirius.model.job_submission import JobSubmission
from pprint import pprint
# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8080"
)

# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = computations_api.ComputationsApi(api_client)

    # example passing only required values which don't have defaults set
    path_params = {
        'name': "name_example",
    }
    query_params = {
    }
    try:
        # Request job configuration with given name.
        api_response = api_instance.get_job_config(
            path_params=path_params,
            query_params=query_params,
        )
        pprint(api_response)
    except PySirius.ApiException as e:
        print("Exception when calling ComputationsApi->get_job_config: %s\n" % e)

    # example passing only optional values
    path_params = {
        'name': "name_example",
    }
    query_params = {
        'includeConfigMap': False,
    }
    try:
        # Request job configuration with given name.
        api_response = api_instance.get_job_config(
            path_params=path_params,
            query_params=query_params,
        )
        pprint(api_response)
    except PySirius.ApiException as e:
        print("Exception when calling ComputationsApi->get_job_config: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
path_params | RequestPathParams | |
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
includeConfigMap | IncludeConfigMapSchema | | optional


# IncludeConfigMapSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
bool,  | BoolClass,  |  | if omitted the server will use the default value of False

### path_params
#### RequestPathParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
name | NameSchema | | 

# NameSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#get_job_config.ApiResponseFor200) | {@link JobSubmission JobSubmission} for given name.

#### get_job_config.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**JobSubmission**](../../models/JobSubmission.md) |  | 


### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **get_job_configs**
<a name="get_job_configs"></a>
> [JobSubmission] get_job_configs()

Request all available job configurations

Request all available job configurations

### Example

```python
import PySirius
from PySirius.apis.tags import computations_api
from PySirius.model.job_submission import JobSubmission
from pprint import pprint
# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8080"
)

# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = computations_api.ComputationsApi(api_client)

    # example passing only optional values
    query_params = {
        'includeConfigMap': False,
    }
    try:
        # Request all available job configurations
        api_response = api_instance.get_job_configs(
            query_params=query_params,
        )
        pprint(api_response)
    except PySirius.ApiException as e:
        print("Exception when calling ComputationsApi->get_job_configs: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
includeConfigMap | IncludeConfigMapSchema | | optional


# IncludeConfigMapSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
bool,  | BoolClass,  |  | if omitted the server will use the default value of False

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#get_job_configs.ApiResponseFor200) | list of available {@link JobSubmission JobSubmission}s

#### get_job_configs.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**JobSubmission**]({{complexTypePrefix}}JobSubmission.md) | [**JobSubmission**]({{complexTypePrefix}}JobSubmission.md) | [**JobSubmission**]({{complexTypePrefix}}JobSubmission.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **get_jobs**
<a name="get_jobs"></a>
> [JobId] get_jobs(project_id)

Get job information and its current state and progress (if available).

Get job information and its current state and progress (if available).

### Example

```python
import PySirius
from PySirius.apis.tags import computations_api
from PySirius.model.job_id import JobId
from pprint import pprint
# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8080"
)

# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = computations_api.ComputationsApi(api_client)

    # example passing only required values which don't have defaults set
    path_params = {
        'projectId': "projectId_example",
    }
    query_params = {
    }
    try:
        # Get job information and its current state and progress (if available).
        api_response = api_instance.get_jobs(
            path_params=path_params,
            query_params=query_params,
        )
        pprint(api_response)
    except PySirius.ApiException as e:
        print("Exception when calling ComputationsApi->get_jobs: %s\n" % e)

    # example passing only optional values
    path_params = {
        'projectId': "projectId_example",
    }
    query_params = {
        'includeState': False,
        'includeCommand': False,
        'includeAffectedCompounds': False,
    }
    try:
        # Get job information and its current state and progress (if available).
        api_response = api_instance.get_jobs(
            path_params=path_params,
            query_params=query_params,
        )
        pprint(api_response)
    except PySirius.ApiException as e:
        print("Exception when calling ComputationsApi->get_jobs: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
path_params | RequestPathParams | |
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
includeState | IncludeStateSchema | | optional
includeCommand | IncludeCommandSchema | | optional
includeAffectedCompounds | IncludeAffectedCompoundsSchema | | optional


# IncludeStateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
bool,  | BoolClass,  |  | if omitted the server will use the default value of False

# IncludeCommandSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
bool,  | BoolClass,  |  | if omitted the server will use the default value of False

# IncludeAffectedCompoundsSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
bool,  | BoolClass,  |  | if omitted the server will use the default value of False

### path_params
#### RequestPathParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
projectId | ProjectIdSchema | | 

# ProjectIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#get_jobs.ApiResponseFor200) | OK

#### get_jobs.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**JobId**]({{complexTypePrefix}}JobId.md) | [**JobId**]({{complexTypePrefix}}JobId.md) | [**JobId**]({{complexTypePrefix}}JobId.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **post_job_config**
<a name="post_job_config"></a>
> str post_job_config(namejob_submission)

Add new job configuration with given name.

Add new job configuration with given name.

### Example

```python
import PySirius
from PySirius.apis.tags import computations_api
from PySirius.model.job_submission import JobSubmission
from pprint import pprint
# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8080"
)

# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = computations_api.ComputationsApi(api_client)

    # example passing only required values which don't have defaults set
    path_params = {
        'name': "name_example",
    }
    query_params = {
    }
    body = JobSubmission(
        compound_ids=[
            "compound_ids_example"
        ],
        fallback_adducts=[
            "fallback_adducts_example"
        ],
        enforced_adducts=[
            "enforced_adducts_example"
        ],
        detectable_adducts=[
            "detectable_adducts_example"
        ],
        recompute=True,
        formula_id_paras=Sirius(
            enabled=True,
            profile="QTOF",
            number_of_candidates=1,
            number_of_candidates_per_ion=1,
            mass_accuracy_ms2ppm=3.14,
            isotope_ms2_settings="IGNORE",
            formula_search_dbs=[
                "ALL"
            ],
            enforced_formula_constraints="enforced_formula_constraints_example",
            fallback_formula_constraints="fallback_formula_constraints_example",
            detectable_elements=[
                "detectable_elements_example"
            ],
            ilp_timeout=Timeout(
                number_of_seconds_per_decomposition=1,
                number_of_seconds_per_instance=1,
                identifier="identifier_example",
            ),
            use_heuristic=UseHeuristic(
                mz_to_use_heuristic=1,
                mz_to_use_heuristic_only=1,
                identifier="identifier_example",
            ),
        ),
        zodiac_paras=Zodiac(
            enabled=True,
            considered_candidates_at300_mz=ZodiacNumberOfConsideredCandidatesAt300Mz(
                value=1,
                identifier="identifier_example",
            ),
            considered_candidates_at800_mz=ZodiacNumberOfConsideredCandidatesAt800Mz(
                value=1,
                identifier="identifier_example",
            ),
            run_in_two_steps=ZodiacRunInTwoSteps(
                value=True,
                identifier="identifier_example",
            ),
            edge_filter_thresholds=ZodiacEdgeFilterThresholds(
                threshold_filter=3.14,
                min_local_candidates=1,
                min_local_connections=1,
                identifier="identifier_example",
            ),
            gibbs_sampler_parameters=ZodiacEpochs(
                iterations=1,
                burn_in_period=1,
                number_of_markov_chains=1,
                identifier="identifier_example",
            ),
        ),
        fingerprint_prediction_paras=FingerprintPrediction(
            enabled=True,
            use_score_threshold=True,
        ),
        structure_db_search_paras=StructureDbSearch(
            enabled=True,
            structure_search_dbs=[
                "ALL"
            ],
            tag_lipids=True,
        ),
        canopus_paras=Canopus(
            enabled=True,
        ),
        config_map=dict(
            "key": "key_example",
        ),
    )
    try:
        # Add new job configuration with given name.
        api_response = api_instance.post_job_config(
            path_params=path_params,
            query_params=query_params,
            body=body,
        )
        pprint(api_response)
    except PySirius.ApiException as e:
        print("Exception when calling ComputationsApi->post_job_config: %s\n" % e)

    # example passing only optional values
    path_params = {
        'name': "name_example",
    }
    query_params = {
        'overrideExisting': False,
    }
    body = JobSubmission(
        compound_ids=[
            "compound_ids_example"
        ],
        fallback_adducts=[
            "fallback_adducts_example"
        ],
        enforced_adducts=[
            "enforced_adducts_example"
        ],
        detectable_adducts=[
            "detectable_adducts_example"
        ],
        recompute=True,
        formula_id_paras=Sirius(
            enabled=True,
            profile="QTOF",
            number_of_candidates=1,
            number_of_candidates_per_ion=1,
            mass_accuracy_ms2ppm=3.14,
            isotope_ms2_settings="IGNORE",
            formula_search_dbs=[
                "ALL"
            ],
            enforced_formula_constraints="enforced_formula_constraints_example",
            fallback_formula_constraints="fallback_formula_constraints_example",
            detectable_elements=[
                "detectable_elements_example"
            ],
            ilp_timeout=Timeout(
                number_of_seconds_per_decomposition=1,
                number_of_seconds_per_instance=1,
                identifier="identifier_example",
            ),
            use_heuristic=UseHeuristic(
                mz_to_use_heuristic=1,
                mz_to_use_heuristic_only=1,
                identifier="identifier_example",
            ),
        ),
        zodiac_paras=Zodiac(
            enabled=True,
            considered_candidates_at300_mz=ZodiacNumberOfConsideredCandidatesAt300Mz(
                value=1,
                identifier="identifier_example",
            ),
            considered_candidates_at800_mz=ZodiacNumberOfConsideredCandidatesAt800Mz(
                value=1,
                identifier="identifier_example",
            ),
            run_in_two_steps=ZodiacRunInTwoSteps(
                value=True,
                identifier="identifier_example",
            ),
            edge_filter_thresholds=ZodiacEdgeFilterThresholds(
                threshold_filter=3.14,
                min_local_candidates=1,
                min_local_connections=1,
                identifier="identifier_example",
            ),
            gibbs_sampler_parameters=ZodiacEpochs(
                iterations=1,
                burn_in_period=1,
                number_of_markov_chains=1,
                identifier="identifier_example",
            ),
        ),
        fingerprint_prediction_paras=FingerprintPrediction(
            enabled=True,
            use_score_threshold=True,
        ),
        structure_db_search_paras=StructureDbSearch(
            enabled=True,
            structure_search_dbs=[
                "ALL"
            ],
            tag_lipids=True,
        ),
        canopus_paras=Canopus(
            enabled=True,
        ),
        config_map=dict(
            "key": "key_example",
        ),
    )
    try:
        # Add new job configuration with given name.
        api_response = api_instance.post_job_config(
            path_params=path_params,
            query_params=query_params,
            body=body,
        )
        pprint(api_response)
    except PySirius.ApiException as e:
        print("Exception when calling ComputationsApi->post_job_config: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
body | typing.Union[SchemaForRequestBodyApplicationJson] | required |
query_params | RequestQueryParams | |
path_params | RequestPathParams | |
content_type | str | optional, default is 'application/json' | Selects the schema and serialization of the request body
accept_content_types | typing.Tuple[str] | default is ('text/plain', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### body

# SchemaForRequestBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**JobSubmission**](../../models/JobSubmission.md) |  | 


### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
overrideExisting | OverrideExistingSchema | | optional


# OverrideExistingSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
bool,  | BoolClass,  |  | if omitted the server will use the default value of False

### path_params
#### RequestPathParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
name | NameSchema | | 

# NameSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#post_job_config.ApiResponseFor200) | Probably modified name of the config (to ensure filesystem path compatibility).

#### post_job_config.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyTextPlain, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyTextPlain

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **start_job**
<a name="start_job"></a>
> JobId start_job(project_idjob_submission)

Start computation for given compounds and with given parameters.

Start computation for given compounds and with given parameters.

### Example

```python
import PySirius
from PySirius.apis.tags import computations_api
from PySirius.model.job_submission import JobSubmission
from PySirius.model.job_id import JobId
from pprint import pprint
# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8080"
)

# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = computations_api.ComputationsApi(api_client)

    # example passing only required values which don't have defaults set
    path_params = {
        'projectId': "projectId_example",
    }
    query_params = {
    }
    body = JobSubmission(
        compound_ids=[
            "compound_ids_example"
        ],
        fallback_adducts=[
            "fallback_adducts_example"
        ],
        enforced_adducts=[
            "enforced_adducts_example"
        ],
        detectable_adducts=[
            "detectable_adducts_example"
        ],
        recompute=True,
        formula_id_paras=Sirius(
            enabled=True,
            profile="QTOF",
            number_of_candidates=1,
            number_of_candidates_per_ion=1,
            mass_accuracy_ms2ppm=3.14,
            isotope_ms2_settings="IGNORE",
            formula_search_dbs=[
                "ALL"
            ],
            enforced_formula_constraints="enforced_formula_constraints_example",
            fallback_formula_constraints="fallback_formula_constraints_example",
            detectable_elements=[
                "detectable_elements_example"
            ],
            ilp_timeout=Timeout(
                number_of_seconds_per_decomposition=1,
                number_of_seconds_per_instance=1,
                identifier="identifier_example",
            ),
            use_heuristic=UseHeuristic(
                mz_to_use_heuristic=1,
                mz_to_use_heuristic_only=1,
                identifier="identifier_example",
            ),
        ),
        zodiac_paras=Zodiac(
            enabled=True,
            considered_candidates_at300_mz=ZodiacNumberOfConsideredCandidatesAt300Mz(
                value=1,
                identifier="identifier_example",
            ),
,
            run_in_two_steps=ZodiacRunInTwoSteps(
                value=True,
                identifier="identifier_example",
            ),
            edge_filter_thresholds=ZodiacEdgeFilterThresholds(
                threshold_filter=3.14,
                min_local_candidates=1,
                min_local_connections=1,
                identifier="identifier_example",
            ),
            gibbs_sampler_parameters=ZodiacEpochs(
                iterations=1,
                burn_in_period=1,
                number_of_markov_chains=1,
                identifier="identifier_example",
            ),
        ),
        fingerprint_prediction_paras=FingerprintPrediction(
            enabled=True,
            use_score_threshold=True,
        ),
        structure_db_search_paras=StructureDbSearch(
            enabled=True,
            structure_search_dbs=[
                "ALL"
            ],
            tag_lipids=True,
        ),
        canopus_paras=Canopus(
            enabled=True,
        ),
        config_map=dict(
            "key": "key_example",
        ),
    )
    try:
        # Start computation for given compounds and with given parameters.
        api_response = api_instance.start_job(
            path_params=path_params,
            query_params=query_params,
            body=body,
        )
        pprint(api_response)
    except PySirius.ApiException as e:
        print("Exception when calling ComputationsApi->start_job: %s\n" % e)

    # example passing only optional values
    path_params = {
        'projectId': "projectId_example",
    }
    query_params = {
        'includeState': True,
        'includeCommand': True,
        'includeAffectedCompounds': False,
    }
    body = JobSubmission(
        compound_ids=[
            "compound_ids_example"
        ],
        fallback_adducts=[
            "fallback_adducts_example"
        ],
        enforced_adducts=[
            "enforced_adducts_example"
        ],
        detectable_adducts=[
            "detectable_adducts_example"
        ],
        recompute=True,
        formula_id_paras=Sirius(
            enabled=True,
            profile="QTOF",
            number_of_candidates=1,
            number_of_candidates_per_ion=1,
            mass_accuracy_ms2ppm=3.14,
            isotope_ms2_settings="IGNORE",
            formula_search_dbs=[
                "ALL"
            ],
            enforced_formula_constraints="enforced_formula_constraints_example",
            fallback_formula_constraints="fallback_formula_constraints_example",
            detectable_elements=[
                "detectable_elements_example"
            ],
            ilp_timeout=Timeout(
                number_of_seconds_per_decomposition=1,
                number_of_seconds_per_instance=1,
                identifier="identifier_example",
            ),
            use_heuristic=UseHeuristic(
                mz_to_use_heuristic=1,
                mz_to_use_heuristic_only=1,
                identifier="identifier_example",
            ),
        ),
        zodiac_paras=Zodiac(
            enabled=True,
            considered_candidates_at300_mz=ZodiacNumberOfConsideredCandidatesAt300Mz(
                value=1,
                identifier="identifier_example",
            ),
,
            run_in_two_steps=ZodiacRunInTwoSteps(
                value=True,
                identifier="identifier_example",
            ),
            edge_filter_thresholds=ZodiacEdgeFilterThresholds(
                threshold_filter=3.14,
                min_local_candidates=1,
                min_local_connections=1,
                identifier="identifier_example",
            ),
            gibbs_sampler_parameters=ZodiacEpochs(
                iterations=1,
                burn_in_period=1,
                number_of_markov_chains=1,
                identifier="identifier_example",
            ),
        ),
        fingerprint_prediction_paras=FingerprintPrediction(
            enabled=True,
            use_score_threshold=True,
        ),
        structure_db_search_paras=StructureDbSearch(
            enabled=True,
            structure_search_dbs=[
                "ALL"
            ],
            tag_lipids=True,
        ),
        canopus_paras=Canopus(
            enabled=True,
        ),
        config_map=dict(
            "key": "key_example",
        ),
    )
    try:
        # Start computation for given compounds and with given parameters.
        api_response = api_instance.start_job(
            path_params=path_params,
            query_params=query_params,
            body=body,
        )
        pprint(api_response)
    except PySirius.ApiException as e:
        print("Exception when calling ComputationsApi->start_job: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
body | typing.Union[SchemaForRequestBodyApplicationJson] | required |
query_params | RequestQueryParams | |
path_params | RequestPathParams | |
content_type | str | optional, default is 'application/json' | Selects the schema and serialization of the request body
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### body

# SchemaForRequestBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**JobSubmission**](../../models/JobSubmission.md) |  | 


### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
includeState | IncludeStateSchema | | optional
includeCommand | IncludeCommandSchema | | optional
includeAffectedCompounds | IncludeAffectedCompoundsSchema | | optional


# IncludeStateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
bool,  | BoolClass,  |  | if omitted the server will use the default value of True

# IncludeCommandSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
bool,  | BoolClass,  |  | if omitted the server will use the default value of True

# IncludeAffectedCompoundsSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
bool,  | BoolClass,  |  | if omitted the server will use the default value of False

### path_params
#### RequestPathParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
projectId | ProjectIdSchema | | 

# ProjectIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
202 | [ApiResponseFor202](#start_job.ApiResponseFor202) | Accepted

#### start_job.ApiResponseFor202
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor202ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor202ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**JobId**](../../models/JobId.md) |  | 


### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **start_job_from_config**
<a name="start_job_from_config"></a>
> JobId start_job_from_config(project_idjob_config_namerequest_body)

Start computation for given compounds and with parameters from a stored job-config.

Start computation for given compounds and with parameters from a stored job-config.

### Example

```python
import PySirius
from PySirius.apis.tags import computations_api
from PySirius.model.job_id import JobId
from pprint import pprint
# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8080"
)

# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = computations_api.ComputationsApi(api_client)

    # example passing only required values which don't have defaults set
    path_params = {
        'projectId': "projectId_example",
    }
    query_params = {
        'jobConfigName': "jobConfigName_example",
    }
    body = [
        "request_body_example"
    ]
    try:
        # Start computation for given compounds and with parameters from a stored job-config.
        api_response = api_instance.start_job_from_config(
            path_params=path_params,
            query_params=query_params,
            body=body,
        )
        pprint(api_response)
    except PySirius.ApiException as e:
        print("Exception when calling ComputationsApi->start_job_from_config: %s\n" % e)

    # example passing only optional values
    path_params = {
        'projectId': "projectId_example",
    }
    query_params = {
        'jobConfigName': "jobConfigName_example",
        'recompute': True,
        'includeState': True,
        'includeCommand': True,
        'includeAffectedCompounds': False,
    }
    body = [
        "request_body_example"
    ]
    try:
        # Start computation for given compounds and with parameters from a stored job-config.
        api_response = api_instance.start_job_from_config(
            path_params=path_params,
            query_params=query_params,
            body=body,
        )
        pprint(api_response)
    except PySirius.ApiException as e:
        print("Exception when calling ComputationsApi->start_job_from_config: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
body | typing.Union[SchemaForRequestBodyApplicationJson] | required |
query_params | RequestQueryParams | |
path_params | RequestPathParams | |
content_type | str | optional, default is 'application/json' | Selects the schema and serialization of the request body
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### body

# SchemaForRequestBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
items | str,  | str,  |  | 

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
jobConfigName | JobConfigNameSchema | | 
recompute | RecomputeSchema | | optional
includeState | IncludeStateSchema | | optional
includeCommand | IncludeCommandSchema | | optional
includeAffectedCompounds | IncludeAffectedCompoundsSchema | | optional


# JobConfigNameSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# RecomputeSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
bool,  | BoolClass,  |  | 

# IncludeStateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
bool,  | BoolClass,  |  | if omitted the server will use the default value of True

# IncludeCommandSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
bool,  | BoolClass,  |  | if omitted the server will use the default value of True

# IncludeAffectedCompoundsSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
bool,  | BoolClass,  |  | if omitted the server will use the default value of False

### path_params
#### RequestPathParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
projectId | ProjectIdSchema | | 

# ProjectIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
202 | [ApiResponseFor202](#start_job_from_config.ApiResponseFor202) | Accepted

#### start_job_from_config.ApiResponseFor202
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor202ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor202ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**JobId**](../../models/JobId.md) |  | 


### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

