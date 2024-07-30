# MsData

The MsData wraps all spectral input data belonging to a (aligned) feature. All spectra fields are optional.  However, at least one Spectrum field needs to be set to create a valid MsData Object.  The different types of spectra fields can be extended to adapt to other MassSpec measurement techniques not covered yet.  <p>  Each Feature can have:  - One merged MS/MS spectrum (optional)  - One merged MS spectrum (optional)  - many MS/MS spectra (optional)  - many MS spectra (optional)  <p>  Each non-merged spectrum has an index which can be used to access the spectrum.  <p>  In the future we might add some additional information like chromatographic peak or something similar

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**merged_ms1** | [**BasicSpectrum**](BasicSpectrum.md) |  | [optional] 
**merged_ms2** | [**BasicSpectrum**](BasicSpectrum.md) |  | [optional] 
**ms1_spectra** | [**List[BasicSpectrum]**](BasicSpectrum.md) |  | [optional] 
**ms2_spectra** | [**List[BasicSpectrum]**](BasicSpectrum.md) |  | [optional] 

## Example

```python
from PySirius.models.ms_data import MsData

# TODO update the JSON string below
json = "{}"
# create an instance of MsData from a JSON string
ms_data_instance = MsData.from_json(json)
# print the JSON string representation of the object
print(MsData.to_json())

# convert the object into a dict
ms_data_dict = ms_data_instance.to_dict()
# create an instance of MsData from a dict
ms_data_from_dict = MsData.from_dict(ms_data_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


