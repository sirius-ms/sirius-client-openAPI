# ConsensusAnnotationsCSI


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**molecular_formula** | **str** | Molecular formula of the consensus annotation  Might be null if no consensus formula is available. | [optional] 
**compound_classes** | [**CompoundClasses**](CompoundClasses.md) | Compound classes (predicted with CANOPUS) corresponding to the molecularFormula  Might be null if no fingerprints or compound classes are available. | [optional] 
**supporting_feature_ids** | **List[str]** | FeatureIds where the topAnnotation supports this annotation. | [optional] 
**selection_criterion** | [**ConsensusCriterionCSI**](ConsensusCriterionCSI.md) | Null if this is a custom selection | [optional] 
**csi_finger_id_structure** | [**StructureCandidate**](StructureCandidate.md) | Database structure candidate (searched with CSI:FingerID), that also defines the molecularFormula  Might be null if no consensus structure is available. | [optional] 
**confidence_exact_match** | **float** | Confidence value that represents the certainty that reported consensus structure is exactly the measured one  If multiple features support this consensus structure the maximum confidence is reported | [optional] 
**confidence_approx_match** | **float** | Confidence value that represents the certainty that the exact consensus structure or a very similar  structure (e.g. measured by Maximum Common Edge Subgraph Distance) is the measured one.  If multiple features support this consensus structure the maximum confidence is reported | [optional] 

## Example

```python
from PySirius.models.consensus_annotations_csi import ConsensusAnnotationsCSI

# TODO update the JSON string below
json = "{}"
# create an instance of ConsensusAnnotationsCSI from a JSON string
consensus_annotations_csi_instance = ConsensusAnnotationsCSI.from_json(json)
# print the JSON string representation of the object
print(ConsensusAnnotationsCSI.to_json())

# convert the object into a dict
consensus_annotations_csi_dict = consensus_annotations_csi_instance.to_dict()
# create an instance of ConsensusAnnotationsCSI from a dict
consensus_annotations_csi_from_dict = ConsensusAnnotationsCSI.from_dict(consensus_annotations_csi_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


