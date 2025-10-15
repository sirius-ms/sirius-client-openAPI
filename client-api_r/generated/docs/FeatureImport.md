# RSirius::FeatureImport

Represents an (aligned) feature to be imported into a SIRIUS project.  At least one of the Mass Spec data sources (e.g. mergedMs1, ms1Spectra, ms2Spectra) needs to be given.  Otherwise, the import will fail.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **character** |  | [optional] 
**externalFeatureId** | **character** | Externally provided FeatureId (by some preprocessing tool). This FeatureId is NOT used by SIRIUS but is stored to ease mapping information back to the source. | [optional] 
**ionMass** | **numeric** |  | 
**charge** | **integer** |  | 
**detectedAdducts** | **set[character]** | Detected adducts of this feature. Can be NULL or empty if no adducts are known. | [optional] 
**rtStartSeconds** | **numeric** |  | [optional] 
**rtEndSeconds** | **numeric** |  | [optional] 
**rtApexSeconds** | **numeric** |  | [optional] 
**dataQuality** | **character** | A optional feature quality flag that can be used to filter features to be shown in the gui or to be considered for further analysis. | [optional] [Enum: [NOT_APPLICABLE, LOWEST, BAD, DECENT, GOOD]] 
**mergedMs1** | [**BasicSpectrum**](BasicSpectrum.md) |  | [optional] 
**ms1Spectra** | [**array[BasicSpectrum]**](BasicSpectrum.md) | List of MS1Spectra belonging to this feature. These spectra will be merged an only a representative  mergedMs1 spectrum will be stored in SIRIUS. At least one of these spectra should contain the  isotope pattern of the precursor ion.  Note: Will be ignored if &#39;mergedMs1&#39; is given. | [optional] 
**ms2Spectra** | [**array[BasicSpectrum]**](BasicSpectrum.md) | List of MS/MS spectra that belong to this feature. | [optional] 


