# Rsirius::StructureCandidateFormula



## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**inchiKey** | **character** |  | [optional] 
**smiles** | **character** |  | [optional] 
**structureName** | **character** |  | [optional] 
**xlogP** | **numeric** |  | [optional] 
**dbLinks** | [**array[DBLink]**](DBLink.md) | List of structure database links belonging to this structure candidate  OPTIONAL: needs to be added by parameter | [optional] 
**refSpectraLinks** | [**array[DBLink]**](DBLink.md) | List of spectral library links belonging to this structure candidate  OPTIONAL: needs to be added by parameter | [optional] 
**csiScore** | **numeric** |  | [optional] 
**tanimotoSimilarity** | **numeric** |  | [optional] 
**confidenceExactMatch** | **numeric** |  | [optional] 
**confidenceApproxMatch** | **numeric** |  | [optional] 
**fingerprint** | [**BinaryFingerprint**](BinaryFingerprint.md) |  | [optional] 
**molecularFormula** | **character** | molecular formula of this candidate | [optional] 
**adduct** | **character** | Adduct of this candidate | [optional] 
**formulaId** | **character** | Id of the corresponding Formula candidate | [optional] 


