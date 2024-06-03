# TraceSet


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sample_id** | **int** |  | [optional] 
**sample_name** | **str** |  | [optional] 
**axes** | [**Axes**](Axes.md) |  | [optional] 
**traces** | [**List[Trace]**](Trace.md) |  | [optional] 

## Example

```python
from PySirius.models.trace_set import TraceSet

# TODO update the JSON string below
json = "{}"
# create an instance of TraceSet from a JSON string
trace_set_instance = TraceSet.from_json(json)
# print the JSON string representation of the object
print(TraceSet.to_json())

# convert the object into a dict
trace_set_dict = trace_set_instance.to_dict()
# create an instance of TraceSet from a dict
trace_set_from_dict = TraceSet.from_dict(trace_set_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


