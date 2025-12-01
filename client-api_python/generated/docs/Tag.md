# Tag


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**tag_name** | **str** | Name of the tag as defined by the corresponding TagDefinition  Links tag object to their definition. | 
**value** | [**AnyValue**](AnyValue.md) |  | [optional] 

## Example

```python
from PySirius.models.tag import Tag

# TODO update the JSON string below
json = "{}"
# create an instance of Tag from a JSON string
tag_instance = Tag.from_json(json)
# print the JSON string representation of the object
print(Tag.to_json())

# convert the object into a dict
tag_dict = tag_instance.to_dict()
# create an instance of Tag from a dict
tag_from_dict = Tag.from_dict(tag_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


