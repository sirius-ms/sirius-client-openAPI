# PySirius.model.result_overview.ResultOverview

Results that are available for a {@link FormulaResultContainer FormulaResultContainer} represented as boolean or numeric score (if available).  NULL scores indicate that the corresponding result is not available.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | Results that are available for a {@link FormulaResultContainer FormulaResultContainer} represented as boolean or numeric score (if available).  NULL scores indicate that the corresponding result is not available. | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**siriusScore** | decimal.Decimal, int, float,  | decimal.Decimal,  | Sirius Score (isotope + tree score) of the formula candidate.  If NULL result is not available | [optional] value must be a 64 bit float
**zodiacScore** | decimal.Decimal, int, float,  | decimal.Decimal,  | Zodiac Score of the formula candidate.  If NULL result is not available | [optional] value must be a 64 bit float
**topCSIScore** | decimal.Decimal, int, float,  | decimal.Decimal,  | CSI:FingerID Score of the top ranking structure candidate of the structure database search  performed for this formula candidate.  If NULL structure database result is not available or the structure candidate list is empty. | [optional] value must be a 64 bit float
**confidenceScore** | decimal.Decimal, int, float,  | decimal.Decimal,  | Confidence Score of the  IF NULL structure database result not available a structure candidate hit of another formula candidate is  the top ranking structure candidate. | [optional] value must be a 64 bit float
**canopusResult** | bool,  | BoolClass,  | True if Canopus compound class prediction results are available. | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, int, float, bool, decimal.Decimal, None, list, tuple, bytes, io.FileIO, io.BufferedReader | frozendict.frozendict, str, BoolClass, decimal.Decimal, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

