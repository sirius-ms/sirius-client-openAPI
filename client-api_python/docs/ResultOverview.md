# ResultOverview

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sirius_score** | **float** | Sirius Score (isotope + tree score) of the formula candidate.  If NULL result is not available | [optional] 
**zodiac_score** | **float** | Zodiac Score of the formula candidate.  If NULL result is not available | [optional] 
**top_csi_score** | **float** | CSI:FingerID Score of the top ranking structure candidate of the structure database search  performed for this formula candidate.  If NULL structure database result is not available or the structure candidate list is empty. | [optional] 
**confidence_score** | **float** | Confidence Score of the  IF NULL structure database result not available a structure candidate hit of another formula candidate is  the top ranking structure candidate. | [optional] 
**canopus_result** | **bool** | True if Canopus compound class prediction results are available. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

