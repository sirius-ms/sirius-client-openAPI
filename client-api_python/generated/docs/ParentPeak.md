# ParentPeak

Link from annotated fragment peak to its parent fragment peak connected by their neutral loss.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**parent_idx** | **int** | Index to the parent peak connected by this loss in this particular spectrum | 
**parent_fragment_id** | **int** | Identifier of the parent fragment connected via this loss. Can be used to map fragments and peaks  among fragmentation trees and spectra. | 
**loss_formula** | **str** | Molecular formula of the neutral loss that connects these two peaks. | 

## Example

```python
from PySirius.models.parent_peak import ParentPeak

# TODO update the JSON string below
json = "{}"
# create an instance of ParentPeak from a JSON string
parent_peak_instance = ParentPeak.from_json(json)
# print the JSON string representation of the object
print(ParentPeak.to_json())

# convert the object into a dict
parent_peak_dict = parent_peak_instance.to_dict()
# create an instance of ParentPeak from a dict
parent_peak_from_dict = ParentPeak.from_dict(parent_peak_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


