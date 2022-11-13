# RubySirius::VersionInfoControllerApi

All URIs are relative to *http://localhost:8080*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_version_info**](VersionInfoControllerApi.md#get_version_info) | **GET** /api/version.json |  |


## get_version_info

> String get_version_info



### Examples

```ruby
require 'time'
require 'ruby_sirius'

api_instance = RubySirius::VersionInfoControllerApi.new

begin
  
  result = api_instance.get_version_info
  p result
rescue RubySirius::ApiError => e
  puts "Error when calling VersionInfoControllerApi->get_version_info: #{e}"
end
```

#### Using the get_version_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> get_version_info_with_http_info

```ruby
begin
  
  data, status_code, headers = api_instance.get_version_info_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue RubySirius::ApiError => e
  puts "Error when calling VersionInfoControllerApi->get_version_info_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

