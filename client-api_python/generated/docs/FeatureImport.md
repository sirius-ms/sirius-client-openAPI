# FeatureImport


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**external_feature_id** | **str** | Externally provided FeatureId (by some preprocessing tool). This FeatureId is NOT used by SIRIUS but is stored to ease mapping information back to the source. | [optional] 
**ion_mass** | **float** |  | 
**charge** | **int** |  | 
**detected_adducts** | **List[Optional[str]]** | Detected adducts of this feature. Can be NULL or empty if no adducts are known. | [optional] 
**rt_start_seconds** | **float** |  | [optional] 
**rt_end_seconds** | **float** |  | [optional] 
**merged_ms1** | [**BasicSpectrum**](BasicSpectrum.md) |  | [optional] 
**ms1_spectra** | [**List[BasicSpectrum]**](BasicSpectrum.md) |  | 
**ms2_spectra** | [**List[BasicSpectrum]**](BasicSpectrum.md) |  | 

## Example

```python
from PySirius.models.feature_import import FeatureImport

# TODO update the JSON string below
json = "{}"
# create an instance of FeatureImport from a JSON string
feature_import_instance = FeatureImport.from_json(json)
# print the JSON string representation of the object
print(FeatureImport.to_json())

# convert the object into a dict
feature_import_dict = feature_import_instance.to_dict()
# create an instance of FeatureImport from a dict
feature_import_from_dict = FeatureImport.from_dict(feature_import_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


