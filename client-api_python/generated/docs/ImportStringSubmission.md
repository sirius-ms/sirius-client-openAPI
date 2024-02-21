# ImportStringSubmission

Parameter Object to submit a job that imports ms/ms data from the given format into the specified project  Supported formats (ms, mgf, cef, msp, mzML, mzXML)

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**allow_ms1_only_data** | **bool** |  | [optional] 
**ignore_formulas** | **bool** |  | [optional] 
**align_lcms_runs** | **bool** |  | [optional] 
**source_name** | **str** | Name that specifies the data source. Can e.g. be a file path  or just a name. | [optional] 
**format** | [**ImportFormat**](ImportFormat.md) |  | 
**data** | **str** | Data content in specified format | 

## Example

```python
from PySirius.models.import_string_submission import ImportStringSubmission

# TODO update the JSON string below
json = "{}"
# create an instance of ImportStringSubmission from a JSON string
import_string_submission_instance = ImportStringSubmission.from_json(json)
# print the JSON string representation of the object
print ImportStringSubmission.to_json()

# convert the object into a dict
import_string_submission_dict = import_string_submission_instance.to_dict()
# create an instance of ImportStringSubmission from a dict
import_string_submission_form_dict = import_string_submission.from_dict(import_string_submission_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


