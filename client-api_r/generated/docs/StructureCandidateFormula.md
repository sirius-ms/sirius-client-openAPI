# RSirius::StructureCandidateFormula


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**inchiKey** | **character** | InChIKey of the structure candidate.  Searching with a full 27 character key matches its 2D (skeleton) part, so stereoisomers of the  searched structure are found alike. | [optional] 
**smiles** | **character** |  | [optional] 
**structureName** | **character** | Name of the structure candidate.  Searching also resolves the searched term as a PubChem synonym, so a structure is found by any  of its common names. | [optional] 
**structureSvg** | **character** | SVG graphics of the structure candidate  OPTIONAL: needs to be added by parameter | [optional] 
**dbLinks** | [**array[DBLink]**](DBLink.md) | List of structure database links belonging to the structure candidate  OPTIONAL: needs to be added by parameter | [optional] 
**spectralLibraryMatches** | [**array[SpectralLibraryMatch]**](SpectralLibraryMatch.md) | List of spectral library matches belonging to the structure candidate  OPTIONAL: needs to be added by parameter | [optional] 
**xlogP** | **numeric** |  | [optional] 
**rank** | **integer** | The overall rank of this candidate among all candidates of this feature. | [optional] 
**csiScore** | **numeric** | CSI:FingerID score of the fingerprint of this compound to the predicted fingerprint of CSI:FingerID  This is the score used for ranking structure candidates | [optional] 
**tanimotoSimilarity** | **numeric** | Tanimoto similarity of the fingerprint of this compound to the predicted fingerprint of CSI:FingerID | [optional] 
**mcesDistToTopHit** | **numeric** | Maximum Common Edge Subgraph (MCES) distance to the top scoring hit (CSI:FingerID) in a candidate list. | [optional] 
**fingerprint** | [**BinaryFingerprint**](BinaryFingerprint.md) |  | [optional] 
**molecularFormula** | **character** | Molecular formula of this candidate | [optional] 
**adduct** | **character** | Adduct of this candidate | [optional] 
**formulaId** | **character** | Id of the corresponding Formula candidate | [optional] 


