# DBLink


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | 
**id** | **str** |  | [optional] 

## Example

```python
from PySirius.models.db_link import DBLink

# TODO update the JSON string below
json = "{}"
# create an instance of DBLink from a JSON string
db_link_instance = DBLink.from_json(json)
# print the JSON string representation of the object
print(DBLink.to_json())

# convert the object into a dict
db_link_dict = db_link_instance.to_dict()
# create an instance of DBLink from a dict
db_link_from_dict = DBLink.from_dict(db_link_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


