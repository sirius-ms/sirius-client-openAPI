# RunsApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AddTagsToRunExperimental**](RunsApi.md#AddTagsToRunExperimental) | **PUT** /api/projects/{projectId}/runs/tags/{runId} | [EXPERIMENTAL] Add tags to a run in the project
[**ComputeFoldChangeForBlankSubtraction**](RunsApi.md#ComputeFoldChangeForBlankSubtraction) | **PUT** /api/projects/{projectId}/runs/blanksubtract/compute | **EXPERIMENTAL** Compute the fold changes that are required for the fold change filter
[**GetRunExperimental**](RunsApi.md#GetRunExperimental) | **GET** /api/projects/{projectId}/runs/{runId} | [EXPERIMENTAL] Get run with the given identifier from the specified project-space
[**GetRunPageExperimental**](RunsApi.md#GetRunPageExperimental) | **GET** /api/projects/{projectId}/runs/page | [EXPERIMENTAL] Get all available runs in the given project-space
[**GetRunsByGroupExperimental**](RunsApi.md#GetRunsByGroupExperimental) | **GET** /api/projects/{projectId}/runs/grouped | [EXPERIMENTAL] Get runs by tag group
[**GetRunsByTagExperimental**](RunsApi.md#GetRunsByTagExperimental) | **GET** /api/projects/{projectId}/runs/tagged | [EXPERIMENTAL] Get runs by tag
[**GetTagsForRunExperimental**](RunsApi.md#GetTagsForRunExperimental) | **GET** /api/projects/{projectId}/runs/tags/{objectId} | [EXPERIMENTAL] Get all tags associated with this Run
[**RemoveTagFromRunExperimental**](RunsApi.md#RemoveTagFromRunExperimental) | **DELETE** /api/projects/{projectId}/runs/tags/{runId}/{tagName} | [EXPERIMENTAL] Delete tag with the given name from the run with the specified ID in the specified project-space


# **AddTagsToRunExperimental**
> array[Tag] AddTagsToRunExperimental(project_id, run_id, tag)

[EXPERIMENTAL] Add tags to a run in the project

[EXPERIMENTAL] Add tags to a run in the project. Tags with the same name will be overwritten.  <p>  [EXPERIMENTAL] This endpoint is experimental and not part of the stable API specification. This endpoint can change at any time, even in minor updates.

### Example
```R
library(RSirius)

# [EXPERIMENTAL] Add tags to a run in the project
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to add to.
var_run_id <- "run_id_example" # character | run to add tags to.
var_tag <- c(Tag$new("tagName_example", 123)) # array[Tag] | tags to add.

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$AddTagsToRunExperimental(var_project_id, var_run_id, var_tagdata_file = "result.txt")
result <- api_instance$runs_api$AddTagsToRunExperimental(var_project_id, var_run_id, var_tag)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to add to. | 
 **run_id** | **character**| run to add tags to. | 
 **tag** | list( [**Tag**](Tag.md) )| tags to add. | 

### Return type

[**array[Tag]**](Tag.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | the tags that have been added |  -  |

# **ComputeFoldChangeForBlankSubtraction**
> Job ComputeFoldChangeForBlankSubtraction(project_id, sample_type_fold_change_request, opt_fields = ["progress"])

**EXPERIMENTAL** Compute the fold changes that are required for the fold change filter

**EXPERIMENTAL** Compute the fold changes that are required for the fold change filter.   <p>This endpoint is experimental and not part of the stable API specification. This endpoint can change at any time, even in minor updates.</p>

### Example
```R
library(RSirius)

# **EXPERIMENTAL** Compute the fold changes that are required for the fold change filter
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to compute the fold change in.
var_sample_type_fold_change_request <- SampleTypeFoldChangeRequest$new(c("sampleRunIds_example"), c("blankRunIds_example"), c("controlRunIds_example")) # SampleTypeFoldChangeRequest | request with lists of run IDs that are sample, blank, and control runs
var_opt_fields <- c("none") # array[character] | job opt fields. (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ComputeFoldChangeForBlankSubtraction(var_project_id, var_sample_type_fold_change_request, opt_fields = var_opt_fieldsdata_file = "result.txt")
result <- api_instance$runs_api$ComputeFoldChangeForBlankSubtraction(var_project_id, var_sample_type_fold_change_request, opt_fields = var_opt_fields)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to compute the fold change in. | 
 **sample_type_fold_change_request** | [**SampleTypeFoldChangeRequest**](SampleTypeFoldChangeRequest.md)| request with lists of run IDs that are sample, blank, and control runs | 
 **opt_fields** | Enum [none, command, progress, affectedIds] | job opt fields. | [optional] [default to [&quot;progress&quot;]]

### Return type

[**Job**](Job.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

# **GetRunExperimental**
> Run GetRunExperimental(project_id, run_id, opt_fields = [])

[EXPERIMENTAL] Get run with the given identifier from the specified project-space

[EXPERIMENTAL] Get run with the given identifier from the specified project-space.  <p>  [EXPERIMENTAL] This endpoint is experimental and not part of the stable API specification. This endpoint can change at any time, even in minor updates.

### Example
```R
library(RSirius)

# [EXPERIMENTAL] Get run with the given identifier from the specified project-space
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to read from.
var_run_id <- "run_id_example" # character | identifier of run to access.
var_opt_fields <- c(RunOptField$new()) # array[RunOptField] | set of optional fields to be included. Use 'none' only to override defaults. (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetRunExperimental(var_project_id, var_run_id, opt_fields = var_opt_fieldsdata_file = "result.txt")
result <- api_instance$runs_api$GetRunExperimental(var_project_id, var_run_id, opt_fields = var_opt_fields)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to read from. | 
 **run_id** | **character**| identifier of run to access. | 
 **opt_fields** | list( [**RunOptField**](RunOptField.md) )| set of optional fields to be included. Use &#39;none&#39; only to override defaults. | [optional] [default to []]

### Return type

[**Run**](Run.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Run with tags (if specified). |  -  |

# **GetRunPageExperimental**
> PagedModelRun GetRunPageExperimental(project_id, page = 0, size = 20, sort = var.sort, opt_fields = [])

[EXPERIMENTAL] Get all available runs in the given project-space

[EXPERIMENTAL] Get all available runs in the given project-space.  <p>  [EXPERIMENTAL] This endpoint is experimental and not part of the stable API specification. This endpoint can change at any time, even in minor updates.

### Example
```R
library(RSirius)

# [EXPERIMENTAL] Get all available runs in the given project-space
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to read from.
var_page <- 0 # integer | Zero-based page index (0..N) (Optional)
var_size <- 20 # integer | The size of the page to be returned (Optional)
var_sort <- c("inner_example") # array[character] | Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported. (Optional)
var_opt_fields <- c(RunOptField$new()) # array[RunOptField] | set of optional fields to be included. Use 'none' only to override defaults. (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetRunPageExperimental(var_project_id, page = var_page, size = var_size, sort = var_sort, opt_fields = var_opt_fieldsdata_file = "result.txt")
result <- api_instance$runs_api$GetRunPageExperimental(var_project_id, page = var_page, size = var_size, sort = var_sort, opt_fields = var_opt_fields)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to read from. | 
 **page** | **integer**| Zero-based page index (0..N) | [optional] [default to 0]
 **size** | **integer**| The size of the page to be returned | [optional] [default to 20]
 **sort** | list( **character** )| Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] 
 **opt_fields** | list( [**RunOptField**](RunOptField.md) )| set of optional fields to be included. Use &#39;none&#39; only to override defaults. | [optional] [default to []]

### Return type

[**PagedModelRun**](PagedModelRun.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Runs with tags (if specified). |  -  |

# **GetRunsByGroupExperimental**
> PagedModelRun GetRunsByGroupExperimental(project_id, group_name, page = 0, size = 20, sort = var.sort, opt_fields = ["none"])

[EXPERIMENTAL] Get runs by tag group

[EXPERIMENTAL] Get runs by tag group.  <p>  [EXPERIMENTAL] This endpoint is experimental and not part of the stable API specification. This endpoint can change at any time, even in minor updates.

### Example
```R
library(RSirius)

# [EXPERIMENTAL] Get runs by tag group
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to delete from.
var_group_name <- "group_name_example" # character | tag group name.
var_page <- 0 # integer | Zero-based page index (0..N) (Optional)
var_size <- 20 # integer | The size of the page to be returned (Optional)
var_sort <- c("inner_example") # array[character] | Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported. (Optional)
var_opt_fields <- c(RunOptField$new()) # array[RunOptField] | set of optional fields to be included. Use 'none' only to override defaults. (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetRunsByGroupExperimental(var_project_id, var_group_name, page = var_page, size = var_size, sort = var_sort, opt_fields = var_opt_fieldsdata_file = "result.txt")
result <- api_instance$runs_api$GetRunsByGroupExperimental(var_project_id, var_group_name, page = var_page, size = var_size, sort = var_sort, opt_fields = var_opt_fields)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to delete from. | 
 **group_name** | **character**| tag group name. | 
 **page** | **integer**| Zero-based page index (0..N) | [optional] [default to 0]
 **size** | **integer**| The size of the page to be returned | [optional] [default to 20]
 **sort** | list( **character** )| Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] 
 **opt_fields** | list( [**RunOptField**](RunOptField.md) )| set of optional fields to be included. Use &#39;none&#39; only to override defaults. | [optional] [default to [&quot;none&quot;]]

### Return type

[**PagedModelRun**](PagedModelRun.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | tagged runs |  -  |

# **GetRunsByTagExperimental**
> PagedModelRun GetRunsByTagExperimental(project_id, filter = "", page = 0, size = 20, sort = var.sort, opt_fields = [])

[EXPERIMENTAL] Get runs by tag

[EXPERIMENTAL] Get runs by tag.   <h2>Supported filter syntax</h2>   <p>The filter string must contain one or more clauses. A clause is prefíxed  by a field name.  </p>   Currently the only searchable fields are names of tags (<code>tagName</code>) followed by a clause that is valued for the value type of the tag (See TagDefinition).  Tag name based field need to be prefixed with the namespace <code>tags.</code>.  Possible value types of tags are <strong>bool</strong>, <strong>integer</strong>, <strong>real</strong>, <strong>text</strong>, <strong>date</strong>, or <strong>time</strong> - tag value   <p>The format of the <strong>date</strong> type is <code>yyyy-MM-dd</code> and of the <strong>time</strong> type is <code>HH\\:mm\\:ss</code>.</p>   <p>A clause may be:</p>  <ul>      <li>a <strong>term</strong>: field name followed by a colon and the search term, e.g. <code>tags.MyTagA:sample</code></li>      <li>a <strong>phrase</strong>: field name followed by a colon and the search phrase in doublequotes, e.g. <code>tags.MyTagA:&quot;Some Text&quot;</code></li>      <li>a <strong>regular expression</strong>: field name followed by a colon and the regex in slashes, e.g. <code>tags.MyTagA:/[mb]oat/</code></li>      <li>a <strong>comparison</strong>: field name followed by a comparison operator and a value, e.g. <code>tags.MyTagB&lt;3</code></li>      <li>a <strong>range</strong>: field name followed by a colon and an open (indiced by <code>[ </code> and <code>] </code>) or (semi-)closed range (indiced by <code>{</code> and <code>}</code>), e.g. <code>tags.MyTagB:[* TO 3] </code></li>  </ul>   <p>Clauses may be <strong>grouped</strong> with brackets <code>( </code> and <code>) </code> and / or <strong>joined</strong> with <code>AND</code> or <code>OR </code> (or <code>&amp;&amp; </code> and <code>|| </code>)</p>   <h3>Example</h3>   <p>The syntax allows to build complex filter queries such as:</p>   <p><code>tags.city:&quot;new york&quot; AND tags.ATextTag:/[mb]oat/ AND tags.count:[1 TO *] OR tags.realNumberTag&lt;=3.2 OR tags.MyDateTag:2024-01-01 OR tags.MyDateTag:[2023-10-01 TO 2023-12-24] OR tags.MyDateTag&lt;2022-01-01 OR tags.time:12\\:00\\:00 OR tags.time:[12\\:00\\:00 TO 14\\:00\\:00] OR tags.time&lt;10\\:00\\:00 </code></p>   [EXPERIMENTAL] This endpoint is experimental and not part of the stable API specification. This endpoint can change at any time, even in minor updates.

### Example
```R
library(RSirius)

# [EXPERIMENTAL] Get runs by tag
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project space to get runs from.
var_filter <- "" # character | tag filter. (Optional)
var_page <- 0 # integer | Zero-based page index (0..N) (Optional)
var_size <- 20 # integer | The size of the page to be returned (Optional)
var_sort <- c("inner_example") # array[character] | Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported. (Optional)
var_opt_fields <- c(RunOptField$new()) # array[RunOptField] | set of optional fields to be included. Use 'none' only to override defaults. (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetRunsByTagExperimental(var_project_id, filter = var_filter, page = var_page, size = var_size, sort = var_sort, opt_fields = var_opt_fieldsdata_file = "result.txt")
result <- api_instance$runs_api$GetRunsByTagExperimental(var_project_id, filter = var_filter, page = var_page, size = var_size, sort = var_sort, opt_fields = var_opt_fields)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project space to get runs from. | 
 **filter** | **character**| tag filter. | [optional] [default to &quot;&quot;]
 **page** | **integer**| Zero-based page index (0..N) | [optional] [default to 0]
 **size** | **integer**| The size of the page to be returned | [optional] [default to 20]
 **sort** | list( **character** )| Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] 
 **opt_fields** | list( [**RunOptField**](RunOptField.md) )| set of optional fields to be included. Use &#39;none&#39; only to override defaults. | [optional] [default to []]

### Return type

[**PagedModelRun**](PagedModelRun.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | tagged runs |  -  |

# **GetTagsForRunExperimental**
> array[Tag] GetTagsForRunExperimental(project_id, object_id)

[EXPERIMENTAL] Get all tags associated with this Run

[EXPERIMENTAL] Get all tags associated with this Run

### Example
```R
library(RSirius)

# [EXPERIMENTAL] Get all tags associated with this Run
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to get from.
var_object_id <- "object_id_example" # character | RunId to get tags for.

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetTagsForRunExperimental(var_project_id, var_object_iddata_file = "result.txt")
result <- api_instance$runs_api$GetTagsForRunExperimental(var_project_id, var_object_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to get from. | 
 **object_id** | **character**| RunId to get tags for. | 

### Return type

[**array[Tag]**](Tag.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | the tags of the requested object |  -  |

# **RemoveTagFromRunExperimental**
> RemoveTagFromRunExperimental(project_id, run_id, tag_name)

[EXPERIMENTAL] Delete tag with the given name from the run with the specified ID in the specified project-space

[EXPERIMENTAL] Delete tag with the given name from the run with the specified ID in the specified project-space.  <p>  [EXPERIMENTAL] This endpoint is experimental and not part of the stable API specification. This endpoint can change at any time, even in minor updates.

### Example
```R
library(RSirius)

# [EXPERIMENTAL] Delete tag with the given name from the run with the specified ID in the specified project-space
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to delete from.
var_run_id <- "run_id_example" # character | run to delete tag from.
var_tag_name <- "tag_name_example" # character | name of the tag to delete.

api_instance <- rsirius_api$new()
api_instance$runs_api$RemoveTagFromRunExperimental(var_project_id, var_run_id, var_tag_name)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to delete from. | 
 **run_id** | **character**| run to delete tag from. | 
 **tag_name** | **character**| name of the tag to delete. | 

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

