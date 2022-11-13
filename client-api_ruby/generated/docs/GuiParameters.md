# RubySirius::GuiParameters

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **selected_tab** | **String** | Selected Result ab. | [optional] |
| **cid** | **String** | ID of Selected compound. | [optional] |
| **fid** | **String** | ID of Selected Formula candidate of the selected compound. | [optional] |
| **structure_candidate_in_ch_i_key** | **String** | InChIKey of selected structure candidate of selected formula candidate. | [optional] |
| **bring_to_front** | **Boolean** | If true bring SIRIUS GUI window to foreground. | [optional] |

## Example

```ruby
require 'ruby_sirius'

instance = RubySirius::GuiParameters.new(
  selected_tab: null,
  cid: null,
  fid: null,
  structure_candidate_in_ch_i_key: null,
  bring_to_front: null
)
```

