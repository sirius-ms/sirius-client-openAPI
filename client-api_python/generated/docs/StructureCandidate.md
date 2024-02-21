# StructureCandidate



## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**structure_name** | **str** |  | [optional] 
**smiles** | **str** |  | [optional] 
**csi_score** | **float** |  | [optional] 
**tanimoto_similarity** | **float** |  | [optional] 
**confidence_score** | **float** |  | [optional] 
**num_of_pub_med_ids** | **int** |  | [optional] 
**xlog_p** | **float** |  | [optional] 
**inchi_key** | **str** |  | [optional] 
**fp_bits_set** | **List[int]** | Array containing the indices of the molecular fingerprint that are available in the structure (1)  OPTIONAL: needs to be added by parameter | [optional] 
**db_links** | [**List[DBLink]**](DBLink.md) | List of structure database links belonging to this structure candidate  OPTIONAL: needs to be added by parameter | [optional] 
**pubmed_ids** | **List[int]** | PubMed IDs belonging to this structure candidate  OPTIONAL: needs to be added by parameter | [optional] 

## Example

```python
from PySirius.models.structure_candidate import StructureCandidate

# TODO update the JSON string below
json = "{}"
# create an instance of StructureCandidate from a JSON string
structure_candidate_instance = StructureCandidate.from_json(json)
# print the JSON string representation of the object
print StructureCandidate.to_json()

# convert the object into a dict
structure_candidate_dict = structure_candidate_instance.to_dict()
# create an instance of StructureCandidate from a dict
structure_candidate_form_dict = structure_candidate.from_dict(structure_candidate_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


