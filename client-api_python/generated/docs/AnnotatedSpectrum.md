# AnnotatedSpectrum



## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ms_level** | **int** | MS level of the measured spectrum.  Artificial spectra with no msLevel (e.g. Simulated Isotope patterns) use 0 | [optional] 
**collision_energy** | [**CollisionEnergy**](CollisionEnergy.md) |  | [optional] 
**peaks** | [**List[AnnotatedPeak]**](AnnotatedPeak.md) |  | [optional] 

## Example

```python
from PySirius.models.annotated_spectrum import AnnotatedSpectrum

# TODO update the JSON string below
json = "{}"
# create an instance of AnnotatedSpectrum from a JSON string
annotated_spectrum_instance = AnnotatedSpectrum.from_json(json)
# print the JSON string representation of the object
print AnnotatedSpectrum.to_json()

# convert the object into a dict
annotated_spectrum_dict = annotated_spectrum_instance.to_dict()
# create an instance of AnnotatedSpectrum from a dict
annotated_spectrum_form_dict = annotated_spectrum.from_dict(annotated_spectrum_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


