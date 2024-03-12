# SimplePeak


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**mz** | **float** |  | [optional] 
**intensity** | **float** |  | [optional] 

## Example

```python
from PySirius.models.simple_peak import SimplePeak

# TODO update the JSON string below
json = "{}"
# create an instance of SimplePeak from a JSON string
simple_peak_instance = SimplePeak.from_json(json)
# print the JSON string representation of the object
print(SimplePeak.to_json())

# convert the object into a dict
simple_peak_dict = simple_peak_instance.to_dict()
# create an instance of SimplePeak from a dict
simple_peak_form_dict = simple_peak.from_dict(simple_peak_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


