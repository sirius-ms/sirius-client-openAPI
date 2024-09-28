# FeatureImport

Represents an (aligned) feature to be imported into a SIRIUS project.  At least one of the Mass Spec data sources (e.g. mergedMs1, ms1Spectra, ms2Spectra) needs to be given.  Otherwise, the import will fail.

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
**rt_apex_seconds** | **float** |  | [optional] 
**data_quality** | [**DataQuality**](DataQuality.md) |  | [optional] 
**merged_ms1** | [**BasicSpectrum**](BasicSpectrum.md) |  | [optional] 
**ms1_spectra** | [**List[BasicSpectrum]**](BasicSpectrum.md) | List of MS1Spectra belonging to this feature. These spectra will be merged an only a representative  mergedMs1 spectrum will be stored in SIRIUS. At least one of these spectra should contain the  isotope pattern of the precursor ion.  Note: Will be ignored if &#39;mergedMs1&#39; is given. | [optional] 
**ms2_spectra** | [**List[BasicSpectrum]**](BasicSpectrum.md) | List of MS/MS spectra that belong to this feature. | [optional] 

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


