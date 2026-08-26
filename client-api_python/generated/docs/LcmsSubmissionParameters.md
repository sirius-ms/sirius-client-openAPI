# LcmsSubmissionParameters


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sample_names** | **List[Optional[str]]** | Sample names for each input file to link imported results, e.g. QuantTable back to the input data.  If NULL or empty sample names will be derived from the input files.  &lt;p&gt;  The names are matched to the input files by index. Partial lists are allowed: a NULL entry and any  input file without a corresponding entry get their name derived from the input file. Surplus entries  that match no input file are ignored.  &lt;p&gt;  Names must neither be blank nor duplicated, otherwise the import is rejected. | [optional] 
**sample_types** | **List[Optional[str]]** | Sample type for each input file to be used to compute fold changes between blank and sample runs  If NULL or empty no fold changes will be computed during preprocessing.  &lt;p&gt;  The types are matched to the input files by index. In contrast to sampleNames either all or no sample  types have to be given: if the number of types does not match the number of input files or if any type  is NULL or blank, the import is rejected. | [optional] 
**align_lcms_runs** | **bool** | Specifies whether LC/MS runs should be aligned | [optional] [default to True]
**noise_intensity** | **float** | Noise level under which all peaks are considered to be likely noise. A peak has to be at least 3x noise level  to be picked as feature. Peaks with MS/MS are still picked even though they might be below noise level.  If not specified, the noise intensity is detected automatically from the data. We recommend NOT specifying  this parameter, as the automated detection is usually sufficient. | [optional] [default to -1]
**trace_max_mass_deviation** | [**Deviation**](Deviation.md) |  | [optional] 
**align_max_mass_deviation** | [**Deviation**](Deviation.md) |  | [optional] 
**align_max_retention_time_deviation** | **float** | Maximum allowed retention time error in seconds for aligning features. If not specified, this parameter is estimated from the data. | [optional] [default to -1]
**min_snr** | **float** | Minimum ratio between peak height and noise intensity for detecting features. By default, this value is 3. Features with good MS/MS are always picked independent of their intensity. For picking very low intensity features we recommend a min-snr of 2, but this will increase runtime and storage requirements | [optional] [default to 3]

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


