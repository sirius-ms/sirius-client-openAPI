# AnyValue

Can be a String, Number or Boolean

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------

## Example

```python
from PySirius.models.any_value import AnyValue

# TODO update the JSON string below
json = "{}"
# create an instance of AnyValue from a JSON string
any_value_instance = AnyValue.from_json(json)
# print the JSON string representation of the object
print(AnyValue.to_json())

# convert the object into a dict
any_value_dict = any_value_instance.to_dict()
# create an instance of AnyValue from a dict
any_value_from_dict = AnyValue.from_dict(any_value_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


