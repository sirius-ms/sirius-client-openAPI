# IO.Swagger.Api.CompoundsApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**DeleteCompound**](CompoundsApi.md#deletecompound) | **DELETE** /api/projects/{projectId}/compounds/{cid} | Delete compound/feature with the given identifier from the specified project-space.
[**GetCompound**](CompoundsApi.md#getcompound) | **GET** /api/projects/{projectId}/compounds/{cid} | Get compound/feature with the given identifier from the specified project-space.
[**GetCompounds**](CompoundsApi.md#getcompounds) | **GET** /api/projects/{projectId}/compounds | Get all available compounds/features in the given project-space.
[**ImportCompounds**](CompoundsApi.md#importcompounds) | **POST** /api/projects/{projectId}/compounds | Import ms/ms data in given format from local filesystem into the specified project-space
[**ImportCompoundsFromString**](CompoundsApi.md#importcompoundsfromstring) | **POST** /api/projects/{projectId}/compounds/import-from-string | Import ms/ms data from the given format into the specified project-space  Possible formats (ms, mgf, cef, msp, mzML, mzXML)

<a name="deletecompound"></a>
# **DeleteCompound**
> void DeleteCompound (string projectId, string cid)

Delete compound/feature with the given identifier from the specified project-space.

Delete compound/feature with the given identifier from the specified project-space.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class DeleteCompoundExample
    {
        public void main()
        {
            var apiInstance = new CompoundsApi();
            var projectId = projectId_example;  // string | project-space to delete from.
            var cid = cid_example;  // string | identifier of compound to delete.

            try
            {
                // Delete compound/feature with the given identifier from the specified project-space.
                apiInstance.DeleteCompound(projectId, cid);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling CompoundsApi.DeleteCompound: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **string**| project-space to delete from. | 
 **cid** | **string**| identifier of compound to delete. | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="getcompound"></a>
# **GetCompound**
> CompoundId GetCompound (string projectId, string cid, bool? topAnnotation = null, bool? msData = null)

Get compound/feature with the given identifier from the specified project-space.

Get compound/feature with the given identifier from the specified project-space.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetCompoundExample
    {
        public void main()
        {
            var apiInstance = new CompoundsApi();
            var projectId = projectId_example;  // string | project-space to read from.
            var cid = cid_example;  // string | identifier of compound to access.
            var topAnnotation = true;  // bool? | include the top annotation of this feature into the output (if available). (optional)  (default to false)
            var msData = true;  // bool? | include corresponding source data (MS and MS/MS) into the output. (optional)  (default to false)

            try
            {
                // Get compound/feature with the given identifier from the specified project-space.
                CompoundId result = apiInstance.GetCompound(projectId, cid, topAnnotation, msData);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling CompoundsApi.GetCompound: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **string**| project-space to read from. | 
 **cid** | **string**| identifier of compound to access. | 
 **topAnnotation** | **bool?**| include the top annotation of this feature into the output (if available). | [optional] [default to false]
 **msData** | **bool?**| include corresponding source data (MS and MS/MS) into the output. | [optional] [default to false]

### Return type

[**CompoundId**](CompoundId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="getcompounds"></a>
# **GetCompounds**
> List<CompoundId> GetCompounds (string projectId, bool? topAnnotation = null, bool? msData = null)

Get all available compounds/features in the given project-space.

Get all available compounds/features in the given project-space.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetCompoundsExample
    {
        public void main()
        {
            var apiInstance = new CompoundsApi();
            var projectId = projectId_example;  // string | project-space to read from.
            var topAnnotation = true;  // bool? | include the top annotation of this feature into the output (if available). (optional)  (default to false)
            var msData = true;  // bool? | include corresponding source data (MS and MS/MS) into the output. (optional)  (default to false)

            try
            {
                // Get all available compounds/features in the given project-space.
                List&lt;CompoundId&gt; result = apiInstance.GetCompounds(projectId, topAnnotation, msData);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling CompoundsApi.GetCompounds: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **string**| project-space to read from. | 
 **topAnnotation** | **bool?**| include the top annotation of this feature into the output (if available). | [optional] [default to false]
 **msData** | **bool?**| include corresponding source data (MS and MS/MS) into the output. | [optional] [default to false]

### Return type

[**List<CompoundId>**](CompoundId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="importcompounds"></a>
# **ImportCompounds**
> JobId ImportCompounds (List<string> body, string projectId, bool? alignLCMSRuns = null, bool? allowMs1OnlyData = null, bool? ignoreFormulas = null)

Import ms/ms data in given format from local filesystem into the specified project-space

Import ms/ms data in given format from local filesystem into the specified project-space.  The import will run in a background job  Possible formats (ms, mgf, cef, msp, mzML, mzXML, project-space)  <p>

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ImportCompoundsExample
    {
        public void main()
        {
            var apiInstance = new CompoundsApi();
            var body = new List<string>(); // List<string> | List of file and directory paths to import
            var projectId = projectId_example;  // string | project-space to import into.
            var alignLCMSRuns = true;  // bool? | If true, multiple LCMS Runs (mzML, mzXML) will be aligned during import/feature finding (optional)  (default to false)
            var allowMs1OnlyData = true;  // bool? |  (optional)  (default to true)
            var ignoreFormulas = true;  // bool? |  (optional)  (default to false)

            try
            {
                // Import ms/ms data in given format from local filesystem into the specified project-space
                JobId result = apiInstance.ImportCompounds(body, projectId, alignLCMSRuns, allowMs1OnlyData, ignoreFormulas);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling CompoundsApi.ImportCompounds: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**List&lt;string&gt;**](string.md)| List of file and directory paths to import | 
 **projectId** | **string**| project-space to import into. | 
 **alignLCMSRuns** | **bool?**| If true, multiple LCMS Runs (mzML, mzXML) will be aligned during import/feature finding | [optional] [default to false]
 **allowMs1OnlyData** | **bool?**|  | [optional] [default to true]
 **ignoreFormulas** | **bool?**|  | [optional] [default to false]

### Return type

[**JobId**](JobId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="importcompoundsfromstring"></a>
# **ImportCompoundsFromString**
> List<CompoundId> ImportCompoundsFromString (string body, string format, string projectId, string sourceName = null)

Import ms/ms data from the given format into the specified project-space  Possible formats (ms, mgf, cef, msp, mzML, mzXML)

Import ms/ms data from the given format into the specified project-space  Possible formats (ms, mgf, cef, msp, mzML, mzXML)

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ImportCompoundsFromStringExample
    {
        public void main()
        {
            var apiInstance = new CompoundsApi();
            var body = new string(); // string | data content in specified format
            var format = format_example;  // string | data format specified by the usual file extension of the format (without [.])
            var projectId = projectId_example;  // string | project-space to import into.
            var sourceName = sourceName_example;  // string | name that specifies the data source. Can e.g. be a file path or just a name. (optional) 

            try
            {
                // Import ms/ms data from the given format into the specified project-space  Possible formats (ms, mgf, cef, msp, mzML, mzXML)
                List&lt;CompoundId&gt; result = apiInstance.ImportCompoundsFromString(body, format, projectId, sourceName);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling CompoundsApi.ImportCompoundsFromString: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**string**](string.md)| data content in specified format | 
 **format** | **string**| data format specified by the usual file extension of the format (without [.]) | 
 **projectId** | **string**| project-space to import into. | 
 **sourceName** | **string**| name that specifies the data source. Can e.g. be a file path or just a name. | [optional] 

### Return type

[**List<CompoundId>**](CompoundId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
