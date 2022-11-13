# RubySirius::AnnotatedSpectrum

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ms_level** | **Integer** | MS level of the measured spectrum.  Artificial spectra with no msLevel (e.g. Simulated Isotope patterns) use 0 | [optional] |
| **collision_energy** | [**CollisionEnergy**](CollisionEnergy.md) |  | [optional] |
| **peaks** | [**Array&lt;AnnotatedPeak&gt;**](AnnotatedPeak.md) |  | [optional] |

## Example

```ruby
require 'ruby_sirius'

instance = RubySirius::AnnotatedSpectrum.new(
  ms_level: null,
  collision_energy: null,
  peaks: null
)
```

