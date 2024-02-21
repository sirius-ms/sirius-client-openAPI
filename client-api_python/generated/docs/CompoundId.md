# CompoundId

The CompoundId contains the ID of a compound together with some read-only information that might be displayed in  some summary view.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**index** | **int** |  | [optional] 
**ion_mass** | **float** |  | [optional] 
**ion_type** | **str** |  | [optional] 
**rt_start_seconds** | **float** |  | [optional] 
**rt_end_seconds** | **float** |  | [optional] 
**top_annotation** | [**CompoundAnnotation**](CompoundAnnotation.md) |  | [optional] 
**ms_data** | [**MsData**](MsData.md) |  | [optional] 
**quality_flags** | **List[str]** | Contains all pre-computation quality information that belong to  this compound, such as information about the quality of the peak shape, MS2 spectrum etc.,  see ({@link CompoundQuality.CompoundQualityFlag CompoundQuality.CompoundQualityFlag})  &lt;p&gt;  Each Compound has a Set of Quality assessment flags. | [optional] 
**computing** | **bool** |  | [optional] 

## Example

```python
from PySirius.models.compound_id import CompoundId

# TODO update the JSON string below
json = "{}"
# create an instance of CompoundId from a JSON string
compound_id_instance = CompoundId.from_json(json)
# print the JSON string representation of the object
print CompoundId.to_json()

# convert the object into a dict
compound_id_dict = compound_id_instance.to_dict()
# create an instance of CompoundId from a dict
compound_id_form_dict = compound_id.from_dict(compound_id_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


