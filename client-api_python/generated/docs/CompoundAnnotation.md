# CompoundAnnotation

Summary of the results of a Compound. Can be added to a CompoundId.  It is null within a CompoundId if it was not requested und non-null otherwise.  The different summary fields within this summary object are null if the corresponding  compound does not contain the represented results. If fields are non-null  the corresponding result has been computed but might still be empty.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**formula_annotation** | [**FormulaCandidate**](FormulaCandidate.md) |  | [optional] 
**structure_annotation** | [**StructureCandidate**](StructureCandidate.md) |  | [optional] 
**compound_class_annotation** | [**CompoundClasses**](CompoundClasses.md) |  | [optional] 

## Example

```python
from PySirius.models.compound_annotation import CompoundAnnotation

# TODO update the JSON string below
json = "{}"
# create an instance of CompoundAnnotation from a JSON string
compound_annotation_instance = CompoundAnnotation.from_json(json)
# print the JSON string representation of the object
print CompoundAnnotation.to_json()

# convert the object into a dict
compound_annotation_dict = compound_annotation_instance.to_dict()
# create an instance of CompoundAnnotation from a dict
compound_annotation_form_dict = compound_annotation.from_dict(compound_annotation_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


