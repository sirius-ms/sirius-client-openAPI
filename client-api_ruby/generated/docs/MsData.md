# RubySirius::MsData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **merged_ms1** | [**AnnotatedSpectrum**](AnnotatedSpectrum.md) |  | [optional] |
| **merged_ms2** | [**AnnotatedSpectrum**](AnnotatedSpectrum.md) |  | [optional] |
| **ms2_spectra** | [**Array&lt;AnnotatedSpectrum&gt;**](AnnotatedSpectrum.md) |  | [optional] |
| **ms1_spectra** | [**Array&lt;AnnotatedSpectrum&gt;**](AnnotatedSpectrum.md) |  | [optional] |

## Example

```ruby
require 'ruby_sirius'

instance = RubySirius::MsData.new(
  merged_ms1: null,
  merged_ms2: null,
  ms2_spectra: null,
  ms1_spectra: null
)
```

