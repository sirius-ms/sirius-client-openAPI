# PySirius.CompoundsApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_compounds**](CompoundsApi.md#add_compounds) | **POST** /api/projects/{projectId}/compounds | Import Compounds and its contained features.
[**add_tags_to_compound_experimental**](CompoundsApi.md#add_tags_to_compound_experimental) | **PUT** /api/projects/{projectId}/compounds/tags/{compoundId} | [EXPERIMENTAL] Tags with the same name will be overwritten
[**delete_compound**](CompoundsApi.md#delete_compound) | **DELETE** /api/projects/{projectId}/compounds/{compoundId} | Delete compound (group of ion identities) with the given identifier (and the included features) from the  specified project-space.
[**get_compound**](CompoundsApi.md#get_compound) | **GET** /api/projects/{projectId}/compounds/{compoundId} | Get compound (group of ion identities) with the given identifier from the specified project-space.
[**get_compound_quant_table_experimental**](CompoundsApi.md#get_compound_quant_table_experimental) | **GET** /api/projects/{projectId}/compounds/quant-table | [EXPERIMENTAL] Returns the full quantification table of compounds
[**get_compound_quant_table_row_experimental**](CompoundsApi.md#get_compound_quant_table_row_experimental) | **GET** /api/projects/{projectId}/compounds/{compoundId}/quant-table-row | [EXPERIMENTAL] Returns a single quantification table row for the given compound
[**get_compound_traces_experimental**](CompoundsApi.md#get_compound_traces_experimental) | **GET** /api/projects/{projectId}/compounds/{compoundId}/traces | [EXPERIMENTAL] Returns the traces of the given compound
[**get_compounds**](CompoundsApi.md#get_compounds) | **GET** /api/projects/{projectId}/compounds | List of all available compounds (group of ion identities) in the given project-space.
[**get_compounds_by_group_experimental**](CompoundsApi.md#get_compounds_by_group_experimental) | **GET** /api/projects/{projectId}/compounds/grouped | [EXPERIMENTAL] Get compounds (group of ion identities) by tag group
[**get_compounds_by_tag_experimental**](CompoundsApi.md#get_compounds_by_tag_experimental) | **GET** /api/projects/{projectId}/compounds/tagged | [EXPERIMENTAL] Get compounds (group of ion identities) by tag
[**get_compounds_paged**](CompoundsApi.md#get_compounds_paged) | **GET** /api/projects/{projectId}/compounds/page | Page of available compounds (group of ion identities) in the given project-space.
[**get_tags_for_compound_experimental**](CompoundsApi.md#get_tags_for_compound_experimental) | **GET** /api/projects/{projectId}/compounds/tags/{objectId} | [EXPERIMENTAL] Get all tags associated with this Compound
[**remove_tag_from_compound_experimental**](CompoundsApi.md#remove_tag_from_compound_experimental) | **DELETE** /api/projects/{projectId}/compounds/tags/{compoundId}/{tagName} | [EXPERIMENTAL] Delete tag with the given name from the compound (group of ion identities) with the specified ID in the specified project-space


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
    opt_fields = [none] # List[CompoundOptField] | set of optional fields to be included. Use 'none' to override defaults. (optional) (default to [none])
    opt_fields_features = [none] # List[AlignedFeatureOptField] | set of optional fields of the nested features to be included. Use 'none' to override defaults. (optional) (default to [none])

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
 **opt_fields** | [**List[CompoundOptField]**](CompoundOptField.md)| set of optional fields to be included. Use &#39;none&#39; to override defaults. | [optional] [default to [none]]
 **opt_fields_features** | [**List[AlignedFeatureOptField]**](AlignedFeatureOptField.md)| set of optional fields of the nested features to be included. Use &#39;none&#39; to override defaults. | [optional] [default to [none]]

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

# **add_tags_to_compound_experimental**
> List[Tag] add_tags_to_compound_experimental(project_id, compound_id, tag)

[EXPERIMENTAL] Tags with the same name will be overwritten

[EXPERIMENTAL] Tags with the same name will be overwritten.  <p>  [EXPERIMENTAL] This endpoint is experimental and not part of the stable API specification. This endpoint can change at any time, even in minor updates.

### Example


```python
import PySirius
from PySirius.models.tag import Tag
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
    project_id = 'project_id_example' # str | project-space to add to.
    compound_id = 'compound_id_example' # str | compound (group of ion identities) to add tags to.
    tag = [PySirius.Tag()] # List[Tag] | tags to add.

    try:
        # [EXPERIMENTAL] Tags with the same name will be overwritten
        api_response = api_instance.add_tags_to_compound_experimental(project_id, compound_id, tag)
        print("The response of CompoundsApi->add_tags_to_compound_experimental:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CompoundsApi->add_tags_to_compound_experimental: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to add to. | 
 **compound_id** | **str**| compound (group of ion identities) to add tags to. | 
 **tag** | [**List[Tag]**](Tag.md)| tags to add. | 

### Return type

[**List[Tag]**](Tag.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | the tags that have been added |  -  |

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
> Compound get_compound(project_id, compound_id, ms_data_search_prepared=ms_data_search_prepared, opt_fields=opt_fields, opt_fields_features=opt_fields_features)

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
    ms_data_search_prepared = False # bool | Returns all fragment spectra in a preprocessed form as used for fast                             Cosine/Modified Cosine computation. Gives you spectra compatible with SpectralLibraryMatch                             peak assignments and reference spectra. (optional) (default to False)
    opt_fields = [none] # List[CompoundOptField] | set of optional fields to be included. Use 'none' only to override defaults. (optional) (default to [none])
    opt_fields_features = [none] # List[AlignedFeatureOptField] |  (optional) (default to [none])

    try:
        # Get compound (group of ion identities) with the given identifier from the specified project-space.
        api_response = api_instance.get_compound(project_id, compound_id, ms_data_search_prepared=ms_data_search_prepared, opt_fields=opt_fields, opt_fields_features=opt_fields_features)
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
 **ms_data_search_prepared** | **bool**| Returns all fragment spectra in a preprocessed form as used for fast                             Cosine/Modified Cosine computation. Gives you spectra compatible with SpectralLibraryMatch                             peak assignments and reference spectra. | [optional] [default to False]
 **opt_fields** | [**List[CompoundOptField]**](CompoundOptField.md)| set of optional fields to be included. Use &#39;none&#39; only to override defaults. | [optional] [default to [none]]
 **opt_fields_features** | [**List[AlignedFeatureOptField]**](AlignedFeatureOptField.md)|  | [optional] [default to [none]]

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

# **get_compound_quant_table_experimental**
> QuantTableExperimental get_compound_quant_table_experimental(project_id, type=type)

[EXPERIMENTAL] Returns the full quantification table of compounds

[EXPERIMENTAL] Returns the full quantification table of compounds.  <p>  The quantification table contains a quantification of the features within all  runs they are contained in.  <p>  [EXPERIMENTAL] This endpoint is experimental and not part of the stable API specification. This endpoint can change at any time, even in minor updates.*

### Example


```python
import PySirius
from PySirius.models.quant_measure import QuantMeasure
from PySirius.models.quant_table_experimental import QuantTableExperimental
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
    type = PySirius.QuantMeasure() # QuantMeasure | quantification type. (optional)

    try:
        # [EXPERIMENTAL] Returns the full quantification table of compounds
        api_response = api_instance.get_compound_quant_table_experimental(project_id, type=type)
        print("The response of CompoundsApi->get_compound_quant_table_experimental:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CompoundsApi->get_compound_quant_table_experimental: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to read from. | 
 **type** | [**QuantMeasure**](.md)| quantification type. | [optional] 

### Return type

[**QuantTableExperimental**](QuantTableExperimental.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_compound_quant_table_row_experimental**
> QuantTableExperimental get_compound_quant_table_row_experimental(project_id, compound_id, type=type)

[EXPERIMENTAL] Returns a single quantification table row for the given compound

[EXPERIMENTAL] Returns a single quantification table row for the given compound.  <p>  The quantification table contains a quantification of the feature within all  samples it is contained in.  <p>  [EXPERIMENTAL] This endpoint is experimental and not part of the stable API specification. This endpoint can change at any time, even in minor updates.*

### Example


```python
import PySirius
from PySirius.models.quant_measure import QuantMeasure
from PySirius.models.quant_table_experimental import QuantTableExperimental
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
    compound_id = 'compound_id_example' # str | compound which should be read out
    type = PySirius.QuantMeasure() # QuantMeasure | quantification type. (optional)

    try:
        # [EXPERIMENTAL] Returns a single quantification table row for the given compound
        api_response = api_instance.get_compound_quant_table_row_experimental(project_id, compound_id, type=type)
        print("The response of CompoundsApi->get_compound_quant_table_row_experimental:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CompoundsApi->get_compound_quant_table_row_experimental: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to read from. | 
 **compound_id** | **str**| compound which should be read out | 
 **type** | [**QuantMeasure**](.md)| quantification type. | [optional] 

### Return type

[**QuantTableExperimental**](QuantTableExperimental.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_compound_traces_experimental**
> TraceSetExperimental get_compound_traces_experimental(project_id, compound_id, feature_id=feature_id)

[EXPERIMENTAL] Returns the traces of the given compound

[EXPERIMENTAL] Returns the traces of the given compound.  <p>  A trace consists of m/z and intensity values over the retention  time axis. All the returned traces are 'projected', which means they refer not to the original retention time axis,  but to a recalibrated axis. This means the data points in the trace are not exactly the same as in the raw data.  However, this also means that all traces can be directly compared against each other, as they all lie in the same  retention time axis.  <p>  [EXPERIMENTAL] This endpoint is experimental and not part of the stable API specification. This endpoint can change at any time, even in minor updates.*

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
        # [EXPERIMENTAL] Returns the traces of the given compound
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
> List[Compound] get_compounds(project_id, ms_data_search_prepared=ms_data_search_prepared, opt_fields=opt_fields, opt_fields_features=opt_fields_features)

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
    ms_data_search_prepared = False # bool | Returns all fragment spectra in a preprocessed form as used for fast                             Cosine/Modified Cosine computation. Gives you spectra compatible with SpectralLibraryMatch                             peak assignments and reference spectra. (optional) (default to False)
    opt_fields = ["none"] # List[CompoundOptField] | set of optional fields to be included. Use 'none' only to override defaults. (optional) (default to ["none"])
    opt_fields_features = ["none"] # List[AlignedFeatureOptField] |  (optional) (default to ["none"])

    try:
        # List of all available compounds (group of ion identities) in the given project-space.
        api_response = api_instance.get_compounds(project_id, ms_data_search_prepared=ms_data_search_prepared, opt_fields=opt_fields, opt_fields_features=opt_fields_features)
        print("The response of CompoundsApi->get_compounds:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CompoundsApi->get_compounds: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to read from. | 
 **ms_data_search_prepared** | **bool**| Returns all fragment spectra in a preprocessed form as used for fast                             Cosine/Modified Cosine computation. Gives you spectra compatible with SpectralLibraryMatch                             peak assignments and reference spectra. | [optional] [default to False]
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

# **get_compounds_by_group_experimental**
> PagedModelCompound get_compounds_by_group_experimental(project_id, group_name, page=page, size=size, sort=sort, opt_fields=opt_fields)

[EXPERIMENTAL] Get compounds (group of ion identities) by tag group

[EXPERIMENTAL] Get compounds (group of ion identities) by tag group.  <p>  [EXPERIMENTAL] This endpoint is experimental and not part of the stable API specification. This endpoint can change at any time, even in minor updates.

### Example


```python
import PySirius
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
    project_id = 'project_id_example' # str | project-space to delete from.
    group_name = 'group_name_example' # str | tag group name.
    page = 0 # int | Zero-based page index (0..N) (optional) (default to 0)
    size = 20 # int | The size of the page to be returned (optional) (default to 20)
    sort = ['sort_example'] # List[str] | Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported. (optional)
    opt_fields = [none] # List[CompoundOptField] | set of optional fields to be included. Use 'none' only to override defaults. (optional) (default to [none])

    try:
        # [EXPERIMENTAL] Get compounds (group of ion identities) by tag group
        api_response = api_instance.get_compounds_by_group_experimental(project_id, group_name, page=page, size=size, sort=sort, opt_fields=opt_fields)
        print("The response of CompoundsApi->get_compounds_by_group_experimental:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CompoundsApi->get_compounds_by_group_experimental: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to delete from. | 
 **group_name** | **str**| tag group name. | 
 **page** | **int**| Zero-based page index (0..N) | [optional] [default to 0]
 **size** | **int**| The size of the page to be returned | [optional] [default to 20]
 **sort** | [**List[str]**](str.md)| Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] 
 **opt_fields** | [**List[CompoundOptField]**](CompoundOptField.md)| set of optional fields to be included. Use &#39;none&#39; only to override defaults. | [optional] [default to [none]]

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
**200** | tagged compounds (group of ion identities) |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_compounds_by_tag_experimental**
> PagedModelCompound get_compounds_by_tag_experimental(project_id, filter=filter, page=page, size=size, sort=sort, opt_fields=opt_fields)

[EXPERIMENTAL] Get compounds (group of ion identities) by tag

[EXPERIMENTAL] Get compounds (group of ion identities) by tag.   <h2>Supported filter syntax</h2>   <p>The filter string must contain one or more clauses. A clause is prefíxed  by a field name.  </p>   Currently the only searchable fields are names of tags (<code>tagName</code>) followed by a clause that is valued for the value type of the tag (See TagDefinition).  Tag name based field need to be prefixed with the namespace <code>tags.</code>.  Possible value types of tags are <strong>bool</strong>, <strong>integer</strong>, <strong>real</strong>, <strong>text</strong>, <strong>date</strong>, or <strong>time</strong> - tag value   <p>The format of the <strong>date</strong> type is <code>yyyy-MM-dd</code> and of the <strong>time</strong> type is <code>HH\\:mm\\:ss</code>.</p>   <p>A clause may be:</p>  <ul>      <li>a <strong>term</strong>: field name followed by a colon and the search term, e.g. <code>tags.MyTagA:sample</code></li>      <li>a <strong>phrase</strong>: field name followed by a colon and the search phrase in doublequotes, e.g. <code>tags.MyTagA:&quot;Some Text&quot;</code></li>      <li>a <strong>regular expression</strong>: field name followed by a colon and the regex in slashes, e.g. <code>tags.MyTagA:/[mb]oat/</code></li>      <li>a <strong>comparison</strong>: field name followed by a comparison operator and a value, e.g. <code>tags.MyTagB&lt;3</code></li>      <li>a <strong>range</strong>: field name followed by a colon and an open (indiced by <code>[ </code> and <code>] </code>) or (semi-)closed range (indiced by <code>{</code> and <code>}</code>), e.g. <code>tags.MyTagB:[* TO 3] </code></li>  </ul>   <p>Clauses may be <strong>grouped</strong> with brackets <code>( </code> and <code>) </code> and / or <strong>joined</strong> with <code>AND</code> or <code>OR </code> (or <code>&amp;&amp; </code> and <code>|| </code>)</p>   <h3>Example</h3>   <p>The syntax allows to build complex filter queries such as:</p>   <p><code>tags.city:&quot;new york&quot; AND tags.ATextTag:/[mb]oat/ AND tags.count:[1 TO *] OR tags.realNumberTag&lt;=3.2 OR tags.MyDateTag:2024-01-01 OR tags.MyDateTag:[2023-10-01 TO 2023-12-24] OR tags.MyDateTag&lt;2022-01-01 OR tags.time:12\\:00\\:00 OR tags.time:[12\\:00\\:00 TO 14\\:00\\:00] OR tags.time&lt;10\\:00\\:00 </code></p>   [EXPERIMENTAL] This endpoint is experimental and not part of the stable API specification. This endpoint can change at any time, even in minor updates.

### Example


```python
import PySirius
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
    project_id = 'project_id_example' # str | project space to get compounds (group of ion identities) from.
    filter = '' # str | tag filter. (optional) (default to '')
    page = 0 # int | Zero-based page index (0..N) (optional) (default to 0)
    size = 20 # int | The size of the page to be returned (optional) (default to 20)
    sort = ['sort_example'] # List[str] | Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported. (optional)
    opt_fields = [] # List[CompoundOptField] | set of optional fields to be included. Use 'none' only to override defaults. (optional) (default to [])

    try:
        # [EXPERIMENTAL] Get compounds (group of ion identities) by tag
        api_response = api_instance.get_compounds_by_tag_experimental(project_id, filter=filter, page=page, size=size, sort=sort, opt_fields=opt_fields)
        print("The response of CompoundsApi->get_compounds_by_tag_experimental:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CompoundsApi->get_compounds_by_tag_experimental: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project space to get compounds (group of ion identities) from. | 
 **filter** | **str**| tag filter. | [optional] [default to &#39;&#39;]
 **page** | **int**| Zero-based page index (0..N) | [optional] [default to 0]
 **size** | **int**| The size of the page to be returned | [optional] [default to 20]
 **sort** | [**List[str]**](str.md)| Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] 
 **opt_fields** | [**List[CompoundOptField]**](CompoundOptField.md)| set of optional fields to be included. Use &#39;none&#39; only to override defaults. | [optional] [default to []]

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
**200** | tagged compounds (group of ion identities) |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_compounds_paged**
> PagedModelCompound get_compounds_paged(project_id, page=page, size=size, sort=sort, ms_data_search_prepared=ms_data_search_prepared, opt_fields=opt_fields, opt_fields_features=opt_fields_features)

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
    ms_data_search_prepared = False # bool | Returns all fragment spectra in a preprocessed form as used for fast                             Cosine/Modified Cosine computation. Gives you spectra compatible with SpectralLibraryMatch                             peak assignments and reference spectra. (optional) (default to False)
    opt_fields = [none] # List[CompoundOptField] | set of optional fields to be included. Use 'none' only to override defaults. (optional) (default to [none])
    opt_fields_features = [none] # List[AlignedFeatureOptField] |  (optional) (default to [none])

    try:
        # Page of available compounds (group of ion identities) in the given project-space.
        api_response = api_instance.get_compounds_paged(project_id, page=page, size=size, sort=sort, ms_data_search_prepared=ms_data_search_prepared, opt_fields=opt_fields, opt_fields_features=opt_fields_features)
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
 **ms_data_search_prepared** | **bool**| Returns all fragment spectra in a preprocessed form as used for fast                             Cosine/Modified Cosine computation. Gives you spectra compatible with SpectralLibraryMatch                             peak assignments and reference spectra. | [optional] [default to False]
 **opt_fields** | [**List[CompoundOptField]**](CompoundOptField.md)| set of optional fields to be included. Use &#39;none&#39; only to override defaults. | [optional] [default to [none]]
 **opt_fields_features** | [**List[AlignedFeatureOptField]**](AlignedFeatureOptField.md)|  | [optional] [default to [none]]

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

# **get_tags_for_compound_experimental**
> List[Tag] get_tags_for_compound_experimental(project_id, object_id)

[EXPERIMENTAL] Get all tags associated with this Compound

[EXPERIMENTAL] Get all tags associated with this Compound

### Example


```python
import PySirius
from PySirius.models.tag import Tag
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
    project_id = 'project_id_example' # str | project-space to get from.
    object_id = 'object_id_example' # str | CompoundId to get tags for.

    try:
        # [EXPERIMENTAL] Get all tags associated with this Compound
        api_response = api_instance.get_tags_for_compound_experimental(project_id, object_id)
        print("The response of CompoundsApi->get_tags_for_compound_experimental:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CompoundsApi->get_tags_for_compound_experimental: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to get from. | 
 **object_id** | **str**| CompoundId to get tags for. | 

### Return type

[**List[Tag]**](Tag.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | the tags of the requested Compound |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **remove_tag_from_compound_experimental**
> remove_tag_from_compound_experimental(project_id, compound_id, tag_name)

[EXPERIMENTAL] Delete tag with the given name from the compound (group of ion identities) with the specified ID in the specified project-space

[EXPERIMENTAL] Delete tag with the given name from the compound (group of ion identities) with the specified ID in the specified project-space.  <p>  [EXPERIMENTAL] This endpoint is experimental and not part of the stable API specification. This endpoint can change at any time, even in minor updates.

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
    compound_id = 'compound_id_example' # str | compound (group of ion identities) to delete tag from.
    tag_name = 'tag_name_example' # str | name of the tag to delete.

    try:
        # [EXPERIMENTAL] Delete tag with the given name from the compound (group of ion identities) with the specified ID in the specified project-space
        api_instance.remove_tag_from_compound_experimental(project_id, compound_id, tag_name)
    except Exception as e:
        print("Exception when calling CompoundsApi->remove_tag_from_compound_experimental: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to delete from. | 
 **compound_id** | **str**| compound (group of ion identities) to delete tag from. | 
 **tag_name** | **str**| name of the tag to delete. | 

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

