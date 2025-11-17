# DownloadableDatabase


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**size** | **int** |  | [optional] 

## Example

```python
from PySirius.models.downloadable_database import DownloadableDatabase

# TODO update the JSON string below
json = "{}"
# create an instance of DownloadableDatabase from a JSON string
downloadable_database_instance = DownloadableDatabase.from_json(json)
# print the JSON string representation of the object
print(DownloadableDatabase.to_json())

# convert the object into a dict
downloadable_database_dict = downloadable_database_instance.to_dict()
# create an instance of DownloadableDatabase from a dict
downloadable_database_from_dict = DownloadableDatabase.from_dict(downloadable_database_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


