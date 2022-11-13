# RSirius::ResultOverview

Results that are available for a {@link FormulaResultContainer FormulaResultContainer} represented as boolean or numeric score (if available).  NULL scores indicate that the corresponding result is not available.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**siriusScore** | **numeric** | Sirius Score (isotope + tree score) of the formula candidate.  If NULL result is not available | [optional] 
**zodiacScore** | **numeric** | Zodiac Score of the formula candidate.  If NULL result is not available | [optional] 
**topCSIScore** | **numeric** | CSI:FingerID Score of the top ranking structure candidate of the structure database search  performed for this formula candidate.  If NULL structure database result is not available or the structure candidate list is empty. | [optional] 
**confidenceScore** | **numeric** | Confidence Score of the  IF NULL structure database result not available a structure candidate hit of another formula candidate is  the top ranking structure candidate. | [optional] 
**canopusResult** | **character** | True if Canopus compound class prediction results are available. | [optional] 


