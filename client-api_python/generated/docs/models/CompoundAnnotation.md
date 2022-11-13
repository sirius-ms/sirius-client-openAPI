# PySirius.model.compound_annotation.CompoundAnnotation

Summary of the results of a Compound. Can be added to a CompoundId.  It is not null within a CompoundId if it was not requested und non null otherwise  The different summary fields within this summary are null if the corresponding  compound does not contain the represented results. The content of  non NULL  summary field id the result was computed but is empty.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | Summary of the results of a Compound. Can be added to a CompoundId.  It is not null within a CompoundId if it was not requested und non null otherwise  The different summary fields within this summary are null if the corresponding  compound does not contain the represented results. The content of  non NULL  summary field id the result was computed but is empty. | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**formulaAnnotation** | [**FormulaCandidate**](FormulaCandidate.md) | [**FormulaCandidate**](FormulaCandidate.md) |  | [optional] 
**structureAnnotation** | [**StructureCandidate**](StructureCandidate.md) | [**StructureCandidate**](StructureCandidate.md) |  | [optional] 
**compoundClassAnnotation** | [**CompoundClasses**](CompoundClasses.md) | [**CompoundClasses**](CompoundClasses.md) |  | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, int, float, bool, decimal.Decimal, None, list, tuple, bytes, io.FileIO, io.BufferedReader | frozendict.frozendict, str, BoolClass, decimal.Decimal, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

