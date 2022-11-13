# PySirius.model.zodiac.Zodiac

User/developer friendly parameter subset for the ZODIAC tool (Network base molecular formula re-ranking).

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | User/developer friendly parameter subset for the ZODIAC tool (Network base molecular formula re-ranking). | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**enabled** | bool,  | BoolClass,  | tags whether the tool is enabled | [optional] 
**consideredCandidatesAt300Mz** | [**ZodiacNumberOfConsideredCandidatesAt300Mz**](ZodiacNumberOfConsideredCandidatesAt300Mz.md) | [**ZodiacNumberOfConsideredCandidatesAt300Mz**](ZodiacNumberOfConsideredCandidatesAt300Mz.md) |  | [optional] 
**consideredCandidatesAt800Mz** | [**ZodiacNumberOfConsideredCandidatesAt800Mz**](ZodiacNumberOfConsideredCandidatesAt800Mz.md) | [**ZodiacNumberOfConsideredCandidatesAt800Mz**](ZodiacNumberOfConsideredCandidatesAt800Mz.md) |  | [optional] 
**runInTwoSteps** | [**ZodiacRunInTwoSteps**](ZodiacRunInTwoSteps.md) | [**ZodiacRunInTwoSteps**](ZodiacRunInTwoSteps.md) |  | [optional] 
**edgeFilterThresholds** | [**ZodiacEdgeFilterThresholds**](ZodiacEdgeFilterThresholds.md) | [**ZodiacEdgeFilterThresholds**](ZodiacEdgeFilterThresholds.md) |  | [optional] 
**gibbsSamplerParameters** | [**ZodiacEpochs**](ZodiacEpochs.md) | [**ZodiacEpochs**](ZodiacEpochs.md) |  | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, int, float, bool, decimal.Decimal, None, list, tuple, bytes, io.FileIO, io.BufferedReader | frozendict.frozendict, str, BoolClass, decimal.Decimal, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

