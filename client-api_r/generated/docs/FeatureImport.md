# Rsirius::FeatureImport



## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **character** |  | [optional] 
**featureId** | **character** |  | [optional] 
**ionMass** | **numeric** |  | 
**adduct** | **character** | Adduct of this feature. If not know specify [M+?]+ or [M+?]- to define the charge | 
**rtStartSeconds** | **numeric** |  | [optional] 
**rtEndSeconds** | **numeric** |  | [optional] 
**mergedMs1** | [**BasicSpectrum**](BasicSpectrum.md) |  | [optional] 
**ms1Spectra** | [**array[BasicSpectrum]**](BasicSpectrum.md) |  | 
**ms2Spectra** | [**array[BasicSpectrum]**](BasicSpectrum.md) |  | 


