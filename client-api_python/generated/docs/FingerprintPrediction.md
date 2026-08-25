# FingerprintPrediction

User/developer friendly parameter subset for the CSI:FingerID Fingerprint tool  Needs results from the Formula identification tool (Sirius).

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enabled** | **bool** | Indicates whether the tool is enabled. | [optional] 
**use_score_threshold** | **bool** | If true, an adaptive soft threshold will be applied to only compute Fingerprints for promising formula candidates  Enabling is highly recommended. | [optional] 
**always_predict_high_ref_matches** | **bool** | If true, fingerprints, compound classes and structures will be predicted for formula candidates whose  reference spectrum similarity is above Sirius.minReferenceMatchScoreToInject, no matter which  score threshold rules would otherwise apply.  If NULL default value will be used. | [optional] 

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
fingerprint_prediction_from_dict = FingerprintPrediction.from_dict(fingerprint_prediction_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


