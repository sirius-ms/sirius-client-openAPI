# IO.Swagger.Api.CompoundControllerApi

All URIs are relative to *//localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetCompoundIdsUsingGET**](CompoundControllerApi.md#getcompoundidsusingget) | **GET** /api/projects/{pid}/compounds | getCompoundIds
[**GetCompoundUsingGET**](CompoundControllerApi.md#getcompoundusingget) | **GET** /api/projects/{pid}/compounds/{cid} | getCompound

<a name="getcompoundidsusingget"></a>
# **GetCompoundIdsUsingGET**
> List<CompoundId> GetCompoundIdsUsingGET (string pid)

getCompoundIds

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetCompoundIdsUsingGETExample
    {
        public void main()
        {
            var apiInstance = new CompoundControllerApi();
            var pid = pid_example;  // string | pid

            try
            {
                // getCompoundIds
                List&lt;CompoundId&gt; result = apiInstance.GetCompoundIdsUsingGET(pid);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling CompoundControllerApi.GetCompoundIdsUsingGET: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pid** | **string**| pid | 

### Return type

[**List<CompoundId>**](CompoundId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="getcompoundusingget"></a>
# **GetCompoundUsingGET**
> CompoundMsData GetCompoundUsingGET (string cid, string pid)

getCompound

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetCompoundUsingGETExample
    {
        public void main()
        {
            var apiInstance = new CompoundControllerApi();
            var cid = cid_example;  // string | cid
            var pid = pid_example;  // string | pid

            try
            {
                // getCompound
                CompoundMsData result = apiInstance.GetCompoundUsingGET(cid, pid);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling CompoundControllerApi.GetCompoundUsingGET: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cid** | **string**| cid | 
 **pid** | **string**| pid | 

### Return type

[**CompoundMsData**](CompoundMsData.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
