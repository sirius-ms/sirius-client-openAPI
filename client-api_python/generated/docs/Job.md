# Job

Identifier created by the SIRIUS Nightsky API for a newly created Job.  Object can be enriched with Job status/progress information ({@link JobProgress JobProgress}) and/or Job command information.  This is a return value of the API. So nullable values can also be NOT_REQUIRED to allow for easy removal.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Unique identifier to access the job via the API | [optional] 
**command** | **str** | Command string of the executed Task | [optional] 
**progress** | [**JobProgress**](JobProgress.md) |  | [optional] 
**affected_compound_ids** | **List[Optional[str]]** | List of compoundIds that are affected by this job.  This lis will also contain compoundIds where not all features of the compound are affected by the job.  If this job is creating compounds (e.g. data import jobs) this value will be NULL until the jobs has finished | [optional] 
**affected_aligned_feature_ids** | **List[Optional[str]]** | List of alignedFeatureIds that are affected by this job.  If this job is creating features (e.g. data import jobs) this value will be NULL until the jobs has finished | [optional] 

## Example

```python
from PySirius.models.job import Job

# TODO update the JSON string below
json = "{}"
# create an instance of Job from a JSON string
job_instance = Job.from_json(json)
# print the JSON string representation of the object
print(Job.to_json())

# convert the object into a dict
job_dict = job_instance.to_dict()
# create an instance of Job from a dict
job_from_dict = Job.from_dict(job_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


