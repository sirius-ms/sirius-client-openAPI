# FormulaResultContainer

Container for formula level results that holds a unique identifier (molecular formula + adduct).  It can be extended/annotated with a list of results that are available for this formula candidate and their scores.  It can further be extended/annotated with the action formula candidate results.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Unique identifier of this formula candidate | [optional] 
**molecular_formula** | **str** | molecular formula of this formula candidate | [optional] 
**adduct** | **str** | Adduct of this formula candidate | [optional] 
**result_overview** | [**ResultOverview**](ResultOverview.md) |  | [optional] 
**candidate** | [**FormulaCandidate**](FormulaCandidate.md) |  | [optional] 

## Example

```python
from PySirius.models.formula_result_container import FormulaResultContainer

# TODO update the JSON string below
json = "{}"
# create an instance of FormulaResultContainer from a JSON string
formula_result_container_instance = FormulaResultContainer.from_json(json)
# print the JSON string representation of the object
print FormulaResultContainer.to_json()

# convert the object into a dict
formula_result_container_dict = formula_result_container_instance.to_dict()
# create an instance of FormulaResultContainer from a dict
formula_result_container_form_dict = formula_result_container.from_dict(formula_result_container_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


