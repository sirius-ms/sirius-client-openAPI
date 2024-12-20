# Rsirius::CompoundClass

Predicted compound class with name, probability and id if available.  (ClassyFire and NPC). This can be seen as the set of classes a feature most likely belongs to

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **character** | Specifies the classification ontology the CompoundClass belongs to. | [optional] [Enum: [ClassyFire, NPC]] 
**level** | **character** | Name of the level this compound class belongs to | [optional] 
**levelIndex** | **integer** | Index of the level this compound class belongs to | [optional] 
**name** | **character** | Name of the compound class. | [optional] 
**description** | **character** | Description of the compound class. | [optional] 
**id** | **integer** | Unique id of the class. Might be undefined for certain classification ontologies. | [optional] 
**probability** | **numeric** | prediction probability | [optional] 
**index** | **integer** | Absolute index of this property in the predicted vector/embedding | [optional] 
**parentId** | **integer** | Unique id of the parent class. Might be undefined for certain classification ontologies. | [optional] 
**parentName** | **character** | Name of the parent compound class. | [optional] 


