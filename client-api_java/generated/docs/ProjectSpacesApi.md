# ProjectSpacesApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**closeProjectSpace**](ProjectSpacesApi.md#closeProjectSpace) | **DELETE** /api/projects/{projectId} | Close project-space and remove it from application.
[**createProjectSpace**](ProjectSpacesApi.md#createProjectSpace) | **POST** /api/projects/{projectId} | Create and open a new project-space at given location and make it accessible via the given projectId.
[**getProjectSpace**](ProjectSpacesApi.md#getProjectSpace) | **GET** /api/projects/{projectId} | Get project space info by its projectId.
[**getProjectSpaces**](ProjectSpacesApi.md#getProjectSpaces) | **GET** /api/projects | List all opened project spaces.
[**openProjectSpace**](ProjectSpacesApi.md#openProjectSpace) | **PUT** /api/projects/{projectId} | Open an existing project-space and make it accessible via the given projectId.

<a name="closeProjectSpace"></a>
# **closeProjectSpace**
> closeProjectSpace(projectId)

Close project-space and remove it from application.

Close project-space and remove it from application. Project-space will NOT be deleted from disk.

### Example
```java
// Import classes:
//import JSirius.ApiException;
//import JSirius.api.ProjectSpacesApi;


ProjectSpacesApi apiInstance = new ProjectSpacesApi();
String projectId = "projectId_example"; // String | unique name/identifier of the  project-space to be closed.
try {
    apiInstance.closeProjectSpace(projectId);
} catch (ApiException e) {
    System.err.println("Exception when calling ProjectSpacesApi#closeProjectSpace");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **String**| unique name/identifier of the  project-space to be closed. |

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="createProjectSpace"></a>
# **createProjectSpace**
> ProjectSpaceId createProjectSpace(projectId, pathToProject, pathToSourceProject, awaitImport)

Create and open a new project-space at given location and make it accessible via the given projectId.

Create and open a new project-space at given location and make it accessible via the given projectId.

### Example
```java
// Import classes:
//import JSirius.ApiException;
//import JSirius.api.ProjectSpacesApi;


ProjectSpacesApi apiInstance = new ProjectSpacesApi();
String projectId = "projectId_example"; // String | unique name/identifier that shall be used to access the newly created project-space.
String pathToProject = "pathToProject_example"; // String | 
String pathToSourceProject = "pathToSourceProject_example"; // String | 
Boolean awaitImport = true; // Boolean | 
try {
    ProjectSpaceId result = apiInstance.createProjectSpace(projectId, pathToProject, pathToSourceProject, awaitImport);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ProjectSpacesApi#createProjectSpace");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **String**| unique name/identifier that shall be used to access the newly created project-space. |
 **pathToProject** | **String**|  |
 **pathToSourceProject** | **String**|  | [optional]
 **awaitImport** | **Boolean**|  | [optional] [default to true]

### Return type

[**ProjectSpaceId**](ProjectSpaceId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getProjectSpace"></a>
# **getProjectSpace**
> ProjectSpaceId getProjectSpace(projectId)

Get project space info by its projectId.

Get project space info by its projectId.

### Example
```java
// Import classes:
//import JSirius.ApiException;
//import JSirius.api.ProjectSpacesApi;


ProjectSpacesApi apiInstance = new ProjectSpacesApi();
String projectId = "projectId_example"; // String | unique name/identifier tof the project-space to be accessed.
try {
    ProjectSpaceId result = apiInstance.getProjectSpace(projectId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ProjectSpacesApi#getProjectSpace");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **String**| unique name/identifier tof the project-space to be accessed. |

### Return type

[**ProjectSpaceId**](ProjectSpaceId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getProjectSpaces"></a>
# **getProjectSpaces**
> List&lt;ProjectSpaceId&gt; getProjectSpaces()

List all opened project spaces.

List all opened project spaces.

### Example
```java
// Import classes:
//import JSirius.ApiException;
//import JSirius.api.ProjectSpacesApi;


ProjectSpacesApi apiInstance = new ProjectSpacesApi();
try {
    List<ProjectSpaceId> result = apiInstance.getProjectSpaces();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ProjectSpacesApi#getProjectSpaces");
    e.printStackTrace();
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List&lt;ProjectSpaceId&gt;**](ProjectSpaceId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="openProjectSpace"></a>
# **openProjectSpace**
> ProjectSpaceId openProjectSpace(projectId, pathToProject)

Open an existing project-space and make it accessible via the given projectId.

Open an existing project-space and make it accessible via the given projectId.

### Example
```java
// Import classes:
//import JSirius.ApiException;
//import JSirius.api.ProjectSpacesApi;


ProjectSpacesApi apiInstance = new ProjectSpacesApi();
String projectId = "projectId_example"; // String | unique name/identifier that shall be used to access the opened project-space.
String pathToProject = "pathToProject_example"; // String | 
try {
    ProjectSpaceId result = apiInstance.openProjectSpace(projectId, pathToProject);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ProjectSpacesApi#openProjectSpace");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **String**| unique name/identifier that shall be used to access the opened project-space. |
 **pathToProject** | **String**|  |

### Return type

[**ProjectSpaceId**](ProjectSpaceId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

