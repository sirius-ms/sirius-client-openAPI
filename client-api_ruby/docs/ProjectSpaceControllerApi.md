# SwaggerClient::ProjectSpaceControllerApi

All URIs are relative to *https://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_project_space_using_get**](ProjectSpaceControllerApi.md#get_project_space_using_get) | **GET** /api/projects/{name} | getProjectSpace
[**get_project_spaces_using_get**](ProjectSpaceControllerApi.md#get_project_spaces_using_get) | **GET** /api/projects | getProjectSpaces
[**open_project_space_using_post**](ProjectSpaceControllerApi.md#open_project_space_using_post) | **POST** /api/projects/new | openProjectSpace
[**open_project_space_using_put**](ProjectSpaceControllerApi.md#open_project_space_using_put) | **PUT** /api/projects/{name} | openProjectSpace


# **get_project_space_using_get**
> ProjectSpaceId get_project_space_using_get(name)

getProjectSpace

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ProjectSpaceControllerApi.new

name = 'name_example' # String | name


begin
  #getProjectSpace
  result = api_instance.get_project_space_using_get(name)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProjectSpaceControllerApi->get_project_space_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| name | 

### Return type

[**ProjectSpaceId**](ProjectSpaceId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **get_project_spaces_using_get**
> Array&lt;ProjectSpaceId&gt; get_project_spaces_using_get

getProjectSpaces

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ProjectSpaceControllerApi.new

begin
  #getProjectSpaces
  result = api_instance.get_project_spaces_using_get
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProjectSpaceControllerApi->get_project_spaces_using_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;ProjectSpaceId&gt;**](ProjectSpaceId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **open_project_space_using_post**
> ProjectSpaceId open_project_space_using_post(path)

openProjectSpace

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ProjectSpaceControllerApi.new

path = 'path_example' # String | path


begin
  #openProjectSpace
  result = api_instance.open_project_space_using_post(path)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProjectSpaceControllerApi->open_project_space_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| path | 

### Return type

[**ProjectSpaceId**](ProjectSpaceId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **open_project_space_using_put**
> ProjectSpaceId open_project_space_using_put(name, path)

openProjectSpace

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ProjectSpaceControllerApi.new

name = 'name_example' # String | name

path = 'path_example' # String | path


begin
  #openProjectSpace
  result = api_instance.open_project_space_using_put(name, path)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProjectSpaceControllerApi->open_project_space_using_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| name | 
 **path** | **String**| path | 

### Return type

[**ProjectSpaceId**](ProjectSpaceId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



