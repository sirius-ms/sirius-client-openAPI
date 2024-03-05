# IsotopePatternAnnotation


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**isotope_pattern** | [**BasicSpectrum**](BasicSpectrum.md) |  | [optional] 
**simulated_pattern** | [**BasicSpectrum**](BasicSpectrum.md) |  | [optional] 

## Example

```python
from PySirius.models.isotope_pattern_annotation import IsotopePatternAnnotation

# TODO update the JSON string below
json = "{}"
# create an instance of IsotopePatternAnnotation from a JSON string
isotope_pattern_annotation_instance = IsotopePatternAnnotation.from_json(json)
# print the JSON string representation of the object
print IsotopePatternAnnotation.to_json()

# convert the object into a dict
isotope_pattern_annotation_dict = isotope_pattern_annotation_instance.to_dict()
# create an instance of IsotopePatternAnnotation from a dict
isotope_pattern_annotation_form_dict = isotope_pattern_annotation.from_dict(isotope_pattern_annotation_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


