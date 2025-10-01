# TagDefinition


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
**editable** | **bool** |  | [optional] 

## Example

```python
from PySirius.models.tag_definition import TagDefinition

# TODO update the JSON string below
json = "{}"
# create an instance of TagDefinition from a JSON string
tag_definition_instance = TagDefinition.from_json(json)
# print the JSON string representation of the object
print(TagDefinition.to_json())

# convert the object into a dict
tag_definition_dict = tag_definition_instance.to_dict()
# create an instance of TagDefinition from a dict
tag_definition_from_dict = TagDefinition.from_dict(tag_definition_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


