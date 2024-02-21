# JobId

Identifier created by the SIRIUS Nightsky API for a newly created Job.  Object can be enriched with Job status/progress information ({@link JobProgress JobProgress}) and/or Job command information.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Unique identifier to access the job via the API | [optional] 
**command** | **str** | Command string of the executed Task | [optional] 
**progress** | [**JobProgress**](JobProgress.md) |  | [optional] 
**affected_compound_ids** | **List[str]** | List of compound ids that are affected by this job.  If this job is creating compounds (e.g. data import jobs) this value will be NULL until the jobs has finished | [optional] 

## Example

```python
from PySirius.models.job_id import JobId

# TODO update the JSON string below
json = "{}"
# create an instance of JobId from a JSON string
job_id_instance = JobId.from_json(json)
# print the JSON string representation of the object
print JobId.to_json()

# convert the object into a dict
job_id_dict = job_id_instance.to_dict()
# create an instance of JobId from a dict
job_id_form_dict = job_id.from_dict(job_id_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


