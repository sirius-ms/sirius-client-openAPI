<a name="__pageTop"></a>
# PySirius.apis.tags.formula_results_api.FormulaResultsApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_best_matching_canopus_predictions**](#get_best_matching_canopus_predictions) | **get** /api/projects/{projectId}/compounds/{compoundId}/formulas/{formulaId}/best-canopus-predictions | Best matching compound classes,  Set of the highest scoring compound classes CANOPUS) on each hierarchy level of  the ClassyFire and NPC ontology,
[**get_canopus_predictions**](#get_canopus_predictions) | **get** /api/projects/{projectId}/compounds/{compoundId}/formulas/{formulaId}/canopus-predictions | All predicted compound classes (CANOPUS) from ClassyFire and NPC and their probabilities,
[**get_fingerprint_prediction**](#get_fingerprint_prediction) | **get** /api/projects/{projectId}/compounds/{compoundId}/formulas/{formulaId}/fingerprint | Returns predicted fingerprint (CSI:FingerID) for the given formula result identifier  This fingerprint is used to perfom structure database search and predict compound classes.
[**get_formula_ids**](#get_formula_ids) | **get** /api/projects/{projectId}/compounds/{compoundId}/formulas | List of all FormulaResultContainers available for this compound/feature with minimal information.
[**get_formula_result**](#get_formula_result) | **get** /api/projects/{projectId}/compounds/{compoundId}/formulas/{formulaId} | FormulaResultContainers for the given &#x27;formulaId&#x27; with minimal information.
[**get_frag_tree**](#get_frag_tree) | **get** /api/projects/{projectId}/compounds/{compoundId}/formulas/{formulaId}/tree | Returns fragmentation tree (SIRIUS) for the given formula result identifier  This tree is used to rank formula candidates (treeScore).
[**get_simulated_isotope_pattern**](#get_simulated_isotope_pattern) | **get** /api/projects/{projectId}/compounds/{compoundId}/formulas/{formulaId}/isotope-pattern | Returns simulated isotope pattern (SIRIUS) for the given formula result identifier.
[**get_structure_candidates**](#get_structure_candidates) | **get** /api/projects/{projectId}/compounds/{compoundId}/formulas/{formulaId}/structures | List of StructureCandidates the given &#x27;formulaId&#x27; with minimal information.
[**get_top_structure_candidate**](#get_top_structure_candidate) | **get** /api/projects/{projectId}/compounds/{compoundId}/top-structure | Best Scoring StructureCandidate over all molecular formular resutls that belong to the specified  compound/feature (compoundId).

# **get_best_matching_canopus_predictions**
<a name="get_best_matching_canopus_predictions"></a>
> CompoundClasses get_best_matching_canopus_predictions(project_idcompound_idformula_id)

Best matching compound classes,  Set of the highest scoring compound classes CANOPUS) on each hierarchy level of  the ClassyFire and NPC ontology,

Best matching compound classes,  Set of the highest scoring compound classes CANOPUS) on each hierarchy level of  the ClassyFire and NPC ontology,

### Example

```python
import PySirius
from PySirius.apis.tags import formula_results_api
from PySirius.model.compound_classes import CompoundClasses
from pprint import pprint
# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8080"
)

# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = formula_results_api.FormulaResultsApi(api_client)

    # example passing only required values which don't have defaults set
    path_params = {
        'projectId': "projectId_example",
        'compoundId': "compoundId_example",
        'formulaId': "formulaId_example",
    }
    try:
        # Best matching compound classes,  Set of the highest scoring compound classes CANOPUS) on each hierarchy level of  the ClassyFire and NPC ontology,
        api_response = api_instance.get_best_matching_canopus_predictions(
            path_params=path_params,
        )
        pprint(api_response)
    except PySirius.ApiException as e:
        print("Exception when calling FormulaResultsApi->get_best_matching_canopus_predictions: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
path_params | RequestPathParams | |
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### path_params
#### RequestPathParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
projectId | ProjectIdSchema | | 
compoundId | CompoundIdSchema | | 
formulaId | FormulaIdSchema | | 

# ProjectIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# CompoundIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# FormulaIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#get_best_matching_canopus_predictions.ApiResponseFor200) | Best matching Predicted compound classes

#### get_best_matching_canopus_predictions.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**CompoundClasses**](../../models/CompoundClasses.md) |  | 


### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **get_canopus_predictions**
<a name="get_canopus_predictions"></a>
> CanopusPredictions get_canopus_predictions(project_idcompound_idformula_id)

All predicted compound classes (CANOPUS) from ClassyFire and NPC and their probabilities,

All predicted compound classes (CANOPUS) from ClassyFire and NPC and their probabilities,

### Example

```python
import PySirius
from PySirius.apis.tags import formula_results_api
from PySirius.model.canopus_predictions import CanopusPredictions
from pprint import pprint
# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8080"
)

# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = formula_results_api.FormulaResultsApi(api_client)

    # example passing only required values which don't have defaults set
    path_params = {
        'projectId': "projectId_example",
        'compoundId': "compoundId_example",
        'formulaId': "formulaId_example",
    }
    try:
        # All predicted compound classes (CANOPUS) from ClassyFire and NPC and their probabilities,
        api_response = api_instance.get_canopus_predictions(
            path_params=path_params,
        )
        pprint(api_response)
    except PySirius.ApiException as e:
        print("Exception when calling FormulaResultsApi->get_canopus_predictions: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
path_params | RequestPathParams | |
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### path_params
#### RequestPathParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
projectId | ProjectIdSchema | | 
compoundId | CompoundIdSchema | | 
formulaId | FormulaIdSchema | | 

# ProjectIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# CompoundIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# FormulaIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#get_canopus_predictions.ApiResponseFor200) | Predicted compound classes

#### get_canopus_predictions.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**CanopusPredictions**](../../models/CanopusPredictions.md) |  | 


### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **get_fingerprint_prediction**
<a name="get_fingerprint_prediction"></a>
> [int, float] get_fingerprint_prediction(project_idcompound_idformula_id)

Returns predicted fingerprint (CSI:FingerID) for the given formula result identifier  This fingerprint is used to perfom structure database search and predict compound classes.

Returns predicted fingerprint (CSI:FingerID) for the given formula result identifier  This fingerprint is used to perfom structure database search and predict compound classes.

### Example

```python
import PySirius
from PySirius.apis.tags import formula_results_api
from pprint import pprint
# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8080"
)

# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = formula_results_api.FormulaResultsApi(api_client)

    # example passing only required values which don't have defaults set
    path_params = {
        'projectId': "projectId_example",
        'compoundId': "compoundId_example",
        'formulaId': "formulaId_example",
    }
    try:
        # Returns predicted fingerprint (CSI:FingerID) for the given formula result identifier  This fingerprint is used to perfom structure database search and predict compound classes.
        api_response = api_instance.get_fingerprint_prediction(
            path_params=path_params,
        )
        pprint(api_response)
    except PySirius.ApiException as e:
        print("Exception when calling FormulaResultsApi->get_fingerprint_prediction: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
path_params | RequestPathParams | |
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### path_params
#### RequestPathParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
projectId | ProjectIdSchema | | 
compoundId | CompoundIdSchema | | 
formulaId | FormulaIdSchema | | 

# ProjectIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# CompoundIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# FormulaIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#get_fingerprint_prediction.ApiResponseFor200) | probabilistic fingerprint predicted by CSI:FingerID

#### get_fingerprint_prediction.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
items | decimal.Decimal, int, float,  | decimal.Decimal,  |  | value must be a 64 bit float

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **get_formula_ids**
<a name="get_formula_ids"></a>
> [FormulaResultContainer] get_formula_ids(project_idcompound_id)

List of all FormulaResultContainers available for this compound/feature with minimal information.

List of all FormulaResultContainers available for this compound/feature with minimal information.  Can be enriched with an optional results overview.

### Example

```python
import PySirius
from PySirius.apis.tags import formula_results_api
from PySirius.model.formula_result_container import FormulaResultContainer
from pprint import pprint
# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8080"
)

# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = formula_results_api.FormulaResultsApi(api_client)

    # example passing only required values which don't have defaults set
    path_params = {
        'projectId': "projectId_example",
        'compoundId': "compoundId_example",
    }
    query_params = {
    }
    try:
        # List of all FormulaResultContainers available for this compound/feature with minimal information.
        api_response = api_instance.get_formula_ids(
            path_params=path_params,
            query_params=query_params,
        )
        pprint(api_response)
    except PySirius.ApiException as e:
        print("Exception when calling FormulaResultsApi->get_formula_ids: %s\n" % e)

    # example passing only optional values
    path_params = {
        'projectId': "projectId_example",
        'compoundId': "compoundId_example",
    }
    query_params = {
        'resultOverview': True,
        'formulaCandidate': False,
    }
    try:
        # List of all FormulaResultContainers available for this compound/feature with minimal information.
        api_response = api_instance.get_formula_ids(
            path_params=path_params,
            query_params=query_params,
        )
        pprint(api_response)
    except PySirius.ApiException as e:
        print("Exception when calling FormulaResultsApi->get_formula_ids: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
path_params | RequestPathParams | |
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
resultOverview | ResultOverviewSchema | | optional
formulaCandidate | FormulaCandidateSchema | | optional


# ResultOverviewSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
bool,  | BoolClass,  |  | if omitted the server will use the default value of True

# FormulaCandidateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
bool,  | BoolClass,  |  | if omitted the server will use the default value of False

### path_params
#### RequestPathParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
projectId | ProjectIdSchema | | 
compoundId | CompoundIdSchema | | 

# ProjectIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# CompoundIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#get_formula_ids.ApiResponseFor200) | All FormulaResultContainers of this compound/feature with.

#### get_formula_ids.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**FormulaResultContainer**]({{complexTypePrefix}}FormulaResultContainer.md) | [**FormulaResultContainer**]({{complexTypePrefix}}FormulaResultContainer.md) | [**FormulaResultContainer**]({{complexTypePrefix}}FormulaResultContainer.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **get_formula_result**
<a name="get_formula_result"></a>
> FormulaResultContainer get_formula_result(project_idcompound_idformula_id)

FormulaResultContainers for the given 'formulaId' with minimal information.

FormulaResultContainers for the given 'formulaId' with minimal information.  Can be enriched with an optional results overview and formula candidate information.

### Example

```python
import PySirius
from PySirius.apis.tags import formula_results_api
from PySirius.model.formula_result_container import FormulaResultContainer
from pprint import pprint
# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8080"
)

# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = formula_results_api.FormulaResultsApi(api_client)

    # example passing only required values which don't have defaults set
    path_params = {
        'projectId': "projectId_example",
        'compoundId': "compoundId_example",
        'formulaId': "formulaId_example",
    }
    query_params = {
    }
    try:
        # FormulaResultContainers for the given 'formulaId' with minimal information.
        api_response = api_instance.get_formula_result(
            path_params=path_params,
            query_params=query_params,
        )
        pprint(api_response)
    except PySirius.ApiException as e:
        print("Exception when calling FormulaResultsApi->get_formula_result: %s\n" % e)

    # example passing only optional values
    path_params = {
        'projectId': "projectId_example",
        'compoundId': "compoundId_example",
        'formulaId': "formulaId_example",
    }
    query_params = {
        'resultOverview': True,
        'formulaCandidate': True,
    }
    try:
        # FormulaResultContainers for the given 'formulaId' with minimal information.
        api_response = api_instance.get_formula_result(
            path_params=path_params,
            query_params=query_params,
        )
        pprint(api_response)
    except PySirius.ApiException as e:
        print("Exception when calling FormulaResultsApi->get_formula_result: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
path_params | RequestPathParams | |
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
resultOverview | ResultOverviewSchema | | optional
formulaCandidate | FormulaCandidateSchema | | optional


# ResultOverviewSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
bool,  | BoolClass,  |  | if omitted the server will use the default value of True

# FormulaCandidateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
bool,  | BoolClass,  |  | if omitted the server will use the default value of True

### path_params
#### RequestPathParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
projectId | ProjectIdSchema | | 
compoundId | CompoundIdSchema | | 
formulaId | FormulaIdSchema | | 

# ProjectIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# CompoundIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# FormulaIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#get_formula_result.ApiResponseFor200) | FormulaResultContainers of this compound/feature with.

#### get_formula_result.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**FormulaResultContainer**](../../models/FormulaResultContainer.md) |  | 


### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **get_frag_tree**
<a name="get_frag_tree"></a>
> FragmentationTree get_frag_tree(project_idcompound_idformula_id)

Returns fragmentation tree (SIRIUS) for the given formula result identifier  This tree is used to rank formula candidates (treeScore).

Returns fragmentation tree (SIRIUS) for the given formula result identifier  This tree is used to rank formula candidates (treeScore).

### Example

```python
import PySirius
from PySirius.apis.tags import formula_results_api
from PySirius.model.fragmentation_tree import FragmentationTree
from pprint import pprint
# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8080"
)

# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = formula_results_api.FormulaResultsApi(api_client)

    # example passing only required values which don't have defaults set
    path_params = {
        'projectId': "projectId_example",
        'compoundId': "compoundId_example",
        'formulaId': "formulaId_example",
    }
    try:
        # Returns fragmentation tree (SIRIUS) for the given formula result identifier  This tree is used to rank formula candidates (treeScore).
        api_response = api_instance.get_frag_tree(
            path_params=path_params,
        )
        pprint(api_response)
    except PySirius.ApiException as e:
        print("Exception when calling FormulaResultsApi->get_frag_tree: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
path_params | RequestPathParams | |
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### path_params
#### RequestPathParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
projectId | ProjectIdSchema | | 
compoundId | CompoundIdSchema | | 
formulaId | FormulaIdSchema | | 

# ProjectIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# CompoundIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# FormulaIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#get_frag_tree.ApiResponseFor200) | Fragmentation Tree

#### get_frag_tree.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**FragmentationTree**](../../models/FragmentationTree.md) |  | 


### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **get_simulated_isotope_pattern**
<a name="get_simulated_isotope_pattern"></a>
> AnnotatedSpectrum get_simulated_isotope_pattern(project_idcompound_idformula_id)

Returns simulated isotope pattern (SIRIUS) for the given formula result identifier.

Returns simulated isotope pattern (SIRIUS) for the given formula result identifier.  This simulated isotope pattern is used to rank formula candidates (treeScore).

### Example

```python
import PySirius
from PySirius.apis.tags import formula_results_api
from PySirius.model.annotated_spectrum import AnnotatedSpectrum
from pprint import pprint
# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8080"
)

# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = formula_results_api.FormulaResultsApi(api_client)

    # example passing only required values which don't have defaults set
    path_params = {
        'projectId': "projectId_example",
        'compoundId': "compoundId_example",
        'formulaId': "formulaId_example",
    }
    try:
        # Returns simulated isotope pattern (SIRIUS) for the given formula result identifier.
        api_response = api_instance.get_simulated_isotope_pattern(
            path_params=path_params,
        )
        pprint(api_response)
    except PySirius.ApiException as e:
        print("Exception when calling FormulaResultsApi->get_simulated_isotope_pattern: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
path_params | RequestPathParams | |
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### path_params
#### RequestPathParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
projectId | ProjectIdSchema | | 
compoundId | CompoundIdSchema | | 
formulaId | FormulaIdSchema | | 

# ProjectIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# CompoundIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# FormulaIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#get_simulated_isotope_pattern.ApiResponseFor200) | Simulated isotope pattern

#### get_simulated_isotope_pattern.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**AnnotatedSpectrum**](../../models/AnnotatedSpectrum.md) |  | 


### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **get_structure_candidates**
<a name="get_structure_candidates"></a>
> [StructureCandidate] get_structure_candidates(project_idcompound_idformula_id)

List of StructureCandidates the given 'formulaId' with minimal information.

List of StructureCandidates the given 'formulaId' with minimal information.  StructureCandidates can be enriched with molecular fingerprint, structure database links and pubmed ids,

### Example

```python
import PySirius
from PySirius.apis.tags import formula_results_api
from PySirius.model.structure_candidate import StructureCandidate
from pprint import pprint
# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8080"
)

# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = formula_results_api.FormulaResultsApi(api_client)

    # example passing only required values which don't have defaults set
    path_params = {
        'projectId': "projectId_example",
        'compoundId': "compoundId_example",
        'formulaId': "formulaId_example",
    }
    query_params = {
    }
    try:
        # List of StructureCandidates the given 'formulaId' with minimal information.
        api_response = api_instance.get_structure_candidates(
            path_params=path_params,
            query_params=query_params,
        )
        pprint(api_response)
    except PySirius.ApiException as e:
        print("Exception when calling FormulaResultsApi->get_structure_candidates: %s\n" % e)

    # example passing only optional values
    path_params = {
        'projectId': "projectId_example",
        'compoundId': "compoundId_example",
        'formulaId': "formulaId_example",
    }
    query_params = {
        'fingerprint': False,
        'dbLinks': False,
        'pubMedIds': False,
        'topK': -1,
    }
    try:
        # List of StructureCandidates the given 'formulaId' with minimal information.
        api_response = api_instance.get_structure_candidates(
            path_params=path_params,
            query_params=query_params,
        )
        pprint(api_response)
    except PySirius.ApiException as e:
        print("Exception when calling FormulaResultsApi->get_structure_candidates: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
path_params | RequestPathParams | |
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
fingerprint | FingerprintSchema | | optional
dbLinks | DbLinksSchema | | optional
pubMedIds | PubMedIdsSchema | | optional
topK | TopKSchema | | optional


# FingerprintSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
bool,  | BoolClass,  |  | if omitted the server will use the default value of False

# DbLinksSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
bool,  | BoolClass,  |  | if omitted the server will use the default value of False

# PubMedIdsSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
bool,  | BoolClass,  |  | if omitted the server will use the default value of False

# TopKSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | if omitted the server will use the default value of -1value must be a 32 bit integer

### path_params
#### RequestPathParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
projectId | ProjectIdSchema | | 
compoundId | CompoundIdSchema | | 
formulaId | FormulaIdSchema | | 

# ProjectIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# CompoundIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# FormulaIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#get_structure_candidates.ApiResponseFor200) | FormulaResultContainers of this compound/feature with specified extensions.

#### get_structure_candidates.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**StructureCandidate**]({{complexTypePrefix}}StructureCandidate.md) | [**StructureCandidate**]({{complexTypePrefix}}StructureCandidate.md) | [**StructureCandidate**]({{complexTypePrefix}}StructureCandidate.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **get_top_structure_candidate**
<a name="get_top_structure_candidate"></a>
> StructureCandidate get_top_structure_candidate(project_idcompound_id)

Best Scoring StructureCandidate over all molecular formular resutls that belong to the specified  compound/feature (compoundId).

Best Scoring StructureCandidate over all molecular formular resutls that belong to the specified  compound/feature (compoundId).

### Example

```python
import PySirius
from PySirius.apis.tags import formula_results_api
from PySirius.model.structure_candidate import StructureCandidate
from pprint import pprint
# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = PySirius.Configuration(
    host = "http://localhost:8080"
)

# Enter a context with an instance of the API client
with PySirius.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = formula_results_api.FormulaResultsApi(api_client)

    # example passing only required values which don't have defaults set
    path_params = {
        'projectId': "projectId_example",
        'compoundId': "compoundId_example",
    }
    query_params = {
    }
    try:
        # Best Scoring StructureCandidate over all molecular formular resutls that belong to the specified  compound/feature (compoundId).
        api_response = api_instance.get_top_structure_candidate(
            path_params=path_params,
            query_params=query_params,
        )
        pprint(api_response)
    except PySirius.ApiException as e:
        print("Exception when calling FormulaResultsApi->get_top_structure_candidate: %s\n" % e)

    # example passing only optional values
    path_params = {
        'projectId': "projectId_example",
        'compoundId': "compoundId_example",
    }
    query_params = {
        'fingerprint': False,
        'dbLinks': False,
        'pubMedIds': False,
    }
    try:
        # Best Scoring StructureCandidate over all molecular formular resutls that belong to the specified  compound/feature (compoundId).
        api_response = api_instance.get_top_structure_candidate(
            path_params=path_params,
            query_params=query_params,
        )
        pprint(api_response)
    except PySirius.ApiException as e:
        print("Exception when calling FormulaResultsApi->get_top_structure_candidate: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
path_params | RequestPathParams | |
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
fingerprint | FingerprintSchema | | optional
dbLinks | DbLinksSchema | | optional
pubMedIds | PubMedIdsSchema | | optional


# FingerprintSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
bool,  | BoolClass,  |  | if omitted the server will use the default value of False

# DbLinksSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
bool,  | BoolClass,  |  | if omitted the server will use the default value of False

# PubMedIdsSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
bool,  | BoolClass,  |  | if omitted the server will use the default value of False

### path_params
#### RequestPathParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
projectId | ProjectIdSchema | | 
compoundId | CompoundIdSchema | | 

# ProjectIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# CompoundIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#get_top_structure_candidate.ApiResponseFor200) | Best scoring FormulaResultContainers of this compound/feature with specified extensions.

#### get_top_structure_candidate.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**StructureCandidate**](../../models/StructureCandidate.md) |  | 


### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

