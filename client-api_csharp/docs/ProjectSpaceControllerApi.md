# IO.Swagger.Api.ProjectSpaceControllerApi

All URIs are relative to *//localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetProjectSpaceUsingGET**](ProjectSpaceControllerApi.md#getprojectspaceusingget) | **GET** /api/projects/{name} | getProjectSpace
[**GetProjectSpacesUsingGET**](ProjectSpaceControllerApi.md#getprojectspacesusingget) | **GET** /api/projects | getProjectSpaces
[**OpenProjectSpaceUsingPOST**](ProjectSpaceControllerApi.md#openprojectspaceusingpost) | **POST** /api/projects/new | openProjectSpace
[**OpenProjectSpaceUsingPUT**](ProjectSpaceControllerApi.md#openprojectspaceusingput) | **PUT** /api/projects/{name} | openProjectSpace

<a name="getprojectspaceusingget"></a>
# **GetProjectSpaceUsingGET**
> ProjectSpaceId GetProjectSpaceUsingGET (string name)

getProjectSpace

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetProjectSpaceUsingGETExample
    {
        public void main()
        {
            var apiInstance = new ProjectSpaceControllerApi();
            var name = name_example;  // string | name

            try
            {
                // getProjectSpace
                ProjectSpaceId result = apiInstance.GetProjectSpaceUsingGET(name);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling ProjectSpaceControllerApi.GetProjectSpaceUsingGET: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| name | 

### Return type

[**ProjectSpaceId**](ProjectSpaceId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="getprojectspacesusingget"></a>
# **GetProjectSpacesUsingGET**
> List<ProjectSpaceId> GetProjectSpacesUsingGET ()

getProjectSpaces

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetProjectSpacesUsingGETExample
    {
        public void main()
        {
            var apiInstance = new ProjectSpaceControllerApi();

            try
            {
                // getProjectSpaces
                List&lt;ProjectSpaceId&gt; result = apiInstance.GetProjectSpacesUsingGET();
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling ProjectSpaceControllerApi.GetProjectSpacesUsingGET: " + e.Message );
            }
        }
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<ProjectSpaceId>**](ProjectSpaceId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="openprojectspaceusingpost"></a>
# **OpenProjectSpaceUsingPOST**
> ProjectSpaceId OpenProjectSpaceUsingPOST (string path)

openProjectSpace

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class OpenProjectSpaceUsingPOSTExample
    {
        public void main()
        {
            var apiInstance = new ProjectSpaceControllerApi();
            var path = path_example;  // string | path

            try
            {
                // openProjectSpace
                ProjectSpaceId result = apiInstance.OpenProjectSpaceUsingPOST(path);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling ProjectSpaceControllerApi.OpenProjectSpaceUsingPOST: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **string**| path | 

### Return type

[**ProjectSpaceId**](ProjectSpaceId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="openprojectspaceusingput"></a>
# **OpenProjectSpaceUsingPUT**
> ProjectSpaceId OpenProjectSpaceUsingPUT (string name, string path)

openProjectSpace

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class OpenProjectSpaceUsingPUTExample
    {
        public void main()
        {
            var apiInstance = new ProjectSpaceControllerApi();
            var name = name_example;  // string | name
            var path = path_example;  // string | path

            try
            {
                // openProjectSpace
                ProjectSpaceId result = apiInstance.OpenProjectSpaceUsingPUT(name, path);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling ProjectSpaceControllerApi.OpenProjectSpaceUsingPUT: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| name | 
 **path** | **string**| path | 

### Return type

[**ProjectSpaceId**](ProjectSpaceId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
