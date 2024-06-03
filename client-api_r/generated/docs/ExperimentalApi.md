# ExperimentalApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetAlignedFeaturesQuality**](ExperimentalApi.md#GetAlignedFeaturesQuality) | **GET** /api/projects/{projectId}/aligned-features/{alignedFeatureId}/quality-report | Get data quality information for feature (aligned over runs) with the given identifier from the specified project-space.


# **GetAlignedFeaturesQuality**
> AlignedFeatureQuality GetAlignedFeaturesQuality(project_id, aligned_feature_id)

Get data quality information for feature (aligned over runs) with the given identifier from the specified project-space.

Get data quality information for feature (aligned over runs) with the given identifier from the specified project-space.

### Example
```R
library(Rsirius)

# Get data quality information for feature (aligned over runs) with the given identifier from the specified project-space.
#
# prepare function argument(s)
var_project_id <- "project_id_example" # character | project-space to read from.
var_aligned_feature_id <- "aligned_feature_id_example" # character | identifier of feature (aligned over runs) to access.

api_instance <- rsirius_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetAlignedFeaturesQuality(var_project_id, var_aligned_feature_iddata_file = "result.txt")
result <- api_instance$experimental_api$GetAlignedFeaturesQuality(var_project_id, var_aligned_feature_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **character**| project-space to read from. | 
 **aligned_feature_id** | **character**| identifier of feature (aligned over runs) to access. | 

### Return type

[**AlignedFeatureQuality**](AlignedFeatureQuality.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | AlignedFeatureQuality quality information of the respective feature. |  -  |

