<a name="__pageTop"></a>
# PySirius.apis.tags.compounds_api.CompoundsApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_compound**](#delete_compound) | **delete** /api/projects/{projectId}/compounds/{cid} | Delete compound/feature with the given identifier from the specified project-space.
[**get_compound**](#get_compound) | **get** /api/projects/{projectId}/compounds/{cid} | Get compound/feature with the given identifier from the specified project-space.
[**get_compounds**](#get_compounds) | **get** /api/projects/{projectId}/compounds | Get all available compounds/features in the given project-space.
[**import_compounds**](#import_compounds) | **post** /api/projects/{projectId}/compounds | Import ms/ms data in given format from local filesystem into the specified project-space
[**import_compounds_from_string**](#import_compounds_from_string) | **post** /api/projects/{projectId}/compounds/import-from-string | Import ms/ms data from the given format into the specified project-space  Possible formats (ms, mgf, cef, msp, mzML, mzXML)

# **delete_compound**
<a name="delete_compound"></a>
> delete_compound(project_idcid)

Delete compound/feature with the given identifier from the specified project-space.

Delete compound/feature with the given identifier from the specified project-space.

### Example

```python
import PySirius
from PySirius.apis.tags import compounds_api
from pprint import pprint
# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8080"
)

# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = compounds_api.CompoundsApi(api_client)

    # example passing only required values which don't have defaults set
    path_params = {
        'projectId': "projectId_example",
        'cid': "cid_example",
    }
    try:
        # Delete compound/feature with the given identifier from the specified project-space.
        api_response = api_instance.delete_compound(
            path_params=path_params,
        )
    except PySirius.ApiException as e:
        print("Exception when calling CompoundsApi->delete_compound: %s\n" % e)
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
projectId | ProjectIdSchema | | 
cid | CidSchema | | 

# ProjectIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# CidSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#delete_compound.ApiResponseFor200) | OK

#### delete_compound.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **get_compound**
<a name="get_compound"></a>
> CompoundId get_compound(project_idcid)

Get compound/feature with the given identifier from the specified project-space.

Get compound/feature with the given identifier from the specified project-space.

### Example

```python
import PySirius
from PySirius.apis.tags import compounds_api
from PySirius.model.compound_id import CompoundId
from pprint import pprint
# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8080"
)

# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = compounds_api.CompoundsApi(api_client)

    # example passing only required values which don't have defaults set
    path_params = {
        'projectId': "projectId_example",
        'cid': "cid_example",
    }
    query_params = {
    }
    try:
        # Get compound/feature with the given identifier from the specified project-space.
        api_response = api_instance.get_compound(
            path_params=path_params,
            query_params=query_params,
        )
        pprint(api_response)
    except PySirius.ApiException as e:
        print("Exception when calling CompoundsApi->get_compound: %s\n" % e)

    # example passing only optional values
    path_params = {
        'projectId': "projectId_example",
        'cid': "cid_example",
    }
    query_params = {
        'topAnnotation': False,
        'msData': False,
    }
    try:
        # Get compound/feature with the given identifier from the specified project-space.
        api_response = api_instance.get_compound(
            path_params=path_params,
            query_params=query_params,
        )
        pprint(api_response)
    except PySirius.ApiException as e:
        print("Exception when calling CompoundsApi->get_compound: %s\n" % e)
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
topAnnotation | TopAnnotationSchema | | optional
msData | MsDataSchema | | optional


# TopAnnotationSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
bool,  | BoolClass,  |  | if omitted the server will use the default value of False

# MsDataSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
bool,  | BoolClass,  |  | if omitted the server will use the default value of False

### path_params
#### RequestPathParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
projectId | ProjectIdSchema | | 
cid | CidSchema | | 

# ProjectIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# CidSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#get_compound.ApiResponseFor200) | CompoundId with additional annotations and MS/MS data (if specified).

#### get_compound.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**CompoundId**](../../models/CompoundId.md) |  | 


### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **get_compounds**
<a name="get_compounds"></a>
> [CompoundId] get_compounds(project_id)

Get all available compounds/features in the given project-space.

Get all available compounds/features in the given project-space.

### Example

```python
import PySirius
from PySirius.apis.tags import compounds_api
from PySirius.model.compound_id import CompoundId
from pprint import pprint
# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8080"
)

# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = compounds_api.CompoundsApi(api_client)

    # example passing only required values which don't have defaults set
    path_params = {
        'projectId': "projectId_example",
    }
    query_params = {
    }
    try:
        # Get all available compounds/features in the given project-space.
        api_response = api_instance.get_compounds(
            path_params=path_params,
            query_params=query_params,
        )
        pprint(api_response)
    except PySirius.ApiException as e:
        print("Exception when calling CompoundsApi->get_compounds: %s\n" % e)

    # example passing only optional values
    path_params = {
        'projectId': "projectId_example",
    }
    query_params = {
        'topAnnotation': False,
        'msData': False,
    }
    try:
        # Get all available compounds/features in the given project-space.
        api_response = api_instance.get_compounds(
            path_params=path_params,
            query_params=query_params,
        )
        pprint(api_response)
    except PySirius.ApiException as e:
        print("Exception when calling CompoundsApi->get_compounds: %s\n" % e)
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
topAnnotation | TopAnnotationSchema | | optional
msData | MsDataSchema | | optional


# TopAnnotationSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
bool,  | BoolClass,  |  | if omitted the server will use the default value of False

# MsDataSchema

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
200 | [ApiResponseFor200](#get_compounds.ApiResponseFor200) | CompoundIds with additional annotations and MS/MS data (if specified).

#### get_compounds.ApiResponseFor200
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
[**CompoundId**]({{complexTypePrefix}}CompoundId.md) | [**CompoundId**]({{complexTypePrefix}}CompoundId.md) | [**CompoundId**]({{complexTypePrefix}}CompoundId.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **import_compounds**
<a name="import_compounds"></a>
> JobId import_compounds(project_idrequest_body)

Import ms/ms data in given format from local filesystem into the specified project-space

Import ms/ms data in given format from local filesystem into the specified project-space.  The import will run in a background job  Possible formats (ms, mgf, cef, msp, mzML, mzXML, project-space)  <p>

### Example

```python
import PySirius
from PySirius.apis.tags import compounds_api
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
    api_instance = compounds_api.CompoundsApi(api_client)

    # example passing only required values which don't have defaults set
    path_params = {
        'projectId': "projectId_example",
    }
    query_params = {
    }
    body = [
        "request_body_example"
    ]
    try:
        # Import ms/ms data in given format from local filesystem into the specified project-space
        api_response = api_instance.import_compounds(
            path_params=path_params,
            query_params=query_params,
            body=body,
        )
        pprint(api_response)
    except PySirius.ApiException as e:
        print("Exception when calling CompoundsApi->import_compounds: %s\n" % e)

    # example passing only optional values
    path_params = {
        'projectId': "projectId_example",
    }
    query_params = {
        'alignLCMSRuns': False,
        'allowMs1OnlyData': True,
        'ignoreFormulas': False,
    }
    body = [
        "request_body_example"
    ]
    try:
        # Import ms/ms data in given format from local filesystem into the specified project-space
        api_response = api_instance.import_compounds(
            path_params=path_params,
            query_params=query_params,
            body=body,
        )
        pprint(api_response)
    except PySirius.ApiException as e:
        print("Exception when calling CompoundsApi->import_compounds: %s\n" % e)
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
alignLCMSRuns | AlignLCMSRunsSchema | | optional
allowMs1OnlyData | AllowMs1OnlyDataSchema | | optional
ignoreFormulas | IgnoreFormulasSchema | | optional


# AlignLCMSRunsSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
bool,  | BoolClass,  |  | if omitted the server will use the default value of False

# AllowMs1OnlyDataSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
bool,  | BoolClass,  |  | if omitted the server will use the default value of True

# IgnoreFormulasSchema

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
200 | [ApiResponseFor200](#import_compounds.ApiResponseFor200) | JobId background job that imports given compounds/features.

#### import_compounds.ApiResponseFor200
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

# **import_compounds_from_string**
<a name="import_compounds_from_string"></a>
> [CompoundId] import_compounds_from_string(project_idformatbody)

Import ms/ms data from the given format into the specified project-space  Possible formats (ms, mgf, cef, msp, mzML, mzXML)

Import ms/ms data from the given format into the specified project-space  Possible formats (ms, mgf, cef, msp, mzML, mzXML)

### Example

```python
import PySirius
from PySirius.apis.tags import compounds_api
from PySirius.model.compound_id import CompoundId
from pprint import pprint
# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8080"
)

# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = compounds_api.CompoundsApi(api_client)

    # example passing only required values which don't have defaults set
    path_params = {
        'projectId': "projectId_example",
    }
    query_params = {
        'format': "format_example",
    }
    body = "body_example"
    try:
        # Import ms/ms data from the given format into the specified project-space  Possible formats (ms, mgf, cef, msp, mzML, mzXML)
        api_response = api_instance.import_compounds_from_string(
            path_params=path_params,
            query_params=query_params,
            body=body,
        )
        pprint(api_response)
    except PySirius.ApiException as e:
        print("Exception when calling CompoundsApi->import_compounds_from_string: %s\n" % e)

    # example passing only optional values
    path_params = {
        'projectId': "projectId_example",
    }
    query_params = {
        'format': "format_example",
        'sourceName': "sourceName_example",
    }
    body = "body_example"
    try:
        # Import ms/ms data from the given format into the specified project-space  Possible formats (ms, mgf, cef, msp, mzML, mzXML)
        api_response = api_instance.import_compounds_from_string(
            path_params=path_params,
            query_params=query_params,
            body=body,
        )
        pprint(api_response)
    except PySirius.ApiException as e:
        print("Exception when calling CompoundsApi->import_compounds_from_string: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
body | typing.Union[SchemaForRequestBodyTextPlain] | required |
query_params | RequestQueryParams | |
path_params | RequestPathParams | |
content_type | str | optional, default is 'text/plain' | Selects the schema and serialization of the request body
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### body

# SchemaForRequestBodyTextPlain

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
format | FormatSchema | | 
sourceName | SourceNameSchema | | optional


# FormatSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# SourceNameSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

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
200 | [ApiResponseFor200](#import_compounds_from_string.ApiResponseFor200) | CompoundIds of the imported compounds/features.

#### import_compounds_from_string.ApiResponseFor200
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
[**CompoundId**]({{complexTypePrefix}}CompoundId.md) | [**CompoundId**]({{complexTypePrefix}}CompoundId.md) | [**CompoundId**]({{complexTypePrefix}}CompoundId.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

