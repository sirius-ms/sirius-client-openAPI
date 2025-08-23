# ZodiacAnalogueNodes


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enabled** | **bool** |  | [optional] 
**min_similarity** | **float** |  | [optional] 
**min_shared_peaks** | **int** |  | [optional] 

## Example

```python
from PySirius.models.zodiac_analogue_nodes import ZodiacAnalogueNodes

# TODO update the JSON string below
json = "{}"
# create an instance of ZodiacAnalogueNodes from a JSON string
zodiac_analogue_nodes_instance = ZodiacAnalogueNodes.from_json(json)
# print the JSON string representation of the object
print(ZodiacAnalogueNodes.to_json())

# convert the object into a dict
zodiac_analogue_nodes_dict = zodiac_analogue_nodes_instance.to_dict()
# create an instance of ZodiacAnalogueNodes from a dict
zodiac_analogue_nodes_from_dict = ZodiacAnalogueNodes.from_dict(zodiac_analogue_nodes_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


