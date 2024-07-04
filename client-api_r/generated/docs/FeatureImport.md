# Rsirius::FeatureImport


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
**mergedMs1** | [**BasicSpectrum**](BasicSpectrum.md) |  | [optional] 
**ms1Spectra** | [**array[BasicSpectrum]**](BasicSpectrum.md) |  | 
**ms2Spectra** | [**array[BasicSpectrum]**](BasicSpectrum.md) |  | 


