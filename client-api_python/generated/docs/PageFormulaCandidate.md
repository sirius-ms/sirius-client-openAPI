# PageFormulaCandidate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_pages** | **int** |  | [optional] 
**total_elements** | **int** |  | [optional] 
**first** | **bool** |  | [optional] 
**size** | **int** |  | [optional] 
**content** | [**List[FormulaCandidate]**](FormulaCandidate.md) |  | [optional] 
**number** | **int** |  | [optional] 
**sort** | [**SortObject**](SortObject.md) |  | [optional] 
**number_of_elements** | **int** |  | [optional] 
**pageable** | [**PageableObject**](PageableObject.md) |  | [optional] 
**last** | **bool** |  | [optional] 
**empty** | **bool** |  | [optional] 

## Example

```python
from PySirius.models.page_formula_candidate import PageFormulaCandidate

# TODO update the JSON string below
json = "{}"
# create an instance of PageFormulaCandidate from a JSON string
page_formula_candidate_instance = PageFormulaCandidate.from_json(json)
# print the JSON string representation of the object
print(PageFormulaCandidate.to_json())

# convert the object into a dict
page_formula_candidate_dict = page_formula_candidate_instance.to_dict()
# create an instance of PageFormulaCandidate from a dict
page_formula_candidate_form_dict = page_formula_candidate.from_dict(page_formula_candidate_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


