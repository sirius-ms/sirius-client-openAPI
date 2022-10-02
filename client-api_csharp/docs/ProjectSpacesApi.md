# IO.Swagger.Api.ProjectSpacesApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CloseProjectSpace**](ProjectSpacesApi.md#closeprojectspace) | **DELETE** /api/projects/{projectId} | Close project-space and remove it from application.
[**CreateProjectSpace**](ProjectSpacesApi.md#createprojectspace) | **POST** /api/projects/{projectId} | Create and open a new project-space at given location and make it accessible via the given projectId.
[**GetProjectSpace**](ProjectSpacesApi.md#getprojectspace) | **GET** /api/projects/{projectId} | Get project space info by its projectId.
[**GetProjectSpaces**](ProjectSpacesApi.md#getprojectspaces) | **GET** /api/projects | List all opened project spaces.
[**OpenProjectSpace**](ProjectSpacesApi.md#openprojectspace) | **PUT** /api/projects/{projectId} | Open an existing project-space and make it accessible via the given projectId.

<a name="closeprojectspace"></a>
# **CloseProjectSpace**
> void CloseProjectSpace (string projectId)

Close project-space and remove it from application.

Close project-space and remove it from application. Project-space will NOT be deleted from disk.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class CloseProjectSpaceExample
    {
        public void main()
        {
            var apiInstance = new ProjectSpacesApi();
            var projectId = projectId_example;  // string | unique name/identifier of the  project-space to be closed.

            try
            {
                // Close project-space and remove it from application.
                apiInstance.CloseProjectSpace(projectId);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling ProjectSpacesApi.CloseProjectSpace: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **string**| unique name/identifier of the  project-space to be closed. | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="createprojectspace"></a>
# **CreateProjectSpace**
> ProjectSpaceId CreateProjectSpace (string projectId, string pathToProject, string pathToSourceProject = null, bool? awaitImport = null)

Create and open a new project-space at given location and make it accessible via the given projectId.

Create and open a new project-space at given location and make it accessible via the given projectId.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class CreateProjectSpaceExample
    {
        public void main()
        {
            var apiInstance = new ProjectSpacesApi();
            var projectId = projectId_example;  // string | unique name/identifier that shall be used to access the newly created project-space.
            var pathToProject = pathToProject_example;  // string | 
            var pathToSourceProject = pathToSourceProject_example;  // string |  (optional) 
            var awaitImport = true;  // bool? |  (optional)  (default to true)

            try
            {
                // Create and open a new project-space at given location and make it accessible via the given projectId.
                ProjectSpaceId result = apiInstance.CreateProjectSpace(projectId, pathToProject, pathToSourceProject, awaitImport);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling ProjectSpacesApi.CreateProjectSpace: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **string**| unique name/identifier that shall be used to access the newly created project-space. | 
 **pathToProject** | **string**|  | 
 **pathToSourceProject** | **string**|  | [optional] 
 **awaitImport** | **bool?**|  | [optional] [default to true]

### Return type

[**ProjectSpaceId**](ProjectSpaceId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="getprojectspace"></a>
# **GetProjectSpace**
> ProjectSpaceId GetProjectSpace (string projectId)

Get project space info by its projectId.

Get project space info by its projectId.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetProjectSpaceExample
    {
        public void main()
        {
            var apiInstance = new ProjectSpacesApi();
            var projectId = projectId_example;  // string | unique name/identifier tof the project-space to be accessed.

            try
            {
                // Get project space info by its projectId.
                ProjectSpaceId result = apiInstance.GetProjectSpace(projectId);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling ProjectSpacesApi.GetProjectSpace: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **string**| unique name/identifier tof the project-space to be accessed. | 

### Return type

[**ProjectSpaceId**](ProjectSpaceId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="getprojectspaces"></a>
# **GetProjectSpaces**
> List<ProjectSpaceId> GetProjectSpaces ()

List all opened project spaces.

List all opened project spaces.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetProjectSpacesExample
    {
        public void main()
        {
            var apiInstance = new ProjectSpacesApi();

            try
            {
                // List all opened project spaces.
                List&lt;ProjectSpaceId&gt; result = apiInstance.GetProjectSpaces();
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling ProjectSpacesApi.GetProjectSpaces: " + e.Message );
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="openprojectspace"></a>
# **OpenProjectSpace**
> ProjectSpaceId OpenProjectSpace (string projectId, string pathToProject)

Open an existing project-space and make it accessible via the given projectId.

Open an existing project-space and make it accessible via the given projectId.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class OpenProjectSpaceExample
    {
        public void main()
        {
            var apiInstance = new ProjectSpacesApi();
            var projectId = projectId_example;  // string | unique name/identifier that shall be used to access the opened project-space.
            var pathToProject = pathToProject_example;  // string | 

            try
            {
                // Open an existing project-space and make it accessible via the given projectId.
                ProjectSpaceId result = apiInstance.OpenProjectSpace(projectId, pathToProject);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling ProjectSpacesApi.OpenProjectSpace: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **string**| unique name/identifier that shall be used to access the opened project-space. | 
 **pathToProject** | **string**|  | 

### Return type

[**ProjectSpaceId**](ProjectSpaceId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
