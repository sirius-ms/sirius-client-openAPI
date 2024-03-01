# DatabaseImportSubmission



## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**database_id** | **str** |  | 
**files_to_import** | **List[str]** |  | 
**write_buffer** | **int** |  | [optional] 

## Example

```python
from PySirius.models.database_import_submission import DatabaseImportSubmission

# TODO update the JSON string below
json = "{}"
# create an instance of DatabaseImportSubmission from a JSON string
database_import_submission_instance = DatabaseImportSubmission.from_json(json)
# print the JSON string representation of the object
print DatabaseImportSubmission.to_json()

# convert the object into a dict
database_import_submission_dict = database_import_submission_instance.to_dict()
# create an instance of DatabaseImportSubmission from a dict
database_import_submission_form_dict = database_import_submission.from_dict(database_import_submission_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


