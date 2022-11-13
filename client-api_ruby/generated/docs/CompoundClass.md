# RubySirius::CompoundClass

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Specifies the classification ontology the CompoundClass belongs to. | [optional] |
| **name** | **String** | Name of the compound class. | [optional] |
| **description** | **String** | Description of the compound class. | [optional] |
| **id** | **Integer** | Unique id of the class. Might be undefined for certain classification ontologies. | [optional] |
| **probability** | **Float** | prediction probability | [optional] |

## Example

```ruby
require 'ruby_sirius'

instance = RubySirius::CompoundClass.new(
  type: null,
  name: null,
  description: null,
  id: null,
  probability: null
)
```

