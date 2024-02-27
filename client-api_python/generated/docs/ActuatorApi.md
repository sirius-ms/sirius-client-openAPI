# PySirius.ActuatorApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**health**](ActuatorApi.md#health) | **GET** /actuator/health | Actuator web endpoint &#39;health&#39;
[**shutdown**](ActuatorApi.md#shutdown) | **POST** /actuator/shutdown | Actuator web endpoint &#39;shutdown&#39;


# **health**
> object health()

Actuator web endpoint 'health'

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
    api_instance = PySirius.ActuatorApi(api_client)

    try:
        # Actuator web endpoint 'health'
        api_response = api_instance.health()
        print("The response of ActuatorApi->health:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ActuatorApi->health: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.spring-boot.actuator.v3+json, application/vnd.spring-boot.actuator.v2+json, application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **shutdown**
> object shutdown()

Actuator web endpoint 'shutdown'

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
    api_instance = PySirius.ActuatorApi(api_client)

    try:
        # Actuator web endpoint 'shutdown'
        api_response = api_instance.shutdown()
        print("The response of ActuatorApi->shutdown:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ActuatorApi->shutdown: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.spring-boot.actuator.v3+json, application/vnd.spring-boot.actuator.v2+json, application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

