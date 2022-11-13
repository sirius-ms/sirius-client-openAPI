# RubySirius::GraphicalUserInterfaceApi

All URIs are relative to *http://localhost:8080*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**apply_to_gui**](GraphicalUserInterfaceApi.md#apply_to_gui) | **PATCH** /api/projects/{projectId}/gui | Apply given changes to the running GUI instance. |
| [**close_gui**](GraphicalUserInterfaceApi.md#close_gui) | **DELETE** /api/projects/{projectId}/gui | Close GUI instance of given project-space if available. |
| [**open_gui**](GraphicalUserInterfaceApi.md#open_gui) | **POST** /api/projects/{projectId}/gui | Open GUI instance on specified project-space and bring the GUI window to foreground. |


## apply_to_gui

> apply_to_gui(project_id, gui_parameters)

Apply given changes to the running GUI instance.

Apply given changes to the running GUI instance.

### Examples

```ruby
require 'time'
require 'ruby_sirius'

api_instance = RubySirius::GraphicalUserInterfaceApi.new
project_id = 'project_id_example' # String | of project-space the GUI instance is connected to.
gui_parameters = RubySirius::GuiParameters.new # GuiParameters | parameters that should be applied.

begin
  # Apply given changes to the running GUI instance.
  api_instance.apply_to_gui(project_id, gui_parameters)
rescue RubySirius::ApiError => e
  puts "Error when calling GraphicalUserInterfaceApi->apply_to_gui: #{e}"
end
```

#### Using the apply_to_gui_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> apply_to_gui_with_http_info(project_id, gui_parameters)

```ruby
begin
  # Apply given changes to the running GUI instance.
  data, status_code, headers = api_instance.apply_to_gui_with_http_info(project_id, gui_parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue RubySirius::ApiError => e
  puts "Error when calling GraphicalUserInterfaceApi->apply_to_gui_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** | of project-space the GUI instance is connected to. |  |
| **gui_parameters** | [**GuiParameters**](GuiParameters.md) | parameters that should be applied. |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## close_gui

> close_gui(project_id)

Close GUI instance of given project-space if available.

Close GUI instance of given project-space if available.

### Examples

```ruby
require 'time'
require 'ruby_sirius'

api_instance = RubySirius::GraphicalUserInterfaceApi.new
project_id = 'project_id_example' # String | if project-space the GUI instance is connected to.

begin
  # Close GUI instance of given project-space if available.
  api_instance.close_gui(project_id)
rescue RubySirius::ApiError => e
  puts "Error when calling GraphicalUserInterfaceApi->close_gui: #{e}"
end
```

#### Using the close_gui_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> close_gui_with_http_info(project_id)

```ruby
begin
  # Close GUI instance of given project-space if available.
  data, status_code, headers = api_instance.close_gui_with_http_info(project_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue RubySirius::ApiError => e
  puts "Error when calling GraphicalUserInterfaceApi->close_gui_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** | if project-space the GUI instance is connected to. |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## open_gui

> open_gui(project_id, opts)

Open GUI instance on specified project-space and bring the GUI window to foreground.

Open GUI instance on specified project-space and bring the GUI window to foreground.

### Examples

```ruby
require 'time'
require 'ruby_sirius'

api_instance = RubySirius::GraphicalUserInterfaceApi.new
project_id = 'project_id_example' # String | of project-space the GUI instance will connect to.
opts = {
  read_only: true # Boolean | open in read-only mode.
}

begin
  # Open GUI instance on specified project-space and bring the GUI window to foreground.
  api_instance.open_gui(project_id, opts)
rescue RubySirius::ApiError => e
  puts "Error when calling GraphicalUserInterfaceApi->open_gui: #{e}"
end
```

#### Using the open_gui_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> open_gui_with_http_info(project_id, opts)

```ruby
begin
  # Open GUI instance on specified project-space and bring the GUI window to foreground.
  data, status_code, headers = api_instance.open_gui_with_http_info(project_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue RubySirius::ApiError => e
  puts "Error when calling GraphicalUserInterfaceApi->open_gui_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** | of project-space the GUI instance will connect to. |  |
| **read_only** | **Boolean** | open in read-only mode. | [optional][default to true] |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

