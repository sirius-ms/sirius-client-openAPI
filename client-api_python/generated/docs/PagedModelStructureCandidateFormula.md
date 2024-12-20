# PagedModelStructureCandidateFormula


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**content** | [**List[StructureCandidateFormula]**](StructureCandidateFormula.md) |  | [optional] 
**page** | [**PageMetadata**](PageMetadata.md) |  | [optional] 

## Example

```python
from PySirius.models.paged_model_structure_candidate_formula import PagedModelStructureCandidateFormula

# TODO update the JSON string below
json = "{}"
# create an instance of PagedModelStructureCandidateFormula from a JSON string
paged_model_structure_candidate_formula_instance = PagedModelStructureCandidateFormula.from_json(json)
# print the JSON string representation of the object
print(PagedModelStructureCandidateFormula.to_json())

# convert the object into a dict
paged_model_structure_candidate_formula_dict = paged_model_structure_candidate_formula_instance.to_dict()
# create an instance of PagedModelStructureCandidateFormula from a dict
paged_model_structure_candidate_formula_from_dict = PagedModelStructureCandidateFormula.from_dict(paged_model_structure_candidate_formula_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


