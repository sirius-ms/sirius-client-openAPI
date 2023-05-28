

# CompoundAnnotation

Summary of the results of a Compound. Can be added to a CompoundId.  It is null within a CompoundId if it was not requested und non-null otherwise.  The different summary fields within this summary object are null if the corresponding  compound does not contain the represented results. If fields are non-null  the corresponding result has been computed but might still be empty.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**formulaAnnotation** | [**FormulaCandidate**](FormulaCandidate.md) |  |  [optional] |
|**structureAnnotation** | [**StructureCandidate**](StructureCandidate.md) |  |  [optional] |
|**compoundClassAnnotation** | [**CompoundClasses**](CompoundClasses.md) |  |  [optional] |



