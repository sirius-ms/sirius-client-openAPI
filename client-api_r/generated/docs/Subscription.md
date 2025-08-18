# Rsirius::Subscription


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sid** | **character** | Unique identifier of this subscription | [optional] 
**subscriberId** | **character** | ID of the owner of the subscription.  This can be the ID of any SubscriptionOwner (e.g.  Group or  User)  depending on the level on which a subscription should be is valid. | [optional] 
**subscriberName** | **character** | Optional name of the owner of this subscription | [optional] 
**expirationDate** | **character** |  | [optional] 
**startDate** | **character** |  | [optional] 
**countQueries** | **character** |  | [optional] 
**instanceLimit** | **integer** | Limit of instances (features) that can be computed with this subscription | [optional] 
**instanceHashRecordingTime** | **integer** | Hash is used to allow recomputing identical data without increasing counted instances (features).  The recording time is the amount of time an instance is memorized is | [optional] 
**maxQueriesPerInstance** | **integer** | Maximum number of queries (e.g. prediction) that can be performed  for one instance before it is counted another time. | [optional] 
**maxUserAccounts** | **integer** |  | [optional] 
**serviceUrl** | **character** |  | [optional] 
**description** | **character** |  | [optional] 
**name** | **character** |  | [optional] 
**tos** | **character** |  | [optional] 
**pp** | **character** |  | [optional] 
**allowedFeatures** | [**AllowedFeatures**](AllowedFeatures.md) |  | [optional] 


