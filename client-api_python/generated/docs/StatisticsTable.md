# StatisticsTable


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**statistics_type** | [**StatisticsType**](StatisticsType.md) |  | [optional] 
**aggregation_type** | [**AggregationType**](AggregationType.md) |  | [optional] 
**quantification_measure** | [**QuantMeasure**](QuantMeasure.md) |  | [optional] 
**row_type** | [**QuantRowType**](QuantRowType.md) |  | [optional] 
**row_ids** | **List[str]** |  | [optional] 
**column_names** | **List[str]** |  | [optional] 
**column_left_groups** | **List[str]** |  | [optional] 
**column_right_groups** | **List[str]** |  | [optional] 
**values** | **List[List[float]]** |  | [optional] 

## Example

```python
from PySirius.models.statistics_table import StatisticsTable

# TODO update the JSON string below
json = "{}"
# create an instance of StatisticsTable from a JSON string
statistics_table_instance = StatisticsTable.from_json(json)
# print the JSON string representation of the object
print(StatisticsTable.to_json())

# convert the object into a dict
statistics_table_dict = statistics_table_instance.to_dict()
# create an instance of StatisticsTable from a dict
statistics_table_from_dict = StatisticsTable.from_dict(statistics_table_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


