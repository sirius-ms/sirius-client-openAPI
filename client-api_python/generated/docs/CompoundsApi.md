# PySirius.CompoundsApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_compounds**](CompoundsApi.md#add_compounds) | **POST** /api/projects/{projectId}/compounds | Import Compounds and its contained features.
[**delete_compound**](CompoundsApi.md#delete_compound) | **DELETE** /api/projects/{projectId}/compounds/{compoundId} | Delete compound (group of ion identities) with the given identifier (and the included features) from the  specified project-space.
[**get_compound**](CompoundsApi.md#get_compound) | **GET** /api/projects/{projectId}/compounds/{compoundId} | Get compound (group of ion identities) with the given identifier from the specified project-space.
[**get_compound_traces_experimental**](CompoundsApi.md#get_compound_traces_experimental) | **GET** /api/projects/{projectId}/compounds/{compoundId}/traces | EXPERIMENTAL: This endpoint is experimental and may be changed (or even removed) without notice until it is declared stable.
[**get_compounds**](CompoundsApi.md#get_compounds) | **GET** /api/projects/{projectId}/compounds | List of all available compounds (group of ion identities) in the given project-space.
[**get_compounds_paged**](CompoundsApi.md#get_compounds_paged) | **GET** /api/projects/{projectId}/compounds/page | Page of available compounds (group of ion identities) in the given project-space.


# **add_compounds**
> List[Compound] add_compounds(project_id, compound_import, profile=profile, opt_fields=opt_fields, opt_fields_features=opt_fields_features)

Import Compounds and its contained features.

Import Compounds and its contained features. Compounds and Features must not exist in the project.  Otherwise, they will exist twice.

### Example


```python
import PySirius
from PySirius.models.aligned_feature_opt_field import AlignedFeatureOptField
from PySirius.models.compound import Compound
from PySirius.models.compound_import import CompoundImport
from PySirius.models.compound_opt_field import CompoundOptField
from PySirius.models.instrument_profile import InstrumentProfile
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
    api_instance = PySirius.CompoundsApi(api_client)
    project_id = 'project_id_example' # str | project-space to import into.
    compound_import = [PySirius.CompoundImport()] # List[CompoundImport] | the compound data to be imported
    profile = PySirius.InstrumentProfile() # InstrumentProfile | profile describing the instrument used to measure the data. Used to merge spectra. (optional)
    opt_fields = ["none"] # List[CompoundOptField] | set of optional fields to be included. Use 'none' to override defaults. (optional) (default to ["none"])
    opt_fields_features = ["none"] # List[AlignedFeatureOptField] | set of optional fields of the nested features to be included. Use 'none' to override defaults. (optional) (default to ["none"])

    try:
        # Import Compounds and its contained features.
        api_response = api_instance.add_compounds(project_id, compound_import, profile=profile, opt_fields=opt_fields, opt_fields_features=opt_fields_features)
        print("The response of CompoundsApi->add_compounds:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CompoundsApi->add_compounds: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to import into. | 
 **compound_import** | [**List[CompoundImport]**](CompoundImport.md)| the compound data to be imported | 
 **profile** | [**InstrumentProfile**](.md)| profile describing the instrument used to measure the data. Used to merge spectra. | [optional] 
 **opt_fields** | [**List[CompoundOptField]**](CompoundOptField.md)| set of optional fields to be included. Use &#39;none&#39; to override defaults. | [optional] [default to [&quot;none&quot;]]
 **opt_fields_features** | [**List[AlignedFeatureOptField]**](AlignedFeatureOptField.md)| set of optional fields of the nested features to be included. Use &#39;none&#39; to override defaults. | [optional] [default to [&quot;none&quot;]]

### Return type

[**List[Compound]**](Compound.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | the Compounds that have been imported with specified optional fields |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_compound**
> delete_compound(project_id, compound_id)

Delete compound (group of ion identities) with the given identifier (and the included features) from the  specified project-space.

Delete compound (group of ion identities) with the given identifier (and the included features) from the  specified project-space.

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
    api_instance = PySirius.CompoundsApi(api_client)
    project_id = 'project_id_example' # str | project-space to delete from.
    compound_id = 'compound_id_example' # str | identifier of the compound to delete.

    try:
        # Delete compound (group of ion identities) with the given identifier (and the included features) from the  specified project-space.
        api_instance.delete_compound(project_id, compound_id)
    except Exception as e:
        print("Exception when calling CompoundsApi->delete_compound: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to delete from. | 
 **compound_id** | **str**| identifier of the compound to delete. | 

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

# **get_compound**
> Compound get_compound(project_id, compound_id, opt_fields=opt_fields, opt_fields_features=opt_fields_features)

Get compound (group of ion identities) with the given identifier from the specified project-space.

Get compound (group of ion identities) with the given identifier from the specified project-space.

### Example


```python
import PySirius
from PySirius.models.aligned_feature_opt_field import AlignedFeatureOptField
from PySirius.models.compound import Compound
from PySirius.models.compound_opt_field import CompoundOptField
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
    api_instance = PySirius.CompoundsApi(api_client)
    project_id = 'project_id_example' # str | project-space to read from.
    compound_id = 'compound_id_example' # str | identifier of the compound (group of ion identities) to access.
    opt_fields = ["none"] # List[CompoundOptField] | set of optional fields to be included. Use 'none' only to override defaults. (optional) (default to ["none"])
    opt_fields_features = ["none"] # List[AlignedFeatureOptField] |  (optional) (default to ["none"])

    try:
        # Get compound (group of ion identities) with the given identifier from the specified project-space.
        api_response = api_instance.get_compound(project_id, compound_id, opt_fields=opt_fields, opt_fields_features=opt_fields_features)
        print("The response of CompoundsApi->get_compound:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CompoundsApi->get_compound: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to read from. | 
 **compound_id** | **str**| identifier of the compound (group of ion identities) to access. | 
 **opt_fields** | [**List[CompoundOptField]**](CompoundOptField.md)| set of optional fields to be included. Use &#39;none&#39; only to override defaults. | [optional] [default to [&quot;none&quot;]]
 **opt_fields_features** | [**List[AlignedFeatureOptField]**](AlignedFeatureOptField.md)|  | [optional] [default to [&quot;none&quot;]]

### Return type

[**Compound**](Compound.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Compounds with additional optional fields (if specified). |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_compound_traces_experimental**
> TraceSetExperimental get_compound_traces_experimental(project_id, compound_id, feature_id=feature_id)

EXPERIMENTAL: This endpoint is experimental and may be changed (or even removed) without notice until it is declared stable.

Returns the traces of the given compound. A trace consists of m/z and intensity values over the retention  time axis. All the returned traces are 'projected', which means they refer not to the original retention time axis,  but to a recalibrated axis. This means the data points in the trace are not exactly the same as in the raw data.  However, this also means that all traces can be directly compared against each other, as they all lie in the same  retention time axis.

### Example


```python
import PySirius
from PySirius.models.trace_set_experimental import TraceSetExperimental
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
    api_instance = PySirius.CompoundsApi(api_client)
    project_id = 'project_id_example' # str | project-space to read from.
    compound_id = 'compound_id_example' # str | compound which intensities should be read out
    feature_id = '' # str |  (optional) (default to '')

    try:
        # EXPERIMENTAL: This endpoint is experimental and may be changed (or even removed) without notice until it is declared stable.
        api_response = api_instance.get_compound_traces_experimental(project_id, compound_id, feature_id=feature_id)
        print("The response of CompoundsApi->get_compound_traces_experimental:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CompoundsApi->get_compound_traces_experimental: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to read from. | 
 **compound_id** | **str**| compound which intensities should be read out | 
 **feature_id** | **str**|  | [optional] [default to &#39;&#39;]

### Return type

[**TraceSetExperimental**](TraceSetExperimental.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Traces of the given compound. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_compounds**
> List[Compound] get_compounds(project_id, opt_fields=opt_fields, opt_fields_features=opt_fields_features)

List of all available compounds (group of ion identities) in the given project-space.

List of all available compounds (group of ion identities) in the given project-space.

### Example


```python
import PySirius
from PySirius.models.aligned_feature_opt_field import AlignedFeatureOptField
from PySirius.models.compound import Compound
from PySirius.models.compound_opt_field import CompoundOptField
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
    api_instance = PySirius.CompoundsApi(api_client)
    project_id = 'project_id_example' # str | project-space to read from.
    opt_fields = ["none"] # List[CompoundOptField] | set of optional fields to be included. Use 'none' only to override defaults. (optional) (default to ["none"])
    opt_fields_features = ["none"] # List[AlignedFeatureOptField] |  (optional) (default to ["none"])

    try:
        # List of all available compounds (group of ion identities) in the given project-space.
        api_response = api_instance.get_compounds(project_id, opt_fields=opt_fields, opt_fields_features=opt_fields_features)
        print("The response of CompoundsApi->get_compounds:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CompoundsApi->get_compounds: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to read from. | 
 **opt_fields** | [**List[CompoundOptField]**](CompoundOptField.md)| set of optional fields to be included. Use &#39;none&#39; only to override defaults. | [optional] [default to [&quot;none&quot;]]
 **opt_fields_features** | [**List[AlignedFeatureOptField]**](AlignedFeatureOptField.md)|  | [optional] [default to [&quot;none&quot;]]

### Return type

[**List[Compound]**](Compound.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Compounds with additional optional fields (if specified). |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_compounds_paged**
> PagedModelCompound get_compounds_paged(project_id, page=page, size=size, sort=sort, opt_fields=opt_fields, opt_fields_features=opt_fields_features)

Page of available compounds (group of ion identities) in the given project-space.

Page of available compounds (group of ion identities) in the given project-space.

### Example


```python
import PySirius
from PySirius.models.aligned_feature_opt_field import AlignedFeatureOptField
from PySirius.models.compound_opt_field import CompoundOptField
from PySirius.models.paged_model_compound import PagedModelCompound
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
    api_instance = PySirius.CompoundsApi(api_client)
    project_id = 'project_id_example' # str | project-space to read from.
    page = 0 # int | Zero-based page index (0..N) (optional) (default to 0)
    size = 20 # int | The size of the page to be returned (optional) (default to 20)
    sort = ['sort_example'] # List[str] | Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported. (optional)
    opt_fields = ["none"] # List[CompoundOptField] | set of optional fields to be included. Use 'none' only to override defaults. (optional) (default to ["none"])
    opt_fields_features = ["none"] # List[AlignedFeatureOptField] |  (optional) (default to ["none"])

    try:
        # Page of available compounds (group of ion identities) in the given project-space.
        api_response = api_instance.get_compounds_paged(project_id, page=page, size=size, sort=sort, opt_fields=opt_fields, opt_fields_features=opt_fields_features)
        print("The response of CompoundsApi->get_compounds_paged:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CompoundsApi->get_compounds_paged: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to read from. | 
 **page** | **int**| Zero-based page index (0..N) | [optional] [default to 0]
 **size** | **int**| The size of the page to be returned | [optional] [default to 20]
 **sort** | [**List[str]**](str.md)| Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] 
 **opt_fields** | [**List[CompoundOptField]**](CompoundOptField.md)| set of optional fields to be included. Use &#39;none&#39; only to override defaults. | [optional] [default to [&quot;none&quot;]]
 **opt_fields_features** | [**List[AlignedFeatureOptField]**](AlignedFeatureOptField.md)|  | [optional] [default to [&quot;none&quot;]]

### Return type

[**PagedModelCompound**](PagedModelCompound.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Compounds with additional optional fields (if specified). |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

