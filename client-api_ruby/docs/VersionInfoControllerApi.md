# SwaggerClient::VersionInfoControllerApi

All URIs are relative to *https://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_version_info_using_get**](VersionInfoControllerApi.md#get_version_info_using_get) | **GET** /api/version.json | getVersionInfo


# **get_version_info_using_get**
> String get_version_info_using_get

getVersionInfo

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::VersionInfoControllerApi.new

begin
  #getVersionInfo
  result = api_instance.get_version_info_using_get
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling VersionInfoControllerApi->get_version_info_using_get: #{e}"
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
 - **Accept**: application/json;charset=UTF-8



