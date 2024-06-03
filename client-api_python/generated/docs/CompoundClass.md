# CompoundClass

Predicted compound class with name, probability and id if available.  (ClassyFire and NPC). This can be seen as the set of classes a feature most likely belongs to

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | [**CompoundClassType**](CompoundClassType.md) |  | [optional] 
**level** | **str** | Name of the level this compound class belongs to | [optional] 
**name** | **str** | Name of the compound class. | [optional] 
**description** | **str** | Description of the compound class. | [optional] 
**id** | **int** | Unique id of the class. Might be undefined for certain classification ontologies. | [optional] 
**probability** | **float** | prediction probability | [optional] 
**index** | **int** | Absolute index of this property in the predicted vector/embedding | [optional] 

## Example

```python
from PySirius.models.compound_class import CompoundClass

# TODO update the JSON string below
json = "{}"
# create an instance of CompoundClass from a JSON string
compound_class_instance = CompoundClass.from_json(json)
# print the JSON string representation of the object
print(CompoundClass.to_json())

# convert the object into a dict
compound_class_dict = compound_class_instance.to_dict()
# create an instance of CompoundClass from a dict
compound_class_from_dict = CompoundClass.from_dict(compound_class_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


