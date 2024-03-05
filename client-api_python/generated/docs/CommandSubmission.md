# CommandSubmission


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**compound_ids** | **List[Optional[str]]** | Compounds that should be the input for this Job  Will be converted to the respective alignedFeatureIds for computation.   At least one compoundId or alignedFeatureId needs to be specified. | [optional] 
**aligned_feature_ids** | **List[Optional[str]]** | Features (aligned over runs) that should be the input for this Job   At least one compoundId or alignedFeatureId needs to be specified. | [optional] 
**command** | **List[str]** |  | 
**input_paths** | **List[str]** |  | [optional] 

## Example

```python
from PySirius.models.command_submission import CommandSubmission

# TODO update the JSON string below
json = "{}"
# create an instance of CommandSubmission from a JSON string
command_submission_instance = CommandSubmission.from_json(json)
# print the JSON string representation of the object
print CommandSubmission.to_json()

# convert the object into a dict
command_submission_dict = command_submission_instance.to_dict()
# create an instance of CommandSubmission from a dict
command_submission_form_dict = command_submission.from_dict(command_submission_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


