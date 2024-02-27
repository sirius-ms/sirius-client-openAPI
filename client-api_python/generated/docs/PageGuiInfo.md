# PageGuiInfo


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_pages** | **int** |  | [optional] 
**total_elements** | **int** |  | [optional] 
**size** | **int** |  | [optional] 
**content** | [**List[GuiInfo]**](GuiInfo.md) |  | [optional] 
**number** | **int** |  | [optional] 
**sort** | [**SortObject**](SortObject.md) |  | [optional] 
**number_of_elements** | **int** |  | [optional] 
**pageable** | [**PageableObject**](PageableObject.md) |  | [optional] 
**first** | **bool** |  | [optional] 
**last** | **bool** |  | [optional] 
**empty** | **bool** |  | [optional] 

## Example

```python
from PySirius.models.page_gui_info import PageGuiInfo

# TODO update the JSON string below
json = "{}"
# create an instance of PageGuiInfo from a JSON string
page_gui_info_instance = PageGuiInfo.from_json(json)
# print the JSON string representation of the object
print PageGuiInfo.to_json()

# convert the object into a dict
page_gui_info_dict = page_gui_info_instance.to_dict()
# create an instance of PageGuiInfo from a dict
page_gui_info_form_dict = page_gui_info.from_dict(page_gui_info_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


