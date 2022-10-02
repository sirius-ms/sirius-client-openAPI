# IO.Swagger.Api.FormulaResultsApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetBestMatchingCanopusPredictions**](FormulaResultsApi.md#getbestmatchingcanopuspredictions) | **GET** /api/projects/{projectId}/compounds/{compoundId}/formulas/{formulaId}/best-canopus-predictions | Best matching compound classes,  Set of the highest scoring compound classes CANOPUS) on each hierarchy level of  the ClassyFire and NPC ontology,
[**GetCanopusPredictions**](FormulaResultsApi.md#getcanopuspredictions) | **GET** /api/projects/{projectId}/compounds/{compoundId}/formulas/{formulaId}/canopus-predictions | All predicted compound classes (CANOPUS) from ClassyFire and NPC and their probabilities,
[**GetFingerprintPrediction**](FormulaResultsApi.md#getfingerprintprediction) | **GET** /api/projects/{projectId}/compounds/{compoundId}/formulas/{formulaId}/fingerprint | Returns predicted fingerprint (CSI:FingerID) for the given formula result identifier  This fingerprint is used to perfom structure database search and predict compound classes.
[**GetFormulaIds**](FormulaResultsApi.md#getformulaids) | **GET** /api/projects/{projectId}/compounds/{compoundId}/formulas | List of all FormulaResultContainers available for this compound/feature with minimal information.
[**GetFormulaResult**](FormulaResultsApi.md#getformularesult) | **GET** /api/projects/{projectId}/compounds/{compoundId}/formulas/{formulaId} | FormulaResultContainers for the given &#x27;formulaId&#x27; with minimal information.
[**GetFragTree**](FormulaResultsApi.md#getfragtree) | **GET** /api/projects/{projectId}/compounds/{compoundId}/formulas/{formulaId}/tree | Returns fragmentation tree (SIRIUS) for the given formula result identifier  This tree is used to rank formula candidates (treeScore).
[**GetSimulatedIsotopePattern**](FormulaResultsApi.md#getsimulatedisotopepattern) | **GET** /api/projects/{projectId}/compounds/{compoundId}/formulas/{formulaId}/isotope-pattern | Returns simulated isotope pattern (SIRIUS) for the given formula result identifier.
[**GetStructureCandidates**](FormulaResultsApi.md#getstructurecandidates) | **GET** /api/projects/{projectId}/compounds/{compoundId}/formulas/{formulaId}/structures | List of StructureCandidates the given &#x27;formulaId&#x27; with minimal information.
[**GetTopStructureCandidate**](FormulaResultsApi.md#gettopstructurecandidate) | **GET** /api/projects/{projectId}/compounds/{compoundId}/top-structure | Best Scoring StructureCandidate over all molecular formular resutls that belong to the specified  compound/feature (compoundId).

<a name="getbestmatchingcanopuspredictions"></a>
# **GetBestMatchingCanopusPredictions**
> CompoundClasses GetBestMatchingCanopusPredictions (string projectId, string compoundId, string formulaId)

Best matching compound classes,  Set of the highest scoring compound classes CANOPUS) on each hierarchy level of  the ClassyFire and NPC ontology,

Best matching compound classes,  Set of the highest scoring compound classes CANOPUS) on each hierarchy level of  the ClassyFire and NPC ontology,

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetBestMatchingCanopusPredictionsExample
    {
        public void main()
        {
            var apiInstance = new FormulaResultsApi();
            var projectId = projectId_example;  // string | project-space to read from.
            var compoundId = compoundId_example;  // string | compound/feature the formula result belongs to.
            var formulaId = formulaId_example;  // string | identifier of the requested formula result

            try
            {
                // Best matching compound classes,  Set of the highest scoring compound classes CANOPUS) on each hierarchy level of  the ClassyFire and NPC ontology,
                CompoundClasses result = apiInstance.GetBestMatchingCanopusPredictions(projectId, compoundId, formulaId);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling FormulaResultsApi.GetBestMatchingCanopusPredictions: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **string**| project-space to read from. | 
 **compoundId** | **string**| compound/feature the formula result belongs to. | 
 **formulaId** | **string**| identifier of the requested formula result | 

### Return type

[**CompoundClasses**](CompoundClasses.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="getcanopuspredictions"></a>
# **GetCanopusPredictions**
> CanopusPredictions GetCanopusPredictions (string projectId, string compoundId, string formulaId)

All predicted compound classes (CANOPUS) from ClassyFire and NPC and their probabilities,

All predicted compound classes (CANOPUS) from ClassyFire and NPC and their probabilities,

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetCanopusPredictionsExample
    {
        public void main()
        {
            var apiInstance = new FormulaResultsApi();
            var projectId = projectId_example;  // string | project-space to read from.
            var compoundId = compoundId_example;  // string | compound/feature the formula result belongs to.
            var formulaId = formulaId_example;  // string | identifier of the requested formula result

            try
            {
                // All predicted compound classes (CANOPUS) from ClassyFire and NPC and their probabilities,
                CanopusPredictions result = apiInstance.GetCanopusPredictions(projectId, compoundId, formulaId);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling FormulaResultsApi.GetCanopusPredictions: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **string**| project-space to read from. | 
 **compoundId** | **string**| compound/feature the formula result belongs to. | 
 **formulaId** | **string**| identifier of the requested formula result | 

### Return type

[**CanopusPredictions**](CanopusPredictions.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="getfingerprintprediction"></a>
# **GetFingerprintPrediction**
> List<double?> GetFingerprintPrediction (string projectId, string compoundId, string formulaId)

Returns predicted fingerprint (CSI:FingerID) for the given formula result identifier  This fingerprint is used to perfom structure database search and predict compound classes.

Returns predicted fingerprint (CSI:FingerID) for the given formula result identifier  This fingerprint is used to perfom structure database search and predict compound classes.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetFingerprintPredictionExample
    {
        public void main()
        {
            var apiInstance = new FormulaResultsApi();
            var projectId = projectId_example;  // string | project-space to read from.
            var compoundId = compoundId_example;  // string | compound/feature the formula result belongs to.
            var formulaId = formulaId_example;  // string | identifier of the requested formula result

            try
            {
                // Returns predicted fingerprint (CSI:FingerID) for the given formula result identifier  This fingerprint is used to perfom structure database search and predict compound classes.
                List&lt;double?&gt; result = apiInstance.GetFingerprintPrediction(projectId, compoundId, formulaId);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling FormulaResultsApi.GetFingerprintPrediction: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **string**| project-space to read from. | 
 **compoundId** | **string**| compound/feature the formula result belongs to. | 
 **formulaId** | **string**| identifier of the requested formula result | 

### Return type

**List<double?>**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="getformulaids"></a>
# **GetFormulaIds**
> List<FormulaResultContainer> GetFormulaIds (string projectId, string compoundId, bool? resultOverview = null, bool? formulaCandidate = null)

List of all FormulaResultContainers available for this compound/feature with minimal information.

List of all FormulaResultContainers available for this compound/feature with minimal information.  Can be enriched with an optional results overview.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetFormulaIdsExample
    {
        public void main()
        {
            var apiInstance = new FormulaResultsApi();
            var projectId = projectId_example;  // string | project-space to read from.
            var compoundId = compoundId_example;  // string | compound/feature the formula result belongs to.
            var resultOverview = true;  // bool? | add ResultOverview to the FormulaResultContainers (optional)  (default to true)
            var formulaCandidate = true;  // bool? | add extended formula candidate information to the FormulaResultContainers (optional)  (default to false)

            try
            {
                // List of all FormulaResultContainers available for this compound/feature with minimal information.
                List&lt;FormulaResultContainer&gt; result = apiInstance.GetFormulaIds(projectId, compoundId, resultOverview, formulaCandidate);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling FormulaResultsApi.GetFormulaIds: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **string**| project-space to read from. | 
 **compoundId** | **string**| compound/feature the formula result belongs to. | 
 **resultOverview** | **bool?**| add ResultOverview to the FormulaResultContainers | [optional] [default to true]
 **formulaCandidate** | **bool?**| add extended formula candidate information to the FormulaResultContainers | [optional] [default to false]

### Return type

[**List<FormulaResultContainer>**](FormulaResultContainer.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="getformularesult"></a>
# **GetFormulaResult**
> FormulaResultContainer GetFormulaResult (string projectId, string compoundId, string formulaId, bool? resultOverview = null, bool? formulaCandidate = null)

FormulaResultContainers for the given 'formulaId' with minimal information.

FormulaResultContainers for the given 'formulaId' with minimal information.  Can be enriched with an optional results overview and formula candidate information.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetFormulaResultExample
    {
        public void main()
        {
            var apiInstance = new FormulaResultsApi();
            var projectId = projectId_example;  // string | project-space to read from.
            var compoundId = compoundId_example;  // string | compound/feature the formula result belongs to.
            var formulaId = formulaId_example;  // string | identifier of the requested formula result
            var resultOverview = true;  // bool? | add ResultOverview to the FormulaResultContainer (optional)  (default to true)
            var formulaCandidate = true;  // bool? | add extended formula candidate information to the FormulaResultContainer (optional)  (default to true)

            try
            {
                // FormulaResultContainers for the given 'formulaId' with minimal information.
                FormulaResultContainer result = apiInstance.GetFormulaResult(projectId, compoundId, formulaId, resultOverview, formulaCandidate);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling FormulaResultsApi.GetFormulaResult: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **string**| project-space to read from. | 
 **compoundId** | **string**| compound/feature the formula result belongs to. | 
 **formulaId** | **string**| identifier of the requested formula result | 
 **resultOverview** | **bool?**| add ResultOverview to the FormulaResultContainer | [optional] [default to true]
 **formulaCandidate** | **bool?**| add extended formula candidate information to the FormulaResultContainer | [optional] [default to true]

### Return type

[**FormulaResultContainer**](FormulaResultContainer.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="getfragtree"></a>
# **GetFragTree**
> FragmentationTree GetFragTree (string projectId, string compoundId, string formulaId)

Returns fragmentation tree (SIRIUS) for the given formula result identifier  This tree is used to rank formula candidates (treeScore).

Returns fragmentation tree (SIRIUS) for the given formula result identifier  This tree is used to rank formula candidates (treeScore).

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetFragTreeExample
    {
        public void main()
        {
            var apiInstance = new FormulaResultsApi();
            var projectId = projectId_example;  // string | project-space to read from.
            var compoundId = compoundId_example;  // string | compound/feature the formula result belongs to.
            var formulaId = formulaId_example;  // string | identifier of the requested formula result

            try
            {
                // Returns fragmentation tree (SIRIUS) for the given formula result identifier  This tree is used to rank formula candidates (treeScore).
                FragmentationTree result = apiInstance.GetFragTree(projectId, compoundId, formulaId);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling FormulaResultsApi.GetFragTree: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **string**| project-space to read from. | 
 **compoundId** | **string**| compound/feature the formula result belongs to. | 
 **formulaId** | **string**| identifier of the requested formula result | 

### Return type

[**FragmentationTree**](FragmentationTree.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="getsimulatedisotopepattern"></a>
# **GetSimulatedIsotopePattern**
> AnnotatedSpectrum GetSimulatedIsotopePattern (string projectId, string compoundId, string formulaId)

Returns simulated isotope pattern (SIRIUS) for the given formula result identifier.

Returns simulated isotope pattern (SIRIUS) for the given formula result identifier.  This simulated isotope pattern is used to rank formula candidates (treeScore).

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetSimulatedIsotopePatternExample
    {
        public void main()
        {
            var apiInstance = new FormulaResultsApi();
            var projectId = projectId_example;  // string | project-space to read from.
            var compoundId = compoundId_example;  // string | compound/feature the formula result belongs to.
            var formulaId = formulaId_example;  // string | identifier of the requested formula result

            try
            {
                // Returns simulated isotope pattern (SIRIUS) for the given formula result identifier.
                AnnotatedSpectrum result = apiInstance.GetSimulatedIsotopePattern(projectId, compoundId, formulaId);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling FormulaResultsApi.GetSimulatedIsotopePattern: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **string**| project-space to read from. | 
 **compoundId** | **string**| compound/feature the formula result belongs to. | 
 **formulaId** | **string**| identifier of the requested formula result | 

### Return type

[**AnnotatedSpectrum**](AnnotatedSpectrum.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="getstructurecandidates"></a>
# **GetStructureCandidates**
> List<StructureCandidate> GetStructureCandidates (string projectId, string compoundId, string formulaId, bool? fingerprint = null, bool? dbLinks = null, bool? pubMedIds = null, int? topK = null)

List of StructureCandidates the given 'formulaId' with minimal information.

List of StructureCandidates the given 'formulaId' with minimal information.  StructureCandidates can be enriched with molecular fingerprint, structure database links and pubmed ids,

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetStructureCandidatesExample
    {
        public void main()
        {
            var apiInstance = new FormulaResultsApi();
            var projectId = projectId_example;  // string | project-space to read from.
            var compoundId = compoundId_example;  // string | compound/feature the formula result belongs to.
            var formulaId = formulaId_example;  // string | identifier of the requested formula result
            var fingerprint = true;  // bool? | add molecular fingerprint to StructureCandidates (optional)  (default to false)
            var dbLinks = true;  // bool? | add dbLinks to StructureCandidates (optional)  (default to false)
            var pubMedIds = true;  // bool? | add PubMedIds (citation count) to StructureCandidates (optional)  (default to false)
            var topK = 56;  // int? | retrieve only the top k StructureCandidates (optional)  (default to -1)

            try
            {
                // List of StructureCandidates the given 'formulaId' with minimal information.
                List&lt;StructureCandidate&gt; result = apiInstance.GetStructureCandidates(projectId, compoundId, formulaId, fingerprint, dbLinks, pubMedIds, topK);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling FormulaResultsApi.GetStructureCandidates: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **string**| project-space to read from. | 
 **compoundId** | **string**| compound/feature the formula result belongs to. | 
 **formulaId** | **string**| identifier of the requested formula result | 
 **fingerprint** | **bool?**| add molecular fingerprint to StructureCandidates | [optional] [default to false]
 **dbLinks** | **bool?**| add dbLinks to StructureCandidates | [optional] [default to false]
 **pubMedIds** | **bool?**| add PubMedIds (citation count) to StructureCandidates | [optional] [default to false]
 **topK** | **int?**| retrieve only the top k StructureCandidates | [optional] [default to -1]

### Return type

[**List<StructureCandidate>**](StructureCandidate.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="gettopstructurecandidate"></a>
# **GetTopStructureCandidate**
> StructureCandidate GetTopStructureCandidate (string projectId, string compoundId, bool? fingerprint = null, bool? dbLinks = null, bool? pubMedIds = null)

Best Scoring StructureCandidate over all molecular formular resutls that belong to the specified  compound/feature (compoundId).

Best Scoring StructureCandidate over all molecular formular resutls that belong to the specified  compound/feature (compoundId).

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetTopStructureCandidateExample
    {
        public void main()
        {
            var apiInstance = new FormulaResultsApi();
            var projectId = projectId_example;  // string | project-space to read from.
            var compoundId = compoundId_example;  // string | compound/feature the formula result belongs to.
            var fingerprint = true;  // bool? | add molecular fingerprint to StructureCandidates (optional)  (default to false)
            var dbLinks = true;  // bool? | add dbLinks to StructureCandidates (optional)  (default to false)
            var pubMedIds = true;  // bool? | add PubMedIds (citation count) to StructureCandidates (optional)  (default to false)

            try
            {
                // Best Scoring StructureCandidate over all molecular formular resutls that belong to the specified  compound/feature (compoundId).
                StructureCandidate result = apiInstance.GetTopStructureCandidate(projectId, compoundId, fingerprint, dbLinks, pubMedIds);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling FormulaResultsApi.GetTopStructureCandidate: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **string**| project-space to read from. | 
 **compoundId** | **string**| compound/feature the formula result belongs to. | 
 **fingerprint** | **bool?**| add molecular fingerprint to StructureCandidates | [optional] [default to false]
 **dbLinks** | **bool?**| add dbLinks to StructureCandidates | [optional] [default to false]
 **pubMedIds** | **bool?**| add PubMedIds (citation count) to StructureCandidates | [optional] [default to false]

### Return type

[**StructureCandidate**](StructureCandidate.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
