# RSirius::StructureCandidate


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


