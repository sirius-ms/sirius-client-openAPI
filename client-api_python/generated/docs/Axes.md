# Axes


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**scan_number** | **List[int]** |  | [optional] 
**scan_ids** | **List[str]** |  | [optional] 
**retention_time_in_seconds** | **List[float]** |  | [optional] 

## Example

```python
from PySirius.models.axes import Axes

# TODO update the JSON string below
json = "{}"
# create an instance of Axes from a JSON string
axes_instance = Axes.from_json(json)
# print the JSON string representation of the object
print(Axes.to_json())

# convert the object into a dict
axes_dict = axes_instance.to_dict()
# create an instance of Axes from a dict
axes_from_dict = Axes.from_dict(axes_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


