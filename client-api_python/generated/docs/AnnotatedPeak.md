# AnnotatedPeak



## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**mz** | **float** |  | [optional] 
**intensity** | **float** |  | [optional] 
**peak_annotation** | [**PeakAnnotation**](PeakAnnotation.md) |  | [optional] 

## Example

```python
from PySirius.models.annotated_peak import AnnotatedPeak

# TODO update the JSON string below
json = "{}"
# create an instance of AnnotatedPeak from a JSON string
annotated_peak_instance = AnnotatedPeak.from_json(json)
# print the JSON string representation of the object
print AnnotatedPeak.to_json()

# convert the object into a dict
annotated_peak_dict = annotated_peak_instance.to_dict()
# create an instance of AnnotatedPeak from a dict
annotated_peak_form_dict = annotated_peak.from_dict(annotated_peak_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


