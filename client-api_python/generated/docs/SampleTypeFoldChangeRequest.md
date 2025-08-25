# SampleTypeFoldChangeRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sample_run_ids** | **List[str]** |  | [optional] 
**blank_run_ids** | **List[str]** |  | [optional] 
**control_run_ids** | **List[str]** |  | [optional] 

## Example

```python
from PySirius.models.sample_type_fold_change_request import SampleTypeFoldChangeRequest

# TODO update the JSON string below
json = "{}"
# create an instance of SampleTypeFoldChangeRequest from a JSON string
sample_type_fold_change_request_instance = SampleTypeFoldChangeRequest.from_json(json)
# print the JSON string representation of the object
print(SampleTypeFoldChangeRequest.to_json())

# convert the object into a dict
sample_type_fold_change_request_dict = sample_type_fold_change_request_instance.to_dict()
# create an instance of SampleTypeFoldChangeRequest from a dict
sample_type_fold_change_request_from_dict = SampleTypeFoldChangeRequest.from_dict(sample_type_fold_change_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


