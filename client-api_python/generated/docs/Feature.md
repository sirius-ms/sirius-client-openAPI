# Feature

A feature as it has been detected in one single run, in contrast to an AlignedFeature which combines the  features of the same compound over all runs it was detected in.  <p>  It provides the properties that are specific to the run it was detected in, such as its position on the  retention time axis of that run and its quantity within that run.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**feature_id** | **str** | Identifier | [optional] 
**aligned_feature_id** | **str** | ID of the AlignedFeature this feature belongs to | [optional] 
**run_id** | **str** | ID of the run this feature belongs to | [optional] 
**average_mz** | **float** | Average m/z over the whole feature | [optional] 
**apex_mz** | **float** | m/z at the apex of the feature, the m/z this feature was measured at in its run | [optional] 
**rt_start_seconds** | **float** | Start of the feature on the retention time axis in seconds | [optional] 
**rt_end_seconds** | **float** | End of the feature on the retention time axis in seconds | [optional] 
**rt_apex_seconds** | **float** | Apex of the feature on the retention time axis in seconds | [optional] 
**rt_fwhm_seconds** | **float** | Full width at half maximum of the feature on the retention time axis in seconds | [optional] 
**apex_intensity** | **float** | Feature quantity measured as the intensity of the apex of the feature | [optional] 
**area_under_curve** | **float** | Feature quantity measured as the area under the curve of the whole feature | [optional] 

## Example

```python
from PySirius.models.feature import Feature

# TODO update the JSON string below
json = "{}"
# create an instance of Feature from a JSON string
feature_instance = Feature.from_json(json)
# print the JSON string representation of the object
print(Feature.to_json())

# convert the object into a dict
feature_dict = feature_instance.to_dict()
# create an instance of Feature from a dict
feature_from_dict = Feature.from_dict(feature_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


