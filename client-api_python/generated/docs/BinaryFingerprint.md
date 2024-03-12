# BinaryFingerprint


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**bits_set** | **List[int]** | Array that contains all RELATIVE indices (masked FP) of bits that are set (are 1) | [optional] 
**length** | **int** | Size of the fingerprint (masked fp), e.g. to reconstruct the binary array from the array of set bits | [optional] 

## Example

```python
from PySirius.models.binary_fingerprint import BinaryFingerprint

# TODO update the JSON string below
json = "{}"
# create an instance of BinaryFingerprint from a JSON string
binary_fingerprint_instance = BinaryFingerprint.from_json(json)
# print the JSON string representation of the object
print(BinaryFingerprint.to_json())

# convert the object into a dict
binary_fingerprint_dict = binary_fingerprint_instance.to_dict()
# create an instance of BinaryFingerprint from a dict
binary_fingerprint_form_dict = binary_fingerprint.from_dict(binary_fingerprint_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


