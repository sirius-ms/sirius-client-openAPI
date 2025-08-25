# SecurityContextPrincipal


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 

## Example

```python
from PySirius.models.security_context_principal import SecurityContextPrincipal

# TODO update the JSON string below
json = "{}"
# create an instance of SecurityContextPrincipal from a JSON string
security_context_principal_instance = SecurityContextPrincipal.from_json(json)
# print the JSON string representation of the object
print(SecurityContextPrincipal.to_json())

# convert the object into a dict
security_context_principal_dict = security_context_principal_instance.to_dict()
# create an instance of SecurityContextPrincipal from a dict
security_context_principal_from_dict = SecurityContextPrincipal.from_dict(security_context_principal_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


