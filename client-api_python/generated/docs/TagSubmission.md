# TagSubmission


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**tag_name** | **str** | Name of the tag as defined by the corresponding TagDefinition  Links tag object to their definition. | 
**value** | [**AnyValue**](AnyValue.md) |  | [optional] 
**tagged_object_id** | **str** | ID of the object where the tag should be added.  Then Object type is taken from context of the API endpoint. | 

## Example

```python
from PySirius.models.tag_submission import TagSubmission

# TODO update the JSON string below
json = "{}"
# create an instance of TagSubmission from a JSON string
tag_submission_instance = TagSubmission.from_json(json)
# print the JSON string representation of the object
print(TagSubmission.to_json())

# convert the object into a dict
tag_submission_dict = tag_submission_instance.to_dict()
# create an instance of TagSubmission from a dict
tag_submission_from_dict = TagSubmission.from_dict(tag_submission_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


