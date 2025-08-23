# BioTransformerParameters


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cyp450_mode** | [**Cyp450Mode**](Cyp450Mode.md) | Specify the Phase I/Cyp450 mode for all provided BioTransformerSequenceSteps. Will only be applied to Steps that  require the Cyp450 mode as parameter. Can be null in cases where only BioTransformerSequenceSteps are specified  that do not need the Cyp450 mode. | 
**p2_mode** | [**P2Mode**](P2Mode.md) | Specify the Phase II mode for all provided BioTransformerSequenceSteps. Will only be applied to Steps that  require the Phase II mode  as parameter. Can be null in cases where only BioTransformerSequenceSteps are specified  that do not need the Phase II mode. | 
**use_db** | **bool** | \&quot;Specify if you want to enable the retrieving from database (HMDB) feature.\&quot; | [optional] [default to True]
**bio_transformer_sequence_steps** | [**List[BioTransformerSequenceStep]**](BioTransformerSequenceStep.md) | Specify BioTransformerSequenceSteps to be applied to input structures. MultiStep MetabolicTransformations can  only be used as singletons (list size of one). | 

## Example

```python
from PySirius.models.bio_transformer_parameters import BioTransformerParameters

# TODO update the JSON string below
json = "{}"
# create an instance of BioTransformerParameters from a JSON string
bio_transformer_parameters_instance = BioTransformerParameters.from_json(json)
# print the JSON string representation of the object
print(BioTransformerParameters.to_json())

# convert the object into a dict
bio_transformer_parameters_dict = bio_transformer_parameters_instance.to_dict()
# create an instance of BioTransformerParameters from a dict
bio_transformer_parameters_from_dict = BioTransformerParameters.from_dict(bio_transformer_parameters_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


