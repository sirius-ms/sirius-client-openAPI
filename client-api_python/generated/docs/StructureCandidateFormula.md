# StructureCandidateFormula


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**inchi_key** | **str** |  | [optional] 
**smiles** | **str** |  | [optional] 
**structure_name** | **str** |  | [optional] 
**structure_svg** | **str** | SVG graphics of the structure candidate  OPTIONAL: needs to be added by parameter | [optional] 
**db_links** | [**List[DBLink]**](DBLink.md) | List of structure database links belonging to this structure candidate  OPTIONAL: needs to be added by parameter | [optional] 
**spectral_library_matches** | [**List[SpectralLibraryMatch]**](SpectralLibraryMatch.md) | List of spectral library matches belonging to this structure candidate  OPTIONAL: needs to be added by parameter | [optional] 
**xlog_p** | **float** |  | [optional] 
**rank** | **int** | the overall rank of this candidate among all candidates of this feature | [optional] 
**csi_score** | **float** | CSI:FingerID score of the fingerprint of this compound to the predicted fingerprint of CSI:FingerID  This is the score used for ranking structure candidates | [optional] 
**tanimoto_similarity** | **float** | Tanimoto similarly of the fingerprint of this compound to the predicted fingerprint of CSI:FingerID | [optional] 
**mces_dist_to_top_hit** | **float** | Maximum Common Edge Subgraph (MCES) distance to the top scoring hit (CSI:FingerID) in a candidate list. | [optional] 
**fingerprint** | [**BinaryFingerprint**](BinaryFingerprint.md) |  | [optional] 
**molecular_formula** | **str** | Molecular formula of this candidate | [optional] 
**adduct** | **str** | Adduct of this candidate | [optional] 
**formula_id** | **str** | Id of the corresponding Formula candidate | [optional] 

## Example

```python
from PySirius.models.structure_candidate_formula import StructureCandidateFormula

# TODO update the JSON string below
json = "{}"
# create an instance of StructureCandidateFormula from a JSON string
structure_candidate_formula_instance = StructureCandidateFormula.from_json(json)
# print the JSON string representation of the object
print(StructureCandidateFormula.to_json())

# convert the object into a dict
structure_candidate_formula_dict = structure_candidate_formula_instance.to_dict()
# create an instance of StructureCandidateFormula from a dict
structure_candidate_formula_from_dict = StructureCandidateFormula.from_dict(structure_candidate_formula_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


