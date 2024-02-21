# PageProjectInfo


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_pages** | **int** |  | [optional] 
**total_elements** | **int** |  | [optional] 
**size** | **int** |  | [optional] 
**content** | [**List[ProjectInfo]**](ProjectInfo.md) |  | [optional] 
**number** | **int** |  | [optional] 
**sort** | [**SortObject**](SortObject.md) |  | [optional] 
**number_of_elements** | **int** |  | [optional] 
**pageable** | [**PageableObject**](PageableObject.md) |  | [optional] 
**first** | **bool** |  | [optional] 
**last** | **bool** |  | [optional] 
**empty** | **bool** |  | [optional] 

## Example

```python
from PySirius.models.page_project_info import PageProjectInfo

# TODO update the JSON string below
json = "{}"
# create an instance of PageProjectInfo from a JSON string
page_project_info_instance = PageProjectInfo.from_json(json)
# print the JSON string representation of the object
print PageProjectInfo.to_json()

# convert the object into a dict
page_project_info_dict = page_project_info_instance.to_dict()
# create an instance of PageProjectInfo from a dict
page_project_info_form_dict = page_project_info.from_dict(page_project_info_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


