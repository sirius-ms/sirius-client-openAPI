# IO.Swagger.Model.JobId
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** | Unique identifier to access the job via the API | [optional] 
**Command** | **string** | Command string of the executed Task | [optional] 
**Progress** | [**JobProgress**](JobProgress.md) |  | [optional] 
**AffectedCompoundIds** | **List&lt;string&gt;** | List of compound ids that are affected by this job.  If this job is creating compounds (e.g. data import jobs) this value will be NULL until the jobs has finished | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

