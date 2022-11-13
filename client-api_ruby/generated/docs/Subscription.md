# RubySirius::Subscription

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sid** | **String** |  | [optional] |
| **subscriber_id** | **String** |  | [optional] |
| **subscriber_name** | **String** |  | [optional] |
| **expiration_date** | **Time** |  | [optional] |
| **count_queries** | **Boolean** |  | [optional] |
| **compound_limit** | **Integer** |  | [optional] |
| **compound_hash_recording_time** | **Integer** |  | [optional] |
| **max_queries_per_compound** | **Integer** |  | [optional] |
| **max_user_accounts** | **Integer** |  | [optional] |
| **service_url** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **tos** | **String** |  | [optional] |
| **pp** | **String** |  | [optional] |

## Example

```ruby
require 'ruby_sirius'

instance = RubySirius::Subscription.new(
  sid: null,
  subscriber_id: null,
  subscriber_name: null,
  expiration_date: null,
  count_queries: null,
  compound_limit: null,
  compound_hash_recording_time: null,
  max_queries_per_compound: null,
  max_user_accounts: null,
  service_url: null,
  description: null,
  name: null,
  tos: null,
  pp: null
)
```

