# CompoundClasses

Container class that holds the most likely compound class for different levels of each ontology for a  certain Compound/Feature/FormulaCandidate/PredictedFingerprint.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**npc_pathway** | [**CompoundClass**](CompoundClass.md) | Pathway level NPC class with the highest probability | [optional] 
**npc_superclass** | [**CompoundClass**](CompoundClass.md) | Superclass level NPC class with the highest probability | [optional] 
**npc_class** | [**CompoundClass**](CompoundClass.md) | Class level NPC class with the highest probability | [optional] 
**classy_fire_lineage** | [**List[CompoundClass]**](CompoundClass.md) | Most likely ClassyFire lineage from ordered from least specific to most specific class  classyFireLineage.get(classyFireLineage.size() - 1) gives the most specific ClassyFire compound class annotation | [optional] 
**classy_fire_alternatives** | [**List[CompoundClass]**](CompoundClass.md) | Alternative ClassyFire classes with high probability that do not fit into the linage | [optional] 

## Example

```python
from PySirius.models.compound_classes import CompoundClasses

# TODO update the JSON string below
json = "{}"
# create an instance of CompoundClasses from a JSON string
compound_classes_instance = CompoundClasses.from_json(json)
# print the JSON string representation of the object
print(CompoundClasses.to_json())

# convert the object into a dict
compound_classes_dict = compound_classes_instance.to_dict()
# create an instance of CompoundClasses from a dict
compound_classes_from_dict = CompoundClasses.from_dict(compound_classes_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


