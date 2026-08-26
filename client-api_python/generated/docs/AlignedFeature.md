# AlignedFeature

The AlignedFeature contains the ID of a feature (aligned over runs) together with some read-only information  that might be displayed in some summary view.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**aligned_feature_id** | **str** | Unique identifier of the aligned feature within the project. | [optional] 
**compound_id** | **str** | Identifier of the compound the feature belongs to.  Features that are different adducts or isotopologues of the same molecule share it. | [optional] 
**name** | **str** | Informative, human-readable name of the feature. | [optional] 
**external_feature_id** | **str** | Externally provided FeatureId (e.g. by some preprocessing tool).  This FeatureId is NOT used by SIRIUS but is stored to ease mapping information back to the source. | [optional] 
**ion_mass** | **float** | Mass-to-charge ratio (m/z) of the precursor ion of the feature. | [optional] 
**charge** | **int** | Ion mode (charge) the feature has been measured in. | 
**detected_adducts** | **List[str]** | Adducts that have been detected for the feature during preprocessing.  Never empty: if no adduct could be detected, the unknown ion type matching the feature&#39;s  charge ([M+?]+ or [M+?]-) is reported instead, so every feature is filterable by adduct. | 
**rt_start_seconds** | **float** | Start of the retention time range the feature was detected in, in seconds. | [optional] 
**rt_end_seconds** | **float** | End of the retention time range the feature was detected in, in seconds. | [optional] 
**rt_apex_seconds** | **float** | Retention time of the intensity apex of the feature, in seconds. | [optional] 
**quality** | [**DataQuality**](DataQuality.md) |  | [optional] 
**has_ms1** | **bool** | If true, the feature has at least one MS1 spectrum | [optional] 
**has_ms_ms** | **bool** | If true, the feature has at least one MS/MS spectrum | [optional] 
**ms_data** | [**MsData**](MsData.md) |  | [optional] 
**top_annotations** | [**FeatureAnnotations**](FeatureAnnotations.md) |  | [optional] 
**top_annotations_de_novo** | [**FeatureAnnotations**](FeatureAnnotations.md) |  | [optional] 
**computing** | **bool** | Write lock for the feature. If the feature is locked no write operations are possible.  True if any computation is modifying the feature or its results. | [optional] 
**computed_tools** | [**ComputedSubtools**](ComputedSubtools.md) |  | [optional] 
**qualities** | [**Dict[str, DataQuality]**](DataQuality.md) | Qualities per top level quality category. | [optional] 
**tags** | [**Dict[str, Tag]**](Tag.md) | Key: tagName, value: tag | [optional] 

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


