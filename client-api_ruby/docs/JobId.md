# SwaggerClient::JobId

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Unique identifier to access the job via the API | [optional] 
**command** | **String** | Command string of the executed Task | [optional] 
**progress** | [**JobProgress**](JobProgress.md) |  | [optional] 
**affected_compound_ids** | **Array&lt;String&gt;** | List of compound ids that are affected by this job.  If this job is creating compounds (e.g. data import jobs) this value will be NULL until the jobs has finished | [optional] 

