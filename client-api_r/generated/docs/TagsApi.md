# TagsApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AddGroup**](TagsApi.md#AddGroup) | **POST** /api/projects/{projectId}/groups/{groupName} | [EXPERIMENTAL] Group tags in the project
[**AddPossibleValuesToTagDefinition**](TagsApi.md#AddPossibleValuesToTagDefinition) | **PATCH** /api/projects/{projectId}/tags/{tagName} | [EXPERIMENTAL] Add a possible value to the tag definition in the project
[**CreateTags**](TagsApi.md#CreateTags) | **PUT** /api/projects/{projectId}/tags | [EXPERIMENTAL] Add tags to the project
[**DeleteGroup**](TagsApi.md#DeleteGroup) | **DELETE** /api/projects/{projectId}/groups/{groupName} | [EXPERIMENTAL] Delete tag groups with the given name from the specified project-space
[**DeleteTag**](TagsApi.md#DeleteTag) | **DELETE** /api/projects/{projectId}/tags/{tagName} | [EXPERIMENTAL] Delete tag definition with the given name from the specified project-space
[**GetGroupByName**](TagsApi.md#GetGroupByName) | **GET** /api/projects/{projectId}/groups/{groupName} | [EXPERIMENTAL] Get tag group by name in the given project-space
[**GetGroups**](TagsApi.md#GetGroups) | **GET** /api/projects/{projectId}/groups | [EXPERIMENTAL] Get all tag based groups in the given project-space
[**GetTag**](TagsApi.md#GetTag) | **GET** /api/projects/{projectId}/tags/{tagName} | [EXPERIMENTAL] Get tag definition by its name in the given project-space
[**GetTags**](TagsApi.md#GetTags) | **GET** /api/projects/{projectId}/tags | [EXPERIMENTAL] Get all tag definitions in the given project-space


# **AddGroup**
> TagGroup AddGroup(project_id, group_name, filter, type)

[EXPERIMENTAL] Group tags in the project

[EXPERIMENTAL] Group tags in the project. The group name must not exist in the project.   <p>  See <code>/tagged</code> for filter syntax.  </p>   [EXPERIMENTAL] This endpoint is experimental and not part of the stable API specification. This endpoint can change at any time, even in minor updates.

### Example
```R
library(Rsirius)

# [EXPERIMENTAL] Group tags in the project
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to add to.
var_group_name <- "group_name_example" # character | name of the new group
var_filter <- "filter_example" # character | filter query to create the group
var_type <- "type_example" # character | type of the group

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$AddGroup(var_project_id, var_group_name, var_filter, var_typedata_file = "result.txt")
result <- api_instance$tags_api$AddGroup(var_project_id, var_group_name, var_filter, var_type)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to add to. | 
 **group_name** | **character**| name of the new group | 
 **filter** | **character**| filter query to create the group | 
 **type** | **character**| type of the group | 

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
| **200** | the tag group that was added |  -  |

# **AddPossibleValuesToTagDefinition**
> TagDefinition AddPossibleValuesToTagDefinition(project_id, tag_name, request_body)

[EXPERIMENTAL] Add a possible value to the tag definition in the project

[EXPERIMENTAL] Add a possible value to the tag definition in the project.  <p>  [EXPERIMENTAL] This endpoint is experimental and not part of the stable API specification. This endpoint can change at any time, even in minor updates.

### Example
```R
library(Rsirius)

# [EXPERIMENTAL] Add a possible value to the tag definition in the project
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to add to.
var_tag_name <- "tag_name_example" # character | the tag definition to add the values to
var_request_body <- c(TODO) # array[AnyType] | 

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$AddPossibleValuesToTagDefinition(var_project_id, var_tag_name, var_request_bodydata_file = "result.txt")
result <- api_instance$tags_api$AddPossibleValuesToTagDefinition(var_project_id, var_tag_name, var_request_body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to add to. | 
 **tag_name** | **character**| the tag definition to add the values to | 
 **request_body** | list( [**AnyType**](AnyType.md) )|  | 

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
| **200** | the definitions of the tags that have been added |  -  |

# **CreateTags**
> array[TagDefinition] CreateTags(project_id, tag_definition_import)

[EXPERIMENTAL] Add tags to the project

[EXPERIMENTAL] Add tags to the project. Tag names must not exist in the project.  <p>  [EXPERIMENTAL] This endpoint is experimental and not part of the stable API specification. This endpoint can change at any time, even in minor updates.

### Example
```R
library(Rsirius)

# [EXPERIMENTAL] Add tags to the project
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to add to.
var_tag_definition_import <- c(TagDefinitionImport$new("tagName_example", "NONE", "description_example", "tagType_example", c(TODO), TODO, TODO)) # array[TagDefinitionImport] | the tag definitions to be created

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateTags(var_project_id, var_tag_definition_importdata_file = "result.txt")
result <- api_instance$tags_api$CreateTags(var_project_id, var_tag_definition_import)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to add to. | 
 **tag_definition_import** | list( [**TagDefinitionImport**](TagDefinitionImport.md) )| the tag definitions to be created | 

### Return type

[**array[TagDefinition]**](TagDefinition.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | the definitions of the tags that have been created |  -  |

# **DeleteGroup**
> DeleteGroup(project_id, group_name)

[EXPERIMENTAL] Delete tag groups with the given name from the specified project-space

[EXPERIMENTAL] Delete tag groups with the given name from the specified project-space.  <p>  [EXPERIMENTAL] This endpoint is experimental and not part of the stable API specification. This endpoint can change at any time, even in minor updates.

### Example
```R
library(Rsirius)

# [EXPERIMENTAL] Delete tag groups with the given name from the specified project-space
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to delete from.
var_group_name <- "group_name_example" # character | name of group to delete.

api_instance <- rsirius_api$new()
api_instance$tags_api$DeleteGroup(var_project_id, var_group_name)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to delete from. | 
 **group_name** | **character**| name of group to delete. | 

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
| **200** | OK |  -  |

# **DeleteTag**
> DeleteTag(project_id, tag_name)

[EXPERIMENTAL] Delete tag definition with the given name from the specified project-space

[EXPERIMENTAL] Delete tag definition with the given name from the specified project-space.  <p>  This will also remove all tags belonging to this definition from every tagged entity.  </p>  [EXPERIMENTAL] This endpoint is experimental and not part of the stable API specification. This endpoint can change at any time, even in minor updates.

### Example
```R
library(Rsirius)

# [EXPERIMENTAL] Delete tag definition with the given name from the specified project-space
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to delete from.
var_tag_name <- "tag_name_example" # character | name of the tag definition to delete.

api_instance <- rsirius_api$new()
api_instance$tags_api$DeleteTag(var_project_id, var_tag_name)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to delete from. | 
 **tag_name** | **character**| name of the tag definition to delete. | 

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
| **200** | OK |  -  |

# **GetGroupByName**
> TagGroup GetGroupByName(project_id, group_name)

[EXPERIMENTAL] Get tag group by name in the given project-space

[EXPERIMENTAL] Get tag group by name in the given project-space.  <p>  [EXPERIMENTAL] This endpoint is experimental and not part of the stable API specification. This endpoint can change at any time, even in minor updates.

### Example
```R
library(Rsirius)

# [EXPERIMENTAL] Get tag group by name in the given project-space
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to read from.
var_group_name <- "group_name_example" # character | name of the group

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetGroupByName(var_project_id, var_group_namedata_file = "result.txt")
result <- api_instance$tags_api$GetGroupByName(var_project_id, var_group_name)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to read from. | 
 **group_name** | **character**| name of the group | 

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
| **200** | Tag group. |  -  |

# **GetGroups**
> array[TagGroup] GetGroups(project_id, group_type = var.group_type)

[EXPERIMENTAL] Get all tag based groups in the given project-space

[EXPERIMENTAL] Get all tag based groups in the given project-space.  <p>  [EXPERIMENTAL] This endpoint is experimental and not part of the stable API specification. This endpoint can change at any time, even in minor updates.

### Example
```R
library(Rsirius)

# [EXPERIMENTAL] Get all tag based groups in the given project-space
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to read from.
var_group_type <- "group_type_example" # character | type of the group (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetGroups(var_project_id, group_type = var_group_typedata_file = "result.txt")
result <- api_instance$tags_api$GetGroups(var_project_id, group_type = var_group_type)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to read from. | 
 **group_type** | **character**| type of the group | [optional] 

### Return type

[**array[TagGroup]**](TagGroup.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Groups. |  -  |

# **GetTag**
> TagDefinition GetTag(project_id, tag_name)

[EXPERIMENTAL] Get tag definition by its name in the given project-space

[EXPERIMENTAL] Get tag definition by its name in the given project-space.  <p>  [EXPERIMENTAL] This endpoint is experimental and not part of the stable API specification. This endpoint can change at any time, even in minor updates.

### Example
```R
library(Rsirius)

# [EXPERIMENTAL] Get tag definition by its name in the given project-space
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to read from.
var_tag_name <- "tag_name_example" # character | name of the tag

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetTag(var_project_id, var_tag_namedata_file = "result.txt")
result <- api_instance$tags_api$GetTag(var_project_id, var_tag_name)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to read from. | 
 **tag_name** | **character**| name of the tag | 

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
| **200** | Tag definition. |  -  |

# **GetTags**
> array[TagDefinition] GetTags(project_id, tag_type = var.tag_type)

[EXPERIMENTAL] Get all tag definitions in the given project-space

[EXPERIMENTAL] Get all tag definitions in the given project-space.  <p>  [EXPERIMENTAL] This endpoint is experimental and not part of the stable API specification. This endpoint can change at any time, even in minor updates.

### Example
```R
library(Rsirius)

# [EXPERIMENTAL] Get all tag definitions in the given project-space
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to read from.
var_tag_type <- "tag_type_example" # character | scope of the tag (optional) (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetTags(var_project_id, tag_type = var_tag_typedata_file = "result.txt")
result <- api_instance$tags_api$GetTags(var_project_id, tag_type = var_tag_type)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to read from. | 
 **tag_type** | **character**| scope of the tag (optional) | [optional] 

### Return type

[**array[TagDefinition]**](TagDefinition.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Tag definitions. |  -  |

