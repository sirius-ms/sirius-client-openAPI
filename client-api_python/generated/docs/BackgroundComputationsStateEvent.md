# BackgroundComputationsStateEvent


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**affected_jobs** | [**List[Job]**](Job.md) |  | 
**number_of_jobs** | **int** |  | 
**number_of_running_jobs** | **int** |  | 
**number_of_finished_jobs** | **int** |  | 

## Example

```python
from PySirius.models.background_computations_state_event import BackgroundComputationsStateEvent

# TODO update the JSON string below
json = "{}"
# create an instance of BackgroundComputationsStateEvent from a JSON string
background_computations_state_event_instance = BackgroundComputationsStateEvent.from_json(json)
# print the JSON string representation of the object
print(BackgroundComputationsStateEvent.to_json())

# convert the object into a dict
background_computations_state_event_dict = background_computations_state_event_instance.to_dict()
# create an instance of BackgroundComputationsStateEvent from a dict
background_computations_state_event_from_dict = BackgroundComputationsStateEvent.from_dict(background_computations_state_event_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


