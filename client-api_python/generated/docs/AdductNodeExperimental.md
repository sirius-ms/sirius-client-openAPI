# AdductNodeExperimental

EXPERIMENTAL: This schema is experimental and may be changed (or even removed) without notice until it is declared stable.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**aligned_feature_id** | **str** |  | [optional] 
**mz** | **float** |  | [optional] 
**adduct_annotations** | **Dict[str, float]** |  | [optional] 

## Example

```python
from PySirius.models.adduct_node_experimental import AdductNodeExperimental

# TODO update the JSON string below
json = "{}"
# create an instance of AdductNodeExperimental from a JSON string
adduct_node_experimental_instance = AdductNodeExperimental.from_json(json)
# print the JSON string representation of the object
print(AdductNodeExperimental.to_json())

# convert the object into a dict
adduct_node_experimental_dict = adduct_node_experimental_instance.to_dict()
# create an instance of AdductNodeExperimental from a dict
adduct_node_experimental_from_dict = AdductNodeExperimental.from_dict(adduct_node_experimental_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


