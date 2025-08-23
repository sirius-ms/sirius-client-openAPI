# Rsirius::SpectralLibraryMatch


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**specMatchId** | **character** |  | [optional] 
**rank** | **integer** |  | [optional] 
**similarity** | **numeric** | Similarity between query and reference spectrum | 
**sharedPeaks** | **integer** | Number of shared/matched peaks | [optional] 
**sharedPeakMapping** | [**array[PeakPair]**](PeakPair.md) | List of paired/matched peak indices.   Maps indices of peaks from the query spectrum (mass sorted)  to indices of matched peaks in the reference spectrum (mass sorted) | [optional] 
**querySpectrumIndex** | **integer** |  | 
**dbName** | **character** |  | [optional] 
**dbId** | **character** |  | [optional] 
**uuid** | **integer** |  | 
**splash** | **character** |  | [optional] 
**molecularFormula** | **character** |  | [optional] 
**adduct** | **character** |  | [optional] 
**exactMass** | **numeric** |  | [optional] 
**smiles** | **character** |  | [optional] 
**type** | **character** |  | [optional] [default to &quot;IDENTITY&quot;] [Enum: [IDENTITY, ANALOG]] 
**inchiKey** | **character** |  | 
**referenceSpectrumType** | **character** |  | [optional] [default to &quot;SPECTRUM&quot;] [Enum: [SPECTRUM, MERGED_SPECTRUM]] 
**referenceSpectrum** | [**BasicSpectrum**](BasicSpectrum.md) |  | [optional] 
**querySpectrumType** | **character** |  | [optional] [Enum: [SPECTRUM, MERGED_SPECTRUM]] 


