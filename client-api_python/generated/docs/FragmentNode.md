# FragmentNode


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**fragment_id** | **int** |  | [optional] 
**molecular_formula** | **str** |  | [optional] 
**ion_type** | **str** |  | [optional] 
**mass_deviation_da** | **float** |  | [optional] 
**mass_deviation_ppm** | **float** |  | [optional] 
**score** | **float** |  | [optional] 
**intensity** | **float** |  | [optional] 
**mz** | **float** |  | [optional] 

## Example

```python
from PySirius.models.fragment_node import FragmentNode

# TODO update the JSON string below
json = "{}"
# create an instance of FragmentNode from a JSON string
fragment_node_instance = FragmentNode.from_json(json)
# print the JSON string representation of the object
print(FragmentNode.to_json())

# convert the object into a dict
fragment_node_dict = fragment_node_instance.to_dict()
# create an instance of FragmentNode from a dict
fragment_node_from_dict = FragmentNode.from_dict(fragment_node_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


