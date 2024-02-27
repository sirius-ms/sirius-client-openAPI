# Subscription



## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sid** | **str** | Unique identifier of this subscription | [optional] 
**subscriber_id** | **str** | ID of the owner of the subscription.  This can be the ID of any SubscriptionOwner (e.g.  Group or  User)  depending on the level on which a subscription should be is valid. | [optional] 
**subscriber_name** | **str** | Optional name of the owner of this subscription | [optional] 
**expiration_date** | **datetime** |  | [optional] 
**start_date** | **datetime** |  | [optional] 
**count_queries** | **bool** |  | [optional] 
**instance_limit** | **int** | Limit of instances (features) that can be computed with this subscription | [optional] 
**instance_hash_recording_time** | **int** | Hash is used to allow recomputing identical data without increasing counted instances (features).  The recording time is the amount of time an instance is memorized is | [optional] 
**max_queries_per_instance** | **int** | Maximum number of queries (e.g. prediction) that can be performed  for one instance before it is counted another time. | [optional] 
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


