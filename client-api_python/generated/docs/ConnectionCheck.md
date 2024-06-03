# ConnectionCheck


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**worker_info** | [**WorkerList**](WorkerList.md) |  | [optional] 
**license_info** | [**LicenseInfo**](LicenseInfo.md) |  | 
**errors** | [**List[ConnectionError]**](ConnectionError.md) | List of errors ordered by significance. first error should be reported and addressed first.  Following errors might just be follow-up errors | 
**supports_pos_predictor_types** | **bool** |  | 
**supports_neg_predictor_types** | **bool** |  | 
**available_workers** | **List[str]** |  | 
**un_available_workers** | **List[str]** |  | 
**supports_all_predictor_types** | **bool** |  | 

## Example

```python
from PySirius.models.connection_check import ConnectionCheck

# TODO update the JSON string below
json = "{}"
# create an instance of ConnectionCheck from a JSON string
connection_check_instance = ConnectionCheck.from_json(json)
# print the JSON string representation of the object
print(ConnectionCheck.to_json())

# convert the object into a dict
connection_check_dict = connection_check_instance.to_dict()
# create an instance of ConnectionCheck from a dict
connection_check_from_dict = ConnectionCheck.from_dict(connection_check_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


