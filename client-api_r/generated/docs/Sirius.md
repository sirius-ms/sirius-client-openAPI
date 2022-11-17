# RSirius::Sirius

User/developer friendly parameter subset for the Formula/SIRIUS tool

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enabled** | **character** | tags whether the tool is enabled | [optional] 
**profile** | **character** | Instrument specific profile for internal algorithms  Just select what comes closest to the instrument that was used for measuring the data. | [optional] [Enum: [QTOF, ORBI, FTICR]] 
**numberOfCandidates** | **integer** | Number of formula candidates to keep as result list (Formula Candidates). | [optional] 
**numberOfCandidatesPerIon** | **integer** | Use this parameter if you want to force SIRIUS to report at least  NumberOfCandidatesPerIon results per ionization.  if &lt;&#x3D; 0, this parameter will have no effect and just the top  NumberOfCandidates results will be reported. | [optional] 
**massAccuracyMS2ppm** | **numeric** | Maximum allowed mass accuracy. Only molecular formulas within this mass window are considered. | [optional] 
**isotopeMs2Settings** | **character** | Specify how isotope patterns in MS/MS should be handled.  &lt;p&gt;  FILTER: When filtering is enabled, molecular formulas are excluded if their  theoretical isotope pattern does not match the theoretical one, even if their MS/MS pattern has high score.  &lt;p&gt;  SCORE: Use them for SCORING. To use this the instrument should produce clear MS/MS isotope patterns  &lt;p&gt;  IGNORE: Ignore that there might be isotope patterns in MS/MS | [optional] [Enum: [IGNORE, FILTER, SCORE]] 
**formulaSearchDBs** | **array[character]** | List Structure database to extract molecular formulas from to reduce formula search space.  SIRIUS is quite good at de novo formula annotation, so only enable if you have a good reason. | [optional] [Enum: ] 
**enforcedFormulaConstraints** | **character** | These configurations hold the information how to autodetect elements based on the given formula constraints.  Note: If the compound is already assigned to a specific molecular formula, this annotation is ignored.  &lt;p&gt;  Enforced: Enforced elements are always considered | [optional] 
**fallbackFormulaConstraints** | **character** | These configurations hold the information how to autodetect elements based on the given formula constraints.  Note: If the compound is already assigned to a specific molecular formula, this annotation is ignored.  &lt;p&gt;  Fallback: Fallback elements are used, if the auto-detection fails (e.g. no isotope pattern available) | [optional] 
**detectableElements** | **array[character]** | These configurations hold the information how to autodetect elements based on the given formula constraints.  Note: If the compound is already assigned to a specific molecular formula, this annotation is ignored.  &lt;p&gt;  Detectable: Detectable elements are added to the chemical alphabet, if there are indications for them (e.g. in isotope pattern) | [optional] 
**ilpTimeout** | [**Timeout**](Timeout.md) |  | [optional] 
**useHeuristic** | [**UseHeuristic**](UseHeuristic.md) |  | [optional] 


