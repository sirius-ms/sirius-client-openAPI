# PageAlignedFeature


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_pages** | **int** |  | [optional] 
**total_elements** | **int** |  | [optional] 
**size** | **int** |  | [optional] 
**content** | [**List[AlignedFeature]**](AlignedFeature.md) |  | [optional] 
**number** | **int** |  | [optional] 
**sort** | [**SortObject**](SortObject.md) |  | [optional] 
**last** | **bool** |  | [optional] 
**number_of_elements** | **int** |  | [optional] 
**first** | **bool** |  | [optional] 
**pageable** | [**PageableObject**](PageableObject.md) |  | [optional] 
**empty** | **bool** |  | [optional] 

## Example

```python
from PySirius.models.page_aligned_feature import PageAlignedFeature

# TODO update the JSON string below
json = "{}"
# create an instance of PageAlignedFeature from a JSON string
page_aligned_feature_instance = PageAlignedFeature.from_json(json)
# print the JSON string representation of the object
print PageAlignedFeature.to_json()

# convert the object into a dict
page_aligned_feature_dict = page_aligned_feature_instance.to_dict()
# create an instance of PageAlignedFeature from a dict
page_aligned_feature_form_dict = page_aligned_feature.from_dict(page_aligned_feature_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


