# RubySirius::ResultOverview

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sirius_score** | **Float** | Sirius Score (isotope + tree score) of the formula candidate.  If NULL result is not available | [optional] |
| **zodiac_score** | **Float** | Zodiac Score of the formula candidate.  If NULL result is not available | [optional] |
| **top_csi_score** | **Float** | CSI:FingerID Score of the top ranking structure candidate of the structure database search  performed for this formula candidate.  If NULL structure database result is not available or the structure candidate list is empty. | [optional] |
| **confidence_score** | **Float** | Confidence Score of the  IF NULL structure database result not available a structure candidate hit of another formula candidate is  the top ranking structure candidate. | [optional] |
| **canopus_result** | **Boolean** | True if Canopus compound class prediction results are available. | [optional] |

## Example

```ruby
require 'ruby_sirius'

instance = RubySirius::ResultOverview.new(
  sirius_score: null,
  zodiac_score: null,
  top_csi_score: null,
  confidence_score: null,
  canopus_result: null
)
```

