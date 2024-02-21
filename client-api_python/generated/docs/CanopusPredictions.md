# CanopusPredictions

Container class that holds the CANOPUS compound class predictions for alle predictable compound classes.  This is the full CANOPUS result.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**classy_fire_classes** | [**List[CompoundClass]**](CompoundClass.md) | All predicted ClassyFire classes | [optional] 
**npc_classes** | [**List[CompoundClass]**](CompoundClass.md) | All predicted NPC classes | [optional] 

## Example

```python
from PySirius.models.canopus_predictions import CanopusPredictions

# TODO update the JSON string below
json = "{}"
# create an instance of CanopusPredictions from a JSON string
canopus_predictions_instance = CanopusPredictions.from_json(json)
# print the JSON string representation of the object
print CanopusPredictions.to_json()

# convert the object into a dict
canopus_predictions_dict = canopus_predictions_instance.to_dict()
# create an instance of CanopusPredictions from a dict
canopus_predictions_form_dict = canopus_predictions.from_dict(canopus_predictions_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


