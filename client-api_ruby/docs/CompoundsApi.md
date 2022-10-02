# SwaggerClient::CompoundsApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_compound**](CompoundsApi.md#delete_compound) | **DELETE** /api/projects/{projectId}/compounds/{cid} | Delete compound/feature with the given identifier from the specified project-space.
[**get_compound**](CompoundsApi.md#get_compound) | **GET** /api/projects/{projectId}/compounds/{cid} | Get compound/feature with the given identifier from the specified project-space.
[**get_compounds**](CompoundsApi.md#get_compounds) | **GET** /api/projects/{projectId}/compounds | Get all available compounds/features in the given project-space.
[**import_compounds**](CompoundsApi.md#import_compounds) | **POST** /api/projects/{projectId}/compounds | Import ms/ms data in given format from local filesystem into the specified project-space
[**import_compounds_from_string**](CompoundsApi.md#import_compounds_from_string) | **POST** /api/projects/{projectId}/compounds/import-from-string | Import ms/ms data from the given format into the specified project-space  Possible formats (ms, mgf, cef, msp, mzML, mzXML)

# **delete_compound**
> delete_compound(project_id, cid)

Delete compound/feature with the given identifier from the specified project-space.

Delete compound/feature with the given identifier from the specified project-space.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CompoundsApi.new
project_id = 'project_id_example' # String | project-space to delete from.
cid = 'cid_example' # String | identifier of compound to delete.


begin
  #Delete compound/feature with the given identifier from the specified project-space.
  api_instance.delete_compound(project_id, cid)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CompoundsApi->delete_compound: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| project-space to delete from. | 
 **cid** | **String**| identifier of compound to delete. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_compound**
> CompoundId get_compound(project_id, cid, opts)

Get compound/feature with the given identifier from the specified project-space.

Get compound/feature with the given identifier from the specified project-space.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CompoundsApi.new
project_id = 'project_id_example' # String | project-space to read from.
cid = 'cid_example' # String | identifier of compound to access.
opts = { 
  top_annotation: false, # BOOLEAN | include the top annotation of this feature into the output (if available).
  ms_data: false # BOOLEAN | include corresponding source data (MS and MS/MS) into the output.
}

begin
  #Get compound/feature with the given identifier from the specified project-space.
  result = api_instance.get_compound(project_id, cid, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CompoundsApi->get_compound: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| project-space to read from. | 
 **cid** | **String**| identifier of compound to access. | 
 **top_annotation** | **BOOLEAN**| include the top annotation of this feature into the output (if available). | [optional] [default to false]
 **ms_data** | **BOOLEAN**| include corresponding source data (MS and MS/MS) into the output. | [optional] [default to false]

### Return type

[**CompoundId**](CompoundId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_compounds**
> Array&lt;CompoundId&gt; get_compounds(project_id, opts)

Get all available compounds/features in the given project-space.

Get all available compounds/features in the given project-space.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CompoundsApi.new
project_id = 'project_id_example' # String | project-space to read from.
opts = { 
  top_annotation: false, # BOOLEAN | include the top annotation of this feature into the output (if available).
  ms_data: false # BOOLEAN | include corresponding source data (MS and MS/MS) into the output.
}

begin
  #Get all available compounds/features in the given project-space.
  result = api_instance.get_compounds(project_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CompoundsApi->get_compounds: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| project-space to read from. | 
 **top_annotation** | **BOOLEAN**| include the top annotation of this feature into the output (if available). | [optional] [default to false]
 **ms_data** | **BOOLEAN**| include corresponding source data (MS and MS/MS) into the output. | [optional] [default to false]

### Return type

[**Array&lt;CompoundId&gt;**](CompoundId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **import_compounds**
> JobId import_compounds(bodyproject_id, opts)

Import ms/ms data in given format from local filesystem into the specified project-space

Import ms/ms data in given format from local filesystem into the specified project-space.  The import will run in a background job  Possible formats (ms, mgf, cef, msp, mzML, mzXML, project-space)  <p>

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CompoundsApi.new
body = ['body_example'] # Array<String> | List of file and directory paths to import
project_id = 'project_id_example' # String | project-space to import into.
opts = { 
  align_lcms_runs: false # BOOLEAN | If true, multiple LCMS Runs (mzML, mzXML) will be aligned during import/feature finding
  allow_ms1_only_data: true # BOOLEAN | 
  ignore_formulas: false # BOOLEAN | 
}

begin
  #Import ms/ms data in given format from local filesystem into the specified project-space
  result = api_instance.import_compounds(bodyproject_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CompoundsApi->import_compounds: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Array&lt;String&gt;**](String.md)| List of file and directory paths to import | 
 **project_id** | **String**| project-space to import into. | 
 **align_lcms_runs** | **BOOLEAN**| If true, multiple LCMS Runs (mzML, mzXML) will be aligned during import/feature finding | [optional] [default to false]
 **allow_ms1_only_data** | **BOOLEAN**|  | [optional] [default to true]
 **ignore_formulas** | **BOOLEAN**|  | [optional] [default to false]

### Return type

[**JobId**](JobId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **import_compounds_from_string**
> Array&lt;CompoundId&gt; import_compounds_from_string(bodyformatproject_id, opts)

Import ms/ms data from the given format into the specified project-space  Possible formats (ms, mgf, cef, msp, mzML, mzXML)

Import ms/ms data from the given format into the specified project-space  Possible formats (ms, mgf, cef, msp, mzML, mzXML)

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CompoundsApi.new
body = 'body_example' # String | data content in specified format
format = 'format_example' # String | data format specified by the usual file extension of the format (without [.])
project_id = 'project_id_example' # String | project-space to import into.
opts = { 
  source_name: 'source_name_example' # String | name that specifies the data source. Can e.g. be a file path or just a name.
}

begin
  #Import ms/ms data from the given format into the specified project-space  Possible formats (ms, mgf, cef, msp, mzML, mzXML)
  result = api_instance.import_compounds_from_string(bodyformatproject_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CompoundsApi->import_compounds_from_string: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**String**](String.md)| data content in specified format | 
 **format** | **String**| data format specified by the usual file extension of the format (without [.]) | 
 **project_id** | **String**| project-space to import into. | 
 **source_name** | **String**| name that specifies the data source. Can e.g. be a file path or just a name. | [optional] 

### Return type

[**Array&lt;CompoundId&gt;**](CompoundId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json



