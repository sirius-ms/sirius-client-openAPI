# InfoApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetConnectionCheck**](InfoApi.md#GetConnectionCheck) | **GET** /api/connection-status | 
[**GetInfo**](InfoApi.md#GetInfo) | **GET** /api/info | 


# **GetConnectionCheck**
> ConnectionCheck GetConnectionCheck()



### Example
```R
library(Rsirius)


api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetConnectionCheck(data_file = "result.txt")
result <- api_instance$info_api$GetConnectionCheck()
dput(result)
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
| **200** | OK |  -  |

# **GetInfo**
> Info GetInfo()



### Example
```R
library(Rsirius)


api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetInfo(data_file = "result.txt")
result <- api_instance$info_api$GetInfo()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

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
| **200** | OK |  -  |

