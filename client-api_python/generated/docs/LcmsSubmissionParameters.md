# LcmsSubmissionParameters


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**align_lcms_runs** | **bool** | Specifies whether LC/MS runs should be aligned | [optional] [default to True]
**noise** | **float** | Features must be larger than &lt;value&gt; * detected noise level. | [optional] [default to 2.0]
**persistence** | **float** | Features must have larger persistence (intensity above valley) than &lt;value&gt; * max trace intensity. | [optional] [default to 0.1]
**merge** | **float** | Merge neighboring features with valley less than &lt;value&gt; * intensity. | [optional] [default to 0.8]
**filter** | [**DataSmoothing**](DataSmoothing.md) |  | [optional] 
**gaussian_sigma** | **float** | Sigma (kernel width) for gaussian filter algorithm. | [optional] [default to 3.0]
**wavelet_scale** | **int** | Number of coefficients for wavelet filter algorithm. | [optional] [default to 20]
**wavelet_window** | **float** | Wavelet window size (%) for wavelet filter algorithm. | [optional] [default to 11]

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


