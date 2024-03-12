# ImportResult


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**affected_compound_ids** | **List[str]** | List of compoundIds that have been imported. | 
**affected_aligned_feature_ids** | **List[str]** | List of alignedFeatureIds that have been imported.. | 

## Example

```python
from PySirius.models.import_result import ImportResult

# TODO update the JSON string below
json = "{}"
# create an instance of ImportResult from a JSON string
import_result_instance = ImportResult.from_json(json)
# print the JSON string representation of the object
print(ImportResult.to_json())

# convert the object into a dict
import_result_dict = import_result_instance.to_dict()
# create an instance of ImportResult from a dict
import_result_form_dict = import_result.from_dict(import_result_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


