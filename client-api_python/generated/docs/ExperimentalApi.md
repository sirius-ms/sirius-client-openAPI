# PySirius.ExperimentalApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_aligned_features_quality**](ExperimentalApi.md#get_aligned_features_quality) | **GET** /api/projects/{projectId}/aligned-features/{alignedFeatureId}/quality-report | Get data quality information for feature (aligned over runs) with the given identifier from the specified project-space.


# **get_aligned_features_quality**
> AlignedFeatureQuality get_aligned_features_quality(project_id, aligned_feature_id)

Get data quality information for feature (aligned over runs) with the given identifier from the specified project-space.

Get data quality information for feature (aligned over runs) with the given identifier from the specified project-space.

### Example


```python
import PySirius
from PySirius.models.aligned_feature_quality import AlignedFeatureQuality
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
    api_instance = PySirius.ExperimentalApi(api_client)
    project_id = 'project_id_example' # str | project-space to read from.
    aligned_feature_id = 'aligned_feature_id_example' # str | identifier of feature (aligned over runs) to access.

    try:
        # Get data quality information for feature (aligned over runs) with the given identifier from the specified project-space.
        api_response = api_instance.get_aligned_features_quality(project_id, aligned_feature_id)
        print("The response of ExperimentalApi->get_aligned_features_quality:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ExperimentalApi->get_aligned_features_quality: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to read from. | 
 **aligned_feature_id** | **str**| identifier of feature (aligned over runs) to access. | 

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
**200** | AlignedFeatureQuality quality information of the respective feature. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

