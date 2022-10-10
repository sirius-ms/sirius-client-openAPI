# RubySirius::JobProgress

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**indeterminate** | **BOOLEAN** | Is the progress indeterminate or not | [optional] 
**state** | **String** | Current state of the Jobs in the SIRIUS internal Job scheduler           WAITING: Waiting for submission to ExecutorService (e.g. due to dependent jobs)          READY: Ready for submission but not yet enqueued for submission to ExecutorService.          QUEUED: Enqueued for submission to ExecutorService.          SUBMITTED: Submitted and waiting to be executed.          RUNNING: Job is running.          CANCELED: Jobs is finished due to cancellation by suer or dependent jobs.          FAILED: Job is finished but failed.          DONE: Job finished successfully. | [optional] 
**current_progress** | **Integer** | Current progress value of the job. | [optional] 
**max_progress** | **Integer** | Progress value to reach (might also change during execution) | [optional] 
**message** | **String** | Progress information and warnings. | [optional] 
**error_message** | **String** | Error message if the job did not finish successfully failed. | [optional] 

