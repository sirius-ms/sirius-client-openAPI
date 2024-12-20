# QualityItem


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**description** | **str** |  | [optional] 
**quality** | [**DataQuality**](DataQuality.md) |  | [optional] 
**weight** | [**QualityWeight**](QualityWeight.md) |  | [optional] 

## Example

```python
from PySirius.models.quality_item import QualityItem

# TODO update the JSON string below
json = "{}"
# create an instance of QualityItem from a JSON string
quality_item_instance = QualityItem.from_json(json)
# print the JSON string representation of the object
print(QualityItem.to_json())

# convert the object into a dict
quality_item_dict = quality_item_instance.to_dict()
# create an instance of QualityItem from a dict
quality_item_from_dict = QualityItem.from_dict(quality_item_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


