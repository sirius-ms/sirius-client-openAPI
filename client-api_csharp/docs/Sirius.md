# IO.Swagger.Model.Sirius
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Enabled** | **bool?** | tags whether the tool is enabled | [optional] 
**Profile** | **string** | Instrument specific profile for internal algorithms  Just select what comes closest to the instrument that was used for measuring the data. | [optional] 
**NumberOfCandidates** | **int?** | Number of formula candidates to keep as result list (Formula Candidates). | [optional] 
**NumberOfCandidatesPerIon** | **int?** | Use this parameter if you want to force SIRIUS to report at least  NumberOfCandidatesPerIon results per ionization.  if &lt;&#x3D; 0, this parameter will have no effect and just the top  NumberOfCandidates results will be reported. | [optional] 
**MassAccuracyMS2ppm** | **double?** | Maximum allowed mass accuracy. Only molecular formulas within this mass window are considered. | [optional] 
**IsotopeMs2Settings** | **string** | Specify how isotope patterns in MS/MS should be handled.  &lt;p&gt;  FILTER: When filtering is enabled, molecular formulas are excluded if their  theoretical isotope pattern does not match the theoretical one, even if their MS/MS pattern has high score.  &lt;p&gt;  SCORE: Use them for SCORING. To use this the instrument should produce clear MS/MS isotope patterns  &lt;p&gt;  IGNORE: Ignore that there might be isotope patterns in MS/MS | [optional] 
**FormulaSearchDBs** | **List&lt;string&gt;** | List Structure database to extract molecular formulas from to reduce formula search space.  SIRIUS is quite good at de novo formula annotation, so only enable if you have a good reason. | [optional] 
**EnforcedFormulaConstraints** | **string** | These configurations hold the information how to autodetect elements based on the given formula constraints.  Note: If the compound is already assigned to a specific molecular formula, this annotation is ignored.  &lt;p&gt;  Enforced: Enforced elements are always considered | [optional] 
**FallbackFormulaConstraints** | **string** | These configurations hold the information how to autodetect elements based on the given formula constraints.  Note: If the compound is already assigned to a specific molecular formula, this annotation is ignored.  &lt;p&gt;  Fallback: Fallback elements are used, if the auto-detection fails (e.g. no isotope pattern available) | [optional] 
**DetectableElements** | **List&lt;string&gt;** | These configurations hold the information how to autodetect elements based on the given formula constraints.  Note: If the compound is already assigned to a specific molecular formula, this annotation is ignored.  &lt;p&gt;  Detectable: Detectable elements are added to the chemical alphabet, if there are indications for them (e.g. in isotope pattern) | [optional] 
**IlpTimeout** | [**Timeout**](Timeout.md) |  | [optional] 
**UseHeuristic** | [**UseHeuristic**](UseHeuristic.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

