# CompoundsApi

All URIs are relative to *http://localhost:8080*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**deleteCompound**](CompoundsApi.md#deleteCompound) | **DELETE** /api/projects/{projectId}/compounds/{cid} | Delete compound/feature with the given identifier from the specified project-space. |
| [**getCompound**](CompoundsApi.md#getCompound) | **GET** /api/projects/{projectId}/compounds/{cid} | Get compound/feature with the given identifier from the specified project-space. |
| [**getCompounds**](CompoundsApi.md#getCompounds) | **GET** /api/projects/{projectId}/compounds | Get all available compounds/features in the given project-space. |
| [**importCompounds**](CompoundsApi.md#importCompounds) | **POST** /api/projects/{projectId}/compounds | Import ms/ms data in given format from local filesystem into the specified project-space |
| [**importCompoundsFromString**](CompoundsApi.md#importCompoundsFromString) | **POST** /api/projects/{projectId}/compounds/import-from-string | Import ms/ms data from the given format into the specified project-space  Possible formats (ms, mgf, cef, msp, mzML, mzXML) |


<a name="deleteCompound"></a>
# **deleteCompound**
> deleteCompound(projectId, cid)

Delete compound/feature with the given identifier from the specified project-space.

Delete compound/feature with the given identifier from the specified project-space.

### Example
```java
// Import classes:
import JSirius.ApiClient;
import JSirius.ApiException;
import JSirius.Configuration;
import JSirius.models.*;
import JSirius.api.CompoundsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost:8080");

    CompoundsApi apiInstance = new CompoundsApi(defaultClient);
    String projectId = "projectId_example"; // String | project-space to delete from.
    String cid = "cid_example"; // String | identifier of compound to delete.
    try {
      apiInstance.deleteCompound(projectId, cid);
    } catch (ApiException e) {
      System.err.println("Exception when calling CompoundsApi#deleteCompound");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **projectId** | **String**| project-space to delete from. | |
| **cid** | **String**| identifier of compound to delete. | |

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

<a name="getCompound"></a>
# **getCompound**
> CompoundId getCompound(projectId, cid, topAnnotation, msData, msQuality)

Get compound/feature with the given identifier from the specified project-space.

Get compound/feature with the given identifier from the specified project-space.

### Example
```java
// Import classes:
import JSirius.ApiClient;
import JSirius.ApiException;
import JSirius.Configuration;
import JSirius.models.*;
import JSirius.api.CompoundsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost:8080");

    CompoundsApi apiInstance = new CompoundsApi(defaultClient);
    String projectId = "projectId_example"; // String | project-space to read from.
    String cid = "cid_example"; // String | identifier of compound to access.
    Boolean topAnnotation = false; // Boolean | include the top annotation of this feature into the output (if available).
    Boolean msData = false; // Boolean | include corresponding source data (MS and MS/MS) into the output.
    Boolean msQuality = false; // Boolean | 
    try {
      CompoundId result = apiInstance.getCompound(projectId, cid, topAnnotation, msData, msQuality);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CompoundsApi#getCompound");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **projectId** | **String**| project-space to read from. | |
| **cid** | **String**| identifier of compound to access. | |
| **topAnnotation** | **Boolean**| include the top annotation of this feature into the output (if available). | [optional] [default to false] |
| **msData** | **Boolean**| include corresponding source data (MS and MS/MS) into the output. | [optional] [default to false] |
| **msQuality** | **Boolean**|  | [optional] [default to false] |

### Return type

[**CompoundId**](CompoundId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | CompoundId with additional annotations and MS/MS data (if specified). |  -  |

<a name="getCompounds"></a>
# **getCompounds**
> List&lt;CompoundId&gt; getCompounds(projectId, topAnnotation, msData, msQuality)

Get all available compounds/features in the given project-space.

Get all available compounds/features in the given project-space.

### Example
```java
// Import classes:
import JSirius.ApiClient;
import JSirius.ApiException;
import JSirius.Configuration;
import JSirius.models.*;
import JSirius.api.CompoundsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost:8080");

    CompoundsApi apiInstance = new CompoundsApi(defaultClient);
    String projectId = "projectId_example"; // String | project-space to read from.
    Boolean topAnnotation = false; // Boolean | include the top annotation of this feature into the output (if available).
    Boolean msData = false; // Boolean | include corresponding source data (MS and MS/MS) into the output.
    Boolean msQuality = false; // Boolean | 
    try {
      List<CompoundId> result = apiInstance.getCompounds(projectId, topAnnotation, msData, msQuality);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CompoundsApi#getCompounds");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **projectId** | **String**| project-space to read from. | |
| **topAnnotation** | **Boolean**| include the top annotation of this feature into the output (if available). | [optional] [default to false] |
| **msData** | **Boolean**| include corresponding source data (MS and MS/MS) into the output. | [optional] [default to false] |
| **msQuality** | **Boolean**|  | [optional] [default to false] |

### Return type

[**List&lt;CompoundId&gt;**](CompoundId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | CompoundIds with additional annotations and MS/MS data (if specified). |  -  |

<a name="importCompounds"></a>
# **importCompounds**
> JobId importCompounds(projectId, requestBody, alignLCMSRuns, allowMs1OnlyData, ignoreFormulas)

Import ms/ms data in given format from local filesystem into the specified project-space

Import ms/ms data in given format from local filesystem into the specified project-space.  The import will run in a background job  Possible formats (ms, mgf, cef, msp, mzML, mzXML, project-space)  &lt;p&gt;

### Example
```java
// Import classes:
import JSirius.ApiClient;
import JSirius.ApiException;
import JSirius.Configuration;
import JSirius.models.*;
import JSirius.api.CompoundsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost:8080");

    CompoundsApi apiInstance = new CompoundsApi(defaultClient);
    String projectId = "projectId_example"; // String | project-space to import into.
    List<String> requestBody = Arrays.asList(); // List<String> | List of file and directory paths to import
    Boolean alignLCMSRuns = false; // Boolean | If true, multiple LCMS Runs (mzML, mzXML) will be aligned during import/feature finding
    Boolean allowMs1OnlyData = true; // Boolean | 
    Boolean ignoreFormulas = false; // Boolean | 
    try {
      JobId result = apiInstance.importCompounds(projectId, requestBody, alignLCMSRuns, allowMs1OnlyData, ignoreFormulas);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CompoundsApi#importCompounds");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **projectId** | **String**| project-space to import into. | |
| **requestBody** | [**List&lt;String&gt;**](String.md)| List of file and directory paths to import | |
| **alignLCMSRuns** | **Boolean**| If true, multiple LCMS Runs (mzML, mzXML) will be aligned during import/feature finding | [optional] [default to false] |
| **allowMs1OnlyData** | **Boolean**|  | [optional] [default to true] |
| **ignoreFormulas** | **Boolean**|  | [optional] [default to false] |

### Return type

[**JobId**](JobId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | JobId background job that imports given compounds/features. |  -  |

<a name="importCompoundsFromString"></a>
# **importCompoundsFromString**
> List&lt;CompoundId&gt; importCompoundsFromString(projectId, format, body, sourceName)

Import ms/ms data from the given format into the specified project-space  Possible formats (ms, mgf, cef, msp, mzML, mzXML)

Import ms/ms data from the given format into the specified project-space  Possible formats (ms, mgf, cef, msp, mzML, mzXML)

### Example
```java
// Import classes:
import JSirius.ApiClient;
import JSirius.ApiException;
import JSirius.Configuration;
import JSirius.models.*;
import JSirius.api.CompoundsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost:8080");

    CompoundsApi apiInstance = new CompoundsApi(defaultClient);
    String projectId = "projectId_example"; // String | project-space to import into.
    String format = "format_example"; // String | data format specified by the usual file extension of the format (without [.])
    String body = "body_example"; // String | data content in specified format
    String sourceName = "sourceName_example"; // String | name that specifies the data source. Can e.g. be a file path or just a name.
    try {
      List<CompoundId> result = apiInstance.importCompoundsFromString(projectId, format, body, sourceName);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CompoundsApi#importCompoundsFromString");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **projectId** | **String**| project-space to import into. | |
| **format** | **String**| data format specified by the usual file extension of the format (without [.]) | |
| **body** | **String**| data content in specified format | |
| **sourceName** | **String**| name that specifies the data source. Can e.g. be a file path or just a name. | [optional] |

### Return type

[**List&lt;CompoundId&gt;**](CompoundId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | CompoundIds of the imported compounds/features. |  -  |

