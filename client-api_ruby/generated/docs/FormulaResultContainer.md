# RubySirius::FormulaResultContainer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier of this formula candidate | [optional] |
| **molecular_formula** | **String** | molecular formula of this formula candidate | [optional] |
| **adduct** | **String** | Adduct of this formula candidate | [optional] |
| **result_overview** | [**ResultOverview**](ResultOverview.md) |  | [optional] |
| **candidate** | [**FormulaCandidate**](FormulaCandidate.md) |  | [optional] |

## Example

```ruby
require 'ruby_sirius'

instance = RubySirius::FormulaResultContainer.new(
  id: null,
  molecular_formula: null,
  adduct: null,
  result_overview: null,
  candidate: null
)
```

