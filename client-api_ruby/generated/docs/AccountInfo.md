# RubySirius::AccountInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  | [optional] |
| **username** | **String** |  | [optional] |
| **user_email** | **String** |  | [optional] |
| **gravatar_url** | **String** |  | [optional] |
| **subscriptions** | [**Array&lt;Subscription&gt;**](Subscription.md) |  | [optional] |
| **active_subscription_id** | **String** |  | [optional] |

## Example

```ruby
require 'ruby_sirius'

instance = RubySirius::AccountInfo.new(
  user_id: null,
  username: null,
  user_email: null,
  gravatar_url: null,
  subscriptions: null,
  active_subscription_id: null
)
```

