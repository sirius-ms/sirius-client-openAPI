# GraphicalUserInterfaceApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**applyToGui**](GraphicalUserInterfaceApi.md#applyToGui) | **PATCH** /api/projects/{projectId}/gui | Apply given changes to the running GUI instance.
[**closeGui**](GraphicalUserInterfaceApi.md#closeGui) | **DELETE** /api/projects/{projectId}/gui | Close GUI instance of given project-space if available.
[**openGui**](GraphicalUserInterfaceApi.md#openGui) | **POST** /api/projects/{projectId}/gui | Open GUI instance on specified project-space and bring the GUI window to foreground.

<a name="applyToGui"></a>
# **applyToGui**
> applyToGui(body, projectId)

Apply given changes to the running GUI instance.

Apply given changes to the running GUI instance.

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.GraphicalUserInterfaceApi;


GraphicalUserInterfaceApi apiInstance = new GraphicalUserInterfaceApi();
GuiParameters body = new GuiParameters(); // GuiParameters | parameters that should be applied.
String projectId = "projectId_example"; // String | of project-space the GUI instance is connected to.
try {
    apiInstance.applyToGui(body, projectId);
} catch (ApiException e) {
    System.err.println("Exception when calling GraphicalUserInterfaceApi#applyToGui");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GuiParameters**](GuiParameters.md)| parameters that should be applied. |
 **projectId** | **String**| of project-space the GUI instance is connected to. |

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

<a name="closeGui"></a>
# **closeGui**
> closeGui(projectId)

Close GUI instance of given project-space if available.

Close GUI instance of given project-space if available.

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.GraphicalUserInterfaceApi;


GraphicalUserInterfaceApi apiInstance = new GraphicalUserInterfaceApi();
String projectId = "projectId_example"; // String | if project-space the GUI instance is connected to.
try {
    apiInstance.closeGui(projectId);
} catch (ApiException e) {
    System.err.println("Exception when calling GraphicalUserInterfaceApi#closeGui");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **String**| if project-space the GUI instance is connected to. |

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="openGui"></a>
# **openGui**
> openGui(projectId, readOnly)

Open GUI instance on specified project-space and bring the GUI window to foreground.

Open GUI instance on specified project-space and bring the GUI window to foreground.

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.GraphicalUserInterfaceApi;


GraphicalUserInterfaceApi apiInstance = new GraphicalUserInterfaceApi();
String projectId = "projectId_example"; // String | of project-space the GUI instance will connect to.
Boolean readOnly = true; // Boolean | open in read-only mode.
try {
    apiInstance.openGui(projectId, readOnly);
} catch (ApiException e) {
    System.err.println("Exception when calling GraphicalUserInterfaceApi#openGui");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **String**| of project-space the GUI instance will connect to. |
 **readOnly** | **Boolean**| open in read-only mode. | [optional] [default to true]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

