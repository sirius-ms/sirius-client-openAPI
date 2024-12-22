# StoredJobSubmission


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Unique name to identify this JobSubmission (job config). | 
**job_submission** | [**JobSubmission**](JobSubmission.md) |  | 

## Example

```python
from PySirius.models.stored_job_submission import StoredJobSubmission

# TODO update the JSON string below
json = "{}"
# create an instance of StoredJobSubmission from a JSON string
stored_job_submission_instance = StoredJobSubmission.from_json(json)
# print the JSON string representation of the object
print(StoredJobSubmission.to_json())

# convert the object into a dict
stored_job_submission_dict = stored_job_submission_instance.to_dict()
# create an instance of StoredJobSubmission from a dict
stored_job_submission_from_dict = StoredJobSubmission.from_dict(stored_job_submission_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


