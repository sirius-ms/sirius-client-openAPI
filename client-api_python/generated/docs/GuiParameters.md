# GuiParameters

Parameters to \"remote control\" the SIRIUS GUI.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**selected_tab** | **str** | Selected Result ab. | [optional] 
**cid** | **str** | ID of Selected compound. | [optional] 
**fid** | **str** | ID of Selected Formula candidate of the selected compound. | [optional] 
**structure_candidate_in_ch_i_key** | **str** | InChIKey of selected structure candidate of selected formula candidate. | [optional] 
**bring_to_front** | **bool** | If true bring SIRIUS GUI window to foreground. | [optional] 

## Example

```python
from PySirius.models.gui_parameters import GuiParameters

# TODO update the JSON string below
json = "{}"
# create an instance of GuiParameters from a JSON string
gui_parameters_instance = GuiParameters.from_json(json)
# print the JSON string representation of the object
print GuiParameters.to_json()

# convert the object into a dict
gui_parameters_dict = gui_parameters_instance.to_dict()
# create an instance of GuiParameters from a dict
gui_parameters_form_dict = gui_parameters.from_dict(gui_parameters_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


