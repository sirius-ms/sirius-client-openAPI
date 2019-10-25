# SwaggerClient::CompoundControllerApi

All URIs are relative to *https://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_compound_ids_using_get**](CompoundControllerApi.md#get_compound_ids_using_get) | **GET** /api/projects/{pid}/compounds | getCompoundIds
[**get_compound_using_get**](CompoundControllerApi.md#get_compound_using_get) | **GET** /api/projects/{pid}/compounds/{cid} | getCompound


# **get_compound_ids_using_get**
> Array&lt;CompoundId&gt; get_compound_ids_using_get(pid)

getCompoundIds

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CompoundControllerApi.new

pid = 'pid_example' # String | pid


begin
  #getCompoundIds
  result = api_instance.get_compound_ids_using_get(pid)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CompoundControllerApi->get_compound_ids_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pid** | **String**| pid | 

### Return type

[**Array&lt;CompoundId&gt;**](CompoundId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8



# **get_compound_using_get**
> CompoundMsData get_compound_using_get(cid, pid)

getCompound

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CompoundControllerApi.new

cid = 'cid_example' # String | cid

pid = 'pid_example' # String | pid


begin
  #getCompound
  result = api_instance.get_compound_using_get(cid, pid)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CompoundControllerApi->get_compound_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cid** | **String**| cid | 
 **pid** | **String**| pid | 

### Return type

[**CompoundMsData**](CompoundMsData.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8



