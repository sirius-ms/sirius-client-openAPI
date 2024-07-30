# MsNovelist


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enabled** | **bool** | tags whether the tool is enabled | [optional] 
**number_of_candidate_to_predict** | **int** | Number of structure candidates to be predicted by MsNovelist.  Max Value 128. Values &gt; 128 will be set to 128.  Actual number of returned candidate might be lower du to duplicates being created by MsNovelist. | [optional] 

## Example

```python
from PySirius.models.ms_novelist import MsNovelist

# TODO update the JSON string below
json = "{}"
# create an instance of MsNovelist from a JSON string
ms_novelist_instance = MsNovelist.from_json(json)
# print the JSON string representation of the object
print(MsNovelist.to_json())

# convert the object into a dict
ms_novelist_dict = ms_novelist_instance.to_dict()
# create an instance of MsNovelist from a dict
ms_novelist_from_dict = MsNovelist.from_dict(ms_novelist_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


