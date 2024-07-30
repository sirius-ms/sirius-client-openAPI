# QuantificationTable


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**quantification_type** | **str** |  | [optional] 
**row_type** | **str** |  | [optional] 
**column_type** | **str** |  | [optional] 
**row_ids** | **List[Optional[int]]** |  | [optional] 
**column_ids** | **List[Optional[int]]** |  | [optional] 
**row_names** | **List[Optional[str]]** |  | [optional] 
**column_names** | **List[Optional[str]]** |  | [optional] 
**values** | **List[List[float]]** |  | [optional] 

## Example

```python
from PySirius.models.quantification_table import QuantificationTable

# TODO update the JSON string below
json = "{}"
# create an instance of QuantificationTable from a JSON string
quantification_table_instance = QuantificationTable.from_json(json)
# print the JSON string representation of the object
print(QuantificationTable.to_json())

# convert the object into a dict
quantification_table_dict = quantification_table_instance.to_dict()
# create an instance of QuantificationTable from a dict
quantification_table_from_dict = QuantificationTable.from_dict(quantification_table_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


