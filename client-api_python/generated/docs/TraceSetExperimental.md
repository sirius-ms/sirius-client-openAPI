# TraceSetExperimental

EXPERIMENTAL: This schema is experimental and may be changed (or even removed) without notice until it is declared stable.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**adduct_network** | [**AdductNetworkExperimental**](AdductNetworkExperimental.md) |  | [optional] 
**sample_id** | **int** |  | [optional] 
**sample_name** | **str** |  | [optional] 
**axes** | [**Axes**](Axes.md) |  | [optional] 
**traces** | [**List[TraceExperimental]**](TraceExperimental.md) |  | [optional] 

## Example

```python
from PySirius.models.trace_set_experimental import TraceSetExperimental

# TODO update the JSON string below
json = "{}"
# create an instance of TraceSetExperimental from a JSON string
trace_set_experimental_instance = TraceSetExperimental.from_json(json)
# print the JSON string representation of the object
print(TraceSetExperimental.to_json())

# convert the object into a dict
trace_set_experimental_dict = trace_set_experimental_instance.to_dict()
# create an instance of TraceSetExperimental from a dict
trace_set_experimental_from_dict = TraceSetExperimental.from_dict(trace_set_experimental_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


