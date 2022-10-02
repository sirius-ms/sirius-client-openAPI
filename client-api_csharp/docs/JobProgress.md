# IO.Swagger.Model.JobProgress
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Indeterminate** | **bool?** | Is the progress indeterminate or not | [optional] 
**State** | **string** | Current state of the Jobs in the SIRIUS internal Job scheduler           WAITING: Waiting for submission to ExecutorService (e.g. due to dependent jobs)          READY: Ready for submission but not yet enqueued for submission to ExecutorService.          QUEUED: Enqueued for submission to ExecutorService.          SUBMITTED: Submitted and waiting to be executed.          RUNNING: Job is running.          CANCELED: Jobs is finished due to cancellation by suer or dependent jobs.          FAILED: Job is finished but failed.          DONE: Job finished successfully. | [optional] 
**CurrentProgress** | **long?** | Current progress value of the job. | [optional] 
**MaxProgress** | **long?** | Progress value to reach (might also change during execution) | [optional] 
**Message** | **string** | Progress information and warnings. | [optional] 
**ErrorMessage** | **string** | Error message if the job did not finish successfully failed. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

