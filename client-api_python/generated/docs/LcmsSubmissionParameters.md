# LcmsSubmissionParameters


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**align_lcms_runs** | **bool** | Specifies whether LC/MS runs should be aligned | [optional] [default to True]
**noise_intensity** | **float** | Noise level under which all peaks are considered to be likely noise. A peak has to be at least 3x noise level  to be picked as feature. Peaks with MS/MS are still picked even though they might be below noise level.  If not specified, the noise intensity is detected automatically from data. We recommend to NOT specify  this parameter, as the automated detection is usually sufficient. | [optional] [default to -1]
**trace_max_mass_deviation** | [**Deviation**](Deviation.md) |  | [optional] 
**align_max_mass_deviation** | [**Deviation**](Deviation.md) |  | [optional] 
**align_max_retention_time_deviation** | **float** | Maximal allowed retention time error in seconds for aligning features. If not specified, this parameter is estimated from data. | [optional] [default to -1]
**min_snr** | **float** | Minimum ratio between peak height and noise intensity for detecting features. By default, this value is 3. Features with good MS/MS are always picked independent of their intensity. For picking very low intensive features we recommend a min-snr of 2, but this will increase runtime and storage memory | [optional] [default to 3]

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


