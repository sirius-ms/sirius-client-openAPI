# VersionInfoControllerApi

All URIs are relative to *http://localhost:8080*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getVersionInfo**](VersionInfoControllerApi.md#getVersionInfo) | **GET** /api/version.json |  |


<a name="getVersionInfo"></a>
# **getVersionInfo**
> String getVersionInfo()



### Example
```java
// Import classes:
import JSirius.ApiClient;
import JSirius.ApiException;
import JSirius.Configuration;
import JSirius.models.*;
import JSirius.api.VersionInfoControllerApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost:8080");

    VersionInfoControllerApi apiInstance = new VersionInfoControllerApi(defaultClient);
    try {
      String result = apiInstance.getVersionInfo();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling VersionInfoControllerApi#getVersionInfo");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
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

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

