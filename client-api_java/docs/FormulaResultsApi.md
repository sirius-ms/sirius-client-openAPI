# FormulaResultsApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getBestMatchingCanopusPredictions**](FormulaResultsApi.md#getBestMatchingCanopusPredictions) | **GET** /api/projects/{projectId}/compounds/{compoundId}/formulas/{formulaId}/best-canopus-predictions | Best matching compound classes,  Set of the highest scoring compound classes CANOPUS) on each hierarchy level of  the ClassyFire and NPC ontology,
[**getCanopusPredictions**](FormulaResultsApi.md#getCanopusPredictions) | **GET** /api/projects/{projectId}/compounds/{compoundId}/formulas/{formulaId}/canopus-predictions | All predicted compound classes (CANOPUS) from ClassyFire and NPC and their probabilities,
[**getFingerprintPrediction**](FormulaResultsApi.md#getFingerprintPrediction) | **GET** /api/projects/{projectId}/compounds/{compoundId}/formulas/{formulaId}/fingerprint | Returns predicted fingerprint (CSI:FingerID) for the given formula result identifier  This fingerprint is used to perfom structure database search and predict compound classes.
[**getFormulaIds**](FormulaResultsApi.md#getFormulaIds) | **GET** /api/projects/{projectId}/compounds/{compoundId}/formulas | List of all FormulaResultContainers available for this compound/feature with minimal information.
[**getFormulaResult**](FormulaResultsApi.md#getFormulaResult) | **GET** /api/projects/{projectId}/compounds/{compoundId}/formulas/{formulaId} | FormulaResultContainers for the given &#x27;formulaId&#x27; with minimal information.
[**getFragTree**](FormulaResultsApi.md#getFragTree) | **GET** /api/projects/{projectId}/compounds/{compoundId}/formulas/{formulaId}/tree | Returns fragmentation tree (SIRIUS) for the given formula result identifier  This tree is used to rank formula candidates (treeScore).
[**getSimulatedIsotopePattern**](FormulaResultsApi.md#getSimulatedIsotopePattern) | **GET** /api/projects/{projectId}/compounds/{compoundId}/formulas/{formulaId}/isotope-pattern | Returns simulated isotope pattern (SIRIUS) for the given formula result identifier.
[**getStructureCandidates**](FormulaResultsApi.md#getStructureCandidates) | **GET** /api/projects/{projectId}/compounds/{compoundId}/formulas/{formulaId}/structures | List of StructureCandidates the given &#x27;formulaId&#x27; with minimal information.
[**getTopStructureCandidate**](FormulaResultsApi.md#getTopStructureCandidate) | **GET** /api/projects/{projectId}/compounds/{compoundId}/top-structure | Best Scoring StructureCandidate over all molecular formular resutls that belong to the specified  compound/feature (compoundId).

<a name="getBestMatchingCanopusPredictions"></a>
# **getBestMatchingCanopusPredictions**
> CompoundClasses getBestMatchingCanopusPredictions(projectId, compoundId, formulaId)

Best matching compound classes,  Set of the highest scoring compound classes CANOPUS) on each hierarchy level of  the ClassyFire and NPC ontology,

Best matching compound classes,  Set of the highest scoring compound classes CANOPUS) on each hierarchy level of  the ClassyFire and NPC ontology,

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.FormulaResultsApi;


FormulaResultsApi apiInstance = new FormulaResultsApi();
String projectId = "projectId_example"; // String | project-space to read from.
String compoundId = "compoundId_example"; // String | compound/feature the formula result belongs to.
String formulaId = "formulaId_example"; // String | identifier of the requested formula result
try {
    CompoundClasses result = apiInstance.getBestMatchingCanopusPredictions(projectId, compoundId, formulaId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling FormulaResultsApi#getBestMatchingCanopusPredictions");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **String**| project-space to read from. |
 **compoundId** | **String**| compound/feature the formula result belongs to. |
 **formulaId** | **String**| identifier of the requested formula result |

### Return type

[**CompoundClasses**](CompoundClasses.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getCanopusPredictions"></a>
# **getCanopusPredictions**
> CanopusPredictions getCanopusPredictions(projectId, compoundId, formulaId)

All predicted compound classes (CANOPUS) from ClassyFire and NPC and their probabilities,

All predicted compound classes (CANOPUS) from ClassyFire and NPC and their probabilities,

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.FormulaResultsApi;


FormulaResultsApi apiInstance = new FormulaResultsApi();
String projectId = "projectId_example"; // String | project-space to read from.
String compoundId = "compoundId_example"; // String | compound/feature the formula result belongs to.
String formulaId = "formulaId_example"; // String | identifier of the requested formula result
try {
    CanopusPredictions result = apiInstance.getCanopusPredictions(projectId, compoundId, formulaId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling FormulaResultsApi#getCanopusPredictions");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **String**| project-space to read from. |
 **compoundId** | **String**| compound/feature the formula result belongs to. |
 **formulaId** | **String**| identifier of the requested formula result |

### Return type

[**CanopusPredictions**](CanopusPredictions.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getFingerprintPrediction"></a>
# **getFingerprintPrediction**
> List&lt;Double&gt; getFingerprintPrediction(projectId, compoundId, formulaId)

Returns predicted fingerprint (CSI:FingerID) for the given formula result identifier  This fingerprint is used to perfom structure database search and predict compound classes.

Returns predicted fingerprint (CSI:FingerID) for the given formula result identifier  This fingerprint is used to perfom structure database search and predict compound classes.

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.FormulaResultsApi;


FormulaResultsApi apiInstance = new FormulaResultsApi();
String projectId = "projectId_example"; // String | project-space to read from.
String compoundId = "compoundId_example"; // String | compound/feature the formula result belongs to.
String formulaId = "formulaId_example"; // String | identifier of the requested formula result
try {
    List<Double> result = apiInstance.getFingerprintPrediction(projectId, compoundId, formulaId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling FormulaResultsApi#getFingerprintPrediction");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **String**| project-space to read from. |
 **compoundId** | **String**| compound/feature the formula result belongs to. |
 **formulaId** | **String**| identifier of the requested formula result |

### Return type

**List&lt;Double&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getFormulaIds"></a>
# **getFormulaIds**
> List&lt;FormulaResultContainer&gt; getFormulaIds(projectId, compoundId, resultOverview, formulaCandidate)

List of all FormulaResultContainers available for this compound/feature with minimal information.

List of all FormulaResultContainers available for this compound/feature with minimal information.  Can be enriched with an optional results overview.

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.FormulaResultsApi;


FormulaResultsApi apiInstance = new FormulaResultsApi();
String projectId = "projectId_example"; // String | project-space to read from.
String compoundId = "compoundId_example"; // String | compound/feature the formula result belongs to.
Boolean resultOverview = true; // Boolean | add ResultOverview to the FormulaResultContainers
Boolean formulaCandidate = false; // Boolean | add extended formula candidate information to the FormulaResultContainers
try {
    List<FormulaResultContainer> result = apiInstance.getFormulaIds(projectId, compoundId, resultOverview, formulaCandidate);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling FormulaResultsApi#getFormulaIds");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **String**| project-space to read from. |
 **compoundId** | **String**| compound/feature the formula result belongs to. |
 **resultOverview** | **Boolean**| add ResultOverview to the FormulaResultContainers | [optional] [default to true]
 **formulaCandidate** | **Boolean**| add extended formula candidate information to the FormulaResultContainers | [optional] [default to false]

### Return type

[**List&lt;FormulaResultContainer&gt;**](FormulaResultContainer.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getFormulaResult"></a>
# **getFormulaResult**
> FormulaResultContainer getFormulaResult(projectId, compoundId, formulaId, resultOverview, formulaCandidate)

FormulaResultContainers for the given &#x27;formulaId&#x27; with minimal information.

FormulaResultContainers for the given &#x27;formulaId&#x27; with minimal information.  Can be enriched with an optional results overview and formula candidate information.

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.FormulaResultsApi;


FormulaResultsApi apiInstance = new FormulaResultsApi();
String projectId = "projectId_example"; // String | project-space to read from.
String compoundId = "compoundId_example"; // String | compound/feature the formula result belongs to.
String formulaId = "formulaId_example"; // String | identifier of the requested formula result
Boolean resultOverview = true; // Boolean | add ResultOverview to the FormulaResultContainer
Boolean formulaCandidate = true; // Boolean | add extended formula candidate information to the FormulaResultContainer
try {
    FormulaResultContainer result = apiInstance.getFormulaResult(projectId, compoundId, formulaId, resultOverview, formulaCandidate);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling FormulaResultsApi#getFormulaResult");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **String**| project-space to read from. |
 **compoundId** | **String**| compound/feature the formula result belongs to. |
 **formulaId** | **String**| identifier of the requested formula result |
 **resultOverview** | **Boolean**| add ResultOverview to the FormulaResultContainer | [optional] [default to true]
 **formulaCandidate** | **Boolean**| add extended formula candidate information to the FormulaResultContainer | [optional] [default to true]

### Return type

[**FormulaResultContainer**](FormulaResultContainer.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getFragTree"></a>
# **getFragTree**
> FragmentationTree getFragTree(projectId, compoundId, formulaId)

Returns fragmentation tree (SIRIUS) for the given formula result identifier  This tree is used to rank formula candidates (treeScore).

Returns fragmentation tree (SIRIUS) for the given formula result identifier  This tree is used to rank formula candidates (treeScore).

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.FormulaResultsApi;


FormulaResultsApi apiInstance = new FormulaResultsApi();
String projectId = "projectId_example"; // String | project-space to read from.
String compoundId = "compoundId_example"; // String | compound/feature the formula result belongs to.
String formulaId = "formulaId_example"; // String | identifier of the requested formula result
try {
    FragmentationTree result = apiInstance.getFragTree(projectId, compoundId, formulaId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling FormulaResultsApi#getFragTree");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **String**| project-space to read from. |
 **compoundId** | **String**| compound/feature the formula result belongs to. |
 **formulaId** | **String**| identifier of the requested formula result |

### Return type

[**FragmentationTree**](FragmentationTree.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getSimulatedIsotopePattern"></a>
# **getSimulatedIsotopePattern**
> AnnotatedSpectrum getSimulatedIsotopePattern(projectId, compoundId, formulaId)

Returns simulated isotope pattern (SIRIUS) for the given formula result identifier.

Returns simulated isotope pattern (SIRIUS) for the given formula result identifier.  This simulated isotope pattern is used to rank formula candidates (treeScore).

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.FormulaResultsApi;


FormulaResultsApi apiInstance = new FormulaResultsApi();
String projectId = "projectId_example"; // String | project-space to read from.
String compoundId = "compoundId_example"; // String | compound/feature the formula result belongs to.
String formulaId = "formulaId_example"; // String | identifier of the requested formula result
try {
    AnnotatedSpectrum result = apiInstance.getSimulatedIsotopePattern(projectId, compoundId, formulaId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling FormulaResultsApi#getSimulatedIsotopePattern");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **String**| project-space to read from. |
 **compoundId** | **String**| compound/feature the formula result belongs to. |
 **formulaId** | **String**| identifier of the requested formula result |

### Return type

[**AnnotatedSpectrum**](AnnotatedSpectrum.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getStructureCandidates"></a>
# **getStructureCandidates**
> List&lt;StructureCandidate&gt; getStructureCandidates(projectId, compoundId, formulaId, fingerprint, dbLinks, pubMedIds, topK)

List of StructureCandidates the given &#x27;formulaId&#x27; with minimal information.

List of StructureCandidates the given &#x27;formulaId&#x27; with minimal information.  StructureCandidates can be enriched with molecular fingerprint, structure database links and pubmed ids,

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.FormulaResultsApi;


FormulaResultsApi apiInstance = new FormulaResultsApi();
String projectId = "projectId_example"; // String | project-space to read from.
String compoundId = "compoundId_example"; // String | compound/feature the formula result belongs to.
String formulaId = "formulaId_example"; // String | identifier of the requested formula result
Boolean fingerprint = false; // Boolean | add molecular fingerprint to StructureCandidates
Boolean dbLinks = false; // Boolean | add dbLinks to StructureCandidates
Boolean pubMedIds = false; // Boolean | add PubMedIds (citation count) to StructureCandidates
Integer topK = -1; // Integer | retrieve only the top k StructureCandidates
try {
    List<StructureCandidate> result = apiInstance.getStructureCandidates(projectId, compoundId, formulaId, fingerprint, dbLinks, pubMedIds, topK);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling FormulaResultsApi#getStructureCandidates");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **String**| project-space to read from. |
 **compoundId** | **String**| compound/feature the formula result belongs to. |
 **formulaId** | **String**| identifier of the requested formula result |
 **fingerprint** | **Boolean**| add molecular fingerprint to StructureCandidates | [optional] [default to false]
 **dbLinks** | **Boolean**| add dbLinks to StructureCandidates | [optional] [default to false]
 **pubMedIds** | **Boolean**| add PubMedIds (citation count) to StructureCandidates | [optional] [default to false]
 **topK** | **Integer**| retrieve only the top k StructureCandidates | [optional] [default to -1]

### Return type

[**List&lt;StructureCandidate&gt;**](StructureCandidate.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getTopStructureCandidate"></a>
# **getTopStructureCandidate**
> StructureCandidate getTopStructureCandidate(projectId, compoundId, fingerprint, dbLinks, pubMedIds)

Best Scoring StructureCandidate over all molecular formular resutls that belong to the specified  compound/feature (compoundId).

Best Scoring StructureCandidate over all molecular formular resutls that belong to the specified  compound/feature (compoundId).

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.FormulaResultsApi;


FormulaResultsApi apiInstance = new FormulaResultsApi();
String projectId = "projectId_example"; // String | project-space to read from.
String compoundId = "compoundId_example"; // String | compound/feature the formula result belongs to.
Boolean fingerprint = false; // Boolean | add molecular fingerprint to StructureCandidates
Boolean dbLinks = false; // Boolean | add dbLinks to StructureCandidates
Boolean pubMedIds = false; // Boolean | add PubMedIds (citation count) to StructureCandidates
try {
    StructureCandidate result = apiInstance.getTopStructureCandidate(projectId, compoundId, fingerprint, dbLinks, pubMedIds);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling FormulaResultsApi#getTopStructureCandidate");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **String**| project-space to read from. |
 **compoundId** | **String**| compound/feature the formula result belongs to. |
 **fingerprint** | **Boolean**| add molecular fingerprint to StructureCandidates | [optional] [default to false]
 **dbLinks** | **Boolean**| add dbLinks to StructureCandidates | [optional] [default to false]
 **pubMedIds** | **Boolean**| add PubMedIds (citation count) to StructureCandidates | [optional] [default to false]

### Return type

[**StructureCandidate**](StructureCandidate.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

