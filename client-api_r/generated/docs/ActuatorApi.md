# ActuatorApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Health**](ActuatorApi.md#Health) | **GET** /actuator/health | Actuator web endpoint &#39;health&#39;
[**Shutdown**](ActuatorApi.md#Shutdown) | **POST** /actuator/shutdown | Actuator web endpoint &#39;shutdown&#39;


# **Health**
> object Health()

Actuator web endpoint 'health'

### Example
```R
library(RSirius)

# Actuator web endpoint 'health'
#

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$Health(data_file = "result.txt")
result <- api_instance$actuator_api$Health()
dput(result)
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
| **200** | OK |  -  |

# **Shutdown**
> Shutdown()

Actuator web endpoint 'shutdown'

### Example
```R
library(RSirius)

# Actuator web endpoint 'shutdown'
#

api_instance <- rsirius_api$new()
api_instance$actuator_api$Shutdown()
```

### Parameters
This endpoint does not need any parameter.

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
| **204** | No Content |  -  |
| **400** | Bad Request |  -  |

