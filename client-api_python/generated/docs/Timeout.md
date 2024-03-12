# Timeout


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**number_of_seconds_per_decomposition** | **int** |  | [optional] 
**number_of_seconds_per_instance** | **int** |  | [optional] 

## Example

```python
from PySirius.models.timeout import Timeout

# TODO update the JSON string below
json = "{}"
# create an instance of Timeout from a JSON string
timeout_instance = Timeout.from_json(json)
# print the JSON string representation of the object
print(Timeout.to_json())

# convert the object into a dict
timeout_dict = timeout_instance.to_dict()
# create an instance of Timeout from a dict
timeout_form_dict = timeout.from_dict(timeout_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


