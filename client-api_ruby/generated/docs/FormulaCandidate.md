# RubySirius::FormulaCandidate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sirius_score** | **Float** |  | [optional] |
| **isotope_score** | **Float** |  | [optional] |
| **tree_score** | **Float** |  | [optional] |
| **zodiac_score** | **Float** |  | [optional] |
| **molecular_formula** | **String** |  | [optional] |
| **adduct** | **String** |  | [optional] |
| **num_ofexplained_peaks** | **Integer** |  | [optional] |
| **num_ofexplainable_peaks** | **Integer** |  | [optional] |
| **total_explained_intensity** | **Float** |  | [optional] |
| **median_mass_deviation** | [**Deviation**](Deviation.md) |  | [optional] |

## Example

```ruby
require 'ruby_sirius'

instance = RubySirius::FormulaCandidate.new(
  sirius_score: null,
  isotope_score: null,
  tree_score: null,
  zodiac_score: null,
  molecular_formula: null,
  adduct: null,
  num_ofexplained_peaks: null,
  num_ofexplainable_peaks: null,
  total_explained_intensity: null,
  median_mass_deviation: null
)
```

