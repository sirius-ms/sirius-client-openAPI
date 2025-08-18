# FormulaCandidate

Molecular formula candidate that holds a unique identifier (molecular formula + adduct).  It can be extended with optional scoring metrics and the raw results  such as fragmentation trees and simulated isotope pattern.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**formula_id** | **str** | Unique identifier of this formula candidate | [optional] 
**molecular_formula** | **str** | molecular formula of this formula candidate | [optional] 
**adduct** | **str** | Adduct of this formula candidate | [optional] 
**rank** | **int** |  | [optional] 
**sirius_score_normalized** | **float** | Normalized Sirius Score of the formula candidate.  If NULL result is not available | [optional] 
**sirius_score** | **float** | Sirius Score (isotope + tree score) of the formula candidate.  If NULL result is not available | [optional] 
**isotope_score** | **float** |  | [optional] 
**tree_score** | **float** |  | [optional] 
**zodiac_score** | **float** | Zodiac Score of the formula candidate.  If NULL result is not available | [optional] 
**num_of_explained_peaks** | **int** |  | [optional] 
**num_of_explainable_peaks** | **int** |  | [optional] 
**total_explained_intensity** | **float** |  | [optional] 
**median_mass_deviation** | [**Deviation**](Deviation.md) |  | [optional] 
**fragmentation_tree** | [**FragmentationTree**](FragmentationTree.md) | The fragmentation tree that belongs to this molecular formula candidate (produces the treeScore). | [optional] 
**annotated_spectrum** | [**AnnotatedSpectrum**](AnnotatedSpectrum.md) | Fragmentation spectrum (e.g. Merged MS/MS) which is annotated with fragments and losses | [optional] 
**isotope_pattern_annotation** | [**IsotopePatternAnnotation**](IsotopePatternAnnotation.md) | The measured and simulated isotope pattern that have been  compared against each other to produce the isotopeScore. | [optional] 
**lipid_annotation** | [**LipidAnnotation**](LipidAnnotation.md) | ElGordo lipid annotation of this candidate.  NULL if annotation was not requested. lipidAnnotation.lipidSpecies &#x3D;&#x3D; NULL if candidate has not been classified as a lipid | [optional] 
**predicted_fingerprint** | **List[float]** | Probabilistic molecular fingerprint predicted by CSI:FingerID | [optional] 
**compound_classes** | [**CompoundClasses**](CompoundClasses.md) | Most likely compound classes for different levels of each ontology for this FormulaCandidate (predictedFingerprint) | [optional] 
**canopus_prediction** | [**CanopusPrediction**](CanopusPrediction.md) | All classes predicted by canopus for this FormulaCandidate (predictedFingerprint) | [optional] 

## Example

```python
from PySirius.models.formula_candidate import FormulaCandidate

# TODO update the JSON string below
json = "{}"
# create an instance of FormulaCandidate from a JSON string
formula_candidate_instance = FormulaCandidate.from_json(json)
# print the JSON string representation of the object
print(FormulaCandidate.to_json())

# convert the object into a dict
formula_candidate_dict = formula_candidate_instance.to_dict()
# create an instance of FormulaCandidate from a dict
formula_candidate_from_dict = FormulaCandidate.from_dict(formula_candidate_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


