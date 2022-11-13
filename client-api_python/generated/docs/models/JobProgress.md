# PySirius.model.job_progress.JobProgress

Progress information of a computation job that has already been submitted to SIRIUS.  if  currentProgress == maxProgress job is finished and should change to state done soon.  if a job is DONE all results can be accessed via the Project-Spaces api.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | Progress information of a computation job that has already been submitted to SIRIUS.  if  currentProgress &#x3D;&#x3D; maxProgress job is finished and should change to state done soon.  if a job is DONE all results can be accessed via the Project-Spaces api. | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**indeterminate** | bool,  | BoolClass,  | Is the progress indeterminate or not | [optional] 
**state** | str,  | str,  | Current state of the Jobs in the SIRIUS internal Job scheduler           WAITING: Waiting for submission to ExecutorService (e.g. due to dependent jobs)          READY: Ready for submission but not yet enqueued for submission to ExecutorService.          QUEUED: Enqueued for submission to ExecutorService.          SUBMITTED: Submitted and waiting to be executed.          RUNNING: Job is running.          CANCELED: Jobs is finished due to cancellation by suer or dependent jobs.          FAILED: Job is finished but failed.          DONE: Job finished successfully. | [optional] must be one of ["WAITING", "READY", "QUEUED", "SUBMITTED", "RUNNING", "CANCELED", "FAILED", "DONE", ] 
**currentProgress** | decimal.Decimal, int,  | decimal.Decimal,  | Current progress value of the job. | [optional] value must be a 64 bit integer
**maxProgress** | decimal.Decimal, int,  | decimal.Decimal,  | Progress value to reach (might also change during execution) | [optional] value must be a 64 bit integer
**message** | str,  | str,  | Progress information and warnings. | [optional] 
**errorMessage** | str,  | str,  | Error message if the job did not finish successfully failed. | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, int, float, bool, decimal.Decimal, None, list, tuple, bytes, io.FileIO, io.BufferedReader | frozendict.frozendict, str, BoolClass, decimal.Decimal, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

