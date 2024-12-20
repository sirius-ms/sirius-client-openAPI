# SpectralLibraryMatch


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**spec_match_id** | **str** |  | [optional] 
**rank** | **int** |  | [optional] 
**similarity** | **float** |  | 
**shared_peaks** | **int** |  | [optional] 
**query_spectrum_index** | **int** |  | 
**db_name** | **str** |  | [optional] 
**db_id** | **str** |  | [optional] 
**uuid** | **int** |  | 
**splash** | **str** |  | [optional] 
**molecular_formula** | **str** |  | [optional] 
**adduct** | **str** |  | [optional] 
**exact_mass** | **str** |  | [optional] 
**smiles** | **str** |  | [optional] 
**inchi_key** | **str** |  | 
**reference_spectrum** | [**BasicSpectrum**](BasicSpectrum.md) |  | [optional] 

## Example

```python
from PySirius.models.spectral_library_match import SpectralLibraryMatch

# TODO update the JSON string below
json = "{}"
# create an instance of SpectralLibraryMatch from a JSON string
spectral_library_match_instance = SpectralLibraryMatch.from_json(json)
# print the JSON string representation of the object
print(SpectralLibraryMatch.to_json())

# convert the object into a dict
spectral_library_match_dict = spectral_library_match_instance.to_dict()
# create an instance of SpectralLibraryMatch from a dict
spectral_library_match_from_dict = SpectralLibraryMatch.from_dict(spectral_library_match_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


