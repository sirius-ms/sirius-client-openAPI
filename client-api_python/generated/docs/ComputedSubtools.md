# ComputedSubtools

Specifies which tools have been executed for this feature. Can be used to estimate which results can be expected. Null if it was not requested und non-null otherwise.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**library_search** | **bool** |  | [optional] 
**formula_search** | **bool** |  | [optional] 
**zodiac** | **bool** |  | [optional] 
**fingerprint** | **bool** |  | [optional] 
**canopus** | **bool** |  | [optional] 
**structure_search** | **bool** |  | [optional] 
**de_novo_search** | **bool** |  | [optional] 

## Example

```python
from PySirius.models.computed_subtools import ComputedSubtools

# TODO update the JSON string below
json = "{}"
# create an instance of ComputedSubtools from a JSON string
computed_subtools_instance = ComputedSubtools.from_json(json)
# print the JSON string representation of the object
print(ComputedSubtools.to_json())

# convert the object into a dict
computed_subtools_dict = computed_subtools_instance.to_dict()
# create an instance of ComputedSubtools from a dict
computed_subtools_from_dict = ComputedSubtools.from_dict(computed_subtools_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


