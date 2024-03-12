# FingerprintPrediction

User/developer friendly parameter subset for the CSI:FingerID Fingerprint tool  Needs results from Formula/SIRIUS Tool

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enabled** | **bool** | tags whether the tool is enabled | [optional] 
**use_score_threshold** | **bool** | If true, an adaptive soft threshold will be applied to only compute Fingerprints for promising formula candidates  Enabling is highly recommended. | [optional] 
**always_predict_high_ref_matches** | **bool** | If true Fingerprint/Classes/Structures will be predicted for formulas candidates with  reference spectrum similarity &gt; Sirius.minReferenceMatchScoreToInject will be predicted no matter which  score threshold rules apply.  If NULL default value will be used. | [optional] 

## Example

```python
from PySirius.models.fingerprint_prediction import FingerprintPrediction

# TODO update the JSON string below
json = "{}"
# create an instance of FingerprintPrediction from a JSON string
fingerprint_prediction_instance = FingerprintPrediction.from_json(json)
# print the JSON string representation of the object
print(FingerprintPrediction.to_json())

# convert the object into a dict
fingerprint_prediction_dict = fingerprint_prediction_instance.to_dict()
# create an instance of FingerprintPrediction from a dict
fingerprint_prediction_form_dict = fingerprint_prediction.from_dict(fingerprint_prediction_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


