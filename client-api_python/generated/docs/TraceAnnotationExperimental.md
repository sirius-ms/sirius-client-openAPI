# TraceAnnotationExperimental

EXPERIMENTAL: This schema is experimental and may be changed (or even removed) without notice until it is declared stable.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | [**TraceAnnotationTypeExperimental**](TraceAnnotationTypeExperimental.md) |  | [optional] 
**description** | **str** |  | [optional] 
**index** | **int** |  | [optional] 
**var_from** | **int** |  | [optional] 
**to** | **int** |  | [optional] 

## Example

```python
from PySirius.models.trace_annotation_experimental import TraceAnnotationExperimental

# TODO update the JSON string below
json = "{}"
# create an instance of TraceAnnotationExperimental from a JSON string
trace_annotation_experimental_instance = TraceAnnotationExperimental.from_json(json)
# print the JSON string representation of the object
print(TraceAnnotationExperimental.to_json())

# convert the object into a dict
trace_annotation_experimental_dict = trace_annotation_experimental_instance.to_dict()
# create an instance of TraceAnnotationExperimental from a dict
trace_annotation_experimental_from_dict = TraceAnnotationExperimental.from_dict(trace_annotation_experimental_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


