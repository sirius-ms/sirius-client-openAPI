# RSirius::CompoundClass

Predicted compound class with name, probability and id if available.  (ClassyFire and NPC). This can be seen as the set of classes a compound most likely belongs to

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **character** | Specifies the classification ontology the CompoundClass belongs to. | [optional] [Enum: [ClassyFire, NPC]] 
**name** | **character** | Name of the compound class. | [optional] 
**description** | **character** | Description of the compound class. | [optional] 
**id** | **integer** | Unique id of the class. Might be undefined for certain classification ontologies. | [optional] 
**probability** | **numeric** | prediction probability | [optional] 


