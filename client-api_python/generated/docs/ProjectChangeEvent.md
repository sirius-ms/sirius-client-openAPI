# ProjectChangeEvent


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**event_type** | **str** |  | [optional] 
**project_id** | **str** |  | [optional] 
**compound_id** | **str** |  | [optional] 
**featured_id** | **str** |  | [optional] 
**formula_id** | **str** |  | [optional] 
**structure_in_ch_i_key** | **str** |  | [optional] 

## Example

```python
from PySirius.models.project_change_event import ProjectChangeEvent

# TODO update the JSON string below
json = "{}"
# create an instance of ProjectChangeEvent from a JSON string
project_change_event_instance = ProjectChangeEvent.from_json(json)
# print the JSON string representation of the object
print ProjectChangeEvent.to_json()

# convert the object into a dict
project_change_event_dict = project_change_event_instance.to_dict()
# create an instance of ProjectChangeEvent from a dict
project_change_event_form_dict = project_change_event.from_dict(project_change_event_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


