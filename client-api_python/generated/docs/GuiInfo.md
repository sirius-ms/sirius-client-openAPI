# GuiInfo



## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**project_id** | **str** | The project this instance is running on | [optional] 

## Example

```python
from PySirius.models.gui_info import GuiInfo

# TODO update the JSON string below
json = "{}"
# create an instance of GuiInfo from a JSON string
gui_info_instance = GuiInfo.from_json(json)
# print the JSON string representation of the object
print GuiInfo.to_json()

# convert the object into a dict
gui_info_dict = gui_info_instance.to_dict()
# create an instance of GuiInfo from a dict
gui_info_form_dict = gui_info.from_dict(gui_info_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


