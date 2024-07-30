# Rsirius::StructureCandidateScored


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**inchiKey** | **character** |  | [optional] 
**smiles** | **character** |  | [optional] 
**structureName** | **character** |  | [optional] 
**xlogP** | **numeric** |  | [optional] 
**dbLinks** | [**array[DBLink]**](DBLink.md) | List of structure database links belonging to this structure candidate  OPTIONAL: needs to be added by parameter | [optional] 
**spectralLibraryMatches** | [**array[SpectralLibraryMatch]**](SpectralLibraryMatch.md) | List of spectral library matches belonging to this structure candidate  OPTIONAL: needs to be added by parameter | [optional] 
**rank** | **integer** | the overall rank of this candidate among all candidates of this feature | [optional] 
**csiScore** | **numeric** | CSI:FingerID score of the fingerprint of this compound to the predicted fingerprint of CSI:FingerID  This is the score used for ranking structure candidates | [optional] 
**tanimotoSimilarity** | **numeric** | Tanimoto similarly of the fingerprint of this compound to the predicted fingerprint of CSI:FingerID | [optional] 
**mcesDistToTopHit** | **numeric** | Maximum Common Edge Subgraph (MCES) distance to the top scoring hit (CSI:FingerID) in a candidate list. | [optional] 
**fingerprint** | [**BinaryFingerprint**](BinaryFingerprint.md) |  | [optional] 


