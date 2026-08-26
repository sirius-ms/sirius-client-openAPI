# PagedModelFeature


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**content** | [**List[Feature]**](Feature.md) |  | [optional] 
**page** | [**PageMetadata**](PageMetadata.md) |  | [optional] 

## Example

```python
from PySirius.models.paged_model_feature import PagedModelFeature

# TODO update the JSON string below
json = "{}"
# create an instance of PagedModelFeature from a JSON string
paged_model_feature_instance = PagedModelFeature.from_json(json)
# print the JSON string representation of the object
print(PagedModelFeature.to_json())

# convert the object into a dict
paged_model_feature_dict = paged_model_feature_instance.to_dict()
# create an instance of PagedModelFeature from a dict
paged_model_feature_from_dict = PagedModelFeature.from_dict(paged_model_feature_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


