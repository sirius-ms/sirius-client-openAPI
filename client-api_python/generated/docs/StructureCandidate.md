# StructureCandidate

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**structure_name** | **str** |  | [optional] 
**smiles** | **str** |  | [optional] 
**csi_score** | **float** |  | [optional] 
**tanimoto_similarity** | **float** |  | [optional] 
**confidence_score** | **float** |  | [optional] 
**num_of_pub_med_ids** | **int** |  | [optional] 
**xlog_p** | **float** |  | [optional] 
**inchi_key** | **str** |  | [optional] 
**fp_bits_set** | **list[int]** | Array containing the indices of the molecular fingerprint that are available in the structure (1)  OPTIONAL: needs to be added by parameter | [optional] 
**db_links** | [**list[DBLink]**](DBLink.md) | List of structure database links belonging to this structure candidate  OPTIONAL: needs to be added by parameter | [optional] 
**pubmed_ids** | **list[int]** | PubMed IDs belonging to this structure candidate  OPTIONAL: needs to be added by parameter | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

