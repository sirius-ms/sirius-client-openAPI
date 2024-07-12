# AlignedFeature

The AlignedFeature contains the ID of a feature (aligned over runs) together with some read-only information  that might be displayed in some summary view.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**aligned_feature_id** | **str** |  | [optional] 
**compound_id** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**external_feature_id** | **str** | Externally provided FeatureId (e.g. by some preprocessing tool).  This FeatureId is NOT used by SIRIUS but is stored to ease mapping information back to the source. | [optional] 
**ion_mass** | **float** |  | [optional] 
**charge** | **int** | Ion mode (charge) this feature has been measured in. | 
**detected_adducts** | **List[str]** | Adducts of this feature that have been detected during preprocessing. | 
**rt_start_seconds** | **float** |  | [optional] 
**rt_end_seconds** | **float** |  | [optional] 
**quality** | [**DataQuality**](DataQuality.md) |  | [optional] 
**has_ms1** | **bool** | If true, the feature has at lease one MS1 spectrum | [optional] 
**has_ms_ms** | **bool** | If true, the feature has at lease one MS/MS spectrum | [optional] 
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
aligned_feature_from_dict = AlignedFeature.from_dict(aligned_feature_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


