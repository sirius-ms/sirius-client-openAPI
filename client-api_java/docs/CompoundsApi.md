# CompoundsApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteCompound**](CompoundsApi.md#deleteCompound) | **DELETE** /api/projects/{projectId}/compounds/{cid} | Delete compound/feature with the given identifier from the specified project-space.
[**getCompound**](CompoundsApi.md#getCompound) | **GET** /api/projects/{projectId}/compounds/{cid} | Get compound/feature with the given identifier from the specified project-space.
[**getCompounds**](CompoundsApi.md#getCompounds) | **GET** /api/projects/{projectId}/compounds | Get all available compounds/features in the given project-space.
[**importCompounds**](CompoundsApi.md#importCompounds) | **POST** /api/projects/{projectId}/compounds | Import ms/ms data in given format from local filesystem into the specified project-space
[**importCompoundsFromString**](CompoundsApi.md#importCompoundsFromString) | **POST** /api/projects/{projectId}/compounds/import-from-string | Import ms/ms data from the given format into the specified project-space  Possible formats (ms, mgf, cef, msp, mzML, mzXML)

<a name="deleteCompound"></a>
# **deleteCompound**
> deleteCompound(projectId, cid)

Delete compound/feature with the given identifier from the specified project-space.

Delete compound/feature with the given identifier from the specified project-space.

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.CompoundsApi;


CompoundsApi apiInstance = new CompoundsApi();
String projectId = "projectId_example"; // String | project-space to delete from.
String cid = "cid_example"; // String | identifier of compound to delete.
try {
    apiInstance.deleteCompound(projectId, cid);
} catch (ApiException e) {
    System.err.println("Exception when calling CompoundsApi#deleteCompound");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **String**| project-space to delete from. |
 **cid** | **String**| identifier of compound to delete. |

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="getCompound"></a>
# **getCompound**
> CompoundId getCompound(projectId, cid, topAnnotation, msData)

Get compound/feature with the given identifier from the specified project-space.

Get compound/feature with the given identifier from the specified project-space.

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.CompoundsApi;


CompoundsApi apiInstance = new CompoundsApi();
String projectId = "projectId_example"; // String | project-space to read from.
String cid = "cid_example"; // String | identifier of compound to access.
Boolean topAnnotation = false; // Boolean | include the top annotation of this feature into the output (if available).
Boolean msData = false; // Boolean | include corresponding source data (MS and MS/MS) into the output.
try {
    CompoundId result = apiInstance.getCompound(projectId, cid, topAnnotation, msData);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CompoundsApi#getCompound");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **String**| project-space to read from. |
 **cid** | **String**| identifier of compound to access. |
 **topAnnotation** | **Boolean**| include the top annotation of this feature into the output (if available). | [optional] [default to false]
 **msData** | **Boolean**| include corresponding source data (MS and MS/MS) into the output. | [optional] [default to false]

### Return type

[**CompoundId**](CompoundId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getCompounds"></a>
# **getCompounds**
> List&lt;CompoundId&gt; getCompounds(projectId, topAnnotation, msData)

Get all available compounds/features in the given project-space.

Get all available compounds/features in the given project-space.

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.CompoundsApi;


CompoundsApi apiInstance = new CompoundsApi();
String projectId = "projectId_example"; // String | project-space to read from.
Boolean topAnnotation = false; // Boolean | include the top annotation of this feature into the output (if available).
Boolean msData = false; // Boolean | include corresponding source data (MS and MS/MS) into the output.
try {
    List<CompoundId> result = apiInstance.getCompounds(projectId, topAnnotation, msData);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CompoundsApi#getCompounds");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **String**| project-space to read from. |
 **topAnnotation** | **Boolean**| include the top annotation of this feature into the output (if available). | [optional] [default to false]
 **msData** | **Boolean**| include corresponding source data (MS and MS/MS) into the output. | [optional] [default to false]

### Return type

[**List&lt;CompoundId&gt;**](CompoundId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="importCompounds"></a>
# **importCompounds**
> JobId importCompounds(body, projectId, alignLCMSRuns, allowMs1OnlyData, ignoreFormulas)

Import ms/ms data in given format from local filesystem into the specified project-space

Import ms/ms data in given format from local filesystem into the specified project-space.  The import will run in a background job  Possible formats (ms, mgf, cef, msp, mzML, mzXML, project-space)  &lt;p&gt;

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.CompoundsApi;


CompoundsApi apiInstance = new CompoundsApi();
List<String> body = Arrays.asList("body_example"); // List<String> | List of file and directory paths to import
String projectId = "projectId_example"; // String | project-space to import into.
Boolean alignLCMSRuns = false; // Boolean | If true, multiple LCMS Runs (mzML, mzXML) will be aligned during import/feature finding
Boolean allowMs1OnlyData = true; // Boolean | 
Boolean ignoreFormulas = false; // Boolean | 
try {
    JobId result = apiInstance.importCompounds(body, projectId, alignLCMSRuns, allowMs1OnlyData, ignoreFormulas);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CompoundsApi#importCompounds");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**List&lt;String&gt;**](String.md)| List of file and directory paths to import |
 **projectId** | **String**| project-space to import into. |
 **alignLCMSRuns** | **Boolean**| If true, multiple LCMS Runs (mzML, mzXML) will be aligned during import/feature finding | [optional] [default to false]
 **allowMs1OnlyData** | **Boolean**|  | [optional] [default to true]
 **ignoreFormulas** | **Boolean**|  | [optional] [default to false]

### Return type

[**JobId**](JobId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="importCompoundsFromString"></a>
# **importCompoundsFromString**
> List&lt;CompoundId&gt; importCompoundsFromString(body, format, projectId, sourceName)

Import ms/ms data from the given format into the specified project-space  Possible formats (ms, mgf, cef, msp, mzML, mzXML)

Import ms/ms data from the given format into the specified project-space  Possible formats (ms, mgf, cef, msp, mzML, mzXML)

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.CompoundsApi;


CompoundsApi apiInstance = new CompoundsApi();
String body = "body_example"; // String | data content in specified format
String format = "format_example"; // String | data format specified by the usual file extension of the format (without [.])
String projectId = "projectId_example"; // String | project-space to import into.
String sourceName = "sourceName_example"; // String | name that specifies the data source. Can e.g. be a file path or just a name.
try {
    List<CompoundId> result = apiInstance.importCompoundsFromString(body, format, projectId, sourceName);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CompoundsApi#importCompoundsFromString");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**String**](String.md)| data content in specified format |
 **format** | **String**| data format specified by the usual file extension of the format (without [.]) |
 **projectId** | **String**| project-space to import into. |
 **sourceName** | **String**| name that specifies the data source. Can e.g. be a file path or just a name. | [optional]

### Return type

[**List&lt;CompoundId&gt;**](CompoundId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json

