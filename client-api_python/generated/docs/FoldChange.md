# FoldChange


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**left_group** | **str** |  | [optional] 
**right_group** | **str** |  | [optional] 
**aggregation** | [**AggregationType**](AggregationType.md) |  | [optional] 
**quantification** | [**QuantMeasure**](QuantMeasure.md) |  | [optional] 
**quant_type** | [**QuantRowType**](QuantRowType.md) |  | 
**object_id** | **str** |  | 
**fold_change** | **float** |  | 

## Example

```python
from PySirius.models.fold_change import FoldChange

# TODO update the JSON string below
json = "{}"
# create an instance of FoldChange from a JSON string
fold_change_instance = FoldChange.from_json(json)
# print the JSON string representation of the object
print(FoldChange.to_json())

# convert the object into a dict
fold_change_dict = fold_change_instance.to_dict()
# create an instance of FoldChange from a dict
fold_change_from_dict = FoldChange.from_dict(fold_change_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


