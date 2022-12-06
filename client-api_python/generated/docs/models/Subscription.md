# PySirius.model.subscription.Subscription

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  |  | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**sid** | str,  | str,  |  | [optional] 
**subscriberId** | str,  | str,  |  | [optional] 
**subscriberName** | str,  | str,  |  | [optional] 
**expirationDate** | str, datetime,  | str,  |  | [optional] value must conform to RFC-3339 date-time
**startDate** | str, datetime,  | str,  |  | [optional] value must conform to RFC-3339 date-time
**countQueries** | bool,  | BoolClass,  |  | [optional] 
**compoundLimit** | decimal.Decimal, int,  | decimal.Decimal,  |  | [optional] value must be a 32 bit integer
**compoundHashRecordingTime** | decimal.Decimal, int,  | decimal.Decimal,  |  | [optional] value must be a 32 bit integer
**maxQueriesPerCompound** | decimal.Decimal, int,  | decimal.Decimal,  |  | [optional] value must be a 32 bit integer
**maxUserAccounts** | decimal.Decimal, int,  | decimal.Decimal,  |  | [optional] value must be a 32 bit integer
**serviceUrl** | str,  | str,  |  | [optional] 
**description** | str,  | str,  |  | [optional] 
**name** | str,  | str,  |  | [optional] 
**tos** | str,  | str,  |  | [optional] 
**pp** | str,  | str,  |  | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, int, float, bool, decimal.Decimal, None, list, tuple, bytes, io.FileIO, io.BufferedReader | frozendict.frozendict, str, BoolClass, decimal.Decimal, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

