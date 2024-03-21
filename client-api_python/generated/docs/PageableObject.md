# PageableObject


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**offset** | **int** |  | [optional] 
**sort** | [**SortObject**](SortObject.md) |  | [optional] 
**page_number** | **int** |  | [optional] 
**page_size** | **int** |  | [optional] 
**paged** | **bool** |  | [optional] 
**unpaged** | **bool** |  | [optional] 

## Example

```python
from PySirius.models.pageable_object import PageableObject

# TODO update the JSON string below
json = "{}"
# create an instance of PageableObject from a JSON string
pageable_object_instance = PageableObject.from_json(json)
# print the JSON string representation of the object
print(PageableObject.to_json())

# convert the object into a dict
pageable_object_dict = pageable_object_instance.to_dict()
# create an instance of PageableObject from a dict
pageable_object_form_dict = pageable_object.from_dict(pageable_object_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


