# PagedModelJob


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**content** | [**List[Job]**](Job.md) |  | [optional] 
**page** | [**PageMetadata**](PageMetadata.md) |  | [optional] 

## Example

```python
from PySirius.models.paged_model_job import PagedModelJob

# TODO update the JSON string below
json = "{}"
# create an instance of PagedModelJob from a JSON string
paged_model_job_instance = PagedModelJob.from_json(json)
# print the JSON string representation of the object
print(PagedModelJob.to_json())

# convert the object into a dict
paged_model_job_dict = paged_model_job_instance.to_dict()
# create an instance of PagedModelJob from a dict
paged_model_job_from_dict = PagedModelJob.from_dict(paged_model_job_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


