# FragmentationTree



## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**fragments** | [**List[FragmentNode]**](FragmentNode.md) |  | [optional] 
**losses** | [**List[LossEdge]**](LossEdge.md) |  | [optional] 
**tree_score** | **float** |  | [optional] 
**root** | [**FragmentNode**](FragmentNode.md) |  | [optional] 

## Example

```python
from PySirius.models.fragmentation_tree import FragmentationTree

# TODO update the JSON string below
json = "{}"
# create an instance of FragmentationTree from a JSON string
fragmentation_tree_instance = FragmentationTree.from_json(json)
# print the JSON string representation of the object
print FragmentationTree.to_json()

# convert the object into a dict
fragmentation_tree_dict = fragmentation_tree_instance.to_dict()
# create an instance of FragmentationTree from a dict
fragmentation_tree_form_dict = fragmentation_tree.from_dict(fragmentation_tree_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


