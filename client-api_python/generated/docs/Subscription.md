# Subscription



## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sid** | **str** |  | [optional] 
**subscriber_id** | **str** |  | [optional] 
**subscriber_name** | **str** |  | [optional] 
**expiration_date** | **datetime** |  | [optional] 
**start_date** | **datetime** |  | [optional] 
**count_queries** | **bool** |  | [optional] 
**compound_limit** | **int** |  | [optional] 
**compound_hash_recording_time** | **int** |  | [optional] 
**max_queries_per_compound** | **int** |  | [optional] 
**max_user_accounts** | **int** |  | [optional] 
**service_url** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**tos** | **str** |  | [optional] 
**pp** | **str** |  | [optional] 

## Example

```python
from PySirius.models.subscription import Subscription

# TODO update the JSON string below
json = "{}"
# create an instance of Subscription from a JSON string
subscription_instance = Subscription.from_json(json)
# print the JSON string representation of the object
print Subscription.to_json()

# convert the object into a dict
subscription_dict = subscription_instance.to_dict()
# create an instance of Subscription from a dict
subscription_form_dict = subscription.from_dict(subscription_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


