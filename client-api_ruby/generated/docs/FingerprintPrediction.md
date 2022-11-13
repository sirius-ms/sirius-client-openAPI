# RubySirius::FingerprintPrediction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | tags whether the tool is enabled | [optional] |
| **use_score_threshold** | **Boolean** | If true, an adaptive soft threshold will be applied to only compute Fingerprints for promising formula candidates  Enabling is highly recommended. | [optional] |

## Example

```ruby
require 'ruby_sirius'

instance = RubySirius::FingerprintPrediction.new(
  enabled: null,
  use_score_threshold: null
)
```

