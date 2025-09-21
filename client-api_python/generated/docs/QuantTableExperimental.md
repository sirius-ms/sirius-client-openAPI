# QuantTableExperimental

EXPERIMENTAL: This schema is experimental and may be changed (or even removed) without notice until it is declared stable.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**quantification_measure** | [**QuantMeasure**](QuantMeasure.md) |  | [optional] 
**row_type** | [**QuantRowType**](QuantRowType.md) |  | [optional] 
**row_ids** | **List[int]** |  | [optional] 
**column_ids** | **List[int]** |  | [optional] 
**row_names** | **List[str]** |  | [optional] 
**column_names** | **List[str]** |  | [optional] 
**values** | **List[List[float]]** |  | [optional] 

## Example

```python
from PySirius.models.quant_table_experimental import QuantTableExperimental

# TODO update the JSON string below
json = "{}"
# create an instance of QuantTableExperimental from a JSON string
quant_table_experimental_instance = QuantTableExperimental.from_json(json)
# print the JSON string representation of the object
print(QuantTableExperimental.to_json())

# convert the object into a dict
quant_table_experimental_dict = quant_table_experimental_instance.to_dict()
# create an instance of QuantTableExperimental from a dict
quant_table_experimental_from_dict = QuantTableExperimental.from_dict(quant_table_experimental_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


