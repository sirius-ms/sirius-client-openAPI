# ConsensusAnnotationsDeNovo


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**molecular_formula** | **str** | Molecular formula of the consensus annotation  Might be null if no consensus formula is available. | [optional] 
**compound_classes** | [**CompoundClasses**](CompoundClasses.md) |  | [optional] 
**supporting_feature_ids** | **List[Optional[str]]** | FeatureIds where the topAnnotation supports this annotation. | [optional] 
**selection_criterion** | [**ConsensusCriterionDeNovo**](ConsensusCriterionDeNovo.md) |  | [optional] 

## Example

```python
from PySirius.models.consensus_annotations_de_novo import ConsensusAnnotationsDeNovo

# TODO update the JSON string below
json = "{}"
# create an instance of ConsensusAnnotationsDeNovo from a JSON string
consensus_annotations_de_novo_instance = ConsensusAnnotationsDeNovo.from_json(json)
# print the JSON string representation of the object
print(ConsensusAnnotationsDeNovo.to_json())

# convert the object into a dict
consensus_annotations_de_novo_dict = consensus_annotations_de_novo_instance.to_dict()
# create an instance of ConsensusAnnotationsDeNovo from a dict
consensus_annotations_de_novo_form_dict = consensus_annotations_de_novo.from_dict(consensus_annotations_de_novo_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


