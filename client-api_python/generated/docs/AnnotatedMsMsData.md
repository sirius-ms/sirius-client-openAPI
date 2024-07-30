# AnnotatedMsMsData


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**merged_ms2** | [**AnnotatedSpectrum**](AnnotatedSpectrum.md) |  | 
**ms2_spectra** | [**List[AnnotatedSpectrum]**](AnnotatedSpectrum.md) |  | 

## Example

```python
from PySirius.models.annotated_ms_ms_data import AnnotatedMsMsData

# TODO update the JSON string below
json = "{}"
# create an instance of AnnotatedMsMsData from a JSON string
annotated_ms_ms_data_instance = AnnotatedMsMsData.from_json(json)
# print the JSON string representation of the object
print(AnnotatedMsMsData.to_json())

# convert the object into a dict
annotated_ms_ms_data_dict = annotated_ms_ms_data_instance.to_dict()
# create an instance of AnnotatedMsMsData from a dict
annotated_ms_ms_data_from_dict = AnnotatedMsMsData.from_dict(annotated_ms_ms_data_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


