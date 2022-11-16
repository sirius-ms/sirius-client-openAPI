# VersionInfoControllerApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetVersionInfo**](VersionInfoControllerApi.md#GetVersionInfo) | **GET** /api/version.json | 


# **GetVersionInfo**
> character GetVersionInfo()



### Example
```R
library(Rsirius)


api_instance <- VersionInfoControllerApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetVersionInfo(data_file = "result.txt")
result <- api_instance$GetVersionInfo()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

**character**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

