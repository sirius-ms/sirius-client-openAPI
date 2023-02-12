# RubySirius::CompoundsApi

All URIs are relative to *http://localhost:8080*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_compound**](CompoundsApi.md#delete_compound) | **DELETE** /api/projects/{projectId}/compounds/{cid} | Delete compound/feature with the given identifier from the specified project-space. |
| [**get_compound**](CompoundsApi.md#get_compound) | **GET** /api/projects/{projectId}/compounds/{cid} | Get compound/feature with the given identifier from the specified project-space. |
| [**get_compounds**](CompoundsApi.md#get_compounds) | **GET** /api/projects/{projectId}/compounds | Get all available compounds/features in the given project-space. |
| [**import_compounds**](CompoundsApi.md#import_compounds) | **POST** /api/projects/{projectId}/compounds | Import ms/ms data in given format from local filesystem into the specified project-space |
| [**import_compounds_from_string**](CompoundsApi.md#import_compounds_from_string) | **POST** /api/projects/{projectId}/compounds/import-from-string | Import ms/ms data from the given format into the specified project-space  Possible formats (ms, mgf, cef, msp, mzML, mzXML) |


## delete_compound

> delete_compound(project_id, cid)

Delete compound/feature with the given identifier from the specified project-space.

Delete compound/feature with the given identifier from the specified project-space.

### Examples

```ruby
require 'time'
require 'ruby_sirius'

api_instance = RubySirius::CompoundsApi.new
project_id = 'project_id_example' # String | project-space to delete from.
cid = 'cid_example' # String | identifier of compound to delete.

begin
  # Delete compound/feature with the given identifier from the specified project-space.
  api_instance.delete_compound(project_id, cid)
rescue RubySirius::ApiError => e
  puts "Error when calling CompoundsApi->delete_compound: #{e}"
end
```

#### Using the delete_compound_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_compound_with_http_info(project_id, cid)

```ruby
begin
  # Delete compound/feature with the given identifier from the specified project-space.
  data, status_code, headers = api_instance.delete_compound_with_http_info(project_id, cid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue RubySirius::ApiError => e
  puts "Error when calling CompoundsApi->delete_compound_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** | project-space to delete from. |  |
| **cid** | **String** | identifier of compound to delete. |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_compound

> <CompoundId> get_compound(project_id, cid, opts)

Get compound/feature with the given identifier from the specified project-space.

Get compound/feature with the given identifier from the specified project-space.

### Examples

```ruby
require 'time'
require 'ruby_sirius'

api_instance = RubySirius::CompoundsApi.new
project_id = 'project_id_example' # String | project-space to read from.
cid = 'cid_example' # String | identifier of compound to access.
opts = {
  top_annotation: true, # Boolean | include the top annotation of this feature into the output (if available).
  ms_data: true # Boolean | include corresponding source data (MS and MS/MS) into the output.
}

begin
  # Get compound/feature with the given identifier from the specified project-space.
  result = api_instance.get_compound(project_id, cid, opts)
  p result
rescue RubySirius::ApiError => e
  puts "Error when calling CompoundsApi->get_compound: #{e}"
end
```

#### Using the get_compound_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CompoundId>, Integer, Hash)> get_compound_with_http_info(project_id, cid, opts)

```ruby
begin
  # Get compound/feature with the given identifier from the specified project-space.
  data, status_code, headers = api_instance.get_compound_with_http_info(project_id, cid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CompoundId>
rescue RubySirius::ApiError => e
  puts "Error when calling CompoundsApi->get_compound_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** | project-space to read from. |  |
| **cid** | **String** | identifier of compound to access. |  |
| **top_annotation** | **Boolean** | include the top annotation of this feature into the output (if available). | [optional][default to false] |
| **ms_data** | **Boolean** | include corresponding source data (MS and MS/MS) into the output. | [optional][default to false] |

### Return type

[**CompoundId**](CompoundId.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_compounds

> <Array<CompoundId>> get_compounds(project_id, opts)

Get all available compounds/features in the given project-space.

Get all available compounds/features in the given project-space.

### Examples

```ruby
require 'time'
require 'ruby_sirius'

api_instance = RubySirius::CompoundsApi.new
project_id = 'project_id_example' # String | project-space to read from.
opts = {
  top_annotation: true, # Boolean | include the top annotation of this feature into the output (if available).
  ms_data: true # Boolean | include corresponding source data (MS and MS/MS) into the output.
}

begin
  # Get all available compounds/features in the given project-space.
  result = api_instance.get_compounds(project_id, opts)
  p result
rescue RubySirius::ApiError => e
  puts "Error when calling CompoundsApi->get_compounds: #{e}"
end
```

#### Using the get_compounds_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CompoundId>>, Integer, Hash)> get_compounds_with_http_info(project_id, opts)

```ruby
begin
  # Get all available compounds/features in the given project-space.
  data, status_code, headers = api_instance.get_compounds_with_http_info(project_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CompoundId>>
rescue RubySirius::ApiError => e
  puts "Error when calling CompoundsApi->get_compounds_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** | project-space to read from. |  |
| **top_annotation** | **Boolean** | include the top annotation of this feature into the output (if available). | [optional][default to false] |
| **ms_data** | **Boolean** | include corresponding source data (MS and MS/MS) into the output. | [optional][default to false] |

### Return type

[**Array&lt;CompoundId&gt;**](CompoundId.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## import_compounds

> <JobId> import_compounds(project_id, request_body, opts)

Import ms/ms data in given format from local filesystem into the specified project-space

Import ms/ms data in given format from local filesystem into the specified project-space.  The import will run in a background job  Possible formats (ms, mgf, cef, msp, mzML, mzXML, project-space)  <p>

### Examples

```ruby
require 'time'
require 'ruby_sirius'

api_instance = RubySirius::CompoundsApi.new
project_id = 'project_id_example' # String | project-space to import into.
request_body = ['property_example'] # Array<String> | List of file and directory paths to import
opts = {
  align_lcms_runs: true, # Boolean | If true, multiple LCMS Runs (mzML, mzXML) will be aligned during import/feature finding
  allow_ms1_only_data: true, # Boolean | 
  ignore_formulas: true # Boolean | 
}

begin
  # Import ms/ms data in given format from local filesystem into the specified project-space
  result = api_instance.import_compounds(project_id, request_body, opts)
  p result
rescue RubySirius::ApiError => e
  puts "Error when calling CompoundsApi->import_compounds: #{e}"
end
```

#### Using the import_compounds_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<JobId>, Integer, Hash)> import_compounds_with_http_info(project_id, request_body, opts)

```ruby
begin
  # Import ms/ms data in given format from local filesystem into the specified project-space
  data, status_code, headers = api_instance.import_compounds_with_http_info(project_id, request_body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <JobId>
rescue RubySirius::ApiError => e
  puts "Error when calling CompoundsApi->import_compounds_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** | project-space to import into. |  |
| **request_body** | [**Array&lt;String&gt;**](String.md) | List of file and directory paths to import |  |
| **align_lcms_runs** | **Boolean** | If true, multiple LCMS Runs (mzML, mzXML) will be aligned during import/feature finding | [optional][default to false] |
| **allow_ms1_only_data** | **Boolean** |  | [optional][default to true] |
| **ignore_formulas** | **Boolean** |  | [optional][default to false] |

### Return type

[**JobId**](JobId.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## import_compounds_from_string

> <Array<CompoundId>> import_compounds_from_string(project_id, format, body, opts)

Import ms/ms data from the given format into the specified project-space  Possible formats (ms, mgf, cef, msp, mzML, mzXML)

Import ms/ms data from the given format into the specified project-space  Possible formats (ms, mgf, cef, msp, mzML, mzXML)

### Examples

```ruby
require 'time'
require 'ruby_sirius'

api_instance = RubySirius::CompoundsApi.new
project_id = 'project_id_example' # String | project-space to import into.
format = 'format_example' # String | data format specified by the usual file extension of the format (without [.])
body = 'body_example' # String | data content in specified format
opts = {
  source_name: 'source_name_example' # String | name that specifies the data source. Can e.g. be a file path or just a name.
}

begin
  # Import ms/ms data from the given format into the specified project-space  Possible formats (ms, mgf, cef, msp, mzML, mzXML)
  result = api_instance.import_compounds_from_string(project_id, format, body, opts)
  p result
rescue RubySirius::ApiError => e
  puts "Error when calling CompoundsApi->import_compounds_from_string: #{e}"
end
```

#### Using the import_compounds_from_string_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CompoundId>>, Integer, Hash)> import_compounds_from_string_with_http_info(project_id, format, body, opts)

```ruby
begin
  # Import ms/ms data from the given format into the specified project-space  Possible formats (ms, mgf, cef, msp, mzML, mzXML)
  data, status_code, headers = api_instance.import_compounds_from_string_with_http_info(project_id, format, body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CompoundId>>
rescue RubySirius::ApiError => e
  puts "Error when calling CompoundsApi->import_compounds_from_string_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** | project-space to import into. |  |
| **format** | **String** | data format specified by the usual file extension of the format (without [.]) |  |
| **body** | **String** | data content in specified format |  |
| **source_name** | **String** | name that specifies the data source. Can e.g. be a file path or just a name. | [optional] |

### Return type

[**Array&lt;CompoundId&gt;**](CompoundId.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: text/plain
- **Accept**: application/json

