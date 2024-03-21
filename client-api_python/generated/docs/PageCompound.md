# PageCompound


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_pages** | **int** |  | [optional] 
**total_elements** | **int** |  | [optional] 
**first** | **bool** |  | [optional] 
**size** | **int** |  | [optional] 
**content** | [**List[Compound]**](Compound.md) |  | [optional] 
**number** | **int** |  | [optional] 
**sort** | [**SortObject**](SortObject.md) |  | [optional] 
**pageable** | [**PageableObject**](PageableObject.md) |  | [optional] 
**last** | **bool** |  | [optional] 
**number_of_elements** | **int** |  | [optional] 
**empty** | **bool** |  | [optional] 

## Example

```python
from PySirius.models.page_compound import PageCompound

# TODO update the JSON string below
json = "{}"
# create an instance of PageCompound from a JSON string
page_compound_instance = PageCompound.from_json(json)
# print the JSON string representation of the object
print(PageCompound.to_json())

# convert the object into a dict
page_compound_dict = page_compound_instance.to_dict()
# create an instance of PageCompound from a dict
page_compound_form_dict = page_compound.from_dict(page_compound_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


