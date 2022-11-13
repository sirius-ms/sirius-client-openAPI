# RubySirius::FragmentationTree

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fragments** | [**Array&lt;FragmentNode&gt;**](FragmentNode.md) |  | [optional] |
| **losses** | [**Array&lt;LossEdge&gt;**](LossEdge.md) |  | [optional] |
| **tree_score** | **Float** |  | [optional] |
| **root** | [**FragmentNode**](FragmentNode.md) |  | [optional] |

## Example

```ruby
require 'ruby_sirius'

instance = RubySirius::FragmentationTree.new(
  fragments: null,
  losses: null,
  tree_score: null,
  root: null
)
```

