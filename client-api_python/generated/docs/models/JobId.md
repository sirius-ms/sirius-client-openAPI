# PySirius.model.job_id.JobId

Identifier created by the SIRIUS Nightsky API for a newly created Job.  Object can be enriched with Job status/progress information ({@link JobProgress JobProgress}) and/or Job command information.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | Identifier created by the SIRIUS Nightsky API for a newly created Job.  Object can be enriched with Job status/progress information ({@link JobProgress JobProgress}) and/or Job command information. | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**id** | str,  | str,  | Unique identifier to access the job via the API | [optional] 
**command** | str,  | str,  | Command string of the executed Task | [optional] 
**progress** | [**JobProgress**](JobProgress.md) | [**JobProgress**](JobProgress.md) |  | [optional] 
**[affectedCompoundIds](#affectedCompoundIds)** | list, tuple,  | tuple,  | List of compound ids that are affected by this job.  If this job is creating compounds (e.g. data import jobs) this value will be NULL until the jobs has finished | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, int, float, bool, decimal.Decimal, None, list, tuple, bytes, io.FileIO, io.BufferedReader | frozendict.frozendict, str, BoolClass, decimal.Decimal, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

# affectedCompoundIds

List of compound ids that are affected by this job.  If this job is creating compounds (e.g. data import jobs) this value will be NULL until the jobs has finished

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  | List of compound ids that are affected by this job.  If this job is creating compounds (e.g. data import jobs) this value will be NULL until the jobs has finished | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
items | str,  | str,  |  | 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

