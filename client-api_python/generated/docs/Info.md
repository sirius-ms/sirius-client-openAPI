# Info


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**night_sky_api_version** | **str** | API version of the SIRIUS Nightsky API | [optional] 
**sirius_version** | **str** | Version of the SIRIUS application | [optional] 
**sirius_lib_version** | **str** | Version of the SIRIUS libraries | [optional] 
**finger_id_lib_version** | **str** | Version of the CSI:FingerID libraries | [optional] 
**chem_db_version** | **str** | Version of the Chemical Database available via SIRIUS web services | [optional] 
**finger_id_model_version** | **str** | Version of the Machine learning models used for Fingerprint, Compound Class and Structure Prediction  Not available if web service is not reachable. | [optional] 
**fingerprint_id** | **str** | Version of the Molecular Fingerprint used by SIRIUS | [optional] 
**available_ilp_solvers** | **List[str]** | Set of solvers that are configured correctly and can be loaded | 
**supported_ilp_solvers** | **Dict[str, str]** | Set of ILP Solvers that are Supported and their version information | 

## Example

```python
from PySirius.models.info import Info

# TODO update the JSON string below
json = "{}"
# create an instance of Info from a JSON string
info_instance = Info.from_json(json)
# print the JSON string representation of the object
print Info.to_json()

# convert the object into a dict
info_dict = info_instance.to_dict()
# create an instance of Info from a dict
info_form_dict = info.from_dict(info_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


