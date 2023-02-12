# RubySirius::CanopusPredictions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **classy_fire_classes** | [**Array&lt;CompoundClass&gt;**](CompoundClass.md) | All predicted ClassyFire classes | [optional] |
| **npc_classes** | [**Array&lt;CompoundClass&gt;**](CompoundClass.md) | All predicted NPC classes | [optional] |

## Example

```ruby
require 'ruby_sirius'

instance = RubySirius::CanopusPredictions.new(
  classy_fire_classes: null,
  npc_classes: null
)
```

