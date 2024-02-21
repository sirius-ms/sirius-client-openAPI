# ImportLocalFilesSubmission



## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**allow_ms1_only_data** | **bool** |  | [optional] 
**ignore_formulas** | **bool** |  | [optional] 
**align_lcms_runs** | **bool** |  | [optional] 
**input_paths** | **List[str]** |  | 

## Example

```python
from PySirius.models.import_local_files_submission import ImportLocalFilesSubmission

# TODO update the JSON string below
json = "{}"
# create an instance of ImportLocalFilesSubmission from a JSON string
import_local_files_submission_instance = ImportLocalFilesSubmission.from_json(json)
# print the JSON string representation of the object
print ImportLocalFilesSubmission.to_json()

# convert the object into a dict
import_local_files_submission_dict = import_local_files_submission_instance.to_dict()
# create an instance of ImportLocalFilesSubmission from a dict
import_local_files_submission_form_dict = import_local_files_submission.from_dict(import_local_files_submission_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


