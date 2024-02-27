# LossEdge



## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**source_fragment_idx** | **int** |  | [optional] 
**target_fragment_idx** | **int** |  | [optional] 
**molecular_formula** | **str** |  | [optional] 
**score** | **float** |  | [optional] 

## Example

```python
from PySirius.models.loss_edge import LossEdge

# TODO update the JSON string below
json = "{}"
# create an instance of LossEdge from a JSON string
loss_edge_instance = LossEdge.from_json(json)
# print the JSON string representation of the object
print LossEdge.to_json()

# convert the object into a dict
loss_edge_dict = loss_edge_instance.to_dict()
# create an instance of LossEdge from a dict
loss_edge_form_dict = loss_edge.from_dict(loss_edge_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


