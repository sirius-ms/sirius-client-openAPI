<a name="__pageTop"></a>
# PySirius.apis.tags.version_info_controller_api.VersionInfoControllerApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_version_info**](#get_version_info) | **get** /api/version.json | 

# **get_version_info**
<a name="get_version_info"></a>
> str get_version_info()



### Example

```python
import PySirius
from PySirius.apis.tags import version_info_controller_api
from pprint import pprint
# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8080"
)

# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = version_info_controller_api.VersionInfoControllerApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        api_response = api_instance.get_version_info()
        pprint(api_response)
    except PySirius.ApiException as e:
        print("Exception when calling VersionInfoControllerApi->get_version_info: %s\n" % e)
```
### Parameters
This endpoint does not need any parameter.

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#get_version_info.ApiResponseFor200) | OK

#### get_version_info.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

