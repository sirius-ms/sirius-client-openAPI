# DataImportEvent


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**import_job_id** | **str** |  | [optional] 
**imported_compound_ids** | **List[str]** |  | 
**imported_feature_ids** | **List[str]** |  | 

## Example

```python
from PySirius.models.data_import_event import DataImportEvent

# TODO update the JSON string below
json = "{}"
# create an instance of DataImportEvent from a JSON string
data_import_event_instance = DataImportEvent.from_json(json)
# print the JSON string representation of the object
print(DataImportEvent.to_json())

# convert the object into a dict
data_import_event_dict = data_import_event_instance.to_dict()
# create an instance of DataImportEvent from a dict
data_import_event_from_dict = DataImportEvent.from_dict(data_import_event_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


