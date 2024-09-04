# PageSpectralLibraryMatch


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_pages** | **int** |  | [optional] 
**total_elements** | **int** |  | [optional] 
**first** | **bool** |  | [optional] 
**size** | **int** |  | [optional] 
**content** | [**List[SpectralLibraryMatch]**](SpectralLibraryMatch.md) |  | [optional] 
**number** | **int** |  | [optional] 
**sort** | [**SortObject**](SortObject.md) |  | [optional] 
**last** | **bool** |  | [optional] 
**number_of_elements** | **int** |  | [optional] 
**pageable** | [**PageableObject**](PageableObject.md) |  | [optional] 
**empty** | **bool** |  | [optional] 

## Example

```python
from PySirius.models.page_spectral_library_match import PageSpectralLibraryMatch

# TODO update the JSON string below
json = "{}"
# create an instance of PageSpectralLibraryMatch from a JSON string
page_spectral_library_match_instance = PageSpectralLibraryMatch.from_json(json)
# print the JSON string representation of the object
print(PageSpectralLibraryMatch.to_json())

# convert the object into a dict
page_spectral_library_match_dict = page_spectral_library_match_instance.to_dict()
# create an instance of PageSpectralLibraryMatch from a dict
page_spectral_library_match_from_dict = PageSpectralLibraryMatch.from_dict(page_spectral_library_match_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


