# StructureCandidateFormula



## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**inchi_key** | **str** |  | [optional] 
**smiles** | **str** |  | [optional] 
**structure_name** | **str** |  | [optional] 
**xlog_p** | **float** |  | [optional] 
**db_links** | [**List[DBLink]**](DBLink.md) | List of structure database links belonging to this structure candidate  OPTIONAL: needs to be added by parameter | [optional] 
**ref_spectra_links** | [**List[DBLink]**](DBLink.md) | List of spectral library links belonging to this structure candidate  OPTIONAL: needs to be added by parameter | [optional] 
**csi_score** | **float** |  | [optional] 
**tanimoto_similarity** | **float** |  | [optional] 
**confidence_exact_match** | **float** |  | [optional] 
**confidence_approx_match** | **float** |  | [optional] 
**fingerprint** | [**BinaryFingerprint**](BinaryFingerprint.md) |  | [optional] 
**molecular_formula** | **str** | molecular formula of this candidate | [optional] 
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
print StructureCandidateFormula.to_json()

# convert the object into a dict
structure_candidate_formula_dict = structure_candidate_formula_instance.to_dict()
# create an instance of StructureCandidateFormula from a dict
structure_candidate_formula_form_dict = structure_candidate_formula.from_dict(structure_candidate_formula_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


