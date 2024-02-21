# Sirius

User/developer friendly parameter subset for the Formula/SIRIUS tool

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enabled** | **bool** | tags whether the tool is enabled | [optional] 
**profile** | [**Instrument**](Instrument.md) |  | [optional] 
**number_of_candidates** | **int** | Number of formula candidates to keep as result list (Formula Candidates). | [optional] 
**number_of_candidates_per_ion** | **int** | Use this parameter if you want to force SIRIUS to report at least  NumberOfCandidatesPerIon results per ionization.  if &lt;&#x3D; 0, this parameter will have no effect and just the top  NumberOfCandidates results will be reported. | [optional] 
**mass_accuracy_ms2ppm** | **float** | Maximum allowed mass deviation. Only molecular formulas within this mass window are considered. | [optional] 
**isotope_ms2_settings** | **str** | Specify how isotope patterns in MS/MS should be handled.  &lt;p&gt;  FILTER: When filtering is enabled, molecular formulas are excluded if their  theoretical isotope pattern does not match the theoretical one, even if their MS/MS pattern has high score.  &lt;p&gt;  SCORE: Use them for SCORING. To use this the instrument should produce clear MS/MS isotope patterns  &lt;p&gt;  IGNORE: Ignore that there might be isotope patterns in MS/MS | [optional] 
**formula_search_dbs** | **List[str]** | List Structure database to extract molecular formulas from to reduce formula search space.  SIRIUS is quite good at de novo formula annotation, so only enable if you have a good reason. | [optional] 
**enforced_formula_constraints** | **str** | These configurations hold the information how to autodetect elements based on the given formula constraints.  Note: If the compound is already assigned to a specific molecular formula, this annotation is ignored.  &lt;p&gt;  Enforced: Enforced elements are always considered | [optional] 
**fallback_formula_constraints** | **str** | These configurations hold the information how to autodetect elements based on the given formula constraints.  Note: If the compound is already assigned to a specific molecular formula, this annotation is ignored.  &lt;p&gt;  Fallback: Fallback elements are used, if the auto-detection fails (e.g. no isotope pattern available) | [optional] 
**detectable_elements** | **List[str]** | These configurations hold the information how to autodetect elements based on the given formula constraints.  Note: If the compound is already assigned to a specific molecular formula, this annotation is ignored.  &lt;p&gt;  Detectable: Detectable elements are added to the chemical alphabet, if there are indications for them (e.g. in isotope pattern) | [optional] 
**ilp_timeout** | [**Timeout**](Timeout.md) |  | [optional] 
**use_heuristic** | [**UseHeuristic**](UseHeuristic.md) |  | [optional] 
**min_ref_match_score_to_inject** | **float** | Similarity Threshold to inject formula candidates no matter which score/rank they have or which filter settings are applied.  If threshold &gt;&#x3D; 0 formulas candidates with reference spectrum similarity above the threshold will be injected.  If NULL injection is disables. | [optional] 

## Example

```python
from PySirius.models.sirius import Sirius

# TODO update the JSON string below
json = "{}"
# create an instance of Sirius from a JSON string
sirius_instance = Sirius.from_json(json)
# print the JSON string representation of the object
print Sirius.to_json()

# convert the object into a dict
sirius_dict = sirius_instance.to_dict()
# create an instance of Sirius from a dict
sirius_form_dict = sirius.from_dict(sirius_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


