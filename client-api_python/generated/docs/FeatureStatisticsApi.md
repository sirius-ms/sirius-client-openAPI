# PySirius.FeatureStatisticsApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**compute_aligned_feature_fold_changes_experimental**](FeatureStatisticsApi.md#compute_aligned_feature_fold_changes_experimental) | **PUT** /api/projects/{projectId}/aligned-features/statistics/foldchange/compute | [EXPERIMENTAL] Compute the fold change between two groups of runs
[**delete_aligned_feature_fold_changes_experimental**](FeatureStatisticsApi.md#delete_aligned_feature_fold_changes_experimental) | **DELETE** /api/projects/{projectId}/aligned-features/statistics/foldchanges | [EXPERIMENTAL] Delete fold changes
[**get_aligned_feature_fold_change_table_experimental**](FeatureStatisticsApi.md#get_aligned_feature_fold_change_table_experimental) | **GET** /api/projects/{projectId}/aligned-features/statistics/foldchanges/stats-table | [EXPERIMENTAL] Get table of all fold changes in the project space
[**get_fold_changes_by_aligned_feature_experimental**](FeatureStatisticsApi.md#get_fold_changes_by_aligned_feature_experimental) | **GET** /api/projects/{projectId}/aligned-features/statistics/foldchanges/{objectId} | [EXPERIMENTAL] List all fold changes that are associated with an object


# **compute_aligned_feature_fold_changes_experimental**
> Job compute_aligned_feature_fold_changes_experimental(project_id, fold_change_job_submission, opt_fields=opt_fields)

[EXPERIMENTAL] Compute the fold change between two groups of runs

[EXPERIMENTAL] Compute the fold change between two groups of runs.
 <p>
 The runs need to be tagged and grouped.
 <p>
 [EXPERIMENTAL] This endpoint is experimental and not part of the stable API specification. This endpoint can change at any time, even in minor updates.

### Example


```python
import PySirius
from PySirius.models.fold_change_job_submission import FoldChangeJobSubmission
from PySirius.models.job import Job
from PySirius.models.job_opt_field import JobOptField
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
    api_instance = PySirius.FeatureStatisticsApi(api_client)
    project_id = 'project_id_example' # str | project-space to compute the fold change in.
    fold_change_job_submission = PySirius.FoldChangeJobSubmission() # FoldChangeJobSubmission | Parameters of fold change job
    opt_fields = ["progress"] # List[JobOptField] | job opt fields. (optional) (default to ["progress"])

    try:
        # [EXPERIMENTAL] Compute the fold change between two groups of runs
        api_response = api_instance.compute_aligned_feature_fold_changes_experimental(project_id, fold_change_job_submission, opt_fields=opt_fields)
        print("The response of FeatureStatisticsApi->compute_aligned_feature_fold_changes_experimental:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling FeatureStatisticsApi->compute_aligned_feature_fold_changes_experimental: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to compute the fold change in. | 
 **fold_change_job_submission** | [**FoldChangeJobSubmission**](FoldChangeJobSubmission.md)| Parameters of fold change job | 
 **opt_fields** | [**List[JobOptField]**](JobOptField.md)| job opt fields. | [optional] [default to [&quot;progress&quot;]]

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
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_aligned_feature_fold_changes_experimental**
> delete_aligned_feature_fold_changes_experimental(project_id, left_group_name, right_group_name, aggregation=aggregation, quantification=quantification)

[EXPERIMENTAL] Delete fold changes

[EXPERIMENTAL] Delete fold changes.
 <p>
 [EXPERIMENTAL] This endpoint is experimental and not part of the stable API specification. This endpoint can change at any time, even in minor updates.

### Example


```python
import PySirius
from PySirius.models.aggregation_type import AggregationType
from PySirius.models.quant_measure import QuantMeasure
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
    api_instance = PySirius.FeatureStatisticsApi(api_client)
    project_id = 'project_id_example' # str | project-space to delete from.
    left_group_name = 'left_group_name_example' # str | name of the left group.
    right_group_name = 'right_group_name_example' # str | name of the right group.
    aggregation = PySirius.AggregationType() # AggregationType |  (optional)
    quantification = PySirius.QuantMeasure() # QuantMeasure |  (optional)

    try:
        # [EXPERIMENTAL] Delete fold changes
        api_instance.delete_aligned_feature_fold_changes_experimental(project_id, left_group_name, right_group_name, aggregation=aggregation, quantification=quantification)
    except Exception as e:
        print("Exception when calling FeatureStatisticsApi->delete_aligned_feature_fold_changes_experimental: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to delete from. | 
 **left_group_name** | **str**| name of the left group. | 
 **right_group_name** | **str**| name of the right group. | 
 **aggregation** | [**AggregationType**](.md)|  | [optional] 
 **quantification** | [**QuantMeasure**](.md)|  | [optional] 

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

# **get_aligned_feature_fold_change_table_experimental**
> StatisticsTable get_aligned_feature_fold_change_table_experimental(project_id, aggregation=aggregation, quantification=quantification)

[EXPERIMENTAL] Get table of all fold changes in the project space

[EXPERIMENTAL] Get table of all fold changes in the project space.
 <p>
 [EXPERIMENTAL] This endpoint is experimental and not part of the stable API specification. This endpoint can change at any time, even in minor updates.

### Example


```python
import PySirius
from PySirius.models.aggregation_type import AggregationType
from PySirius.models.quant_measure import QuantMeasure
from PySirius.models.statistics_table import StatisticsTable
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
    api_instance = PySirius.FeatureStatisticsApi(api_client)
    project_id = 'project_id_example' # str | project-space to read from.
    aggregation = PySirius.AggregationType() # AggregationType | aggregation type. (optional)
    quantification = PySirius.QuantMeasure() # QuantMeasure | quantification type. (optional)

    try:
        # [EXPERIMENTAL] Get table of all fold changes in the project space
        api_response = api_instance.get_aligned_feature_fold_change_table_experimental(project_id, aggregation=aggregation, quantification=quantification)
        print("The response of FeatureStatisticsApi->get_aligned_feature_fold_change_table_experimental:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling FeatureStatisticsApi->get_aligned_feature_fold_change_table_experimental: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to read from. | 
 **aggregation** | [**AggregationType**](.md)| aggregation type. | [optional] 
 **quantification** | [**QuantMeasure**](.md)| quantification type. | [optional] 

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
**200** | table of fold changes. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_fold_changes_by_aligned_feature_experimental**
> List[FoldChange] get_fold_changes_by_aligned_feature_experimental(project_id, object_id)

[EXPERIMENTAL] List all fold changes that are associated with an object

[EXPERIMENTAL] List all fold changes that are associated with an object.
 <p>
 [EXPERIMENTAL] This endpoint is experimental and not part of the stable API specification. This endpoint can change at any time, even in minor updates.

### Example


```python
import PySirius
from PySirius.models.fold_change import FoldChange
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
    api_instance = PySirius.FeatureStatisticsApi(api_client)
    project_id = 'project_id_example' # str | project-space to read from.
    object_id = 'object_id_example' # str | id of the object the fold changes are assigned to.

    try:
        # [EXPERIMENTAL] List all fold changes that are associated with an object
        api_response = api_instance.get_fold_changes_by_aligned_feature_experimental(project_id, object_id)
        print("The response of FeatureStatisticsApi->get_fold_changes_by_aligned_feature_experimental:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling FeatureStatisticsApi->get_fold_changes_by_aligned_feature_experimental: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to read from. | 
 **object_id** | **str**| id of the object the fold changes are assigned to. | 

### Return type

[**List[FoldChange]**](FoldChange.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | fold changes |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

