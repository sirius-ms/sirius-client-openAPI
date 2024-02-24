# PySirius.FeaturesApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_aligned_features**](FeaturesApi.md#add_aligned_features) | **POST** /api/projects/{projectId}/aligned-features | 
[**delete_aligned_feature**](FeaturesApi.md#delete_aligned_feature) | **DELETE** /api/projects/{projectId}/aligned-features/{alignedFeatureId} | Delete feature (aligned over runs) with the given identifier from the specified project-space.
[**get_aligned_feature**](FeaturesApi.md#get_aligned_feature) | **GET** /api/projects/{projectId}/aligned-features/{alignedFeatureId} | Get feature (aligned over runs) with the given identifier from the specified project-space.
[**get_aligned_features**](FeaturesApi.md#get_aligned_features) | **GET** /api/projects/{projectId}/aligned-features | Get all available features (aligned over runs) in the given project-space.
[**get_best_matching_compound_classes**](FeaturesApi.md#get_best_matching_compound_classes) | **GET** /api/projects/{projectId}/aligned-features/{alignedFeatureId}/formulas/{formulaId}/best-compound-classes | Best matching compound classes,  Set of the highest scoring compound classes (CANOPUS) on each hierarchy level of  the ClassyFire and NPC ontology,
[**get_canopus_prediction**](FeaturesApi.md#get_canopus_prediction) | **GET** /api/projects/{projectId}/aligned-features/{alignedFeatureId}/formulas/{formulaId}/canopus-prediction | All predicted compound classes (CANOPUS) from ClassyFire and NPC and their probabilities,
[**get_fingerprint_prediction**](FeaturesApi.md#get_fingerprint_prediction) | **GET** /api/projects/{projectId}/aligned-features/{alignedFeatureId}/formulas/{formulaId}/fingerprint | Returns predicted fingerprint (CSI:FingerID) for the given formula result identifier  This fingerprint is used to perform structure database search and predict compound classes.
[**get_formula_annotated_ms_ms_data**](FeaturesApi.md#get_formula_annotated_ms_ms_data) | **GET** /api/projects/{projectId}/aligned-features/{alignedFeatureId}/formulas/{formulaId}/annotated-msmsdata | Returns MS/MS Spectrum (Merged MS/MS and measured MS/MS) which is annotated with fragments and losses  for the given formula result identifier  These annotations are only available if a fragmentation tree and the structure candidate are available.
[**get_formula_annotated_spectrum**](FeaturesApi.md#get_formula_annotated_spectrum) | **GET** /api/projects/{projectId}/aligned-features/{alignedFeatureId}/formulas/{formulaId}/annotated-spectrum | Returns a fragmentation spectrum (e.g. Merged MS/MS) which is annotated with fragments and losses for the given formula result identifier  These annotations are only available if a fragmentation tree is available.
[**get_formula_candidate**](FeaturesApi.md#get_formula_candidate) | **GET** /api/projects/{projectId}/aligned-features/{alignedFeatureId}/formulas/{formulaId} | FormulaResultContainers for the given &#39;formulaId&#39; with minimal information.
[**get_formula_candidates**](FeaturesApi.md#get_formula_candidates) | **GET** /api/projects/{projectId}/aligned-features/{alignedFeatureId}/formulas | List of all FormulaResultContainers available for this feature with minimal information.
[**get_frag_tree**](FeaturesApi.md#get_frag_tree) | **GET** /api/projects/{projectId}/aligned-features/{alignedFeatureId}/formulas/{formulaId}/tree | Returns fragmentation tree (SIRIUS) for the given formula result identifier  This tree is used to rank formula candidates (treeScore).
[**get_isotope_pattern_annotation**](FeaturesApi.md#get_isotope_pattern_annotation) | **GET** /api/projects/{projectId}/aligned-features/{alignedFeatureId}/formulas/{formulaId}/isotope-pattern | Returns Isotope pattern information (simulated isotope pattern, measured isotope pattern, isotope pattern highlighting)  for the given formula result identifier.
[**get_lipid_annotation**](FeaturesApi.md#get_lipid_annotation) | **GET** /api/projects/{projectId}/aligned-features/{alignedFeatureId}/formulas/{formulaId}/lipid-annotation | Returns Lipid annotation (ElGordo) for the given formula result identifier.
[**get_ms_data**](FeaturesApi.md#get_ms_data) | **GET** /api/projects/{projectId}/aligned-features/{alignedFeatureId}/ms-data | Mass Spec data (input data) for the given &#39;alignedFeatureId&#39; .
[**get_sirius_frag_tree**](FeaturesApi.md#get_sirius_frag_tree) | **GET** /api/projects/{projectId}/aligned-features/{alignedFeatureId}/formulas/{formulaId}/sirius-tree | 
[**get_structure_annotated_ms_data**](FeaturesApi.md#get_structure_annotated_ms_data) | **GET** /api/projects/{projectId}/aligned-features/{alignedFeatureId}/formulas/{formulaId}/structures/{inchiKey}/annotated-msmsdata | Returns MS/MS Data (Merged MS/MS and list of measured MS/MS ) which are annotated with fragments and losses  for the given formula result identifier and structure candidate inChIKey.
[**get_structure_annotated_spectrum**](FeaturesApi.md#get_structure_annotated_spectrum) | **GET** /api/projects/{projectId}/aligned-features/{alignedFeatureId}/formulas/{formulaId}/structures/{inchiKey}/annotated-spectrum | Returns a fragmentation spectrum (e.g. Merged MS/MS) which is annotated with fragments and losses for the given formula result identifier  These annotations are only available if a fragmentation tree is available.
[**get_structure_candidates**](FeaturesApi.md#get_structure_candidates) | **GET** /api/projects/{projectId}/aligned-features/{alignedFeatureId}/structures | List of StructureCandidates for the given &#39;alignedFeatureId&#39; with minimal information.
[**get_structure_candidates_by_formula**](FeaturesApi.md#get_structure_candidates_by_formula) | **GET** /api/projects/{projectId}/aligned-features/{alignedFeatureId}/formulas/{formulaId}/structures | List of StructureCandidates the given &#39;formulaId&#39; with minimal information.


# **add_aligned_features**
> List[AlignedFeature] add_aligned_features(project_id, feature_import, opt_fields=opt_fields)



### Example


```python
import PySirius
from PySirius.models.aligned_feature import AlignedFeature
from PySirius.models.aligned_feature_opt_field import AlignedFeatureOptField
from PySirius.models.feature_import import FeatureImport
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
    api_instance = PySirius.FeaturesApi(api_client)
    project_id = 'project_id_example' # str | project-space to import into.
    feature_import = [PySirius.FeatureImport()] # List[FeatureImport] | the feature data to be imported
    opt_fields = [] # List[AlignedFeatureOptField] | set of optional fields to be included. Use 'none' to override defaults. (optional) (default to [])

    try:
        api_response = api_instance.add_aligned_features(project_id, feature_import, opt_fields=opt_fields)
        print("The response of FeaturesApi->add_aligned_features:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling FeaturesApi->add_aligned_features: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to import into. | 
 **feature_import** | [**List[FeatureImport]**](FeatureImport.md)| the feature data to be imported | 
 **opt_fields** | [**List[AlignedFeatureOptField]**](AlignedFeatureOptField.md)| set of optional fields to be included. Use &#39;none&#39; to override defaults. | [optional] [default to []]

### Return type

[**List[AlignedFeature]**](AlignedFeature.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | the Features that have been imported with specified optional fields |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_aligned_feature**
> delete_aligned_feature(project_id, aligned_feature_id)

Delete feature (aligned over runs) with the given identifier from the specified project-space.

Delete feature (aligned over runs) with the given identifier from the specified project-space.

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
    api_instance = PySirius.FeaturesApi(api_client)
    project_id = 'project_id_example' # str | project-space to delete from.
    aligned_feature_id = 'aligned_feature_id_example' # str | identifier of feature (aligned over runs) to delete.

    try:
        # Delete feature (aligned over runs) with the given identifier from the specified project-space.
        api_instance.delete_aligned_feature(project_id, aligned_feature_id)
    except Exception as e:
        print("Exception when calling FeaturesApi->delete_aligned_feature: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to delete from. | 
 **aligned_feature_id** | **str**| identifier of feature (aligned over runs) to delete. | 

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

# **get_aligned_feature**
> AlignedFeature get_aligned_feature(project_id, aligned_feature_id, opt_fields=opt_fields)

Get feature (aligned over runs) with the given identifier from the specified project-space.

Get feature (aligned over runs) with the given identifier from the specified project-space.

### Example


```python
import PySirius
from PySirius.models.aligned_feature import AlignedFeature
from PySirius.models.aligned_feature_opt_field import AlignedFeatureOptField
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
    api_instance = PySirius.FeaturesApi(api_client)
    project_id = 'project_id_example' # str | project-space to read from.
    aligned_feature_id = 'aligned_feature_id_example' # str | identifier of feature (aligned over runs) to access.
    opt_fields = [] # List[AlignedFeatureOptField] | set of optional fields to be included. Use 'none' only to override defaults. (optional) (default to [])

    try:
        # Get feature (aligned over runs) with the given identifier from the specified project-space.
        api_response = api_instance.get_aligned_feature(project_id, aligned_feature_id, opt_fields=opt_fields)
        print("The response of FeaturesApi->get_aligned_feature:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling FeaturesApi->get_aligned_feature: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to read from. | 
 **aligned_feature_id** | **str**| identifier of feature (aligned over runs) to access. | 
 **opt_fields** | [**List[AlignedFeatureOptField]**](AlignedFeatureOptField.md)| set of optional fields to be included. Use &#39;none&#39; only to override defaults. | [optional] [default to []]

### Return type

[**AlignedFeature**](AlignedFeature.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | AlignedFeature with additional annotations and MS/MS data (if specified). |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_aligned_features**
> PageAlignedFeature get_aligned_features(project_id, page=page, size=size, sort=sort, search_query=search_query, query_syntax=query_syntax, opt_fields=opt_fields)

Get all available features (aligned over runs) in the given project-space.

Get all available features (aligned over runs) in the given project-space.

### Example


```python
import PySirius
from PySirius.models.aligned_feature_opt_field import AlignedFeatureOptField
from PySirius.models.page_aligned_feature import PageAlignedFeature
from PySirius.models.search_query_type import SearchQueryType
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
    api_instance = PySirius.FeaturesApi(api_client)
    project_id = 'project_id_example' # str | project-space to read from.
    page = 0 # int | Zero-based page index (0..N) (optional) (default to 0)
    size = 20 # int | The size of the page to be returned (optional) (default to 20)
    sort = ['sort_example'] # List[str] | Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported. (optional)
    search_query = 'search_query_example' # str | optional search query in specified format (optional)
    query_syntax = PySirius.SearchQueryType() # SearchQueryType | query syntax used fpr searchQuery (optional)
    opt_fields = [] # List[AlignedFeatureOptField] | set of optional fields to be included. Use 'none' only to override defaults. (optional) (default to [])

    try:
        # Get all available features (aligned over runs) in the given project-space.
        api_response = api_instance.get_aligned_features(project_id, page=page, size=size, sort=sort, search_query=search_query, query_syntax=query_syntax, opt_fields=opt_fields)
        print("The response of FeaturesApi->get_aligned_features:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling FeaturesApi->get_aligned_features: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to read from. | 
 **page** | **int**| Zero-based page index (0..N) | [optional] [default to 0]
 **size** | **int**| The size of the page to be returned | [optional] [default to 20]
 **sort** | [**List[str]**](str.md)| Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] 
 **search_query** | **str**| optional search query in specified format | [optional] 
 **query_syntax** | [**SearchQueryType**](.md)| query syntax used fpr searchQuery | [optional] 
 **opt_fields** | [**List[AlignedFeatureOptField]**](AlignedFeatureOptField.md)| set of optional fields to be included. Use &#39;none&#39; only to override defaults. | [optional] [default to []]

### Return type

[**PageAlignedFeature**](PageAlignedFeature.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | AlignedFeatures with additional annotations and MS/MS data (if specified). |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_best_matching_compound_classes**
> CompoundClasses get_best_matching_compound_classes(project_id, aligned_feature_id, formula_id)

Best matching compound classes,  Set of the highest scoring compound classes (CANOPUS) on each hierarchy level of  the ClassyFire and NPC ontology,

Best matching compound classes,  Set of the highest scoring compound classes (CANOPUS) on each hierarchy level of  the ClassyFire and NPC ontology,

### Example


```python
import PySirius
from PySirius.models.compound_classes import CompoundClasses
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
    api_instance = PySirius.FeaturesApi(api_client)
    project_id = 'project_id_example' # str | project-space to read from.
    aligned_feature_id = 'aligned_feature_id_example' # str | feature (aligned over runs) the formula result belongs to.
    formula_id = 'formula_id_example' # str | identifier of the requested formula result

    try:
        # Best matching compound classes,  Set of the highest scoring compound classes (CANOPUS) on each hierarchy level of  the ClassyFire and NPC ontology,
        api_response = api_instance.get_best_matching_compound_classes(project_id, aligned_feature_id, formula_id)
        print("The response of FeaturesApi->get_best_matching_compound_classes:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling FeaturesApi->get_best_matching_compound_classes: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to read from. | 
 **aligned_feature_id** | **str**| feature (aligned over runs) the formula result belongs to. | 
 **formula_id** | **str**| identifier of the requested formula result | 

### Return type

[**CompoundClasses**](CompoundClasses.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Best matching Predicted compound classes |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_canopus_prediction**
> CanopusPrediction get_canopus_prediction(project_id, aligned_feature_id, formula_id)

All predicted compound classes (CANOPUS) from ClassyFire and NPC and their probabilities,

All predicted compound classes (CANOPUS) from ClassyFire and NPC and their probabilities,

### Example


```python
import PySirius
from PySirius.models.canopus_prediction import CanopusPrediction
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
    api_instance = PySirius.FeaturesApi(api_client)
    project_id = 'project_id_example' # str | project-space to read from.
    aligned_feature_id = 'aligned_feature_id_example' # str | feature (aligned over runs) the formula result belongs to.
    formula_id = 'formula_id_example' # str | identifier of the requested formula result

    try:
        # All predicted compound classes (CANOPUS) from ClassyFire and NPC and their probabilities,
        api_response = api_instance.get_canopus_prediction(project_id, aligned_feature_id, formula_id)
        print("The response of FeaturesApi->get_canopus_prediction:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling FeaturesApi->get_canopus_prediction: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to read from. | 
 **aligned_feature_id** | **str**| feature (aligned over runs) the formula result belongs to. | 
 **formula_id** | **str**| identifier of the requested formula result | 

### Return type

[**CanopusPrediction**](CanopusPrediction.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Predicted compound classes |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_fingerprint_prediction**
> List[float] get_fingerprint_prediction(project_id, aligned_feature_id, formula_id)

Returns predicted fingerprint (CSI:FingerID) for the given formula result identifier  This fingerprint is used to perform structure database search and predict compound classes.

Returns predicted fingerprint (CSI:FingerID) for the given formula result identifier  This fingerprint is used to perform structure database search and predict compound classes.

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
    api_instance = PySirius.FeaturesApi(api_client)
    project_id = 'project_id_example' # str | project-space to read from.
    aligned_feature_id = 'aligned_feature_id_example' # str | feature (aligned over runs) the formula result belongs to.
    formula_id = 'formula_id_example' # str | identifier of the requested formula result

    try:
        # Returns predicted fingerprint (CSI:FingerID) for the given formula result identifier  This fingerprint is used to perform structure database search and predict compound classes.
        api_response = api_instance.get_fingerprint_prediction(project_id, aligned_feature_id, formula_id)
        print("The response of FeaturesApi->get_fingerprint_prediction:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling FeaturesApi->get_fingerprint_prediction: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to read from. | 
 **aligned_feature_id** | **str**| feature (aligned over runs) the formula result belongs to. | 
 **formula_id** | **str**| identifier of the requested formula result | 

### Return type

**List[float]**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | probabilistic fingerprint predicted by CSI:FingerID |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_formula_annotated_ms_ms_data**
> AnnotatedMsMsData get_formula_annotated_ms_ms_data(project_id, aligned_feature_id, formula_id)

Returns MS/MS Spectrum (Merged MS/MS and measured MS/MS) which is annotated with fragments and losses  for the given formula result identifier  These annotations are only available if a fragmentation tree and the structure candidate are available.

Returns MS/MS Spectrum (Merged MS/MS and measured MS/MS) which is annotated with fragments and losses  for the given formula result identifier  These annotations are only available if a fragmentation tree and the structure candidate are available.

### Example


```python
import PySirius
from PySirius.models.annotated_ms_ms_data import AnnotatedMsMsData
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
    api_instance = PySirius.FeaturesApi(api_client)
    project_id = 'project_id_example' # str | project-space to read from.
    aligned_feature_id = 'aligned_feature_id_example' # str | feature (aligned over runs) the formula result belongs to.
    formula_id = 'formula_id_example' # str | identifier of the requested formula result

    try:
        # Returns MS/MS Spectrum (Merged MS/MS and measured MS/MS) which is annotated with fragments and losses  for the given formula result identifier  These annotations are only available if a fragmentation tree and the structure candidate are available.
        api_response = api_instance.get_formula_annotated_ms_ms_data(project_id, aligned_feature_id, formula_id)
        print("The response of FeaturesApi->get_formula_annotated_ms_ms_data:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling FeaturesApi->get_formula_annotated_ms_ms_data: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to read from. | 
 **aligned_feature_id** | **str**| feature (aligned over runs) the formula result belongs to. | 
 **formula_id** | **str**| identifier of the requested formula result | 

### Return type

[**AnnotatedMsMsData**](AnnotatedMsMsData.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Fragmentation spectra annotated with fragment formulas and losses. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_formula_annotated_spectrum**
> AnnotatedSpectrum get_formula_annotated_spectrum(project_id, aligned_feature_id, formula_id, spectrum_index=spectrum_index)

Returns a fragmentation spectrum (e.g. Merged MS/MS) which is annotated with fragments and losses for the given formula result identifier  These annotations are only available if a fragmentation tree is available.

Returns a fragmentation spectrum (e.g. Merged MS/MS) which is annotated with fragments and losses for the given formula result identifier  These annotations are only available if a fragmentation tree is available.

### Example


```python
import PySirius
from PySirius.models.annotated_spectrum import AnnotatedSpectrum
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
    api_instance = PySirius.FeaturesApi(api_client)
    project_id = 'project_id_example' # str | project-space to read from.
    aligned_feature_id = 'aligned_feature_id_example' # str | feature (aligned over runs) the formula result belongs to.
    formula_id = 'formula_id_example' # str | identifier of the requested formula result
    spectrum_index = -1 # int | index of the spectrum to be annotated. Merged MS/MS will be used if spectrumIndex < 0 (default) (optional) (default to -1)

    try:
        # Returns a fragmentation spectrum (e.g. Merged MS/MS) which is annotated with fragments and losses for the given formula result identifier  These annotations are only available if a fragmentation tree is available.
        api_response = api_instance.get_formula_annotated_spectrum(project_id, aligned_feature_id, formula_id, spectrum_index=spectrum_index)
        print("The response of FeaturesApi->get_formula_annotated_spectrum:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling FeaturesApi->get_formula_annotated_spectrum: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to read from. | 
 **aligned_feature_id** | **str**| feature (aligned over runs) the formula result belongs to. | 
 **formula_id** | **str**| identifier of the requested formula result | 
 **spectrum_index** | **int**| index of the spectrum to be annotated. Merged MS/MS will be used if spectrumIndex &lt; 0 (default) | [optional] [default to -1]

### Return type

[**AnnotatedSpectrum**](AnnotatedSpectrum.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Fragmentation spectrum annotated with fragment formulas and losses. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_formula_candidate**
> FormulaCandidate get_formula_candidate(project_id, aligned_feature_id, formula_id, opt_fields=opt_fields)

FormulaResultContainers for the given 'formulaId' with minimal information.

FormulaResultContainers for the given 'formulaId' with minimal information.  Can be enriched with an optional results overview and formula candidate information.

### Example


```python
import PySirius
from PySirius.models.formula_candidate import FormulaCandidate
from PySirius.models.formula_candidate_opt_field import FormulaCandidateOptField
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
    api_instance = PySirius.FeaturesApi(api_client)
    project_id = 'project_id_example' # str | project-space to read from.
    aligned_feature_id = 'aligned_feature_id_example' # str | feature (aligned over runs) the formula result belongs to.
    formula_id = 'formula_id_example' # str | identifier of the requested formula result
    opt_fields = [] # List[FormulaCandidateOptField] | set of optional fields to be included. Use 'none' only to override defaults. (optional) (default to [])

    try:
        # FormulaResultContainers for the given 'formulaId' with minimal information.
        api_response = api_instance.get_formula_candidate(project_id, aligned_feature_id, formula_id, opt_fields=opt_fields)
        print("The response of FeaturesApi->get_formula_candidate:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling FeaturesApi->get_formula_candidate: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to read from. | 
 **aligned_feature_id** | **str**| feature (aligned over runs) the formula result belongs to. | 
 **formula_id** | **str**| identifier of the requested formula result | 
 **opt_fields** | [**List[FormulaCandidateOptField]**](FormulaCandidateOptField.md)| set of optional fields to be included. Use &#39;none&#39; only to override defaults. | [optional] [default to []]

### Return type

[**FormulaCandidate**](FormulaCandidate.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | FormulaCandidate of this feature (aligned over runs) with. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_formula_candidates**
> PageFormulaCandidate get_formula_candidates(project_id, aligned_feature_id, page=page, size=size, sort=sort, search_query=search_query, query_syntax=query_syntax, opt_fields=opt_fields)

List of all FormulaResultContainers available for this feature with minimal information.

List of all FormulaResultContainers available for this feature with minimal information.  Can be enriched with an optional results overview.

### Example


```python
import PySirius
from PySirius.models.formula_candidate_opt_field import FormulaCandidateOptField
from PySirius.models.page_formula_candidate import PageFormulaCandidate
from PySirius.models.search_query_type import SearchQueryType
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
    api_instance = PySirius.FeaturesApi(api_client)
    project_id = 'project_id_example' # str | project-space to read from.
    aligned_feature_id = 'aligned_feature_id_example' # str | feature (aligned over runs) the formula result belongs to.
    page = 0 # int | Zero-based page index (0..N) (optional) (default to 0)
    size = 20 # int | The size of the page to be returned (optional) (default to 20)
    sort = ['sort_example'] # List[str] | Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported. (optional)
    search_query = 'search_query_example' # str | optional search query in specified format (optional)
    query_syntax = PySirius.SearchQueryType() # SearchQueryType | query syntax used fpr searchQuery (optional)
    opt_fields = [] # List[FormulaCandidateOptField] | set of optional fields to be included. Use 'none' only to override defaults. (optional) (default to [])

    try:
        # List of all FormulaResultContainers available for this feature with minimal information.
        api_response = api_instance.get_formula_candidates(project_id, aligned_feature_id, page=page, size=size, sort=sort, search_query=search_query, query_syntax=query_syntax, opt_fields=opt_fields)
        print("The response of FeaturesApi->get_formula_candidates:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling FeaturesApi->get_formula_candidates: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to read from. | 
 **aligned_feature_id** | **str**| feature (aligned over runs) the formula result belongs to. | 
 **page** | **int**| Zero-based page index (0..N) | [optional] [default to 0]
 **size** | **int**| The size of the page to be returned | [optional] [default to 20]
 **sort** | [**List[str]**](str.md)| Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] 
 **search_query** | **str**| optional search query in specified format | [optional] 
 **query_syntax** | [**SearchQueryType**](.md)| query syntax used fpr searchQuery | [optional] 
 **opt_fields** | [**List[FormulaCandidateOptField]**](FormulaCandidateOptField.md)| set of optional fields to be included. Use &#39;none&#39; only to override defaults. | [optional] [default to []]

### Return type

[**PageFormulaCandidate**](PageFormulaCandidate.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | All FormulaCandidate of this feature with. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_frag_tree**
> FragmentationTree get_frag_tree(project_id, aligned_feature_id, formula_id)

Returns fragmentation tree (SIRIUS) for the given formula result identifier  This tree is used to rank formula candidates (treeScore).

Returns fragmentation tree (SIRIUS) for the given formula result identifier  This tree is used to rank formula candidates (treeScore).

### Example


```python
import PySirius
from PySirius.models.fragmentation_tree import FragmentationTree
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
    api_instance = PySirius.FeaturesApi(api_client)
    project_id = 'project_id_example' # str | project-space to read from.
    aligned_feature_id = 'aligned_feature_id_example' # str | feature (aligned over runs) the formula result belongs to.
    formula_id = 'formula_id_example' # str | identifier of the requested formula result

    try:
        # Returns fragmentation tree (SIRIUS) for the given formula result identifier  This tree is used to rank formula candidates (treeScore).
        api_response = api_instance.get_frag_tree(project_id, aligned_feature_id, formula_id)
        print("The response of FeaturesApi->get_frag_tree:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling FeaturesApi->get_frag_tree: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to read from. | 
 **aligned_feature_id** | **str**| feature (aligned over runs) the formula result belongs to. | 
 **formula_id** | **str**| identifier of the requested formula result | 

### Return type

[**FragmentationTree**](FragmentationTree.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Fragmentation Tree |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_isotope_pattern_annotation**
> IsotopePatternAnnotation get_isotope_pattern_annotation(project_id, aligned_feature_id, formula_id)

Returns Isotope pattern information (simulated isotope pattern, measured isotope pattern, isotope pattern highlighting)  for the given formula result identifier.

Returns Isotope pattern information (simulated isotope pattern, measured isotope pattern, isotope pattern highlighting)  for the given formula result identifier. This simulated isotope pattern is used to rank formula candidates (treeScore).

### Example


```python
import PySirius
from PySirius.models.isotope_pattern_annotation import IsotopePatternAnnotation
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
    api_instance = PySirius.FeaturesApi(api_client)
    project_id = 'project_id_example' # str | project-space to read from.
    aligned_feature_id = 'aligned_feature_id_example' # str | feature (aligned over runs) the formula result belongs to.
    formula_id = 'formula_id_example' # str | identifier of the requested formula result

    try:
        # Returns Isotope pattern information (simulated isotope pattern, measured isotope pattern, isotope pattern highlighting)  for the given formula result identifier.
        api_response = api_instance.get_isotope_pattern_annotation(project_id, aligned_feature_id, formula_id)
        print("The response of FeaturesApi->get_isotope_pattern_annotation:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling FeaturesApi->get_isotope_pattern_annotation: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to read from. | 
 **aligned_feature_id** | **str**| feature (aligned over runs) the formula result belongs to. | 
 **formula_id** | **str**| identifier of the requested formula result | 

### Return type

[**IsotopePatternAnnotation**](IsotopePatternAnnotation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Isotope pattern information |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_lipid_annotation**
> LipidAnnotation get_lipid_annotation(project_id, aligned_feature_id, formula_id)

Returns Lipid annotation (ElGordo) for the given formula result identifier.

Returns Lipid annotation (ElGordo) for the given formula result identifier.  ElGordo lipid annotation runs as part of the SIRIUS formula identification step.

### Example


```python
import PySirius
from PySirius.models.lipid_annotation import LipidAnnotation
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
    api_instance = PySirius.FeaturesApi(api_client)
    project_id = 'project_id_example' # str | project-space to read from.
    aligned_feature_id = 'aligned_feature_id_example' # str | feature (aligned over runs) the formula result belongs to.
    formula_id = 'formula_id_example' # str | identifier of the requested formula result

    try:
        # Returns Lipid annotation (ElGordo) for the given formula result identifier.
        api_response = api_instance.get_lipid_annotation(project_id, aligned_feature_id, formula_id)
        print("The response of FeaturesApi->get_lipid_annotation:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling FeaturesApi->get_lipid_annotation: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to read from. | 
 **aligned_feature_id** | **str**| feature (aligned over runs) the formula result belongs to. | 
 **formula_id** | **str**| identifier of the requested formula result | 

### Return type

[**LipidAnnotation**](LipidAnnotation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | LipidAnnotation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_ms_data**
> MsData get_ms_data(project_id, aligned_feature_id)

Mass Spec data (input data) for the given 'alignedFeatureId' .

Mass Spec data (input data) for the given 'alignedFeatureId' .

### Example


```python
import PySirius
from PySirius.models.ms_data import MsData
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
    api_instance = PySirius.FeaturesApi(api_client)
    project_id = 'project_id_example' # str | project-space to read from.
    aligned_feature_id = 'aligned_feature_id_example' # str | feature (aligned over runs) the Mass Spec data belong sto.

    try:
        # Mass Spec data (input data) for the given 'alignedFeatureId' .
        api_response = api_instance.get_ms_data(project_id, aligned_feature_id)
        print("The response of FeaturesApi->get_ms_data:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling FeaturesApi->get_ms_data: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to read from. | 
 **aligned_feature_id** | **str**| feature (aligned over runs) the Mass Spec data belong sto. | 

### Return type

[**MsData**](MsData.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Mass Spec data of this feature (aligned over runs). |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_sirius_frag_tree**
> str get_sirius_frag_tree(project_id, aligned_feature_id, formula_id)



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
    api_instance = PySirius.FeaturesApi(api_client)
    project_id = 'project_id_example' # str | 
    aligned_feature_id = 'aligned_feature_id_example' # str | 
    formula_id = 'formula_id_example' # str | 

    try:
        api_response = api_instance.get_sirius_frag_tree(project_id, aligned_feature_id, formula_id)
        print("The response of FeaturesApi->get_sirius_frag_tree:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling FeaturesApi->get_sirius_frag_tree: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**|  | 
 **aligned_feature_id** | **str**|  | 
 **formula_id** | **str**|  | 

### Return type

**str**

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

# **get_structure_annotated_ms_data**
> AnnotatedMsMsData get_structure_annotated_ms_data(project_id, aligned_feature_id, formula_id, inchi_key)

Returns MS/MS Data (Merged MS/MS and list of measured MS/MS ) which are annotated with fragments and losses  for the given formula result identifier and structure candidate inChIKey.

Returns MS/MS Data (Merged MS/MS and list of measured MS/MS ) which are annotated with fragments and losses  for the given formula result identifier and structure candidate inChIKey.  These annotations are only available if a fragmentation tree and the structure candidate are available.

### Example


```python
import PySirius
from PySirius.models.annotated_ms_ms_data import AnnotatedMsMsData
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
    api_instance = PySirius.FeaturesApi(api_client)
    project_id = 'project_id_example' # str | project-space to read from.
    aligned_feature_id = 'aligned_feature_id_example' # str | feature (aligned over runs) the formula result belongs to.
    formula_id = 'formula_id_example' # str | identifier of the requested formula result
    inchi_key = 'inchi_key_example' # str | 2d InChIKey of the structure candidate to be used to annotate the spectrum annotation

    try:
        # Returns MS/MS Data (Merged MS/MS and list of measured MS/MS ) which are annotated with fragments and losses  for the given formula result identifier and structure candidate inChIKey.
        api_response = api_instance.get_structure_annotated_ms_data(project_id, aligned_feature_id, formula_id, inchi_key)
        print("The response of FeaturesApi->get_structure_annotated_ms_data:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling FeaturesApi->get_structure_annotated_ms_data: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to read from. | 
 **aligned_feature_id** | **str**| feature (aligned over runs) the formula result belongs to. | 
 **formula_id** | **str**| identifier of the requested formula result | 
 **inchi_key** | **str**| 2d InChIKey of the structure candidate to be used to annotate the spectrum annotation | 

### Return type

[**AnnotatedMsMsData**](AnnotatedMsMsData.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Fragmentation spectrum annotated with fragments and sub-structures. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_structure_annotated_spectrum**
> AnnotatedSpectrum get_structure_annotated_spectrum(project_id, aligned_feature_id, formula_id, inchi_key, spectrum_index=spectrum_index)

Returns a fragmentation spectrum (e.g. Merged MS/MS) which is annotated with fragments and losses for the given formula result identifier  These annotations are only available if a fragmentation tree is available.

Returns a fragmentation spectrum (e.g. Merged MS/MS) which is annotated with fragments and losses for the given formula result identifier  These annotations are only available if a fragmentation tree is available.

### Example


```python
import PySirius
from PySirius.models.annotated_spectrum import AnnotatedSpectrum
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
    api_instance = PySirius.FeaturesApi(api_client)
    project_id = 'project_id_example' # str | project-space to read from.
    aligned_feature_id = 'aligned_feature_id_example' # str | feature (aligned over runs) the formula result belongs to.
    formula_id = 'formula_id_example' # str | identifier of the requested formula result
    inchi_key = 'inchi_key_example' # str | 2d InChIKey of the structure candidate to be used to annotate the spectrum annotation
    spectrum_index = -1 # int | index of the spectrum to be annotated. Merged MS/MS will be used if spectrumIndex < 0 (default) (optional) (default to -1)

    try:
        # Returns a fragmentation spectrum (e.g. Merged MS/MS) which is annotated with fragments and losses for the given formula result identifier  These annotations are only available if a fragmentation tree is available.
        api_response = api_instance.get_structure_annotated_spectrum(project_id, aligned_feature_id, formula_id, inchi_key, spectrum_index=spectrum_index)
        print("The response of FeaturesApi->get_structure_annotated_spectrum:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling FeaturesApi->get_structure_annotated_spectrum: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to read from. | 
 **aligned_feature_id** | **str**| feature (aligned over runs) the formula result belongs to. | 
 **formula_id** | **str**| identifier of the requested formula result | 
 **inchi_key** | **str**| 2d InChIKey of the structure candidate to be used to annotate the spectrum annotation | 
 **spectrum_index** | **int**| index of the spectrum to be annotated. Merged MS/MS will be used if spectrumIndex &lt; 0 (default) | [optional] [default to -1]

### Return type

[**AnnotatedSpectrum**](AnnotatedSpectrum.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Fragmentation spectrum annotated with fragments and sub-structures. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_structure_candidates**
> PageStructureCandidateFormula get_structure_candidates(project_id, aligned_feature_id, page=page, size=size, sort=sort, search_query=search_query, query_syntax=query_syntax, opt_fields=opt_fields)

List of StructureCandidates for the given 'alignedFeatureId' with minimal information.

List of StructureCandidates for the given 'alignedFeatureId' with minimal information.  StructureCandidates can be enriched with molecular fingerprint, structure database links.

### Example


```python
import PySirius
from PySirius.models.page_structure_candidate_formula import PageStructureCandidateFormula
from PySirius.models.search_query_type import SearchQueryType
from PySirius.models.structure_candidate_opt_field import StructureCandidateOptField
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
    api_instance = PySirius.FeaturesApi(api_client)
    project_id = 'project_id_example' # str | project-space to read from.
    aligned_feature_id = 'aligned_feature_id_example' # str | feature (aligned over runs) the structure candidates belong to.
    page = 0 # int | Zero-based page index (0..N) (optional) (default to 0)
    size = 20 # int | The size of the page to be returned (optional) (default to 20)
    sort = ['sort_example'] # List[str] | Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported. (optional)
    search_query = 'search_query_example' # str | optional search query in specified format (optional)
    query_syntax = PySirius.SearchQueryType() # SearchQueryType | query syntax used fpr searchQuery (optional)
    opt_fields = [] # List[StructureCandidateOptField] | set of optional fields to be included. Use 'none' only to override defaults. (optional) (default to [])

    try:
        # List of StructureCandidates for the given 'alignedFeatureId' with minimal information.
        api_response = api_instance.get_structure_candidates(project_id, aligned_feature_id, page=page, size=size, sort=sort, search_query=search_query, query_syntax=query_syntax, opt_fields=opt_fields)
        print("The response of FeaturesApi->get_structure_candidates:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling FeaturesApi->get_structure_candidates: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to read from. | 
 **aligned_feature_id** | **str**| feature (aligned over runs) the structure candidates belong to. | 
 **page** | **int**| Zero-based page index (0..N) | [optional] [default to 0]
 **size** | **int**| The size of the page to be returned | [optional] [default to 20]
 **sort** | [**List[str]**](str.md)| Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] 
 **search_query** | **str**| optional search query in specified format | [optional] 
 **query_syntax** | [**SearchQueryType**](.md)| query syntax used fpr searchQuery | [optional] 
 **opt_fields** | [**List[StructureCandidateOptField]**](StructureCandidateOptField.md)| set of optional fields to be included. Use &#39;none&#39; only to override defaults. | [optional] [default to []]

### Return type

[**PageStructureCandidateFormula**](PageStructureCandidateFormula.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | StructureCandidate of this feature (aligned over runs) candidate with specified optional fields. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_structure_candidates_by_formula**
> PageStructureCandidateScored get_structure_candidates_by_formula(project_id, aligned_feature_id, formula_id, page=page, size=size, sort=sort, search_query=search_query, query_syntax=query_syntax, opt_fields=opt_fields)

List of StructureCandidates the given 'formulaId' with minimal information.

List of StructureCandidates the given 'formulaId' with minimal information.  StructureCandidates can be enriched with molecular fingerprint, structure database links.

### Example


```python
import PySirius
from PySirius.models.page_structure_candidate_scored import PageStructureCandidateScored
from PySirius.models.search_query_type import SearchQueryType
from PySirius.models.structure_candidate_opt_field import StructureCandidateOptField
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
    api_instance = PySirius.FeaturesApi(api_client)
    project_id = 'project_id_example' # str | project-space to read from.
    aligned_feature_id = 'aligned_feature_id_example' # str | feature (aligned over runs) the formula result belongs to.
    formula_id = 'formula_id_example' # str | identifier of the requested formula result
    page = 0 # int | Zero-based page index (0..N) (optional) (default to 0)
    size = 20 # int | The size of the page to be returned (optional) (default to 20)
    sort = ['sort_example'] # List[str] | Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported. (optional)
    search_query = 'search_query_example' # str | optional search query in specified format (optional)
    query_syntax = PySirius.SearchQueryType() # SearchQueryType | query syntax used fpr searchQuery (optional)
    opt_fields = [] # List[StructureCandidateOptField] | set of optional fields to be included. Use 'none' only to override defaults. (optional) (default to [])

    try:
        # List of StructureCandidates the given 'formulaId' with minimal information.
        api_response = api_instance.get_structure_candidates_by_formula(project_id, aligned_feature_id, formula_id, page=page, size=size, sort=sort, search_query=search_query, query_syntax=query_syntax, opt_fields=opt_fields)
        print("The response of FeaturesApi->get_structure_candidates_by_formula:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling FeaturesApi->get_structure_candidates_by_formula: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to read from. | 
 **aligned_feature_id** | **str**| feature (aligned over runs) the formula result belongs to. | 
 **formula_id** | **str**| identifier of the requested formula result | 
 **page** | **int**| Zero-based page index (0..N) | [optional] [default to 0]
 **size** | **int**| The size of the page to be returned | [optional] [default to 20]
 **sort** | [**List[str]**](str.md)| Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] 
 **search_query** | **str**| optional search query in specified format | [optional] 
 **query_syntax** | [**SearchQueryType**](.md)| query syntax used fpr searchQuery | [optional] 
 **opt_fields** | [**List[StructureCandidateOptField]**](StructureCandidateOptField.md)| set of optional fields to be included. Use &#39;none&#39; only to override defaults. | [optional] [default to []]

### Return type

[**PageStructureCandidateScored**](PageStructureCandidateScored.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | StructureCandidate of this formula candidate with specified optional fields. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
