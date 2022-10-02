# IO.Swagger.Api.VersionInfoControllerApi

All URIs are relative to *//localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetVersionInfoUsingGET**](VersionInfoControllerApi.md#getversioninfousingget) | **GET** /api/version.json | getVersionInfo

<a name="getversioninfousingget"></a>
# **GetVersionInfoUsingGET**
> string GetVersionInfoUsingGET ()

getVersionInfo

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetVersionInfoUsingGETExample
    {
        public void main()
        {
            var apiInstance = new VersionInfoControllerApi();

            try
            {
                // getVersionInfo
                string result = apiInstance.GetVersionInfoUsingGET();
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling VersionInfoControllerApi.GetVersionInfoUsingGET: " + e.Message );
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
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
