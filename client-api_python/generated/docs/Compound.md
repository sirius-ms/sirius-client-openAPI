# Compound



## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**compound_id** | **str** | uid of this compound Entity | [optional] 
**name** | **str** | Some (optional) human-readable name | [optional] 
**rt_start_seconds** | **float** | The merged/consensus retention time start (earliest rt) of this compound | [optional] 
**rt_end_seconds** | **float** | The merged/consensus retention time end (latest rt) of this compound | [optional] 
**neutral_mass** | **float** | Neutral mass of this compound. Ion masse minus the mass of the assigned adduct of each feature of  this compound should result in the same neutral mass | [optional] 
**features** | [**List[AlignedFeature]**](AlignedFeature.md) | List of aligned features (adducts) that belong to the same (this) compound | [optional] 
**consensus_annotations** | [**ConsensusAnnotationsCSI**](ConsensusAnnotationsCSI.md) |  | [optional] 
**consensus_annotations_de_novo** | [**ConsensusAnnotationsDeNovo**](ConsensusAnnotationsDeNovo.md) |  | [optional] 
**custom_annotations** | [**ConsensusAnnotationsCSI**](ConsensusAnnotationsCSI.md) |  | [optional] 

## Example

```python
from PySirius.models.compound import Compound

# TODO update the JSON string below
json = "{}"
# create an instance of Compound from a JSON string
compound_instance = Compound.from_json(json)
# print the JSON string representation of the object
print Compound.to_json()

# convert the object into a dict
compound_dict = compound_instance.to_dict()
# create an instance of Compound from a dict
compound_form_dict = compound.from_dict(compound_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


