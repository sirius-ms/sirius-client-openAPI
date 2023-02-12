# RubySirius::Zodiac

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | tags whether the tool is enabled | [optional] |
| **considered_candidates_at300_mz** | [**ZodiacNumberOfConsideredCandidatesAt300Mz**](ZodiacNumberOfConsideredCandidatesAt300Mz.md) |  | [optional] |
| **considered_candidates_at800_mz** | [**ZodiacNumberOfConsideredCandidatesAt800Mz**](ZodiacNumberOfConsideredCandidatesAt800Mz.md) |  | [optional] |
| **run_in_two_steps** | [**ZodiacRunInTwoSteps**](ZodiacRunInTwoSteps.md) |  | [optional] |
| **edge_filter_thresholds** | [**ZodiacEdgeFilterThresholds**](ZodiacEdgeFilterThresholds.md) |  | [optional] |
| **gibbs_sampler_parameters** | [**ZodiacEpochs**](ZodiacEpochs.md) |  | [optional] |

## Example

```ruby
require 'ruby_sirius'

instance = RubySirius::Zodiac.new(
  enabled: null,
  considered_candidates_at300_mz: null,
  considered_candidates_at800_mz: null,
  run_in_two_steps: null,
  edge_filter_thresholds: null,
  gibbs_sampler_parameters: null
)
```

