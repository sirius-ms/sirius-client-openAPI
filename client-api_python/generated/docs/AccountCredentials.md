# AccountCredentials

Simple object to hold account credentials, e.g. to perform login operations.  If refreshToken is given, it is usually preferred over password based authentication.  But in the end this is up to the respective web service.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**username** | **str** |  | [optional] 
**password** | **str** |  | [optional] 
**refresh_token** | **str** |  | [optional] 

## Example

```python
from PySirius.models.account_credentials import AccountCredentials

# TODO update the JSON string below
json = "{}"
# create an instance of AccountCredentials from a JSON string
account_credentials_instance = AccountCredentials.from_json(json)
# print the JSON string representation of the object
print AccountCredentials.to_json()

# convert the object into a dict
account_credentials_dict = account_credentials_instance.to_dict()
# create an instance of AccountCredentials from a dict
account_credentials_form_dict = account_credentials.from_dict(account_credentials_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


