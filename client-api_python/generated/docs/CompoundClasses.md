# CompoundClasses

Container class that holds the best matching compound class for different levels of each ontology for a  certain compound/feature/predicted fingerprint.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**npc_pathway** | [**CompoundClass**](CompoundClass.md) |  | [optional] 
**npc_superclass** | [**CompoundClass**](CompoundClass.md) |  | [optional] 
**npc_class** | [**CompoundClass**](CompoundClass.md) |  | [optional] 
**classy_fire_most_specific** | [**CompoundClass**](CompoundClass.md) |  | [optional] 
**classy_fire_level5** | [**CompoundClass**](CompoundClass.md) |  | [optional] 
**classy_fire_class** | [**CompoundClass**](CompoundClass.md) |  | [optional] 
**classy_fire_sub_class** | [**CompoundClass**](CompoundClass.md) |  | [optional] 
**classy_fire_super_class** | [**CompoundClass**](CompoundClass.md) |  | [optional] 

## Example

```python
from PySirius.models.compound_classes import CompoundClasses

# TODO update the JSON string below
json = "{}"
# create an instance of CompoundClasses from a JSON string
compound_classes_instance = CompoundClasses.from_json(json)
# print the JSON string representation of the object
print CompoundClasses.to_json()

# convert the object into a dict
compound_classes_dict = compound_classes_instance.to_dict()
# create an instance of CompoundClasses from a dict
compound_classes_form_dict = compound_classes.from_dict(compound_classes_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


