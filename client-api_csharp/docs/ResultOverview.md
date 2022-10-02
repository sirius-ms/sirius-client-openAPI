# IO.Swagger.Model.ResultOverview
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SiriusScore** | **double?** | Sirius Score (isotope + tree score) of the formula candidate.  If NULL result is not available | [optional] 
**ZodiacScore** | **double?** | Zodiac Score of the formula candidate.  If NULL result is not available | [optional] 
**TopCSIScore** | **double?** | CSI:FingerID Score of the top ranking structure candidate of the structure database search  performed for this formula candidate.  If NULL structure database result is not available or the structure candidate list is empty. | [optional] 
**ConfidenceScore** | **double?** | Confidence Score of the  IF NULL structure database result not available a structure candidate hit of another formula candidate is  the top ranking structure candidate. | [optional] 
**CanopusResult** | **bool?** | True if Canopus compound class prediction results are available. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

