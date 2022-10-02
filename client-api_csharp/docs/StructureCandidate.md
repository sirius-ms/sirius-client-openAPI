# IO.Swagger.Model.StructureCandidate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**StructureName** | **string** |  | [optional] 
**Smiles** | **string** |  | [optional] 
**CsiScore** | **double?** |  | [optional] 
**TanimotoSimilarity** | **double?** |  | [optional] 
**ConfidenceScore** | **double?** |  | [optional] 
**NumOfPubMedIds** | **int?** |  | [optional] 
**XlogP** | **double?** |  | [optional] 
**InchiKey** | **string** |  | [optional] 
**FpBitsSet** | **List&lt;int?&gt;** | Array containing the indices of the molecular fingerprint that are available in the structure (1)  OPTIONAL: needs to be added by parameter | [optional] 
**DbLinks** | [**List&lt;DBLink&gt;**](DBLink.md) | List of structure database links belonging to this structure candidate  OPTIONAL: needs to be added by parameter | [optional] 
**PubmedIds** | **List&lt;int?&gt;** | PubMed IDs belonging to this structure candidate  OPTIONAL: needs to be added by parameter | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

