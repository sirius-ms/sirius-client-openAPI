# RubySirius::CompoundAnnotation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **formula_annotation** | [**FormulaCandidate**](FormulaCandidate.md) |  | [optional] |
| **structure_annotation** | [**StructureCandidate**](StructureCandidate.md) |  | [optional] |
| **compound_class_annotation** | [**CompoundClasses**](CompoundClasses.md) |  | [optional] |

## Example

```ruby
require 'ruby_sirius'

instance = RubySirius::CompoundAnnotation.new(
  formula_annotation: null,
  structure_annotation: null,
  compound_class_annotation: null
)
```

