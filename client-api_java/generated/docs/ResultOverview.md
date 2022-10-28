# ResultOverview

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**siriusScore** | **Double** | Sirius Score (isotope + tree score) of the formula candidate.  If NULL result is not available |  [optional]
**zodiacScore** | **Double** | Zodiac Score of the formula candidate.  If NULL result is not available |  [optional]
**topCSIScore** | **Double** | CSI:FingerID Score of the top ranking structure candidate of the structure database search  performed for this formula candidate.  If NULL structure database result is not available or the structure candidate list is empty. |  [optional]
**confidenceScore** | **Double** | Confidence Score of the  IF NULL structure database result not available a structure candidate hit of another formula candidate is  the top ranking structure candidate. |  [optional]
**canopusResult** | **Boolean** | True if Canopus compound class prediction results are available. |  [optional]
