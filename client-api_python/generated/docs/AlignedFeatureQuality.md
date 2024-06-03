# AlignedFeatureQuality


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**aligned_feature_id** | **str** | Id of the feature (aligned over runs) this quality information belongs to. | 
**overall_quality** | [**DataQuality**](DataQuality.md) |  | 
**categories** | [**Dict[str, Category]**](Category.md) | Contains all pre-computation quality information that belong to  this feature (aligned over runs), such as information about the quality of the peak shape, MS2 spectrum etc., | 

## Example

```python
from PySirius.models.aligned_feature_quality import AlignedFeatureQuality

# TODO update the JSON string below
json = "{}"
# create an instance of AlignedFeatureQuality from a JSON string
aligned_feature_quality_instance = AlignedFeatureQuality.from_json(json)
# print the JSON string representation of the object
print(AlignedFeatureQuality.to_json())

# convert the object into a dict
aligned_feature_quality_dict = aligned_feature_quality_instance.to_dict()
# create an instance of AlignedFeatureQuality from a dict
aligned_feature_quality_from_dict = AlignedFeatureQuality.from_dict(aligned_feature_quality_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


