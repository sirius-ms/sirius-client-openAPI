# IO.Swagger.Api.VersionInfoControllerApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetVersionInfo**](VersionInfoControllerApi.md#getversioninfo) | **GET** /api/version.json | 

<a name="getversioninfo"></a>
# **GetVersionInfo**
> string GetVersionInfo ()



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetVersionInfoExample
    {
        public void main()
        {
            var apiInstance = new VersionInfoControllerApi();

            try
            {
                string result = apiInstance.GetVersionInfo();
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling VersionInfoControllerApi.GetVersionInfo: " + e.Message );
            }
        }
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
