# ZodiacLibraryScoring


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enabled** | **bool** |  | [optional] 
**min_similarity** | **float** |  | [optional] 

## Example

```python
from PySirius.models.zodiac_library_scoring import ZodiacLibraryScoring

# TODO update the JSON string below
json = "{}"
# create an instance of ZodiacLibraryScoring from a JSON string
zodiac_library_scoring_instance = ZodiacLibraryScoring.from_json(json)
# print the JSON string representation of the object
print(ZodiacLibraryScoring.to_json())

# convert the object into a dict
zodiac_library_scoring_dict = zodiac_library_scoring_instance.to_dict()
# create an instance of ZodiacLibraryScoring from a dict
zodiac_library_scoring_from_dict = ZodiacLibraryScoring.from_dict(zodiac_library_scoring_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


