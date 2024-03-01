# StructureCandidateScored



## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**inchi_key** | **str** |  | [optional] 
**smiles** | **str** |  | [optional] 
**structure_name** | **str** |  | [optional] 
**xlog_p** | **float** |  | [optional] 
**db_links** | [**List[DBLink]**](DBLink.md) | List of structure database links belonging to this structure candidate  OPTIONAL: needs to be added by parameter | [optional] 
**spectral_library_matches** | [**List[SpectralLibraryMatch]**](SpectralLibraryMatch.md) | List of spectral library matches belonging to this structure candidate  OPTIONAL: needs to be added by parameter | [optional] 
**csi_score** | **float** |  | [optional] 
**tanimoto_similarity** | **float** |  | [optional] 
**confidence_exact_match** | **float** |  | [optional] 
**confidence_approx_match** | **float** |  | [optional] 
**fingerprint** | [**BinaryFingerprint**](BinaryFingerprint.md) |  | [optional] 

## Example

```python
from PySirius.models.structure_candidate_scored import StructureCandidateScored

# TODO update the JSON string below
json = "{}"
# create an instance of StructureCandidateScored from a JSON string
structure_candidate_scored_instance = StructureCandidateScored.from_json(json)
# print the JSON string representation of the object
print StructureCandidateScored.to_json()

# convert the object into a dict
structure_candidate_scored_dict = structure_candidate_scored_instance.to_dict()
# create an instance of StructureCandidateScored from a dict
structure_candidate_scored_form_dict = structure_candidate_scored.from_dict(structure_candidate_scored_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


