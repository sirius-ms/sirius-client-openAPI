# BasicSpectrum


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Optional Displayable name of this spectrum. | [optional] 
**ms_level** | **int** | MS level of the measured spectrum.  Artificial spectra with no msLevel (e.g. Simulated Isotope patterns) use null or zero | [optional] 
**collision_energy** | **str** | Collision energy used for MS/MS spectra  Null for spectra where collision energy is not applicable | [optional] 
**precursor_mz** | **float** | Precursor m/z of the MS/MS spectrum  Null for spectra where precursor m/z is not applicable | [optional] 
**scan_number** | **int** | Scan number of the spectrum.  Might be null for artificial spectra with no scan number (e.g. Simulated Isotope patterns or merged spectra) | [optional] 
**peaks** | [**List[SimplePeak]**](SimplePeak.md) | The peaks of this spectrum which might contain additional annotations such as molecular formulas. | 
**abs_intensity_factor** | **float** | Factor to convert relative intensities to absolute intensities.  Might be null or 1 for spectra where absolute intensities are not available (E.g. artificial or merged spectra) | [optional] 

## Example

```python
from PySirius.models.basic_spectrum import BasicSpectrum

# TODO update the JSON string below
json = "{}"
# create an instance of BasicSpectrum from a JSON string
basic_spectrum_instance = BasicSpectrum.from_json(json)
# print the JSON string representation of the object
print(BasicSpectrum.to_json())

# convert the object into a dict
basic_spectrum_dict = basic_spectrum_instance.to_dict()
# create an instance of BasicSpectrum from a dict
basic_spectrum_form_dict = basic_spectrum.from_dict(basic_spectrum_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


