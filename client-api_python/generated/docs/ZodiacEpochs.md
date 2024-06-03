# ZodiacEpochs


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**iterations** | **int** |  | [optional] 
**burn_in_period** | **int** |  | [optional] 
**number_of_markov_chains** | **int** |  | [optional] 

## Example

```python
from PySirius.models.zodiac_epochs import ZodiacEpochs

# TODO update the JSON string below
json = "{}"
# create an instance of ZodiacEpochs from a JSON string
zodiac_epochs_instance = ZodiacEpochs.from_json(json)
# print the JSON string representation of the object
print(ZodiacEpochs.to_json())

# convert the object into a dict
zodiac_epochs_dict = zodiac_epochs_instance.to_dict()
# create an instance of ZodiacEpochs from a dict
zodiac_epochs_from_dict = ZodiacEpochs.from_dict(zodiac_epochs_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


