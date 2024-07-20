# LcmsSubmissionParameters


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**align_lcms_runs** | **bool** | Specifies whether LC/MS runs should be aligned | [optional] [default to True]

## Example

```python
from PySirius.models.lcms_submission_parameters import LcmsSubmissionParameters

# TODO update the JSON string below
json = "{}"
# create an instance of LcmsSubmissionParameters from a JSON string
lcms_submission_parameters_instance = LcmsSubmissionParameters.from_json(json)
# print the JSON string representation of the object
print(LcmsSubmissionParameters.to_json())

# convert the object into a dict
lcms_submission_parameters_dict = lcms_submission_parameters_instance.to_dict()
# create an instance of LcmsSubmissionParameters from a dict
lcms_submission_parameters_from_dict = LcmsSubmissionParameters.from_dict(lcms_submission_parameters_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


