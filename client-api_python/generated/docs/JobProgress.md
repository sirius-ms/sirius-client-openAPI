# JobProgress

Progress information of a computation job that has already been submitted to SIRIUS.  if  currentProgress == maxProgress job is finished and should change to state done soon.  if a job is DONE all results can be accessed via the Project-Spaces api.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**indeterminate** | **bool** | Is the progress indeterminate or not | [optional] 
**state** | [**JobState**](JobState.md) |  | [optional] 
**current_progress** | **int** | Current progress value of the job. | [optional] 
**max_progress** | **int** | Progress value to reach (might also change during execution) | [optional] 
**message** | **str** | Progress information and warnings. | [optional] 
**error_message** | **str** | Error message if the job did not finish successfully failed. | [optional] 

## Example

```python
from PySirius.models.job_progress import JobProgress

# TODO update the JSON string below
json = "{}"
# create an instance of JobProgress from a JSON string
job_progress_instance = JobProgress.from_json(json)
# print the JSON string representation of the object
print(JobProgress.to_json())

# convert the object into a dict
job_progress_dict = job_progress_instance.to_dict()
# create an instance of JobProgress from a dict
job_progress_from_dict = JobProgress.from_dict(job_progress_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


