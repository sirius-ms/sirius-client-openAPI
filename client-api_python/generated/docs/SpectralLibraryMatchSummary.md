# SpectralLibraryMatchSummary


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**best_match** | [**SpectralLibraryMatch**](SpectralLibraryMatch.md) |  | [optional] 
**spectral_match_count** | **int** |  | 
**reference_spectra_count** | **int** |  | 
**database_compound_count** | **int** |  | 

## Example

```python
from PySirius.models.spectral_library_match_summary import SpectralLibraryMatchSummary

# TODO update the JSON string below
json = "{}"
# create an instance of SpectralLibraryMatchSummary from a JSON string
spectral_library_match_summary_instance = SpectralLibraryMatchSummary.from_json(json)
# print the JSON string representation of the object
print(SpectralLibraryMatchSummary.to_json())

# convert the object into a dict
spectral_library_match_summary_dict = spectral_library_match_summary_instance.to_dict()
# create an instance of SpectralLibraryMatchSummary from a dict
spectral_library_match_summary_from_dict = SpectralLibraryMatchSummary.from_dict(spectral_library_match_summary_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


