# Canopus

User/developer friendly parameter subset for the CANOPUS tool  CANOPUS is parameter-free, so this object is just a flag that CANOPUS should be executed.  Needs results from the FingerprintPrediction tool.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enabled** | **bool** | Indicates whether the tool is enabled. | [optional] 

## Example

```python
from PySirius.models.canopus import Canopus

# TODO update the JSON string below
json = "{}"
# create an instance of Canopus from a JSON string
canopus_instance = Canopus.from_json(json)
# print the JSON string representation of the object
print(Canopus.to_json())

# convert the object into a dict
canopus_dict = canopus_instance.to_dict()
# create an instance of Canopus from a dict
canopus_from_dict = Canopus.from_dict(canopus_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


