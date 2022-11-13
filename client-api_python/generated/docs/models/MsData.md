# PySirius.model.ms_data.MsData

The MsData wraps all spectral input data belonging to a compound.   Each compound has:  - One merged MS/MS spectrum (optional)  - One merged MS spectrum (optional)  - many MS/MS spectra  - many MS spectra   Each non-merged spectrum has an index which can be used to access the spectrum.   In the future we might add some additional information like chromatographic peak or something similar

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | The MsData wraps all spectral input data belonging to a compound.   Each compound has:  - One merged MS/MS spectrum (optional)  - One merged MS spectrum (optional)  - many MS/MS spectra  - many MS spectra   Each non-merged spectrum has an index which can be used to access the spectrum.   In the future we might add some additional information like chromatographic peak or something similar | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**mergedMs1** | [**AnnotatedSpectrum**](AnnotatedSpectrum.md) | [**AnnotatedSpectrum**](AnnotatedSpectrum.md) |  | [optional] 
**mergedMs2** | [**AnnotatedSpectrum**](AnnotatedSpectrum.md) | [**AnnotatedSpectrum**](AnnotatedSpectrum.md) |  | [optional] 
**[ms2Spectra](#ms2Spectra)** | list, tuple,  | tuple,  |  | [optional] 
**[ms1Spectra](#ms1Spectra)** | list, tuple,  | tuple,  |  | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, int, float, bool, decimal.Decimal, None, list, tuple, bytes, io.FileIO, io.BufferedReader | frozendict.frozendict, str, BoolClass, decimal.Decimal, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

# ms2Spectra

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**AnnotatedSpectrum**](AnnotatedSpectrum.md) | [**AnnotatedSpectrum**](AnnotatedSpectrum.md) | [**AnnotatedSpectrum**](AnnotatedSpectrum.md) |  | 

# ms1Spectra

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**AnnotatedSpectrum**](AnnotatedSpectrum.md) | [**AnnotatedSpectrum**](AnnotatedSpectrum.md) | [**AnnotatedSpectrum**](AnnotatedSpectrum.md) |  | 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

