# TagDefinitionImport


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**tag_name** | **str** | Name of this tag defined by this definition (key) | 
**description** | **str** | A human-readable description about the purpose of this tag. | [optional] 
**tag_type** | **str** | A simple string based identifier to specify the type/scope/purpose of this tag. | [optional] 
**value_type** | [**ValueType**](ValueType.md) |  | 
**possible_values** | **List[Optional[object]]** |  | [optional] 
**min_value** | **object** |  | [optional] 
**max_value** | **object** |  | [optional] 

## Example

```python
from PySirius.models.tag_definition_import import TagDefinitionImport

# TODO update the JSON string below
json = "{}"
# create an instance of TagDefinitionImport from a JSON string
tag_definition_import_instance = TagDefinitionImport.from_json(json)
# print the JSON string representation of the object
print(TagDefinitionImport.to_json())

# convert the object into a dict
tag_definition_import_dict = tag_definition_import_instance.to_dict()
# create an instance of TagDefinitionImport from a dict
tag_definition_import_from_dict = TagDefinitionImport.from_dict(tag_definition_import_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


