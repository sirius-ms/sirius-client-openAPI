# CompoundStatisticsApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ComputeCompoundFoldChangesExperimental**](CompoundStatisticsApi.md#ComputeCompoundFoldChangesExperimental) | **PUT** /api/projects/{projectId}/compounds/statistics/foldchange/compute | [EXPERIMENTAL] Compute the fold change between two groups of runs
[**DeleteCompoundFoldChangesExperimental**](CompoundStatisticsApi.md#DeleteCompoundFoldChangesExperimental) | **DELETE** /api/projects/{projectId}/compounds/statistics/foldchanges | [EXPERIMENTAL] Delete fold changes
[**GetCompoundFoldChangeTableExperimental**](CompoundStatisticsApi.md#GetCompoundFoldChangeTableExperimental) | **GET** /api/projects/{projectId}/compounds/statistics/foldchanges/stats-table | [EXPERIMENTAL] Get table of all fold changes in the project space
[**GetFoldChangesByCompoundExperimental**](CompoundStatisticsApi.md#GetFoldChangesByCompoundExperimental) | **GET** /api/projects/{projectId}/compounds/statistics/foldchanges/{objectId} | [EXPERIMENTAL] List all fold changes that are associated with an object


# **ComputeCompoundFoldChangesExperimental**
> Job ComputeCompoundFoldChangesExperimental(project_id, left_group_name, right_group_name, aggregation = "AVG", quantification = "APEX_INTENSITY", opt_fields = ["progress"])

[EXPERIMENTAL] Compute the fold change between two groups of runs

[EXPERIMENTAL] Compute the fold change between two groups of runs.  <p>  The runs need to be tagged and grouped.  <p>  [EXPERIMENTAL] This endpoint is experimental and not part of the stable API specification. This endpoint can change at any time, even in minor updates.

### Example
```R
library(RSirius)

# [EXPERIMENTAL] Compute the fold change between two groups of runs
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to compute the fold change in.
var_left_group_name <- "left_group_name_example" # character | name of the left tag group.
var_right_group_name <- "right_group_name_example" # character | name of the right tag group.
var_aggregation <- "AVG" # character | aggregation type. (Optional)
var_quantification <- "APEX_INTENSITY" # character | quantification type. (Optional)
var_opt_fields <- c("none") # array[character] | job opt fields. (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ComputeCompoundFoldChangesExperimental(var_project_id, var_left_group_name, var_right_group_name, aggregation = var_aggregation, quantification = var_quantification, opt_fields = var_opt_fieldsdata_file = "result.txt")
result <- api_instance$compound_statistics_api$ComputeCompoundFoldChangesExperimental(var_project_id, var_left_group_name, var_right_group_name, aggregation = var_aggregation, quantification = var_quantification, opt_fields = var_opt_fields)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to compute the fold change in. | 
 **left_group_name** | **character**| name of the left tag group. | 
 **right_group_name** | **character**| name of the right tag group. | 
 **aggregation** | Enum [AVG, MIN, MAX] | aggregation type. | [optional] [default to &quot;AVG&quot;]
 **quantification** | Enum [APEX_INTENSITY, AREA_UNDER_CURVE] | quantification type. | [optional] [default to &quot;APEX_INTENSITY&quot;]
 **opt_fields** | Enum [none, command, progress, affectedIds] | job opt fields. | [optional] [default to [&quot;progress&quot;]]

### Return type

[**Job**](Job.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

# **DeleteCompoundFoldChangesExperimental**
> DeleteCompoundFoldChangesExperimental(project_id, left_group_name, right_group_name, aggregation = "AVG", quantification = "APEX_INTENSITY")

[EXPERIMENTAL] Delete fold changes

[EXPERIMENTAL] Delete fold changes.  <p>  [EXPERIMENTAL] This endpoint is experimental and not part of the stable API specification. This endpoint can change at any time, even in minor updates.

### Example
```R
library(RSirius)

# [EXPERIMENTAL] Delete fold changes
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to delete from.
var_left_group_name <- "left_group_name_example" # character | name of the left group.
var_right_group_name <- "right_group_name_example" # character | name of the right group.
var_aggregation <- "AVG" # character |  (Optional)
var_quantification <- "APEX_INTENSITY" # character |  (Optional)

api_instance <- rsirius_api$new()
api_instance$compound_statistics_api$DeleteCompoundFoldChangesExperimental(var_project_id, var_left_group_name, var_right_group_name, aggregation = var_aggregation, quantification = var_quantification)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to delete from. | 
 **left_group_name** | **character**| name of the left group. | 
 **right_group_name** | **character**| name of the right group. | 
 **aggregation** | Enum [AVG, MIN, MAX] |  | [optional] [default to &quot;AVG&quot;]
 **quantification** | Enum [APEX_INTENSITY, AREA_UNDER_CURVE] |  | [optional] [default to &quot;APEX_INTENSITY&quot;]

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

# **GetCompoundFoldChangeTableExperimental**
> StatisticsTable GetCompoundFoldChangeTableExperimental(project_id, aggregation = "AVG", quantification = "APEX_INTENSITY")

[EXPERIMENTAL] Get table of all fold changes in the project space

[EXPERIMENTAL] Get table of all fold changes in the project space.  <p>  [EXPERIMENTAL] This endpoint is experimental and not part of the stable API specification. This endpoint can change at any time, even in minor updates.

### Example
```R
library(RSirius)

# [EXPERIMENTAL] Get table of all fold changes in the project space
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to read from.
var_aggregation <- "AVG" # character | aggregation type. (Optional)
var_quantification <- "APEX_INTENSITY" # character | quantification type. (Optional)

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetCompoundFoldChangeTableExperimental(var_project_id, aggregation = var_aggregation, quantification = var_quantificationdata_file = "result.txt")
result <- api_instance$compound_statistics_api$GetCompoundFoldChangeTableExperimental(var_project_id, aggregation = var_aggregation, quantification = var_quantification)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to read from. | 
 **aggregation** | Enum [AVG, MIN, MAX] | aggregation type. | [optional] [default to &quot;AVG&quot;]
 **quantification** | Enum [APEX_INTENSITY, AREA_UNDER_CURVE] | quantification type. | [optional] [default to &quot;APEX_INTENSITY&quot;]

### Return type

[**StatisticsTable**](StatisticsTable.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | table of fold changes. |  -  |

# **GetFoldChangesByCompoundExperimental**
> array[FoldChange] GetFoldChangesByCompoundExperimental(project_id, object_id)

[EXPERIMENTAL] List all fold changes that are associated with an object

[EXPERIMENTAL] List all fold changes that are associated with an object.  <p>  [EXPERIMENTAL] This endpoint is experimental and not part of the stable API specification. This endpoint can change at any time, even in minor updates.

### Example
```R
library(RSirius)

# [EXPERIMENTAL] List all fold changes that are associated with an object
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to read from.
var_object_id <- "object_id_example" # character | id of the object the fold changes are assigned to.

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetFoldChangesByCompoundExperimental(var_project_id, var_object_iddata_file = "result.txt")
result <- api_instance$compound_statistics_api$GetFoldChangesByCompoundExperimental(var_project_id, var_object_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to read from. | 
 **object_id** | **character**| id of the object the fold changes are assigned to. | 

### Return type

[**array[FoldChange]**](FoldChange.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | fold changes |  -  |

