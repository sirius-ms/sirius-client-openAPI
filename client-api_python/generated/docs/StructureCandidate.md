# StructureCandidate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**inchi_key** | **str** | InChIKey of the structure candidate.  Searching with a full 27 character key matches its 2D (skeleton) part, so stereoisomers of the  searched structure are found alike. | [optional] 
**smiles** | **str** |  | [optional] 
**structure_name** | **str** | Name of the structure candidate.  Searching also resolves the searched term as a PubChem synonym, so a structure is found by any  of its common names. | [optional] 
**structure_svg** | **str** | SVG graphics of the structure candidate  OPTIONAL: needs to be added by parameter | [optional] 
**db_links** | [**List[DBLink]**](DBLink.md) | List of structure database links belonging to the structure candidate  OPTIONAL: needs to be added by parameter | [optional] 
**spectral_library_matches** | [**List[SpectralLibraryMatch]**](SpectralLibraryMatch.md) | List of spectral library matches belonging to the structure candidate  OPTIONAL: needs to be added by parameter | [optional] 
**xlog_p** | **float** |  | [optional] 

## Example

```python
from PySirius.models.structure_candidate import StructureCandidate

# TODO update the JSON string below
json = "{}"
# create an instance of StructureCandidate from a JSON string
structure_candidate_instance = StructureCandidate.from_json(json)
# print the JSON string representation of the object
print(StructureCandidate.to_json())

# convert the object into a dict
structure_candidate_dict = structure_candidate_instance.to_dict()
# create an instance of StructureCandidate from a dict
structure_candidate_from_dict = StructureCandidate.from_dict(structure_candidate_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


