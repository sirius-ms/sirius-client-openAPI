# swagger_client.VersionInfoControllerApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_version_info**](VersionInfoControllerApi.md#get_version_info) | **GET** /api/version.json | 

# **get_version_info**
> str get_version_info()



### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.VersionInfoControllerApi()

try:
    api_response = api_instance.get_version_info()
    pprint(api_response)
except ApiException as e:
    print("Exception when calling VersionInfoControllerApi->get_version_info: %s\n" % e)
```

### Parameters
This endpoint does not need any parameter.

### Return type

**str**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

