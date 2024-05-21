# PageStructureCandidateFormula


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_pages** | **int** |  | [optional] 
**total_elements** | **int** |  | [optional] 
**size** | **int** |  | [optional] 
**content** | [**List[StructureCandidateFormula]**](StructureCandidateFormula.md) |  | [optional] 
**number** | **int** |  | [optional] 
**sort** | [**SortObject**](SortObject.md) |  | [optional] 
**last** | **bool** |  | [optional] 
**first** | **bool** |  | [optional] 
**number_of_elements** | **int** |  | [optional] 
**pageable** | [**PageableObject**](PageableObject.md) |  | [optional] 
**empty** | **bool** |  | [optional] 

## Example

```python
from PySirius.models.page_structure_candidate_formula import PageStructureCandidateFormula

# TODO update the JSON string below
json = "{}"
# create an instance of PageStructureCandidateFormula from a JSON string
page_structure_candidate_formula_instance = PageStructureCandidateFormula.from_json(json)
# print the JSON string representation of the object
print(PageStructureCandidateFormula.to_json())

# convert the object into a dict
page_structure_candidate_formula_dict = page_structure_candidate_formula_instance.to_dict()
# create an instance of PageStructureCandidateFormula from a dict
page_structure_candidate_formula_form_dict = page_structure_candidate_formula.from_dict(page_structure_candidate_formula_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


