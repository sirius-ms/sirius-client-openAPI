# Sirius

User/developer friendly parameter subset for the Formula/SIRIUS tool  Can use results from Spectral library search tool.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enabled** | **bool** | tags whether the tool is enabled | [optional] 
**profile** | [**InstrumentProfile**](InstrumentProfile.md) |  | [optional] 
**number_of_candidates** | **int** | Number of formula candidates to keep as result list (Formula Candidates). | [optional] 
**number_of_candidates_per_ionization** | **int** | Use this parameter if you want to force SIRIUS to report at least  NumberOfCandidatesPerIonization results per ionization.  if &lt;&#x3D; 0, this parameter will have no effect and just the top  NumberOfCandidates results will be reported. | [optional] 
**mass_accuracy_ms2ppm** | **float** | Maximum allowed mass deviation. Only molecular formulas within this mass window are considered. | [optional] 
**isotope_ms2_settings** | [**IsotopeMs2Strategy**](IsotopeMs2Strategy.md) |  | [optional] 
**filter_by_isotope_pattern** | **bool** | When filtering is enabled, molecular formulas are excluded if their theoretical isotope pattern does not match the theoretical one, even if their MS/MS pattern has high score. | [optional] 
**enforce_el_gordo_formula** | **bool** | El Gordo may predict that an MS/MS spectrum is a lipid spectrum. If enabled, the corresponding molecular formula will be enforeced as molecular formula candidate. | [optional] 
**perform_bottom_up_search** | **bool** | If true, molecular formula generation via bottom up search is enabled. | [optional] 
**perform_denovo_below_mz** | **float** | Specifies the m/z below which de novo molecular formula generation is enabled. Set to 0 to disable de novo molecular formula generation. | [optional] 
**formula_search_dbs** | **List[Optional[str]]** | List Structure database to extract molecular formulas from to reduce formula search space.  SIRIUS is quite good at de novo formula annotation, so only enable if you have a good reason. | [optional] 
**apply_formula_constraints_to_db_and_bottom_up_search** | **bool** | By default, the formula (element) constraints are only applied to de novo molecular formula generation.  If true, the constraints are as well applied to database search and bottom up search. | [optional] 
**enforced_formula_constraints** | **str** | These configurations hold the information how to autodetect elements based on the given formula constraints.  Note: If the compound is already assigned to a specific molecular formula, this annotation is ignored.  &lt;p&gt;  Enforced: Enforced elements are always considered | [optional] 
**fallback_formula_constraints** | **str** | These configurations hold the information how to autodetect elements based on the given formula constraints.  Note: If the compound is already assigned to a specific molecular formula, this annotation is ignored.  &lt;p&gt;  Fallback: Fallback elements are used, if the auto-detection fails (e.g. no isotope pattern available) | [optional] 
**detectable_elements** | **List[Optional[str]]** | These configurations hold the information how to autodetect elements based on the given formula constraints.  Note: If the compound is already assigned to a specific molecular formula, this annotation is ignored.  &lt;p&gt;  Detectable: Detectable elements are added to the chemical alphabet, if there are indications for them (e.g. in isotope pattern) | [optional] 
**ilp_timeout** | [**Timeout**](Timeout.md) |  | [optional] 
**use_heuristic** | [**UseHeuristic**](UseHeuristic.md) |  | [optional] 
**inject_spec_lib_match_formulas** | **bool** | If true formula candidates that belong to spectral library matches above a certain threshold will  we inject/preserved for further analyses no matter which score they have or which filter is applied | [optional] 
**min_score_to_inject_spec_lib_match** | **float** | Similarity Threshold to inject formula candidates no matter which score/rank they have or which filter settings are applied.  If threshold &gt;&#x3D; 0 formulas candidates with reference spectrum similarity above the threshold will be injected. | [optional] 
**min_peaks_to_inject_spec_lib_match** | **int** | Matching peaks threshold to inject formula candidates no matter which score they have or which filter is applied. | [optional] 

## Example

```python
from PySirius.models.sirius import Sirius

# TODO update the JSON string below
json = "{}"
# create an instance of Sirius from a JSON string
sirius_instance = Sirius.from_json(json)
# print the JSON string representation of the object
print(Sirius.to_json())

# convert the object into a dict
sirius_dict = sirius_instance.to_dict()
# create an instance of Sirius from a dict
sirius_from_dict = Sirius.from_dict(sirius_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


