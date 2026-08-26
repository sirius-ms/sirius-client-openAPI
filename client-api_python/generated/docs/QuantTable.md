# QuantTable

Quantification of features or compounds within the runs they have been detected in. Rows refer to the quantified objects, columns to the runs. Values that could not be quantified are NaN.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**quantification_measure** | [**QuantMeasure**](QuantMeasure.md) |  | [optional] 
**row_type** | [**QuantRowType**](QuantRowType.md) |  | [optional] 
**row_ids** | **List[Optional[str]]** | Ids of the quantified objects, features or compounds depending on the row type. | [optional] 
**column_ids** | **List[Optional[str]]** | Ids of the runs the objects are quantified in. | [optional] 
**column_names** | **List[Optional[str]]** | Names of the runs the objects are quantified in, in the order of columnIds.  &lt;p&gt;  Optional field, only present if requested, since the table can be read by run id alone.  &lt;p&gt;  The name is the one the run carries in the project. It is either the sample name given when the data was  imported, or, if none was given, derived from the measurement itself: the run id inside the file, and only  failing that the file name. A name is therefore not necessarily the name of the file the run came from, and  it is not guaranteed to be unique. Use columnSources to identify the input file, and  columnIds to identify the run. | [optional] 
**column_sources** | **List[Optional[str]]** | Files the runs were imported from, in the order of columnIds, to relate a column back to the input  data. Same value as the source of the corresponding run.  &lt;p&gt;  Optional field, only present if requested, since it is not needed to read the table. | [optional] 
**values** | **List[List[float]]** |  | [optional] 

## Example

```python
from PySirius.models.quant_table import QuantTable

# TODO update the JSON string below
json = "{}"
# create an instance of QuantTable from a JSON string
quant_table_instance = QuantTable.from_json(json)
# print the JSON string representation of the object
print(QuantTable.to_json())

# convert the object into a dict
quant_table_dict = quant_table_instance.to_dict()
# create an instance of QuantTable from a dict
quant_table_from_dict = QuantTable.from_dict(quant_table_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


