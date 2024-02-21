# ZodiacEdgeFilterThresholds



## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**threshold_filter** | **float** |  | [optional] 
**min_local_candidates** | **int** |  | [optional] 
**min_local_connections** | **int** |  | [optional] 

## Example

```python
from PySirius.models.zodiac_edge_filter_thresholds import ZodiacEdgeFilterThresholds

# TODO update the JSON string below
json = "{}"
# create an instance of ZodiacEdgeFilterThresholds from a JSON string
zodiac_edge_filter_thresholds_instance = ZodiacEdgeFilterThresholds.from_json(json)
# print the JSON string representation of the object
print ZodiacEdgeFilterThresholds.to_json()

# convert the object into a dict
zodiac_edge_filter_thresholds_dict = zodiac_edge_filter_thresholds_instance.to_dict()
# create an instance of ZodiacEdgeFilterThresholds from a dict
zodiac_edge_filter_thresholds_form_dict = zodiac_edge_filter_thresholds.from_dict(zodiac_edge_filter_thresholds_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


