# SpectralLibrarySearch

User/developer friendly parameter subset for the Spectral library search tool.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enabled** | **bool** | tags whether the tool is enabled | [optional] 
**spectra_search_dbs** | **List[Optional[str]]** | Structure Databases with Reference spectra to search in.  &lt;p&gt;  Defaults to BIO + Custom Databases. Possible values are available to Database API. | [optional] 
**precursor_deviation_ppm** | **float** | Maximum allowed mass deviation in ppm for matching the precursor. If not specified, the same value as for the peaks is used. | [optional] 
**min_similarity** | **float** | Minimal spectral similarity of a spectral match to be considered a hit. | [optional] 
**min_num_of_peaks** | **int** | Minimal number of matching peaks of a spectral match to be considered a hit. | [optional] 
**enable_analogue_search** | **bool** | Enable analogue search in addition to the identity spectral library search | [optional] 
**min_similarity_analogue** | **float** | Minimal spectral similarity of a spectral match to be considered an analogue hit. | [optional] 
**min_num_of_peaks_analogue** | **int** | Minimal number of matching peaks of a spectral match to be considered an analogue hit. | [optional] 
**scoring** | [**SpectralMatchingType**](SpectralMatchingType.md) |  | [optional] 
**peak_deviation_ppm** | **float** | NO LONGER SUPPORTED (IGNORED)  Maximum allowed mass deviation in ppm for matching peaks. | [optional] 

## Example

```python
from PySirius.models.spectral_library_search import SpectralLibrarySearch

# TODO update the JSON string below
json = "{}"
# create an instance of SpectralLibrarySearch from a JSON string
spectral_library_search_instance = SpectralLibrarySearch.from_json(json)
# print the JSON string representation of the object
print(SpectralLibrarySearch.to_json())

# convert the object into a dict
spectral_library_search_dict = spectral_library_search_instance.to_dict()
# create an instance of SpectralLibrarySearch from a dict
spectral_library_search_from_dict = SpectralLibrarySearch.from_dict(spectral_library_search_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


