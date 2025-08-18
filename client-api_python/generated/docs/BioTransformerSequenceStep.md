# BioTransformerSequenceStep


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**metabolic_transformation** | [**MetabolicTransformation**](MetabolicTransformation.md) |  | [optional] 
**iterations** | **int** |  | [optional] 

## Example

```python
from PySirius.models.bio_transformer_sequence_step import BioTransformerSequenceStep

# TODO update the JSON string below
json = "{}"
# create an instance of BioTransformerSequenceStep from a JSON string
bio_transformer_sequence_step_instance = BioTransformerSequenceStep.from_json(json)
# print the JSON string representation of the object
print(BioTransformerSequenceStep.to_json())

# convert the object into a dict
bio_transformer_sequence_step_dict = bio_transformer_sequence_step_instance.to_dict()
# create an instance of BioTransformerSequenceStep from a dict
bio_transformer_sequence_step_from_dict = BioTransformerSequenceStep.from_dict(bio_transformer_sequence_step_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


