# RubySirius::CompoundId

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **index** | **Integer** |  | [optional] |
| **ion_mass** | **Float** |  | [optional] |
| **ion_type** | **String** |  | [optional] |
| **rt_start_seconds** | **Float** |  | [optional] |
| **rt_end_seconds** | **Float** |  | [optional] |
| **top_annotation** | [**CompoundAnnotation**](CompoundAnnotation.md) |  | [optional] |
| **ms_data** | [**MsData**](MsData.md) |  | [optional] |
| **computing** | **Boolean** |  | [optional] |

## Example

```ruby
require 'ruby_sirius'

instance = RubySirius::CompoundId.new(
  id: null,
  name: null,
  index: null,
  ion_mass: null,
  ion_type: null,
  rt_start_seconds: null,
  rt_end_seconds: null,
  top_annotation: null,
  ms_data: null,
  computing: null
)
```

