# TraceExperimental

EXPERIMENTAL: This schema is experimental and may be changed (or even removed) without notice until it is declared stable.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**sample_id** | **str** |  | [optional] 
**sample_name** | **str** |  | [optional] 
**label** | **str** |  | [optional] 
**color** | **str** |  | [optional] 
**intensities** | **List[float]** |  | [optional] 
**annotations** | [**List[TraceAnnotationExperimental]**](TraceAnnotationExperimental.md) |  | [optional] 
**mz** | **float** |  | [optional] 
**merged** | **bool** |  | [optional] 
**normalization_factor** | **float** | Traces are stored with raw intensity values. The normalization factor maps them to relative intensities,  such that traces from different samples can be compared. | [optional] 
**noise_level** | **float** | The noise level is estimated from the median noise in the surrounding scans. It can be used to  calculate signal-to-noise ratios. | [optional] 

## Example

```python
from PySirius.models.trace_experimental import TraceExperimental

# TODO update the JSON string below
json = "{}"
# create an instance of TraceExperimental from a JSON string
trace_experimental_instance = TraceExperimental.from_json(json)
# print the JSON string representation of the object
print(TraceExperimental.to_json())

# convert the object into a dict
trace_experimental_dict = trace_experimental_instance.to_dict()
# create an instance of TraceExperimental from a dict
trace_experimental_from_dict = TraceExperimental.from_dict(trace_experimental_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


