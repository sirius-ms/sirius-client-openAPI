# RubySirius::ProjectSpacesApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**close_project_space**](ProjectSpacesApi.md#close_project_space) | **DELETE** /api/projects/{projectId} | Close project-space and remove it from application.
[**create_project_space**](ProjectSpacesApi.md#create_project_space) | **POST** /api/projects/{projectId} | Create and open a new project-space at given location and make it accessible via the given projectId.
[**get_project_space**](ProjectSpacesApi.md#get_project_space) | **GET** /api/projects/{projectId} | Get project space info by its projectId.
[**get_project_spaces**](ProjectSpacesApi.md#get_project_spaces) | **GET** /api/projects | List all opened project spaces.
[**open_project_space**](ProjectSpacesApi.md#open_project_space) | **PUT** /api/projects/{projectId} | Open an existing project-space and make it accessible via the given projectId.

# **close_project_space**
> close_project_space(project_id)

Close project-space and remove it from application.

Close project-space and remove it from application. Project-space will NOT be deleted from disk.

### Example
```ruby
# load the gem
require 'ruby_sirius'

api_instance = RubySirius::ProjectSpacesApi.new
project_id = 'project_id_example' # String | unique name/identifier of the  project-space to be closed.


begin
  #Close project-space and remove it from application.
  api_instance.close_project_space(project_id)
rescue RubySirius::ApiError => e
  puts "Exception when calling ProjectSpacesApi->close_project_space: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| unique name/identifier of the  project-space to be closed. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **create_project_space**
> ProjectSpaceId create_project_space(project_id, path_to_project, opts)

Create and open a new project-space at given location and make it accessible via the given projectId.

Create and open a new project-space at given location and make it accessible via the given projectId.

### Example
```ruby
# load the gem
require 'ruby_sirius'

api_instance = RubySirius::ProjectSpacesApi.new
project_id = 'project_id_example' # String | unique name/identifier that shall be used to access the newly created project-space.
path_to_project = 'path_to_project_example' # String | 
opts = { 
  path_to_source_project: 'path_to_source_project_example', # String | 
  await_import: true # BOOLEAN | 
}

begin
  #Create and open a new project-space at given location and make it accessible via the given projectId.
  result = api_instance.create_project_space(project_id, path_to_project, opts)
  p result
rescue RubySirius::ApiError => e
  puts "Exception when calling ProjectSpacesApi->create_project_space: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| unique name/identifier that shall be used to access the newly created project-space. | 
 **path_to_project** | **String**|  | 
 **path_to_source_project** | **String**|  | [optional] 
 **await_import** | **BOOLEAN**|  | [optional] [default to true]

### Return type

[**ProjectSpaceId**](ProjectSpaceId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_project_space**
> ProjectSpaceId get_project_space(project_id)

Get project space info by its projectId.

Get project space info by its projectId.

### Example
```ruby
# load the gem
require 'ruby_sirius'

api_instance = RubySirius::ProjectSpacesApi.new
project_id = 'project_id_example' # String | unique name/identifier tof the project-space to be accessed.


begin
  #Get project space info by its projectId.
  result = api_instance.get_project_space(project_id)
  p result
rescue RubySirius::ApiError => e
  puts "Exception when calling ProjectSpacesApi->get_project_space: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| unique name/identifier tof the project-space to be accessed. | 

### Return type

[**ProjectSpaceId**](ProjectSpaceId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_project_spaces**
> Array&lt;ProjectSpaceId&gt; get_project_spaces

List all opened project spaces.

List all opened project spaces.

### Example
```ruby
# load the gem
require 'ruby_sirius'

api_instance = RubySirius::ProjectSpacesApi.new

begin
  #List all opened project spaces.
  result = api_instance.get_project_spaces
  p result
rescue RubySirius::ApiError => e
  puts "Exception when calling ProjectSpacesApi->get_project_spaces: #{e}"
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
 - **Accept**: application/json



# **open_project_space**
> ProjectSpaceId open_project_space(project_id, path_to_project)

Open an existing project-space and make it accessible via the given projectId.

Open an existing project-space and make it accessible via the given projectId.

### Example
```ruby
# load the gem
require 'ruby_sirius'

api_instance = RubySirius::ProjectSpacesApi.new
project_id = 'project_id_example' # String | unique name/identifier that shall be used to access the opened project-space.
path_to_project = 'path_to_project_example' # String | 


begin
  #Open an existing project-space and make it accessible via the given projectId.
  result = api_instance.open_project_space(project_id, path_to_project)
  p result
rescue RubySirius::ApiError => e
  puts "Exception when calling ProjectSpacesApi->open_project_space: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| unique name/identifier that shall be used to access the opened project-space. | 
 **path_to_project** | **String**|  | 

### Return type

[**ProjectSpaceId**](ProjectSpaceId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



