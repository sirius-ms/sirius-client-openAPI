# SwaggerClient::GraphicalUserInterfaceApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apply_to_gui**](GraphicalUserInterfaceApi.md#apply_to_gui) | **PATCH** /api/projects/{projectId}/gui | Apply given changes to the running GUI instance.
[**close_gui**](GraphicalUserInterfaceApi.md#close_gui) | **DELETE** /api/projects/{projectId}/gui | Close GUI instance of given project-space if available.
[**open_gui**](GraphicalUserInterfaceApi.md#open_gui) | **POST** /api/projects/{projectId}/gui | Open GUI instance on specified project-space and bring the GUI window to foreground.

# **apply_to_gui**
> apply_to_gui(bodyproject_id)

Apply given changes to the running GUI instance.

Apply given changes to the running GUI instance.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::GraphicalUserInterfaceApi.new
body = SwaggerClient::GuiParameters.new # GuiParameters | parameters that should be applied.
project_id = 'project_id_example' # String | of project-space the GUI instance is connected to.


begin
  #Apply given changes to the running GUI instance.
  api_instance.apply_to_gui(bodyproject_id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GraphicalUserInterfaceApi->apply_to_gui: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GuiParameters**](GuiParameters.md)| parameters that should be applied. | 
 **project_id** | **String**| of project-space the GUI instance is connected to. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **close_gui**
> close_gui(project_id)

Close GUI instance of given project-space if available.

Close GUI instance of given project-space if available.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::GraphicalUserInterfaceApi.new
project_id = 'project_id_example' # String | if project-space the GUI instance is connected to.


begin
  #Close GUI instance of given project-space if available.
  api_instance.close_gui(project_id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GraphicalUserInterfaceApi->close_gui: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| if project-space the GUI instance is connected to. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **open_gui**
> open_gui(project_id, opts)

Open GUI instance on specified project-space and bring the GUI window to foreground.

Open GUI instance on specified project-space and bring the GUI window to foreground.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::GraphicalUserInterfaceApi.new
project_id = 'project_id_example' # String | of project-space the GUI instance will connect to.
opts = { 
  read_only: true # BOOLEAN | open in read-only mode.
}

begin
  #Open GUI instance on specified project-space and bring the GUI window to foreground.
  api_instance.open_gui(project_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GraphicalUserInterfaceApi->open_gui: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| of project-space the GUI instance will connect to. | 
 **read_only** | **BOOLEAN**| open in read-only mode. | [optional] [default to true]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



