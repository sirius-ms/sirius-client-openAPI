# FormulaCandidate



## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sirius_score** | **float** |  | [optional] 
**isotope_score** | **float** |  | [optional] 
**tree_score** | **float** |  | [optional] 
**zodiac_score** | **float** |  | [optional] 
**molecular_formula** | **str** |  | [optional] 
**adduct** | **str** |  | [optional] 
**num_ofexplained_peaks** | **int** |  | [optional] 
**num_ofexplainable_peaks** | **int** |  | [optional] 
**total_explained_intensity** | **float** |  | [optional] 
**median_mass_deviation** | [**Deviation**](Deviation.md) |  | [optional] 

## Example

```python
from PySirius.models.formula_candidate import FormulaCandidate

# TODO update the JSON string below
json = "{}"
# create an instance of FormulaCandidate from a JSON string
formula_candidate_instance = FormulaCandidate.from_json(json)
# print the JSON string representation of the object
print FormulaCandidate.to_json()

# convert the object into a dict
formula_candidate_dict = formula_candidate_instance.to_dict()
# create an instance of FormulaCandidate from a dict
formula_candidate_form_dict = formula_candidate.from_dict(formula_candidate_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


