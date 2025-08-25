# AnnotatedSpectrum

Spectrum model with peak annotations based on the fragmentation tree and Epimetheus substructure annotations.  Molecular formula and adduct of the spectrum are identical to the ones of the corresponding molecular formula candidate and FragmentationTree.  Fragment molecular formulas and adducts correspond to the FragmentationTree's FragmentNodes

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
**precursor_peak** | [**SimplePeak**](SimplePeak.md) | A separate precursor peak field to either mark the precursor in the peaklist or  provide the precursor peak separately from the spectrum in case the spectrum is in a preprocessed form where  the precursor peak has been removed for library matching.   NULL if the spectrum does not contain the precursor peak. | [optional] 
**peaks** | [**List[AnnotatedPeak]**](AnnotatedPeak.md) | The peaks of this spectrum which might contain additional annotations such as molecular formulas. | 
**abs_intensity_factor** | **float** | Factor to convert relative intensities to absolute intensities.  Might be null or 1 for spectra where absolute intensities are not available (E.g. artificial or merged spectra)  &lt;p&gt;  DEPRECATED: Spectra are always returned with raw intensities.  Use provided normalization factors to normalize on the fly. | [optional] 
**max_norm_factor** | **float** | Factor to convert absolute intensities to MAX norm. | [optional] 
**sum_norm_factor** | **float** | Factor to convert absolute intensities to SUM norm. | [optional] 
**l2_norm_factor** | **float** | Factor to convert absolute intensities to L2 (Euclidean) norm. | [optional] 
**first_peak_norm_factor** | **float** | Factor to convert absolute intensities to normalize intensities by first peak intensity. | [optional] 
**spectrum_annotation** | [**SpectrumAnnotation**](SpectrumAnnotation.md) | Optional Annotations of this spectrum. | [optional] 

## Example

```python
from PySirius.models.annotated_spectrum import AnnotatedSpectrum

# TODO update the JSON string below
json = "{}"
# create an instance of AnnotatedSpectrum from a JSON string
annotated_spectrum_instance = AnnotatedSpectrum.from_json(json)
# print the JSON string representation of the object
print(AnnotatedSpectrum.to_json())

# convert the object into a dict
annotated_spectrum_dict = annotated_spectrum_instance.to_dict()
# create an instance of AnnotatedSpectrum from a dict
annotated_spectrum_from_dict = AnnotatedSpectrum.from_dict(annotated_spectrum_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


