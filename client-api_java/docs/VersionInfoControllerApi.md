# VersionInfoControllerApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getVersionInfo**](VersionInfoControllerApi.md#getVersionInfo) | **GET** /api/version.json | 

<a name="getVersionInfo"></a>
# **getVersionInfo**
> String getVersionInfo()



### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.VersionInfoControllerApi;


VersionInfoControllerApi apiInstance = new VersionInfoControllerApi();
try {
    String result = apiInstance.getVersionInfo();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling VersionInfoControllerApi#getVersionInfo");
    e.printStackTrace();
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

