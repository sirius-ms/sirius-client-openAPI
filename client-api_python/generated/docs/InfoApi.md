# PySirius.InfoApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_connection_check**](InfoApi.md#get_connection_check) | **GET** /api/connection-status | 
[**get_info**](InfoApi.md#get_info) | **GET** /api/info | 


# **get_connection_check**
> ConnectionCheck get_connection_check()

### Example


```python
import PySirius
from PySirius.models.connection_check import ConnectionCheck
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
    api_instance = PySirius.InfoApi(api_client)

    try:
        api_response = api_instance.get_connection_check()
        print("The response of InfoApi->get_connection_check:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling InfoApi->get_connection_check: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**ConnectionCheck**](ConnectionCheck.md)

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

# **get_info**
> Info get_info(server_info=server_info, update_info=update_info)

### Example


```python
import PySirius
from PySirius.models.info import Info
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
    api_instance = PySirius.InfoApi(api_client)
    server_info = True # bool |  (optional) (default to True)
    update_info = True # bool |  (optional) (default to True)

    try:
        api_response = api_instance.get_info(server_info=server_info, update_info=update_info)
        print("The response of InfoApi->get_info:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling InfoApi->get_info: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **server_info** | **bool**|  | [optional] [default to True]
 **update_info** | **bool**|  | [optional] [default to True]

### Return type

[**Info**](Info.md)

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

