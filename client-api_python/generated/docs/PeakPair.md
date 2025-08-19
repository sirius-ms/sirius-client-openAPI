# PeakPair


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**query_peak** | **int** |  | 
**reference_peak** | **int** |  | 

## Example

```python
from PySirius.models.peak_pair import PeakPair

# TODO update the JSON string below
json = "{}"
# create an instance of PeakPair from a JSON string
peak_pair_instance = PeakPair.from_json(json)
# print the JSON string representation of the object
print(PeakPair.to_json())

# convert the object into a dict
peak_pair_dict = peak_pair_instance.to_dict()
# create an instance of PeakPair from a dict
peak_pair_from_dict = PeakPair.from_dict(peak_pair_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


