# PySirius.model.compound_class.CompoundClass

Predicted compound class with name, probability and id if available.  (ClassyFire and NPC). This can be seen as the set of classes a compound most likely belongs to

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | Predicted compound class with name, probability and id if available.  (ClassyFire and NPC). This can be seen as the set of classes a compound most likely belongs to | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**type** | str,  | str,  | Specifies the classification ontology the CompoundClass belongs to. | [optional] must be one of ["ClassyFire", "NPC", ] 
**name** | str,  | str,  | Name of the compound class. | [optional] 
**description** | str,  | str,  | Description of the compound class. | [optional] 
**id** | decimal.Decimal, int,  | decimal.Decimal,  | Unique id of the class. Might be undefined for certain classification ontologies. | [optional] value must be a 32 bit integer
**probability** | decimal.Decimal, int, float,  | decimal.Decimal,  | prediction probability | [optional] value must be a 64 bit float
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, int, float, bool, decimal.Decimal, None, list, tuple, bytes, io.FileIO, io.BufferedReader | frozendict.frozendict, str, BoolClass, decimal.Decimal, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

