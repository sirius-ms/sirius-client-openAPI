# AllowedFeatures


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cli** | **bool** |  | [optional] 
**api** | **bool** |  | [optional] 
**de_novo** | **bool** |  | [optional] 
**import_ms_runs** | **bool** |  | [optional] 
**import_peak_lists** | **bool** |  | [optional] 
**import_cef** | **bool** |  | [optional] 

## Example

```python
from PySirius.models.allowed_features import AllowedFeatures

# TODO update the JSON string below
json = "{}"
# create an instance of AllowedFeatures from a JSON string
allowed_features_instance = AllowedFeatures.from_json(json)
# print the JSON string representation of the object
print(AllowedFeatures.to_json())

# convert the object into a dict
allowed_features_dict = allowed_features_instance.to_dict()
# create an instance of AllowedFeatures from a dict
allowed_features_from_dict = AllowedFeatures.from_dict(allowed_features_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


