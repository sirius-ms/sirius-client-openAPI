# WorkerInfo


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | 
**type** | **str** |  | 
**supported_predictors** | **List[str]** |  | 
**version** | **str** |  | [optional] 
**host** | **str** |  | [optional] 
**prefix** | **str** |  | [optional] 
**state** | **int** |  | 
**alive** | **int** |  | 
**server_time** | **int** |  | 

## Example

```python
from PySirius.models.worker_info import WorkerInfo

# TODO update the JSON string below
json = "{}"
# create an instance of WorkerInfo from a JSON string
worker_info_instance = WorkerInfo.from_json(json)
# print the JSON string representation of the object
print(WorkerInfo.to_json())

# convert the object into a dict
worker_info_dict = worker_info_instance.to_dict()
# create an instance of WorkerInfo from a dict
worker_info_from_dict = WorkerInfo.from_dict(worker_info_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


