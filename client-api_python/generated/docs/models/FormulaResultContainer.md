# PySirius.model.formula_result_container.FormulaResultContainer

Container for formula level results that holds a unique identifier (molecular formula + adduct).  It can be extended/annotated with a list of results that are available for this formula candidate and their scores.  It can further be extended/annotated with the action formula candidate results.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | Container for formula level results that holds a unique identifier (molecular formula + adduct).  It can be extended/annotated with a list of results that are available for this formula candidate and their scores.  It can further be extended/annotated with the action formula candidate results. | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**id** | str,  | str,  | Unique identifier of this formula candidate | [optional] 
**molecularFormula** | str,  | str,  | molecular formula of this formula candidate | [optional] 
**adduct** | str,  | str,  | Adduct of this formula candidate | [optional] 
**resultOverview** | [**ResultOverview**](ResultOverview.md) | [**ResultOverview**](ResultOverview.md) |  | [optional] 
**candidate** | [**FormulaCandidate**](FormulaCandidate.md) | [**FormulaCandidate**](FormulaCandidate.md) |  | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, int, float, bool, decimal.Decimal, None, list, tuple, bytes, io.FileIO, io.BufferedReader | frozendict.frozendict, str, BoolClass, decimal.Decimal, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

