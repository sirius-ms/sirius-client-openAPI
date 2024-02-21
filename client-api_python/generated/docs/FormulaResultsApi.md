# PySirius.FormulaResultsApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_best_matching_canopus_predictions**](FormulaResultsApi.md#get_best_matching_canopus_predictions) | **GET** /api/projects/{projectId}/compounds/{compoundId}/formulas/{formulaId}/best-canopus-predictions | Best matching compound classes,  Set of the highest scoring compound classes CANOPUS) on each hierarchy level of  the ClassyFire and NPC ontology,
[**get_canopus_predictions**](FormulaResultsApi.md#get_canopus_predictions) | **GET** /api/projects/{projectId}/compounds/{compoundId}/formulas/{formulaId}/canopus-predictions | All predicted compound classes (CANOPUS) from ClassyFire and NPC and their probabilities,
[**get_fingerprint_prediction**](FormulaResultsApi.md#get_fingerprint_prediction) | **GET** /api/projects/{projectId}/compounds/{compoundId}/formulas/{formulaId}/fingerprint | Returns predicted fingerprint (CSI:FingerID) for the given formula result identifier  This fingerprint is used to perfom structure database search and predict compound classes.
[**get_formula_ids**](FormulaResultsApi.md#get_formula_ids) | **GET** /api/projects/{projectId}/compounds/{compoundId}/formulas | List of all FormulaResultContainers available for this compound/feature with minimal information.
[**get_formula_result**](FormulaResultsApi.md#get_formula_result) | **GET** /api/projects/{projectId}/compounds/{compoundId}/formulas/{formulaId} | FormulaResultContainers for the given &#39;formulaId&#39; with minimal information.
[**get_frag_tree**](FormulaResultsApi.md#get_frag_tree) | **GET** /api/projects/{projectId}/compounds/{compoundId}/formulas/{formulaId}/tree | Returns fragmentation tree (SIRIUS) for the given formula result identifier  This tree is used to rank formula candidates (treeScore).
[**get_simulated_isotope_pattern**](FormulaResultsApi.md#get_simulated_isotope_pattern) | **GET** /api/projects/{projectId}/compounds/{compoundId}/formulas/{formulaId}/isotope-pattern | Returns simulated isotope pattern (SIRIUS) for the given formula result identifier.
[**get_structure_candidates**](FormulaResultsApi.md#get_structure_candidates) | **GET** /api/projects/{projectId}/compounds/{compoundId}/formulas/{formulaId}/structures | List of StructureCandidates the given &#39;formulaId&#39; with minimal information.
[**get_top_structure_candidate**](FormulaResultsApi.md#get_top_structure_candidate) | **GET** /api/projects/{projectId}/compounds/{compoundId}/top-structure | Best Scoring StructureCandidate over all molecular formular resutls that belong to the specified  compound/feature (compoundId).


# **get_best_matching_canopus_predictions**
> CompoundClasses get_best_matching_canopus_predictions(project_id, compound_id, formula_id)

Best matching compound classes,  Set of the highest scoring compound classes CANOPUS) on each hierarchy level of  the ClassyFire and NPC ontology,

Best matching compound classes,  Set of the highest scoring compound classes CANOPUS) on each hierarchy level of  the ClassyFire and NPC ontology,

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
    api_instance = PySirius.FormulaResultsApi(api_client)
    project_id = 'project_id_example' # str | project-space to read from.
    compound_id = 'compound_id_example' # str | compound/feature the formula result belongs to.
    formula_id = 'formula_id_example' # str | identifier of the requested formula result

    try:
        # Best matching compound classes,  Set of the highest scoring compound classes CANOPUS) on each hierarchy level of  the ClassyFire and NPC ontology,
        api_response = api_instance.get_best_matching_canopus_predictions(project_id, compound_id, formula_id)
        print("The response of FormulaResultsApi->get_best_matching_canopus_predictions:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling FormulaResultsApi->get_best_matching_canopus_predictions: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to read from. | 
 **compound_id** | **str**| compound/feature the formula result belongs to. | 
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

# **get_canopus_predictions**
> CanopusPredictions get_canopus_predictions(project_id, compound_id, formula_id)

All predicted compound classes (CANOPUS) from ClassyFire and NPC and their probabilities,

All predicted compound classes (CANOPUS) from ClassyFire and NPC and their probabilities,

### Example


```python
import PySirius
from PySirius.models.canopus_predictions import CanopusPredictions
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
    api_instance = PySirius.FormulaResultsApi(api_client)
    project_id = 'project_id_example' # str | project-space to read from.
    compound_id = 'compound_id_example' # str | compound/feature the formula result belongs to.
    formula_id = 'formula_id_example' # str | identifier of the requested formula result

    try:
        # All predicted compound classes (CANOPUS) from ClassyFire and NPC and their probabilities,
        api_response = api_instance.get_canopus_predictions(project_id, compound_id, formula_id)
        print("The response of FormulaResultsApi->get_canopus_predictions:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling FormulaResultsApi->get_canopus_predictions: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to read from. | 
 **compound_id** | **str**| compound/feature the formula result belongs to. | 
 **formula_id** | **str**| identifier of the requested formula result | 

### Return type

[**CanopusPredictions**](CanopusPredictions.md)

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
> List[float] get_fingerprint_prediction(project_id, compound_id, formula_id)

Returns predicted fingerprint (CSI:FingerID) for the given formula result identifier  This fingerprint is used to perfom structure database search and predict compound classes.

Returns predicted fingerprint (CSI:FingerID) for the given formula result identifier  This fingerprint is used to perfom structure database search and predict compound classes.

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
    api_instance = PySirius.FormulaResultsApi(api_client)
    project_id = 'project_id_example' # str | project-space to read from.
    compound_id = 'compound_id_example' # str | compound/feature the formula result belongs to.
    formula_id = 'formula_id_example' # str | identifier of the requested formula result

    try:
        # Returns predicted fingerprint (CSI:FingerID) for the given formula result identifier  This fingerprint is used to perfom structure database search and predict compound classes.
        api_response = api_instance.get_fingerprint_prediction(project_id, compound_id, formula_id)
        print("The response of FormulaResultsApi->get_fingerprint_prediction:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling FormulaResultsApi->get_fingerprint_prediction: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to read from. | 
 **compound_id** | **str**| compound/feature the formula result belongs to. | 
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

# **get_formula_ids**
> List[FormulaResultContainer] get_formula_ids(project_id, compound_id, result_overview=result_overview, formula_candidate=formula_candidate)

List of all FormulaResultContainers available for this compound/feature with minimal information.

List of all FormulaResultContainers available for this compound/feature with minimal information.  Can be enriched with an optional results overview.

### Example


```python
import PySirius
from PySirius.models.formula_result_container import FormulaResultContainer
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
    api_instance = PySirius.FormulaResultsApi(api_client)
    project_id = 'project_id_example' # str | project-space to read from.
    compound_id = 'compound_id_example' # str | compound/feature the formula result belongs to.
    result_overview = True # bool | add ResultOverview to the FormulaResultContainers (optional) (default to True)
    formula_candidate = False # bool | add extended formula candidate information to the FormulaResultContainers (optional) (default to False)

    try:
        # List of all FormulaResultContainers available for this compound/feature with minimal information.
        api_response = api_instance.get_formula_ids(project_id, compound_id, result_overview=result_overview, formula_candidate=formula_candidate)
        print("The response of FormulaResultsApi->get_formula_ids:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling FormulaResultsApi->get_formula_ids: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to read from. | 
 **compound_id** | **str**| compound/feature the formula result belongs to. | 
 **result_overview** | **bool**| add ResultOverview to the FormulaResultContainers | [optional] [default to True]
 **formula_candidate** | **bool**| add extended formula candidate information to the FormulaResultContainers | [optional] [default to False]

### Return type

[**List[FormulaResultContainer]**](FormulaResultContainer.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | All FormulaResultContainers of this compound/feature with. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_formula_result**
> FormulaResultContainer get_formula_result(project_id, compound_id, formula_id, result_overview=result_overview, formula_candidate=formula_candidate)

FormulaResultContainers for the given 'formulaId' with minimal information.

FormulaResultContainers for the given 'formulaId' with minimal information.  Can be enriched with an optional results overview and formula candidate information.

### Example


```python
import PySirius
from PySirius.models.formula_result_container import FormulaResultContainer
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
    api_instance = PySirius.FormulaResultsApi(api_client)
    project_id = 'project_id_example' # str | project-space to read from.
    compound_id = 'compound_id_example' # str | compound/feature the formula result belongs to.
    formula_id = 'formula_id_example' # str | identifier of the requested formula result
    result_overview = True # bool | add ResultOverview to the FormulaResultContainer (optional) (default to True)
    formula_candidate = True # bool | add extended formula candidate information to the FormulaResultContainer (optional) (default to True)

    try:
        # FormulaResultContainers for the given 'formulaId' with minimal information.
        api_response = api_instance.get_formula_result(project_id, compound_id, formula_id, result_overview=result_overview, formula_candidate=formula_candidate)
        print("The response of FormulaResultsApi->get_formula_result:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling FormulaResultsApi->get_formula_result: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to read from. | 
 **compound_id** | **str**| compound/feature the formula result belongs to. | 
 **formula_id** | **str**| identifier of the requested formula result | 
 **result_overview** | **bool**| add ResultOverview to the FormulaResultContainer | [optional] [default to True]
 **formula_candidate** | **bool**| add extended formula candidate information to the FormulaResultContainer | [optional] [default to True]

### Return type

[**FormulaResultContainer**](FormulaResultContainer.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | FormulaResultContainers of this compound/feature with. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_frag_tree**
> FragmentationTree get_frag_tree(project_id, compound_id, formula_id)

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
    api_instance = PySirius.FormulaResultsApi(api_client)
    project_id = 'project_id_example' # str | project-space to read from.
    compound_id = 'compound_id_example' # str | compound/feature the formula result belongs to.
    formula_id = 'formula_id_example' # str | identifier of the requested formula result

    try:
        # Returns fragmentation tree (SIRIUS) for the given formula result identifier  This tree is used to rank formula candidates (treeScore).
        api_response = api_instance.get_frag_tree(project_id, compound_id, formula_id)
        print("The response of FormulaResultsApi->get_frag_tree:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling FormulaResultsApi->get_frag_tree: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to read from. | 
 **compound_id** | **str**| compound/feature the formula result belongs to. | 
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

# **get_simulated_isotope_pattern**
> AnnotatedSpectrum get_simulated_isotope_pattern(project_id, compound_id, formula_id)

Returns simulated isotope pattern (SIRIUS) for the given formula result identifier.

Returns simulated isotope pattern (SIRIUS) for the given formula result identifier.  This simulated isotope pattern is used to rank formula candidates (treeScore).

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
    api_instance = PySirius.FormulaResultsApi(api_client)
    project_id = 'project_id_example' # str | project-space to read from.
    compound_id = 'compound_id_example' # str | compound/feature the formula result belongs to.
    formula_id = 'formula_id_example' # str | identifier of the requested formula result

    try:
        # Returns simulated isotope pattern (SIRIUS) for the given formula result identifier.
        api_response = api_instance.get_simulated_isotope_pattern(project_id, compound_id, formula_id)
        print("The response of FormulaResultsApi->get_simulated_isotope_pattern:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling FormulaResultsApi->get_simulated_isotope_pattern: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to read from. | 
 **compound_id** | **str**| compound/feature the formula result belongs to. | 
 **formula_id** | **str**| identifier of the requested formula result | 

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
**200** | Simulated isotope pattern |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_structure_candidates**
> List[StructureCandidate] get_structure_candidates(project_id, compound_id, formula_id, fingerprint=fingerprint, db_links=db_links, pub_med_ids=pub_med_ids, top_k=top_k)

List of StructureCandidates the given 'formulaId' with minimal information.

List of StructureCandidates the given 'formulaId' with minimal information.  StructureCandidates can be enriched with molecular fingerprint, structure database links and pubmed ids,

### Example


```python
import PySirius
from PySirius.models.structure_candidate import StructureCandidate
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
    api_instance = PySirius.FormulaResultsApi(api_client)
    project_id = 'project_id_example' # str | project-space to read from.
    compound_id = 'compound_id_example' # str | compound/feature the formula result belongs to.
    formula_id = 'formula_id_example' # str | identifier of the requested formula result
    fingerprint = False # bool | add molecular fingerprint to StructureCandidates (optional) (default to False)
    db_links = False # bool | add dbLinks to StructureCandidates (optional) (default to False)
    pub_med_ids = False # bool | add PubMedIds (citation count) to StructureCandidates (optional) (default to False)
    top_k = -1 # int | retrieve only the top k StructureCandidates (optional) (default to -1)

    try:
        # List of StructureCandidates the given 'formulaId' with minimal information.
        api_response = api_instance.get_structure_candidates(project_id, compound_id, formula_id, fingerprint=fingerprint, db_links=db_links, pub_med_ids=pub_med_ids, top_k=top_k)
        print("The response of FormulaResultsApi->get_structure_candidates:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling FormulaResultsApi->get_structure_candidates: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to read from. | 
 **compound_id** | **str**| compound/feature the formula result belongs to. | 
 **formula_id** | **str**| identifier of the requested formula result | 
 **fingerprint** | **bool**| add molecular fingerprint to StructureCandidates | [optional] [default to False]
 **db_links** | **bool**| add dbLinks to StructureCandidates | [optional] [default to False]
 **pub_med_ids** | **bool**| add PubMedIds (citation count) to StructureCandidates | [optional] [default to False]
 **top_k** | **int**| retrieve only the top k StructureCandidates | [optional] [default to -1]

### Return type

[**List[StructureCandidate]**](StructureCandidate.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | FormulaResultContainers of this compound/feature with specified extensions. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_top_structure_candidate**
> StructureCandidate get_top_structure_candidate(project_id, compound_id, fingerprint=fingerprint, db_links=db_links, pub_med_ids=pub_med_ids)

Best Scoring StructureCandidate over all molecular formular resutls that belong to the specified  compound/feature (compoundId).

Best Scoring StructureCandidate over all molecular formular resutls that belong to the specified  compound/feature (compoundId).

### Example


```python
import PySirius
from PySirius.models.structure_candidate import StructureCandidate
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
    api_instance = PySirius.FormulaResultsApi(api_client)
    project_id = 'project_id_example' # str | project-space to read from.
    compound_id = 'compound_id_example' # str | compound/feature the formula result belongs to.
    fingerprint = False # bool | add molecular fingerprint to StructureCandidates (optional) (default to False)
    db_links = False # bool | add dbLinks to StructureCandidates (optional) (default to False)
    pub_med_ids = False # bool | add PubMedIds (citation count) to StructureCandidates (optional) (default to False)

    try:
        # Best Scoring StructureCandidate over all molecular formular resutls that belong to the specified  compound/feature (compoundId).
        api_response = api_instance.get_top_structure_candidate(project_id, compound_id, fingerprint=fingerprint, db_links=db_links, pub_med_ids=pub_med_ids)
        print("The response of FormulaResultsApi->get_top_structure_candidate:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling FormulaResultsApi->get_top_structure_candidate: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **str**| project-space to read from. | 
 **compound_id** | **str**| compound/feature the formula result belongs to. | 
 **fingerprint** | **bool**| add molecular fingerprint to StructureCandidates | [optional] [default to False]
 **db_links** | **bool**| add dbLinks to StructureCandidates | [optional] [default to False]
 **pub_med_ids** | **bool**| add PubMedIds (citation count) to StructureCandidates | [optional] [default to False]

### Return type

[**StructureCandidate**](StructureCandidate.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Best scoring FormulaResultContainers of this compound/feature with specified extensions. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

