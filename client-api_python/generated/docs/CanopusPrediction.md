# CanopusPrediction

Container class that holds the CANOPUS compound class predictions for alle predictable compound classes.  This is the full CANOPUS result.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**classy_fire_classes** | [**List[CompoundClass]**](CompoundClass.md) | All predicted ClassyFire classes | [optional] 
**npc_classes** | [**List[CompoundClass]**](CompoundClass.md) | All predicted NPC classes | [optional] 

## Example

```python
from PySirius.models.canopus_prediction import CanopusPrediction

# TODO update the JSON string below
json = "{}"
# create an instance of CanopusPrediction from a JSON string
canopus_prediction_instance = CanopusPrediction.from_json(json)
# print the JSON string representation of the object
print(CanopusPrediction.to_json())

# convert the object into a dict
canopus_prediction_dict = canopus_prediction_instance.to_dict()
# create an instance of CanopusPrediction from a dict
canopus_prediction_form_dict = canopus_prediction.from_dict(canopus_prediction_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


