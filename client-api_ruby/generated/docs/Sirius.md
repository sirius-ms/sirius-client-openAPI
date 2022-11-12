# RubySirius::Sirius

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enabled** | **BOOLEAN** | tags whether the tool is enabled | [optional] 
**profile** | **String** | Instrument specific profile for internal algorithms  Just select what comes closest to the instrument that was used for measuring the data. | [optional] 
**number_of_candidates** | **Integer** | Number of formula candidates to keep as result list (Formula Candidates). | [optional] 
**number_of_candidates_per_ion** | **Integer** | Use this parameter if you want to force SIRIUS to report at least  NumberOfCandidatesPerIon results per ionization.  if &lt;&#x3D; 0, this parameter will have no effect and just the top  NumberOfCandidates results will be reported. | [optional] 
**mass_accuracy_ms2ppm** | **Float** | Maximum allowed mass accuracy. Only molecular formulas within this mass window are considered. | [optional] 
**isotope_ms2_settings** | **String** | Specify how isotope patterns in MS/MS should be handled.  &lt;p&gt;  FILTER: When filtering is enabled, molecular formulas are excluded if their  theoretical isotope pattern does not match the theoretical one, even if their MS/MS pattern has high score.  &lt;p&gt;  SCORE: Use them for SCORING. To use this the instrument should produce clear MS/MS isotope patterns  &lt;p&gt;  IGNORE: Ignore that there might be isotope patterns in MS/MS | [optional] 
**formula_search_d_bs** | **Array&lt;String&gt;** | List Structure database to extract molecular formulas from to reduce formula search space.  SIRIUS is quite good at de novo formula annotation, so only enable if you have a good reason. | [optional] 
**enforced_formula_constraints** | **String** | These configurations hold the information how to autodetect elements based on the given formula constraints.  Note: If the compound is already assigned to a specific molecular formula, this annotation is ignored.  &lt;p&gt;  Enforced: Enforced elements are always considered | [optional] 
**fallback_formula_constraints** | **String** | These configurations hold the information how to autodetect elements based on the given formula constraints.  Note: If the compound is already assigned to a specific molecular formula, this annotation is ignored.  &lt;p&gt;  Fallback: Fallback elements are used, if the auto-detection fails (e.g. no isotope pattern available) | [optional] 
**detectable_elements** | **Array&lt;String&gt;** | These configurations hold the information how to autodetect elements based on the given formula constraints.  Note: If the compound is already assigned to a specific molecular formula, this annotation is ignored.  &lt;p&gt;  Detectable: Detectable elements are added to the chemical alphabet, if there are indications for them (e.g. in isotope pattern) | [optional] 
**ilp_timeout** | [**Timeout**](Timeout.md) |  | [optional] 
**use_heuristic** | [**UseHeuristic**](UseHeuristic.md) |  | [optional] 

