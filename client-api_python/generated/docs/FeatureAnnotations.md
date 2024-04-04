# FeatureAnnotations

Summary of the results of a feature (aligned over runs). Can be added to a AlignedFeature.  The different annotation fields within this summary object are null if the corresponding  feature does not contain the represented results. If fields are non-null  the corresponding result has been computed but might still be empty.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**formula_annotation** | [**FormulaCandidate**](FormulaCandidate.md) |  | [optional] 
**structure_annotation** | [**StructureCandidateScored**](StructureCandidateScored.md) |  | [optional] 
**compound_class_annotation** | [**CompoundClasses**](CompoundClasses.md) |  | [optional] 
**confidence_exact_match** | **float** | Confidence Score that represents the confidence whether the top hit is correct. | [optional] 
**confidence_approx_match** | **float** | Confidence Score that represents the confidence whether the top hit or a very similar hit (estimated by MCES distance) is correct. | [optional] 
**expansive_search_state** | [**Mode**](Mode.md) |  | [optional] 

## Example

```python
from PySirius.models.feature_annotations import FeatureAnnotations

# TODO update the JSON string below
json = "{}"
# create an instance of FeatureAnnotations from a JSON string
feature_annotations_instance = FeatureAnnotations.from_json(json)
# print the JSON string representation of the object
print(FeatureAnnotations.to_json())

# convert the object into a dict
feature_annotations_dict = feature_annotations_instance.to_dict()
# create an instance of FeatureAnnotations from a dict
feature_annotations_form_dict = feature_annotations.from_dict(feature_annotations_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


