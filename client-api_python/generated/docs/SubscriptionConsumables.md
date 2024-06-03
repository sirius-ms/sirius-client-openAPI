# SubscriptionConsumables


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**counted_compounds** | **int** |  | [optional] 

## Example

```python
from PySirius.models.subscription_consumables import SubscriptionConsumables

# TODO update the JSON string below
json = "{}"
# create an instance of SubscriptionConsumables from a JSON string
subscription_consumables_instance = SubscriptionConsumables.from_json(json)
# print the JSON string representation of the object
print(SubscriptionConsumables.to_json())

# convert the object into a dict
subscription_consumables_dict = subscription_consumables_instance.to_dict()
# create an instance of SubscriptionConsumables from a dict
subscription_consumables_from_dict = SubscriptionConsumables.from_dict(subscription_consumables_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


