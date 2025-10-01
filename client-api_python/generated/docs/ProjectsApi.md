# PySirius.ProjectsApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**close_project**](ProjectsApi.md#close_project) | **DELETE** /api/projects/{projectId} | Close project-space and remove it from the application
[**create_project**](ProjectsApi.md#create_project) | **POST** /api/projects/{projectId} | Create and open a new project-space at given location and make it accessible via the given projectId.
[**get_canopus_classy_fire_data**](ProjectsApi.md#get_canopus_classy_fire_data) | **GET** /api/projects/{projectId}/cf-data | Get CANOPUS prediction vector definition for ClassyFire classes
[**get_canopus_npc_data**](ProjectsApi.md#get_canopus_npc_data) | **GET** /api/projects/{projectId}/npc-data | Get CANOPUS prediction vector definition for NPC classes
[**get_finger_id_data**](ProjectsApi.md#get_finger_id_data) | **GET** /api/projects/{projectId}/fingerid-data | Get CSI:FingerID fingerprint (prediction vector) definition
[**get_project**](ProjectsApi.md#get_project) | **GET** /api/projects/{projectId} | Get project space info by its projectId.
[**get_projects**](ProjectsApi.md#get_projects) | **GET** /api/projects | List opened project spaces.
[**import_ms_run_data**](ProjectsApi.md#import_ms_run_data) | **POST** /api/projects/{projectId}/import/ms-data-files | Import and Align full MS-Runs from various formats into the specified project  Possible formats (mzML, mzXML)
[**import_ms_run_data_as_job**](ProjectsApi.md#import_ms_run_data_as_job) | **POST** /api/projects/{projectId}/import/ms-data-files-job | Import and Align full MS-Runs from various formats into the specified project as background job.
[**import_preprocessed_data**](ProjectsApi.md#import_preprocessed_data) | **POST** /api/projects/{projectId}/import/preprocessed-data-files | Import already preprocessed ms/ms data from various formats into the specified project  Possible formats (ms, mgf, cef, msp)
[**import_preprocessed_data_as_job**](ProjectsApi.md#import_preprocessed_data_as_job) | **POST** /api/projects/{projectId}/import/preprocessed-data-files-job | Import ms/ms data from the given format into the specified project-space as background job.
[**open_project**](ProjectsApi.md#open_project) | **PUT** /api/projects/{projectId} | Open an existing project-space and make it accessible via the given projectId.


# **close_project**
> close_project(project_id, compact=compact)

Close project-space and remove it from the application

Close project-space and remove it from the application. The Project will NOT be deleted from disk.  <p>  ATTENTION: This will cancel and remove all jobs running on this Project before closing it.  If there are many jobs, this might take some time.

### Example


```python
import PySirius
from PySirius.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8080"
)


# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = PySirius.ProjectsApi(api_client)
    project_id = 'project_id_example' # str | unique name/identifier of the  project-space to be closed.
    compact = False # bool | if true, compact project storage after closing. DEPRECATED: Compacting acts on the local filesystem and will likely be removed in a later version. (optional) (default to False)

    try:
        # Close project-space and remove it from the application
        api_instance.close_project(project_id, compact=compact)
    except Exception as e:
        print("Exception when calling ProjectsApi->close_project: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| unique name/identifier of the  project-space to be closed. | 
 **compact** | **bool**| if true, compact project storage after closing. DEPRECATED: Compacting acts on the local filesystem and will likely be removed in a later version. | [optional] [default to False]

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
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_project**
> ProjectInfo create_project(project_id, path_to_project=path_to_project, opt_fields=opt_fields)

Create and open a new project-space at given location and make it accessible via the given projectId.

Create and open a new project-space at given location and make it accessible via the given projectId.

### Example


```python
import PySirius
from PySirius.models.project_info import ProjectInfo
from PySirius.models.project_info_opt_field import ProjectInfoOptField
from PySirius.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8080"
)


# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = PySirius.ProjectsApi(api_client)
    project_id = 'project_id_example' # str | unique name/identifier that shall be used to access the newly created project-space. Must consist only of [a-zA-Z0-9_-].
    path_to_project = 'path_to_project_example' # str | local file path where the project will be created. If NULL, project will be stored by its projectId in default project location. DEPRECATED: This parameter relies on the local filesystem and will likely be removed in later versions of this API to allow for more flexible use cases. (optional)
    opt_fields = ["none"] # List[ProjectInfoOptField] |  (optional) (default to ["none"])

    try:
        # Create and open a new project-space at given location and make it accessible via the given projectId.
        api_response = api_instance.create_project(project_id, path_to_project=path_to_project, opt_fields=opt_fields)
        print("The response of ProjectsApi->create_project:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ProjectsApi->create_project: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| unique name/identifier that shall be used to access the newly created project-space. Must consist only of [a-zA-Z0-9_-]. | 
 **path_to_project** | **str**| local file path where the project will be created. If NULL, project will be stored by its projectId in default project location. DEPRECATED: This parameter relies on the local filesystem and will likely be removed in later versions of this API to allow for more flexible use cases. | [optional] 
 **opt_fields** | [**List[ProjectInfoOptField]**](ProjectInfoOptField.md)|  | [optional] [default to [&quot;none&quot;]]

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
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_canopus_classy_fire_data**
> str get_canopus_classy_fire_data(project_id, charge)

Get CANOPUS prediction vector definition for ClassyFire classes

### Example


```python
import PySirius
from PySirius.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8080"
)


# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = PySirius.ProjectsApi(api_client)
    project_id = 'project_id_example' # str | 
    charge = 56 # int | 

    try:
        # Get CANOPUS prediction vector definition for ClassyFire classes
        api_response = api_instance.get_canopus_classy_fire_data(project_id, charge)
        print("The response of ProjectsApi->get_canopus_classy_fire_data:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ProjectsApi->get_canopus_classy_fire_data: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**|  | 
 **charge** | **int**|  | 

### Return type

**str**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/csv, application/CSV

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_canopus_npc_data**
> str get_canopus_npc_data(project_id, charge)

Get CANOPUS prediction vector definition for NPC classes

### Example


```python
import PySirius
from PySirius.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8080"
)


# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = PySirius.ProjectsApi(api_client)
    project_id = 'project_id_example' # str | 
    charge = 56 # int | 

    try:
        # Get CANOPUS prediction vector definition for NPC classes
        api_response = api_instance.get_canopus_npc_data(project_id, charge)
        print("The response of ProjectsApi->get_canopus_npc_data:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ProjectsApi->get_canopus_npc_data: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**|  | 
 **charge** | **int**|  | 

### Return type

**str**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/csv, application/CSV

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_finger_id_data**
> str get_finger_id_data(project_id, charge)

Get CSI:FingerID fingerprint (prediction vector) definition

### Example


```python
import PySirius
from PySirius.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8080"
)


# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = PySirius.ProjectsApi(api_client)
    project_id = 'project_id_example' # str | 
    charge = 56 # int | 

    try:
        # Get CSI:FingerID fingerprint (prediction vector) definition
        api_response = api_instance.get_finger_id_data(project_id, charge)
        print("The response of ProjectsApi->get_finger_id_data:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ProjectsApi->get_finger_id_data: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**|  | 
 **charge** | **int**|  | 

### Return type

**str**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/csv, application/CSV

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_project**
> ProjectInfo get_project(project_id, opt_fields=opt_fields)

Get project space info by its projectId.

Get project space info by its projectId.

### Example


```python
import PySirius
from PySirius.models.project_info import ProjectInfo
from PySirius.models.project_info_opt_field import ProjectInfoOptField
from PySirius.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8080"
)


# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = PySirius.ProjectsApi(api_client)
    project_id = 'project_id_example' # str | unique name/identifier tof the project-space to be accessed.
    opt_fields = ["none"] # List[ProjectInfoOptField] |  (optional) (default to ["none"])

    try:
        # Get project space info by its projectId.
        api_response = api_instance.get_project(project_id, opt_fields=opt_fields)
        print("The response of ProjectsApi->get_project:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ProjectsApi->get_project: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| unique name/identifier tof the project-space to be accessed. | 
 **opt_fields** | [**List[ProjectInfoOptField]**](ProjectInfoOptField.md)|  | [optional] [default to [&quot;none&quot;]]

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
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_projects**
> List[ProjectInfo] get_projects()

List opened project spaces.

List opened project spaces.

### Example


```python
import PySirius
from PySirius.models.project_info import ProjectInfo
from PySirius.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8080"
)


# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = PySirius.ProjectsApi(api_client)

    try:
        # List opened project spaces.
        api_response = api_instance.get_projects()
        print("The response of ProjectsApi->get_projects:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ProjectsApi->get_projects: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**List[ProjectInfo]**](ProjectInfo.md)

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

# **import_ms_run_data**
> ImportResult import_ms_run_data(project_id, input_files, parameters)

Import and Align full MS-Runs from various formats into the specified project  Possible formats (mzML, mzXML)

Import and Align full MS-Runs from various formats into the specified project  Possible formats (mzML, mzXML)

### Example


```python
import PySirius
from PySirius.models.import_result import ImportResult
from PySirius.models.lcms_submission_parameters import LcmsSubmissionParameters
from PySirius.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8080"
)


# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = PySirius.ProjectsApi(api_client)
    project_id = 'project_id_example' # str | Project-space to import into.
    input_files = None # List[bytearray] | Files to import into project.
    parameters = PySirius.LcmsSubmissionParameters() # LcmsSubmissionParameters | 

    try:
        # Import and Align full MS-Runs from various formats into the specified project  Possible formats (mzML, mzXML)
        api_response = api_instance.import_ms_run_data(project_id, input_files, parameters)
        print("The response of ProjectsApi->import_ms_run_data:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ProjectsApi->import_ms_run_data: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| Project-space to import into. | 
 **input_files** | **List[bytearray]**| Files to import into project. | 
 **parameters** | [**LcmsSubmissionParameters**](LcmsSubmissionParameters.md)|  | 

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
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **import_ms_run_data_as_job**
> Job import_ms_run_data_as_job(project_id, input_files, parameters, opt_fields=opt_fields)

Import and Align full MS-Runs from various formats into the specified project as background job.

Import and Align full MS-Runs from various formats into the specified project as background job.  Possible formats (mzML, mzXML)

### Example


```python
import PySirius
from PySirius.models.job import Job
from PySirius.models.job_opt_field import JobOptField
from PySirius.models.lcms_submission_parameters import LcmsSubmissionParameters
from PySirius.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8080"
)


# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = PySirius.ProjectsApi(api_client)
    project_id = 'project_id_example' # str | Project-space to import into.
    input_files = None # List[bytearray] | Files to import into project.
    parameters = PySirius.LcmsSubmissionParameters() # LcmsSubmissionParameters | 
    opt_fields = ["progress"] # List[JobOptField] | Set of optional fields to be included. Use 'none' only to override defaults. (optional) (default to ["progress"])

    try:
        # Import and Align full MS-Runs from various formats into the specified project as background job.
        api_response = api_instance.import_ms_run_data_as_job(project_id, input_files, parameters, opt_fields=opt_fields)
        print("The response of ProjectsApi->import_ms_run_data_as_job:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ProjectsApi->import_ms_run_data_as_job: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| Project-space to import into. | 
 **input_files** | **List[bytearray]**| Files to import into project. | 
 **parameters** | [**LcmsSubmissionParameters**](LcmsSubmissionParameters.md)|  | 
 **opt_fields** | [**List[JobOptField]**](JobOptField.md)| Set of optional fields to be included. Use &#39;none&#39; only to override defaults. | [optional] [default to [&quot;progress&quot;]]

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
**200** | the import job. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **import_preprocessed_data**
> ImportResult import_preprocessed_data(project_id, input_files, ignore_formulas=ignore_formulas, allow_ms1_only=allow_ms1_only)

Import already preprocessed ms/ms data from various formats into the specified project  Possible formats (ms, mgf, cef, msp)

Import already preprocessed ms/ms data from various formats into the specified project  Possible formats (ms, mgf, cef, msp)

### Example


```python
import PySirius
from PySirius.models.import_result import ImportResult
from PySirius.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8080"
)


# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = PySirius.ProjectsApi(api_client)
    project_id = 'project_id_example' # str | project-space to import into.
    input_files = None # List[bytearray] | files to import into project
    ignore_formulas = False # bool |  (optional) (default to False)
    allow_ms1_only = True # bool |  (optional) (default to True)

    try:
        # Import already preprocessed ms/ms data from various formats into the specified project  Possible formats (ms, mgf, cef, msp)
        api_response = api_instance.import_preprocessed_data(project_id, input_files, ignore_formulas=ignore_formulas, allow_ms1_only=allow_ms1_only)
        print("The response of ProjectsApi->import_preprocessed_data:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ProjectsApi->import_preprocessed_data: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to import into. | 
 **input_files** | **List[bytearray]**| files to import into project | 
 **ignore_formulas** | **bool**|  | [optional] [default to False]
 **allow_ms1_only** | **bool**|  | [optional] [default to True]

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
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **import_preprocessed_data_as_job**
> Job import_preprocessed_data_as_job(project_id, input_files, ignore_formulas=ignore_formulas, allow_ms1_only=allow_ms1_only, opt_fields=opt_fields)

Import ms/ms data from the given format into the specified project-space as background job.

Import ms/ms data from the given format into the specified project-space as background job.  Possible formats (ms, mgf, cef, msp)

### Example


```python
import PySirius
from PySirius.models.job import Job
from PySirius.models.job_opt_field import JobOptField
from PySirius.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8080"
)


# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = PySirius.ProjectsApi(api_client)
    project_id = 'project_id_example' # str | project-space to import into.
    input_files = None # List[bytearray] | 
    ignore_formulas = False # bool |  (optional) (default to False)
    allow_ms1_only = True # bool |  (optional) (default to True)
    opt_fields = ["progress"] # List[JobOptField] | set of optional fields to be included. Use 'none' only to override defaults. (optional) (default to ["progress"])

    try:
        # Import ms/ms data from the given format into the specified project-space as background job.
        api_response = api_instance.import_preprocessed_data_as_job(project_id, input_files, ignore_formulas=ignore_formulas, allow_ms1_only=allow_ms1_only, opt_fields=opt_fields)
        print("The response of ProjectsApi->import_preprocessed_data_as_job:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ProjectsApi->import_preprocessed_data_as_job: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to import into. | 
 **input_files** | **List[bytearray]**|  | 
 **ignore_formulas** | **bool**|  | [optional] [default to False]
 **allow_ms1_only** | **bool**|  | [optional] [default to True]
 **opt_fields** | [**List[JobOptField]**](JobOptField.md)| set of optional fields to be included. Use &#39;none&#39; only to override defaults. | [optional] [default to [&quot;progress&quot;]]

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
**200** | the import job. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **open_project**
> ProjectInfo open_project(project_id, path_to_project=path_to_project, opt_fields=opt_fields)

Open an existing project-space and make it accessible via the given projectId.

Open an existing project-space and make it accessible via the given projectId.

### Example


```python
import PySirius
from PySirius.models.project_info import ProjectInfo
from PySirius.models.project_info_opt_field import ProjectInfoOptField
from PySirius.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8080"
)


# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = PySirius.ProjectsApi(api_client)
    project_id = 'project_id_example' # str | unique name/identifier that shall be used to access the opened project-space. Must consist only of [a-zA-Z0-9_-].
    path_to_project = 'path_to_project_example' # str | local file path to open the project from. If NULL, project will be loaded by it projectId from default project location.  DEPRECATED: This parameter relies on the local filesystem and will likely be removed in later versions of this API to allow for more flexible use cases. (optional)
    opt_fields = ["none"] # List[ProjectInfoOptField] |  (optional) (default to ["none"])

    try:
        # Open an existing project-space and make it accessible via the given projectId.
        api_response = api_instance.open_project(project_id, path_to_project=path_to_project, opt_fields=opt_fields)
        print("The response of ProjectsApi->open_project:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ProjectsApi->open_project: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| unique name/identifier that shall be used to access the opened project-space. Must consist only of [a-zA-Z0-9_-]. | 
 **path_to_project** | **str**| local file path to open the project from. If NULL, project will be loaded by it projectId from default project location.  DEPRECATED: This parameter relies on the local filesystem and will likely be removed in later versions of this API to allow for more flexible use cases. | [optional] 
 **opt_fields** | [**List[ProjectInfoOptField]**](ProjectInfoOptField.md)|  | [optional] [default to [&quot;none&quot;]]

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
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

