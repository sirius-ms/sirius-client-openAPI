# PagedModelAlignedFeature


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**content** | [**List[AlignedFeature]**](AlignedFeature.md) |  | [optional] 
**page** | [**PageMetadata**](PageMetadata.md) |  | [optional] 

## Example

```python
from PySirius.models.paged_model_aligned_feature import PagedModelAlignedFeature

# TODO update the JSON string below
json = "{}"
# create an instance of PagedModelAlignedFeature from a JSON string
paged_model_aligned_feature_instance = PagedModelAlignedFeature.from_json(json)
# print the JSON string representation of the object
print(PagedModelAlignedFeature.to_json())

# convert the object into a dict
paged_model_aligned_feature_dict = paged_model_aligned_feature_instance.to_dict()
# create an instance of PagedModelAlignedFeature from a dict
paged_model_aligned_feature_from_dict = PagedModelAlignedFeature.from_dict(paged_model_aligned_feature_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


