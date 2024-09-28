# JobSubmission

Object to submit a job to be executed by SIRIUS

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**compound_ids** | **List[Optional[str]]** | Compounds that should be the input for this Job  Will be converted to the respective alignedFeatureIds for computation.   At least one compoundId or alignedFeatureId needs to be specified. | [optional] 
**aligned_feature_ids** | **List[Optional[str]]** | Features (aligned over runs) that should be the input for this Job   At least one compoundId or alignedFeatureId needs to be specified. | [optional] 
**fallback_adducts** | **List[Optional[str]]** | Describes how to deal with Adducts: Fallback adducts are considered if the auto detection did not find any indication for an ion mode.  Pos Examples: [M+H]+,[M]+,[M+K]+,[M+Na]+,[M+H-H2O]+,[M+Na2-H]+,[M+2K-H]+,[M+NH4]+,[M+H3O]+,[M+MeOH+H]+,[M+ACN+H]+,[M+2ACN+H]+,[M+IPA+H]+,[M+ACN+Na]+,[M+DMSO+H]+  Neg Examples: [M-H]-,[M]-,[M+K-2H]-,[M+Cl]-,[M-H2O-H]-,[M+Na-2H]-,M+FA-H]-,[M+Br]-,[M+HAc-H]-,[M+TFA-H]-,[M+ACN-H]- | [optional] 
**enforced_adducts** | **List[Optional[str]]** | Describes how to deal with Adducts:  Enforced adducts that are always considered.  Pos Examples: [M+H]+,[M]+,[M+K]+,[M+Na]+,[M+H-H2O]+,[M+Na2-H]+,[M+2K-H]+,[M+NH4]+,[M+H3O]+,[M+MeOH+H]+,[M+ACN+H]+,[M+2ACN+H]+,[M+IPA+H]+,[M+ACN+Na]+,[M+DMSO+H]+  Neg Examples: [M-H]-,[M]-,[M+K-2H]-,[M+Cl]-,[M-H2O-H]-,[M+Na-2H]-,M+FA-H]-,[M+Br]-,[M+HAc-H]-,[M+TFA-H]-,[M+ACN-H]- | [optional] 
**detectable_adducts** | **List[Optional[str]]** | Describes how to deal with Adducts: Detectable adducts which are only considered if there is an indication in the MS1 scan (e.g. correct mass delta).  Pos Examples: [M+H]+,[M]+,[M+K]+,[M+Na]+,[M+H-H2O]+,[M+Na2-H]+,[M+2K-H]+,[M+NH4]+,[M+H3O]+,[M+MeOH+H]+,[M+ACN+H]+,[M+2ACN+H]+,[M+IPA+H]+,[M+ACN+Na]+,[M+DMSO+H]+  Neg Examples: [M-H]-,[M]-,[M+K-2H]-,[M+Cl]-,[M-H2O-H]-,[M+Na-2H]-,M+FA-H]-,[M+Br]-,[M+HAc-H]-,[M+TFA-H]-,[M+ACN-H]- | [optional] 
**recompute** | **bool** | Indicate if already existing result for a tool to be executed should be overwritten or not. | [optional] 
**spectra_search_params** | [**SpectralLibrarySearch**](SpectralLibrarySearch.md) |  | [optional] 
**formula_id_params** | [**Sirius**](Sirius.md) |  | [optional] 
**zodiac_params** | [**Zodiac**](Zodiac.md) |  | [optional] 
**fingerprint_prediction_params** | [**FingerprintPrediction**](FingerprintPrediction.md) |  | [optional] 
**canopus_params** | [**Canopus**](Canopus.md) |  | [optional] 
**structure_db_search_params** | [**StructureDbSearch**](StructureDbSearch.md) |  | [optional] 
**ms_novelist_params** | [**MsNovelist**](MsNovelist.md) |  | [optional] 
**config_map** | **Dict[str, Optional[str]]** | As an alternative to the object based parameters, this map allows to store key value pairs  of ALL SIRIUS parameters. All possible parameters can be retrieved from SIRIUS via the respective endpoint. | [optional] 

## Example

```python
from PySirius.models.job_submission import JobSubmission

# TODO update the JSON string below
json = "{}"
# create an instance of JobSubmission from a JSON string
job_submission_instance = JobSubmission.from_json(json)
# print the JSON string representation of the object
print(JobSubmission.to_json())

# convert the object into a dict
job_submission_dict = job_submission_instance.to_dict()
# create an instance of JobSubmission from a dict
job_submission_from_dict = JobSubmission.from_dict(job_submission_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


