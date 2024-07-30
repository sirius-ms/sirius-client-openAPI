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
> Info GetInfo(server_info = TRUE, update_info = TRUE)



### Example
```R
library(Rsirius)

# prepare function argument(s)
var_server_info <- TRUE # character |  (Optional)
var_update_info <- TRUE # character |  (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetInfo(server_info = var_server_info, update_info = var_update_infodata_file = "result.txt")
result <- api_instance$info_api$GetInfo(server_info = var_server_info, update_info = var_update_info)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **server_info** | **character**|  | [optional] [default to TRUE]
 **update_info** | **character**|  | [optional] [default to TRUE]

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

