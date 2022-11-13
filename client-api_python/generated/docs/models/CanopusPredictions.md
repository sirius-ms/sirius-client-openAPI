# PySirius.model.canopus_predictions.CanopusPredictions

Container class that holds the CANOPUS compound class predictions for alle predictable compound classes.  This is the full CANOPUS result.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | Container class that holds the CANOPUS compound class predictions for alle predictable compound classes.  This is the full CANOPUS result. | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**[classyFireClasses](#classyFireClasses)** | list, tuple,  | tuple,  | All predicted ClassyFire classes | [optional] 
**[npcClasses](#npcClasses)** | list, tuple,  | tuple,  | All predicted NPC classes | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, int, float, bool, decimal.Decimal, None, list, tuple, bytes, io.FileIO, io.BufferedReader | frozendict.frozendict, str, BoolClass, decimal.Decimal, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

# classyFireClasses

All predicted ClassyFire classes

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  | All predicted ClassyFire classes | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**CompoundClass**](CompoundClass.md) | [**CompoundClass**](CompoundClass.md) | [**CompoundClass**](CompoundClass.md) |  | 

# npcClasses

All predicted NPC classes

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  | All predicted NPC classes | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**CompoundClass**](CompoundClass.md) | [**CompoundClass**](CompoundClass.md) | [**CompoundClass**](CompoundClass.md) |  | 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

