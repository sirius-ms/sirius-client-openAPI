# RSirius::CompoundAnnotation

Summary of the results of a Compound. Can be added to a CompoundId.  It is not null within a CompoundId if it was not requested und non null otherwise  The different summary fields within this summary are null if the corresponding  compound does not contain the represented results. The content of  non NULL  summary field id the result was computed but is empty.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**formulaAnnotation** | [**FormulaCandidate**](FormulaCandidate.md) |  | [optional] 
**structureAnnotation** | [**StructureCandidate**](StructureCandidate.md) |  | [optional] 
**compoundClassAnnotation** | [**CompoundClasses**](CompoundClasses.md) |  | [optional] 


