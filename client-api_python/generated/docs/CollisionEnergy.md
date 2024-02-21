# CollisionEnergy



## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**min_energy** | **float** |  | [optional] 
**max_energy** | **float** |  | [optional] 
**corrected** | **bool** |  | [optional] 

## Example

```python
from PySirius.models.collision_energy import CollisionEnergy

# TODO update the JSON string below
json = "{}"
# create an instance of CollisionEnergy from a JSON string
collision_energy_instance = CollisionEnergy.from_json(json)
# print the JSON string representation of the object
print CollisionEnergy.to_json()

# convert the object into a dict
collision_energy_dict = collision_energy_instance.to_dict()
# create an instance of CollisionEnergy from a dict
collision_energy_form_dict = collision_energy.from_dict(collision_energy_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


