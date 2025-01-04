# AdductNetworkExperimental

EXPERIMENTAL: This schema is experimental and may be changed (or even removed) without notice until it is declared stable.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**nodes** | [**List[AdductNodeExperimental]**](AdductNodeExperimental.md) |  | [optional] 
**edges** | [**List[AdductEdgeExperimental]**](AdductEdgeExperimental.md) |  | [optional] 

## Example

```python
from PySirius.models.adduct_network_experimental import AdductNetworkExperimental

# TODO update the JSON string below
json = "{}"
# create an instance of AdductNetworkExperimental from a JSON string
adduct_network_experimental_instance = AdductNetworkExperimental.from_json(json)
# print the JSON string representation of the object
print(AdductNetworkExperimental.to_json())

# convert the object into a dict
adduct_network_experimental_dict = adduct_network_experimental_instance.to_dict()
# create an instance of AdductNetworkExperimental from a dict
adduct_network_experimental_from_dict = AdductNetworkExperimental.from_dict(adduct_network_experimental_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


