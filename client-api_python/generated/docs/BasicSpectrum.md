# BasicSpectrum


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Optional Displayable name of this spectrum. | [optional] 
**ms_level** | **int** | MS level of the measured spectrum.  Artificial spectra with no msLevel (e.g. Simulated Isotope patterns) use null or zero | [optional] 
**collision_energy** | **str** | Collision energy used for MS/MS spectra  Null for spectra where collision energy is not applicable | [optional] 
**instrument** | **str** | Instrument information. | [optional] 
**precursor_mz** | **float** | Precursor m/z of the MS/MS spectrum  Null for spectra where precursor m/z is not applicable | [optional] 
**scan_number** | **int** | Scan number of the spectrum.  Might be null for artificial spectra with no scan number (e.g. Simulated Isotope patterns or merged spectra) | [optional] 
**cosine_query** | **bool** | True if spectrum is in cosine query normalized format.  Such spectrum is compatible with SpectralLibraryMatch peak assignments to reference spectra. | [default to False]
**precursor_peak** | [**SimplePeak**](SimplePeak.md) |  | [optional] 
**peaks** | [**List[SimplePeak]**](SimplePeak.md) | The peaks of this spectrum which might contain additional annotations such as molecular formulas. | 
**abs_intensity_factor** | **float** | Factor to convert relative intensities to absolute intensities.  Might be null or 1 for spectra where absolute intensities are not available (E.g. artificial or merged spectra)  &lt;p&gt;  DEPRECATED: Spectra are always returned with raw intensities.  Use provided normalization factors to normalize on the fly. | [optional] 
**max_norm_factor** | **float** | Factor to convert absolute intensities to MAX norm. | [optional] 
**sum_norm_factor** | **float** | Factor to convert absolute intensities to SUM norm. | [optional] 
**l2_norm_factor** | **float** | Factor to convert absolute intensities to L2 (Euclidean) norm. | [optional] 
**first_peak_norm_factor** | **float** | Factor to convert absolute intensities to normalize intensities by first peak intensity. | [optional] 

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
basic_spectrum_from_dict = BasicSpectrum.from_dict(basic_spectrum_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


