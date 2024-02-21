# LicenseInfo



## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**user_email** | **str** | Email address of the user account this license information belongs to. | [optional] 
**user_id** | **str** | User ID (uid) of the user account this license information belongs to. | [optional] 
**subscription** | [**Subscription**](Subscription.md) |  | [optional] 
**consumables** | [**SubscriptionConsumables**](SubscriptionConsumables.md) |  | [optional] 
**terms** | [**List[Term]**](Term.md) |  | [optional] 

## Example

```python
from PySirius.models.license_info import LicenseInfo

# TODO update the JSON string below
json = "{}"
# create an instance of LicenseInfo from a JSON string
license_info_instance = LicenseInfo.from_json(json)
# print the JSON string representation of the object
print LicenseInfo.to_json()

# convert the object into a dict
license_info_dict = license_info_instance.to_dict()
# create an instance of LicenseInfo from a dict
license_info_form_dict = license_info.from_dict(license_info_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


