# PagedModelFormulaCandidate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**content** | [**List[FormulaCandidate]**](FormulaCandidate.md) |  | [optional] 
**page** | [**PageMetadata**](PageMetadata.md) |  | [optional] 

## Example

```python
from PySirius.models.paged_model_formula_candidate import PagedModelFormulaCandidate

# TODO update the JSON string below
json = "{}"
# create an instance of PagedModelFormulaCandidate from a JSON string
paged_model_formula_candidate_instance = PagedModelFormulaCandidate.from_json(json)
# print the JSON string representation of the object
print(PagedModelFormulaCandidate.to_json())

# convert the object into a dict
paged_model_formula_candidate_dict = paged_model_formula_candidate_instance.to_dict()
# create an instance of PagedModelFormulaCandidate from a dict
paged_model_formula_candidate_from_dict = PagedModelFormulaCandidate.from_dict(paged_model_formula_candidate_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


