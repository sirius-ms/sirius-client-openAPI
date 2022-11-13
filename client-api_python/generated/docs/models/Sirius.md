# PySirius.model.sirius.Sirius

User/developer friendly parameter subset for the Formula/SIRIUS tool

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | User/developer friendly parameter subset for the Formula/SIRIUS tool | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**enabled** | bool,  | BoolClass,  | tags whether the tool is enabled | [optional] 
**profile** | str,  | str,  | Instrument specific profile for internal algorithms  Just select what comes closest to the instrument that was used for measuring the data. | [optional] must be one of ["QTOF", "ORBI", "FTICR", ] 
**numberOfCandidates** | decimal.Decimal, int,  | decimal.Decimal,  | Number of formula candidates to keep as result list (Formula Candidates). | [optional] value must be a 32 bit integer
**numberOfCandidatesPerIon** | decimal.Decimal, int,  | decimal.Decimal,  | Use this parameter if you want to force SIRIUS to report at least  NumberOfCandidatesPerIon results per ionization.  if &lt;&#x3D; 0, this parameter will have no effect and just the top  NumberOfCandidates results will be reported. | [optional] value must be a 32 bit integer
**massAccuracyMS2ppm** | decimal.Decimal, int, float,  | decimal.Decimal,  | Maximum allowed mass accuracy. Only molecular formulas within this mass window are considered. | [optional] value must be a 64 bit float
**isotopeMs2Settings** | str,  | str,  | Specify how isotope patterns in MS/MS should be handled.  &lt;p&gt;  FILTER: When filtering is enabled, molecular formulas are excluded if their  theoretical isotope pattern does not match the theoretical one, even if their MS/MS pattern has high score.  &lt;p&gt;  SCORE: Use them for SCORING. To use this the instrument should produce clear MS/MS isotope patterns  &lt;p&gt;  IGNORE: Ignore that there might be isotope patterns in MS/MS | [optional] must be one of ["IGNORE", "FILTER", "SCORE", ] 
**[formulaSearchDBs](#formulaSearchDBs)** | list, tuple,  | tuple,  | List Structure database to extract molecular formulas from to reduce formula search space.  SIRIUS is quite good at de novo formula annotation, so only enable if you have a good reason. | [optional] 
**enforcedFormulaConstraints** | str,  | str,  | These configurations hold the information how to autodetect elements based on the given formula constraints.  Note: If the compound is already assigned to a specific molecular formula, this annotation is ignored.  &lt;p&gt;  Enforced: Enforced elements are always considered | [optional] 
**fallbackFormulaConstraints** | str,  | str,  | These configurations hold the information how to autodetect elements based on the given formula constraints.  Note: If the compound is already assigned to a specific molecular formula, this annotation is ignored.  &lt;p&gt;  Fallback: Fallback elements are used, if the auto-detection fails (e.g. no isotope pattern available) | [optional] 
**[detectableElements](#detectableElements)** | list, tuple,  | tuple,  | These configurations hold the information how to autodetect elements based on the given formula constraints.  Note: If the compound is already assigned to a specific molecular formula, this annotation is ignored.  &lt;p&gt;  Detectable: Detectable elements are added to the chemical alphabet, if there are indications for them (e.g. in isotope pattern) | [optional] 
**ilpTimeout** | [**Timeout**](Timeout.md) | [**Timeout**](Timeout.md) |  | [optional] 
**useHeuristic** | [**UseHeuristic**](UseHeuristic.md) | [**UseHeuristic**](UseHeuristic.md) |  | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, int, float, bool, decimal.Decimal, None, list, tuple, bytes, io.FileIO, io.BufferedReader | frozendict.frozendict, str, BoolClass, decimal.Decimal, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

# formulaSearchDBs

List Structure database to extract molecular formulas from to reduce formula search space.  SIRIUS is quite good at de novo formula annotation, so only enable if you have a good reason.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  | List Structure database to extract molecular formulas from to reduce formula search space.  SIRIUS is quite good at de novo formula annotation, so only enable if you have a good reason. | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
items | str,  | str,  |  | must be one of ["ALL", "ALL_BUT_INSILICO", "PUBCHEM", "MESH", "HMDB", "KNAPSACK", "CHEBI", "PUBMED", "BIO", "KEGG", "HSDB", "MACONDA", "METACYC", "GNPS", "ZINCBIO", "TRAIN", "UNDP", "YMDB", "PLANTCYC", "NORMAN", "ADDITIONAL", "SUPERNATURAL", "COCONUT", "PUBCHEMANNOTATIONBIO", "PUBCHEMANNOTATIONDRUG", "PUBCHEMANNOTATIONSAFETYANDTOXIC", "PUBCHEMANNOTATIONFOOD", "LIPID", "KEGGMINE", "ECOCYCMINE", "YMDBMINE", ] 

# detectableElements

These configurations hold the information how to autodetect elements based on the given formula constraints.  Note: If the compound is already assigned to a specific molecular formula, this annotation is ignored.  <p>  Detectable: Detectable elements are added to the chemical alphabet, if there are indications for them (e.g. in isotope pattern)

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  | These configurations hold the information how to autodetect elements based on the given formula constraints.  Note: If the compound is already assigned to a specific molecular formula, this annotation is ignored.  &lt;p&gt;  Detectable: Detectable elements are added to the chemical alphabet, if there are indications for them (e.g. in isotope pattern) | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
items | str,  | str,  |  | 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

