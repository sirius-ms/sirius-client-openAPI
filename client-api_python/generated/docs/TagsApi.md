# PySirius.TagsApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_group**](TagsApi.md#add_group) | **POST** /api/projects/{projectId}/groups/{groupName} | [EXPERIMENTAL] Group tags in the project
[**add_possible_values_to_tag_definition**](TagsApi.md#add_possible_values_to_tag_definition) | **PATCH** /api/projects/{projectId}/tags/{tagName} | [EXPERIMENTAL] Add a possible value to the tag definition in the project
[**create_tags**](TagsApi.md#create_tags) | **PUT** /api/projects/{projectId}/tags | [EXPERIMENTAL] Add tags to the project
[**delete_group**](TagsApi.md#delete_group) | **DELETE** /api/projects/{projectId}/groups/{groupName} | [EXPERIMENTAL] Delete tag groups with the given name from the specified project-space
[**delete_tag**](TagsApi.md#delete_tag) | **DELETE** /api/projects/{projectId}/tags/{tagName} | [EXPERIMENTAL] Delete tag definition with the given name from the specified project-space
[**get_group_by_name**](TagsApi.md#get_group_by_name) | **GET** /api/projects/{projectId}/groups/{groupName} | [EXPERIMENTAL] Get tag group by name in the given project-space
[**get_groups**](TagsApi.md#get_groups) | **GET** /api/projects/{projectId}/groups | [EXPERIMENTAL] Get all tag based groups in the given project-space
[**get_tag**](TagsApi.md#get_tag) | **GET** /api/projects/{projectId}/tags/{tagName} | [EXPERIMENTAL] Get tag definition by its name in the given project-space
[**get_tags**](TagsApi.md#get_tags) | **GET** /api/projects/{projectId}/tags | [EXPERIMENTAL] Get all tag definitions in the given project-space


# **add_group**
> TagGroup add_group(project_id, group_name, filter, type)

[EXPERIMENTAL] Group tags in the project

[EXPERIMENTAL] Group tags in the project. The group name must not exist in the project.   <p>  See <code>/tagged</code> for filter syntax.  </p>   [EXPERIMENTAL] This endpoint is experimental and not part of the stable API specification. This endpoint can change at any time, even in minor updates.

### Example


```python
import PySirius
from PySirius.models.tag_group import TagGroup
from PySirius.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8080"
)


# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = PySirius.TagsApi(api_client)
    project_id = 'project_id_example' # str | project-space to add to.
    group_name = 'group_name_example' # str | name of the new group
    filter = 'filter_example' # str | filter query to create the group
    type = 'type_example' # str | type of the group

    try:
        # [EXPERIMENTAL] Group tags in the project
        api_response = api_instance.add_group(project_id, group_name, filter, type)
        print("The response of TagsApi->add_group:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TagsApi->add_group: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to add to. | 
 **group_name** | **str**| name of the new group | 
 **filter** | **str**| filter query to create the group | 
 **type** | **str**| type of the group | 

### Return type

[**TagGroup**](TagGroup.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | the tag group that was added |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **add_possible_values_to_tag_definition**
> TagDefinition add_possible_values_to_tag_definition(project_id, tag_name, request_body)

[EXPERIMENTAL] Add a possible value to the tag definition in the project

[EXPERIMENTAL] Add a possible value to the tag definition in the project.  <p>  [EXPERIMENTAL] This endpoint is experimental and not part of the stable API specification. This endpoint can change at any time, even in minor updates.

### Example


```python
import PySirius
from PySirius.models.tag_definition import TagDefinition
from PySirius.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8080"
)


# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = PySirius.TagsApi(api_client)
    project_id = 'project_id_example' # str | project-space to add to.
    tag_name = 'tag_name_example' # str | the tag definition to add the values to
    request_body = None # List[object] | 

    try:
        # [EXPERIMENTAL] Add a possible value to the tag definition in the project
        api_response = api_instance.add_possible_values_to_tag_definition(project_id, tag_name, request_body)
        print("The response of TagsApi->add_possible_values_to_tag_definition:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TagsApi->add_possible_values_to_tag_definition: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to add to. | 
 **tag_name** | **str**| the tag definition to add the values to | 
 **request_body** | [**List[object]**](object.md)|  | 

### Return type

[**TagDefinition**](TagDefinition.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | the definitions of the tags that have been added |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_tags**
> List[TagDefinition] create_tags(project_id, tag_definition_import)

[EXPERIMENTAL] Add tags to the project

[EXPERIMENTAL] Add tags to the project. Tag names must not exist in the project.  <p>  [EXPERIMENTAL] This endpoint is experimental and not part of the stable API specification. This endpoint can change at any time, even in minor updates.

### Example


```python
import PySirius
from PySirius.models.tag_definition import TagDefinition
from PySirius.models.tag_definition_import import TagDefinitionImport
from PySirius.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8080"
)


# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = PySirius.TagsApi(api_client)
    project_id = 'project_id_example' # str | project-space to add to.
    tag_definition_import = [PySirius.TagDefinitionImport()] # List[TagDefinitionImport] | the tag definitions to be created

    try:
        # [EXPERIMENTAL] Add tags to the project
        api_response = api_instance.create_tags(project_id, tag_definition_import)
        print("The response of TagsApi->create_tags:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TagsApi->create_tags: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to add to. | 
 **tag_definition_import** | [**List[TagDefinitionImport]**](TagDefinitionImport.md)| the tag definitions to be created | 

### Return type

[**List[TagDefinition]**](TagDefinition.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | the definitions of the tags that have been created |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_group**
> delete_group(project_id, group_name)

[EXPERIMENTAL] Delete tag groups with the given name from the specified project-space

[EXPERIMENTAL] Delete tag groups with the given name from the specified project-space.  <p>  [EXPERIMENTAL] This endpoint is experimental and not part of the stable API specification. This endpoint can change at any time, even in minor updates.

### Example


```python
import PySirius
from PySirius.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8080"
)


# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = PySirius.TagsApi(api_client)
    project_id = 'project_id_example' # str | project-space to delete from.
    group_name = 'group_name_example' # str | name of group to delete.

    try:
        # [EXPERIMENTAL] Delete tag groups with the given name from the specified project-space
        api_instance.delete_group(project_id, group_name)
    except Exception as e:
        print("Exception when calling TagsApi->delete_group: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to delete from. | 
 **group_name** | **str**| name of group to delete. | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_tag**
> delete_tag(project_id, tag_name)

[EXPERIMENTAL] Delete tag definition with the given name from the specified project-space

[EXPERIMENTAL] Delete tag definition with the given name from the specified project-space.  <p>  This will also remove all tags belonging to this definition from every tagged entity.  </p>  [EXPERIMENTAL] This endpoint is experimental and not part of the stable API specification. This endpoint can change at any time, even in minor updates.

### Example


```python
import PySirius
from PySirius.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8080"
)


# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = PySirius.TagsApi(api_client)
    project_id = 'project_id_example' # str | project-space to delete from.
    tag_name = 'tag_name_example' # str | name of the tag definition to delete.

    try:
        # [EXPERIMENTAL] Delete tag definition with the given name from the specified project-space
        api_instance.delete_tag(project_id, tag_name)
    except Exception as e:
        print("Exception when calling TagsApi->delete_tag: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to delete from. | 
 **tag_name** | **str**| name of the tag definition to delete. | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_group_by_name**
> TagGroup get_group_by_name(project_id, group_name)

[EXPERIMENTAL] Get tag group by name in the given project-space

[EXPERIMENTAL] Get tag group by name in the given project-space.  <p>  [EXPERIMENTAL] This endpoint is experimental and not part of the stable API specification. This endpoint can change at any time, even in minor updates.

### Example


```python
import PySirius
from PySirius.models.tag_group import TagGroup
from PySirius.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8080"
)


# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = PySirius.TagsApi(api_client)
    project_id = 'project_id_example' # str | project-space to read from.
    group_name = 'group_name_example' # str | name of the group

    try:
        # [EXPERIMENTAL] Get tag group by name in the given project-space
        api_response = api_instance.get_group_by_name(project_id, group_name)
        print("The response of TagsApi->get_group_by_name:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TagsApi->get_group_by_name: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to read from. | 
 **group_name** | **str**| name of the group | 

### Return type

[**TagGroup**](TagGroup.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Tag group. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_groups**
> List[TagGroup] get_groups(project_id, group_type=group_type)

[EXPERIMENTAL] Get all tag based groups in the given project-space

[EXPERIMENTAL] Get all tag based groups in the given project-space.  <p>  [EXPERIMENTAL] This endpoint is experimental and not part of the stable API specification. This endpoint can change at any time, even in minor updates.

### Example


```python
import PySirius
from PySirius.models.tag_group import TagGroup
from PySirius.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8080"
)


# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = PySirius.TagsApi(api_client)
    project_id = 'project_id_example' # str | project-space to read from.
    group_type = 'group_type_example' # str | type of the group (optional)

    try:
        # [EXPERIMENTAL] Get all tag based groups in the given project-space
        api_response = api_instance.get_groups(project_id, group_type=group_type)
        print("The response of TagsApi->get_groups:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TagsApi->get_groups: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to read from. | 
 **group_type** | **str**| type of the group | [optional] 

### Return type

[**List[TagGroup]**](TagGroup.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Groups. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_tag**
> TagDefinition get_tag(project_id, tag_name)

[EXPERIMENTAL] Get tag definition by its name in the given project-space

[EXPERIMENTAL] Get tag definition by its name in the given project-space.  <p>  [EXPERIMENTAL] This endpoint is experimental and not part of the stable API specification. This endpoint can change at any time, even in minor updates.

### Example


```python
import PySirius
from PySirius.models.tag_definition import TagDefinition
from PySirius.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8080"
)


# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = PySirius.TagsApi(api_client)
    project_id = 'project_id_example' # str | project-space to read from.
    tag_name = 'tag_name_example' # str | name of the tag

    try:
        # [EXPERIMENTAL] Get tag definition by its name in the given project-space
        api_response = api_instance.get_tag(project_id, tag_name)
        print("The response of TagsApi->get_tag:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TagsApi->get_tag: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to read from. | 
 **tag_name** | **str**| name of the tag | 

### Return type

[**TagDefinition**](TagDefinition.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Tag definition. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_tags**
> List[TagDefinition] get_tags(project_id, tag_type=tag_type)

[EXPERIMENTAL] Get all tag definitions in the given project-space

[EXPERIMENTAL] Get all tag definitions in the given project-space.  <p>  [EXPERIMENTAL] This endpoint is experimental and not part of the stable API specification. This endpoint can change at any time, even in minor updates.

### Example


```python
import PySirius
from PySirius.models.tag_definition import TagDefinition
from PySirius.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8080"
)


# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = PySirius.TagsApi(api_client)
    project_id = 'project_id_example' # str | project-space to read from.
    tag_type = 'tag_type_example' # str | scope of the tag (optional) (optional)

    try:
        # [EXPERIMENTAL] Get all tag definitions in the given project-space
        api_response = api_instance.get_tags(project_id, tag_type=tag_type)
        print("The response of TagsApi->get_tags:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TagsApi->get_tags: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to read from. | 
 **tag_type** | **str**| scope of the tag (optional) | [optional] 

### Return type

[**List[TagDefinition]**](TagDefinition.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Tag definitions. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

