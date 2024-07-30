# Trace


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**sample_id** | **int** |  | [optional] 
**sample_name** | **str** |  | [optional] 
**label** | **str** |  | [optional] 
**intensities** | **List[float]** |  | [optional] 
**annotations** | [**List[Annotation]**](Annotation.md) |  | [optional] 
**mz** | **float** |  | [optional] 
**merged** | **bool** |  | [optional] 
**normalization_factor** | **float** | Traces are stored with raw intensity values. The normalization factor maps them to relative intensities,  such that traces from different samples can be compared. | [optional] 
**noise_level** | **float** | The noise level is estimated from the median noise in the surrounding scans. It can be used to  calculate signal-to-noise ratios. | [optional] 

## Example

```python
from PySirius.models.trace import Trace

# TODO update the JSON string below
json = "{}"
# create an instance of Trace from a JSON string
trace_instance = Trace.from_json(json)
# print the JSON string representation of the object
print(Trace.to_json())

# convert the object into a dict
trace_dict = trace_instance.to_dict()
# create an instance of Trace from a dict
trace_from_dict = Trace.from_dict(trace_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


