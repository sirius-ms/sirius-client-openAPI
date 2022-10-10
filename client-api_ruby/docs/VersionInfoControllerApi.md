# RubySirius::VersionInfoControllerApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_version_info**](VersionInfoControllerApi.md#get_version_info) | **GET** /api/version.json | 

# **get_version_info**
> String get_version_info



### Example
```ruby
# load the gem
require 'ruby_sirius'

api_instance = RubySirius::VersionInfoControllerApi.new

begin
  result = api_instance.get_version_info
  p result
rescue RubySirius::ApiError => e
  puts "Exception when calling VersionInfoControllerApi->get_version_info: #{e}"
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



