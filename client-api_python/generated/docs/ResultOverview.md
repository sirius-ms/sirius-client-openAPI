# ResultOverview

Results that are available for a {@link FormulaResultContainer FormulaResultContainer} represented as boolean or numeric score (if available).  NULL scores indicate that the corresponding result is not available.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sirius_score** | **float** | Sirius Score (isotope + tree score) of the formula candidate.  If NULL result is not available | [optional] 
**zodiac_score** | **float** | Zodiac Score of the formula candidate.  If NULL result is not available | [optional] 
**top_csi_score** | **float** | CSI:FingerID Score of the top ranking structure candidate of the structure database search  performed for this formula candidate.  If NULL structure database result is not available or the structure candidate list is empty. | [optional] 
**confidence_score** | **float** | Confidence Score of the  IF NULL structure database result not available a structure candidate hit of another formula candidate is  the top ranking structure candidate. | [optional] 
**canopus_result** | **bool** | True if Canopus compound class prediction results are available. | [optional] 

## Example

```python
from PySirius.models.result_overview import ResultOverview

# TODO update the JSON string below
json = "{}"
# create an instance of ResultOverview from a JSON string
result_overview_instance = ResultOverview.from_json(json)
# print the JSON string representation of the object
print ResultOverview.to_json()

# convert the object into a dict
result_overview_dict = result_overview_instance.to_dict()
# create an instance of ResultOverview from a dict
result_overview_form_dict = result_overview.from_dict(result_overview_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


