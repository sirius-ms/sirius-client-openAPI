# PySirius.model.gui_parameters.GuiParameters

Parameters to \"remote control\" the SIRIUS GUI.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | Parameters to \&quot;remote control\&quot; the SIRIUS GUI. | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**selectedTab** | str,  | str,  | Selected Result ab. | [optional] must be one of ["FORMULAS", "SPECTRA", "TREES", "PREDICTED_FINGERPRINT", "STRUCTURES", "STRUCTURE_ANNOTATION", "COMPOUND_CLASSES", ] 
**cid** | str,  | str,  | ID of Selected compound. | [optional] 
**fid** | str,  | str,  | ID of Selected Formula candidate of the selected compound. | [optional] 
**structureCandidateInChIKey** | str,  | str,  | InChIKey of selected structure candidate of selected formula candidate. | [optional] 
**bringToFront** | bool,  | BoolClass,  | If true bring SIRIUS GUI window to foreground. | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, int, float, bool, decimal.Decimal, None, list, tuple, bytes, io.FileIO, io.BufferedReader | frozendict.frozendict, str, BoolClass, decimal.Decimal, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

