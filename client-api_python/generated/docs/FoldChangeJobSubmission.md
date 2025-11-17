# FoldChangeJobSubmission


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**left_run_group** | **str** |  | [optional] 
**right_run_group** | **str** |  | [optional] 
**aggregation_types** | [**List[AggregationType]**](AggregationType.md) |  | [optional] 
**quantification_measures** | [**List[QuantMeasure]**](QuantMeasure.md) |  | [optional] 

## Example

```python
from PySirius.models.fold_change_job_submission import FoldChangeJobSubmission

# TODO update the JSON string below
json = "{}"
# create an instance of FoldChangeJobSubmission from a JSON string
fold_change_job_submission_instance = FoldChangeJobSubmission.from_json(json)
# print the JSON string representation of the object
print(FoldChangeJobSubmission.to_json())

# convert the object into a dict
fold_change_job_submission_dict = fold_change_job_submission_instance.to_dict()
# create an instance of FoldChangeJobSubmission from a dict
fold_change_job_submission_from_dict = FoldChangeJobSubmission.from_dict(fold_change_job_submission_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


