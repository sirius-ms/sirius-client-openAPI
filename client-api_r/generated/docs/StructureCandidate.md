# RSirius::StructureCandidate



## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**structureName** | **character** |  | [optional] 
**smiles** | **character** |  | [optional] 
**csiScore** | **numeric** |  | [optional] 
**tanimotoSimilarity** | **numeric** |  | [optional] 
**confidenceScore** | **numeric** |  | [optional] 
**numOfPubMedIds** | **integer** |  | [optional] 
**xlogP** | **numeric** |  | [optional] 
**inchiKey** | **character** |  | [optional] 
**fpBitsSet** | **array[integer]** | Array containing the indices of the molecular fingerprint that are available in the structure (1)  OPTIONAL: needs to be added by parameter | [optional] 
**dbLinks** | [**array[DBLink]**](DBLink.md) | List of structure database links belonging to this structure candidate  OPTIONAL: needs to be added by parameter | [optional] 
**pubmedIds** | **array[integer]** | PubMed IDs belonging to this structure candidate  OPTIONAL: needs to be added by parameter | [optional] 


