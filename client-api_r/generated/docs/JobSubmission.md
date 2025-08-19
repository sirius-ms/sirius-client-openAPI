# Rsirius::JobSubmission

Object to submit a job to be executed by SIRIUS

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**compoundIds** | **array[character]** | Compounds that should be the input for this Job  Will be converted to the respective alignedFeatureIds for computation.   At least one compoundId or alignedFeatureId needs to be specified. | [optional] 
**alignedFeatureIds** | **array[character]** | Features (aligned over runs) that should be the input for this Job   At least one compoundId or alignedFeatureId needs to be specified. | [optional] 
**fallbackAdducts** | **array[character]** | Describes how to deal with Adducts: Fallback adducts are considered if the auto detection did not find any indication for an ion mode.  Pos Examples: [M+H]+,[M]+,[M+K]+,[M+Na]+,[M+H-H2O]+,[M+Na2-H]+,[M+2K-H]+,[M+NH4]+,[M+H3O]+,[M+MeOH+H]+,[M+ACN+H]+,[M+2ACN+H]+,[M+IPA+H]+,[M+ACN+Na]+,[M+DMSO+H]+  Neg Examples: [M-H]-,[M]-,[M+K-2H]-,[M+Cl]-,[M-H2O-H]-,[M+Na-2H]-,M+FA-H]-,[M+Br]-,[M+HAc-H]-,[M+TFA-H]-,[M+ACN-H]- | [optional] 
**enforcedAdducts** | **array[character]** | Describes how to deal with Adducts:  Enforced adducts that are always considered.  Pos Examples: [M+H]+,[M]+,[M+K]+,[M+Na]+,[M+H-H2O]+,[M+Na2-H]+,[M+2K-H]+,[M+NH4]+,[M+H3O]+,[M+MeOH+H]+,[M+ACN+H]+,[M+2ACN+H]+,[M+IPA+H]+,[M+ACN+Na]+,[M+DMSO+H]+  Neg Examples: [M-H]-,[M]-,[M+K-2H]-,[M+Cl]-,[M-H2O-H]-,[M+Na-2H]-,M+FA-H]-,[M+Br]-,[M+HAc-H]-,[M+TFA-H]-,[M+ACN-H]- | [optional] 
**detectableAdducts** | **array[character]** | Describes how to deal with Adducts: Detectable adducts which are only considered if there is an indication in the MS1 scan (e.g. correct mass delta).  Pos Examples: [M+H]+,[M]+,[M+K]+,[M+Na]+,[M+H-H2O]+,[M+Na2-H]+,[M+2K-H]+,[M+NH4]+,[M+H3O]+,[M+MeOH+H]+,[M+ACN+H]+,[M+2ACN+H]+,[M+IPA+H]+,[M+ACN+Na]+,[M+DMSO+H]+  Neg Examples: [M-H]-,[M]-,[M+K-2H]-,[M+Cl]-,[M-H2O-H]-,[M+Na-2H]-,M+FA-H]-,[M+Br]-,[M+HAc-H]-,[M+TFA-H]-,[M+ACN-H]- | [optional] 
**recompute** | **character** | Indicate if already existing result for a tool to be executed should be overwritten or not. | [optional] 
**spectraSearchParams** | [**SpectralLibrarySearch**](SpectralLibrarySearch.md) | Parameter Object for spectral library search tool (CLI-Tool: spectra-search).  Library search results can be used to enhance formula search results  If NULL the tool will not be executed. | [optional] 
**formulaIdParams** | [**Sirius**](Sirius.md) | Parameter Object for molecular formula identification tool (CLI-Tool: formula, sirius).  If NULL the tool will not be executed. | [optional] 
**zodiacParams** | [**Zodiac**](Zodiac.md) | Parameter Object for network  based molecular formula re-ranking (CLI-Tool: zodiac).  If NULL the tool will not be executed. | [optional] 
**fingerprintPredictionParams** | [**FingerprintPrediction**](FingerprintPrediction.md) | Parameter Object for Fingerprint prediction with CSI:FingerID (CLI-Tool: fingerint).  If NULL the tool will not be executed. | [optional] 
**canopusParams** | [**Canopus**](Canopus.md) | Parameter Object for CANOPUS compound class prediction tool (CLI-Tool: canopus).  If NULL the tool will not be executed. | [optional] 
**structureDbSearchParams** | [**StructureDbSearch**](StructureDbSearch.md) | Parameter Object for structure database search with CSI:FingerID (CLI-Tool: structure).  If NULL the tool will not be executed. | [optional] 
**msNovelistParams** | [**MsNovelist**](MsNovelist.md) | Parameter Object for MsNovelist DeNovo structure generation (CLI-Tool: msnovelist)  If NULL the tool will not be executed. | [optional] 
**configMap** | **map(character)** | As an alternative to the object based parameters, this map allows to store key value pairs  of ALL SIRIUS parameters. All possible parameters can be retrieved from SIRIUS via the respective endpoint. | [optional] 


