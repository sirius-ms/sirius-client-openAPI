# TagGroup


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**group_name** | **str** | Name of this Grouping query. | [optional] 
**lucene_query** | **str** | Query used to group the entities in lucene format. | [optional] 
**group_type** | **str** |  | [optional] 

## Example

```python
from PySirius.models.tag_group import TagGroup

# TODO update the JSON string below
json = "{}"
# create an instance of TagGroup from a JSON string
tag_group_instance = TagGroup.from_json(json)
# print the JSON string representation of the object
print(TagGroup.to_json())

# convert the object into a dict
tag_group_dict = tag_group_instance.to_dict()
# create an instance of TagGroup from a dict
tag_group_from_dict = TagGroup.from_dict(tag_group_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


