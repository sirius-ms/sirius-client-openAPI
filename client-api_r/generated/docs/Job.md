# Rsirius::Job

Identifier created by the SIRIUS Nightsky API for a newly created Job.  Object can be enriched with Job status/progress information ({@link JobProgress JobProgress}) and/or Job command information.  This is a return value of the API. So nullable values can also be NOT_REQUIRED to allow for easy removal.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **character** | Unique identifier to access the job via the API | [optional] 
**command** | **character** | Command string of the executed Task | [optional] 
**progress** | [**JobProgress**](JobProgress.md) | Optional progress information of this job | [optional] 
**affectedCompoundIds** | **array[character]** | List of compoundIds that are affected by this job.  This lis will also contain compoundIds where not all features of the compound are affected by the job.  If this job is creating compounds (e.g. data import jobs) this value will be NULL until the jobs has finished | [optional] 
**affectedAlignedFeatureIds** | **array[character]** | List of alignedFeatureIds that are affected by this job.  If this job is creating features (e.g. data import jobs) this value will be NULL until the jobs has finished | [optional] 
**jobEffect** | **character** | Effect this job has. The affected ids are added, removed or modified.  Null if job does not affect features/compounds  Not available/null if affected Ids are not requested | [optional] [Enum: [IMPORT, COMPUTATION, DELETION]] 


