# ConnectionError



## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**error_type** | **str** |  | 
**error_klass** | **str** |  | 
**sirius_error_code** | **int** |  | 
**sirius_message** | **str** |  | 
**server_response_error_code** | **int** |  | [optional] 
**server_response_error_message** | **str** |  | [optional] 
**error** | **bool** |  | [optional] 
**warning** | **bool** |  | [optional] 

## Example

```python
from PySirius.models.connection_error import ConnectionError

# TODO update the JSON string below
json = "{}"
# create an instance of ConnectionError from a JSON string
connection_error_instance = ConnectionError.from_json(json)
# print the JSON string representation of the object
print ConnectionError.to_json()

# convert the object into a dict
connection_error_dict = connection_error_instance.to_dict()
# create an instance of ConnectionError from a dict
connection_error_form_dict = connection_error.from_dict(connection_error_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


