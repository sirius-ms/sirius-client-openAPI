# PagedModelCompound


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**content** | [**List[Compound]**](Compound.md) |  | [optional] 
**page** | [**PageMetadata**](PageMetadata.md) |  | [optional] 

## Example

```python
from PySirius.models.paged_model_compound import PagedModelCompound

# TODO update the JSON string below
json = "{}"
# create an instance of PagedModelCompound from a JSON string
paged_model_compound_instance = PagedModelCompound.from_json(json)
# print the JSON string representation of the object
print(PagedModelCompound.to_json())

# convert the object into a dict
paged_model_compound_dict = paged_model_compound_instance.to_dict()
# create an instance of PagedModelCompound from a dict
paged_model_compound_from_dict = PagedModelCompound.from_dict(paged_model_compound_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


