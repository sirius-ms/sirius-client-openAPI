# PySirius.model.account_credentials.AccountCredentials

Simple object to hold account credentials, e.g. to perform login operations.  If refreshToken is given, it is usually preferred over password based authentication.  But in the end this is up to the respective web service.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | Simple object to hold account credentials, e.g. to perform login operations.  If refreshToken is given, it is usually preferred over password based authentication.  But in the end this is up to the respective web service. | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**username** | str,  | str,  |  | [optional] 
**password** | str,  | str,  |  | [optional] 
**refreshToken** | str,  | str,  |  | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, int, float, bool, decimal.Decimal, None, list, tuple, bytes, io.FileIO, io.BufferedReader | frozendict.frozendict, str, BoolClass, decimal.Decimal, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

