# AlignedFeature

The AlignedFeature contains the ID of a feature (aligned over runs) together with some read-only information  that might be displayed in some summary view.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**aligned_feature_id** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**ion_mass** | **float** |  | [optional] 
**ion_type** | **str** |  | [optional] 
**rt_start_seconds** | **float** |  | [optional] 
**rt_end_seconds** | **float** |  | [optional] 
**ms_data** | [**MsData**](MsData.md) |  | [optional] 
**top_annotations** | [**FeatureAnnotations**](FeatureAnnotations.md) |  | [optional] 
**top_annotations_de_novo** | [**FeatureAnnotations**](FeatureAnnotations.md) |  | [optional] 
**computing** | **bool** | Write lock for this feature. If the feature is locked no write operations are possible.  True if any computation is modifying this feature or its results | [optional] 

## Example

```python
from PySirius.models.aligned_feature import AlignedFeature

# TODO update the JSON string below
json = "{}"
# create an instance of AlignedFeature from a JSON string
aligned_feature_instance = AlignedFeature.from_json(json)
# print the JSON string representation of the object
print(AlignedFeature.to_json())

# convert the object into a dict
aligned_feature_dict = aligned_feature_instance.to_dict()
# create an instance of AlignedFeature from a dict
aligned_feature_form_dict = aligned_feature.from_dict(aligned_feature_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


