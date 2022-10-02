# JobId

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Unique identifier to access the job via the API | [optional] 
**command** | **str** | Command string of the executed Task | [optional] 
**progress** | [**JobProgress**](JobProgress.md) |  | [optional] 
**affected_compound_ids** | **list[str]** | List of compound ids that are affected by this job.  If this job is creating compounds (e.g. data import jobs) this value will be NULL until the jobs has finished | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

