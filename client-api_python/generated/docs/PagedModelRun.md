# PagedModelRun


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**content** | [**List[Run]**](Run.md) |  | [optional] 
**page** | [**PageMetadata**](PageMetadata.md) |  | [optional] 

## Example

```python
from PySirius.models.paged_model_run import PagedModelRun

# TODO update the JSON string below
json = "{}"
# create an instance of PagedModelRun from a JSON string
paged_model_run_instance = PagedModelRun.from_json(json)
# print the JSON string representation of the object
print(PagedModelRun.to_json())

# convert the object into a dict
paged_model_run_dict = paged_model_run_instance.to_dict()
# create an instance of PagedModelRun from a dict
paged_model_run_from_dict = PagedModelRun.from_dict(paged_model_run_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


