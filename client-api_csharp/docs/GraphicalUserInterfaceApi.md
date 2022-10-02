# IO.Swagger.Api.GraphicalUserInterfaceApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ApplyToGui**](GraphicalUserInterfaceApi.md#applytogui) | **PATCH** /api/projects/{projectId}/gui | Apply given changes to the running GUI instance.
[**CloseGui**](GraphicalUserInterfaceApi.md#closegui) | **DELETE** /api/projects/{projectId}/gui | Close GUI instance of given project-space if available.
[**OpenGui**](GraphicalUserInterfaceApi.md#opengui) | **POST** /api/projects/{projectId}/gui | Open GUI instance on specified project-space and bring the GUI window to foreground.

<a name="applytogui"></a>
# **ApplyToGui**
> void ApplyToGui (GuiParameters body, string projectId)

Apply given changes to the running GUI instance.

Apply given changes to the running GUI instance.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApplyToGuiExample
    {
        public void main()
        {
            var apiInstance = new GraphicalUserInterfaceApi();
            var body = new GuiParameters(); // GuiParameters | parameters that should be applied.
            var projectId = projectId_example;  // string | of project-space the GUI instance is connected to.

            try
            {
                // Apply given changes to the running GUI instance.
                apiInstance.ApplyToGui(body, projectId);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling GraphicalUserInterfaceApi.ApplyToGui: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GuiParameters**](GuiParameters.md)| parameters that should be applied. | 
 **projectId** | **string**| of project-space the GUI instance is connected to. | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="closegui"></a>
# **CloseGui**
> void CloseGui (string projectId)

Close GUI instance of given project-space if available.

Close GUI instance of given project-space if available.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class CloseGuiExample
    {
        public void main()
        {
            var apiInstance = new GraphicalUserInterfaceApi();
            var projectId = projectId_example;  // string | if project-space the GUI instance is connected to.

            try
            {
                // Close GUI instance of given project-space if available.
                apiInstance.CloseGui(projectId);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling GraphicalUserInterfaceApi.CloseGui: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **string**| if project-space the GUI instance is connected to. | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="opengui"></a>
# **OpenGui**
> void OpenGui (string projectId, bool? _readOnly = null)

Open GUI instance on specified project-space and bring the GUI window to foreground.

Open GUI instance on specified project-space and bring the GUI window to foreground.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class OpenGuiExample
    {
        public void main()
        {
            var apiInstance = new GraphicalUserInterfaceApi();
            var projectId = projectId_example;  // string | of project-space the GUI instance will connect to.
            var _readOnly = true;  // bool? | open in read-only mode. (optional)  (default to true)

            try
            {
                // Open GUI instance on specified project-space and bring the GUI window to foreground.
                apiInstance.OpenGui(projectId, _readOnly);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling GraphicalUserInterfaceApi.OpenGui: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **string**| of project-space the GUI instance will connect to. | 
 **_readOnly** | **bool?**| open in read-only mode. | [optional] [default to true]

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
