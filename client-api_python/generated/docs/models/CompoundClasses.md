# PySirius.model.compound_classes.CompoundClasses

Container class that holds the best matching compound class for different levels of each ontology for a  certain compound/feature/predicted fingerprint.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | Container class that holds the best matching compound class for different levels of each ontology for a  certain compound/feature/predicted fingerprint. | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**npcPathway** | [**CompoundClass**](CompoundClass.md) | [**CompoundClass**](CompoundClass.md) |  | [optional] 
**npcSuperclass** | [**CompoundClass**](CompoundClass.md) | [**CompoundClass**](CompoundClass.md) |  | [optional] 
**npcClass** | [**CompoundClass**](CompoundClass.md) | [**CompoundClass**](CompoundClass.md) |  | [optional] 
**classyFireMostSpecific** | [**CompoundClass**](CompoundClass.md) | [**CompoundClass**](CompoundClass.md) |  | [optional] 
**classyFireLevel5** | [**CompoundClass**](CompoundClass.md) | [**CompoundClass**](CompoundClass.md) |  | [optional] 
**classyFireClass** | [**CompoundClass**](CompoundClass.md) | [**CompoundClass**](CompoundClass.md) |  | [optional] 
**classyFireSubClass** | [**CompoundClass**](CompoundClass.md) | [**CompoundClass**](CompoundClass.md) |  | [optional] 
**classyFireSuperClass** | [**CompoundClass**](CompoundClass.md) | [**CompoundClass**](CompoundClass.md) |  | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, int, float, bool, decimal.Decimal, None, list, tuple, bytes, io.FileIO, io.BufferedReader | frozendict.frozendict, str, BoolClass, decimal.Decimal, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

