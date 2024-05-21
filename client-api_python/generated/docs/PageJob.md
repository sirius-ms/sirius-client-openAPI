# PageJob


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_pages** | **int** |  | [optional] 
**total_elements** | **int** |  | [optional] 
**size** | **int** |  | [optional] 
**content** | [**List[Job]**](Job.md) |  | [optional] 
**number** | **int** |  | [optional] 
**sort** | [**SortObject**](SortObject.md) |  | [optional] 
**last** | **bool** |  | [optional] 
**first** | **bool** |  | [optional] 
**number_of_elements** | **int** |  | [optional] 
**pageable** | [**PageableObject**](PageableObject.md) |  | [optional] 
**empty** | **bool** |  | [optional] 

## Example

```python
from PySirius.models.page_job import PageJob

# TODO update the JSON string below
json = "{}"
# create an instance of PageJob from a JSON string
page_job_instance = PageJob.from_json(json)
# print the JSON string representation of the object
print(PageJob.to_json())

# convert the object into a dict
page_job_dict = page_job_instance.to_dict()
# create an instance of PageJob from a dict
page_job_form_dict = page_job.from_dict(page_job_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


