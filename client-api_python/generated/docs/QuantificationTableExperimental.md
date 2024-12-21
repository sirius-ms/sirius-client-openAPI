# QuantificationTableExperimental

EXPERIMENTAL: This schema is experimental and may be changed (or even removed) without notice until it is declared stable.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**quantification_type** | [**QuantificationMeasure**](QuantificationMeasure.md) |  | [optional] 
**row_type** | [**QuantificationRowType**](QuantificationRowType.md) |  | [optional] 
**column_type** | [**QuantificationColumnType**](QuantificationColumnType.md) |  | [optional] 
**row_ids** | **List[Optional[int]]** |  | [optional] 
**column_ids** | **List[Optional[int]]** |  | [optional] 
**row_names** | **List[Optional[str]]** |  | [optional] 
**column_names** | **List[Optional[str]]** |  | [optional] 
**values** | **List[List[float]]** |  | [optional] 

## Example

```python
from PySirius.models.quantification_table_experimental import QuantificationTableExperimental

# TODO update the JSON string below
json = "{}"
# create an instance of QuantificationTableExperimental from a JSON string
quantification_table_experimental_instance = QuantificationTableExperimental.from_json(json)
# print the JSON string representation of the object
print(QuantificationTableExperimental.to_json())

# convert the object into a dict
quantification_table_experimental_dict = quantification_table_experimental_instance.to_dict()
# create an instance of QuantificationTableExperimental from a dict
quantification_table_experimental_from_dict = QuantificationTableExperimental.from_dict(quantification_table_experimental_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


