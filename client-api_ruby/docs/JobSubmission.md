# SwaggerClient::JobSubmission

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**compound_ids** | **Array&lt;String&gt;** | Compounds that should be the input for this Job | [optional] 
**fallback_adducts** | **Array&lt;String&gt;** | Describes how to deal with Adducts: Fallback adducts are considered if the auto detection did not find any indication for an ion mode.  Pos Examples: [M+H]+,[M]+,[M+K]+,[M+Na]+,[M+H-H2O]+,[M+Na2-H]+,[M+2K-H]+,[M+NH4]+,[M+H3O]+,[M+MeOH+H]+,[M+ACN+H]+,[M+2ACN+H]+,[M+IPA+H]+,[M+ACN+Na]+,[M+DMSO+H]+  Neg Examples: [M-H]-,[M]-,[M+K-2H]-,[M+Cl]-,[M-H2O-H]-,[M+Na-2H]-,M+FA-H]-,[M+Br]-,[M+HAc-H]-,[M+TFA-H]-,[M+ACN-H]- | [optional] 
**enforced_adducts** | **Array&lt;String&gt;** | Describes how to deal with Adducts:  Enforced adducts that are always considered.  Pos Examples: [M+H]+,[M]+,[M+K]+,[M+Na]+,[M+H-H2O]+,[M+Na2-H]+,[M+2K-H]+,[M+NH4]+,[M+H3O]+,[M+MeOH+H]+,[M+ACN+H]+,[M+2ACN+H]+,[M+IPA+H]+,[M+ACN+Na]+,[M+DMSO+H]+  Neg Examples: [M-H]-,[M]-,[M+K-2H]-,[M+Cl]-,[M-H2O-H]-,[M+Na-2H]-,M+FA-H]-,[M+Br]-,[M+HAc-H]-,[M+TFA-H]-,[M+ACN-H]- | [optional] 
**detectable_adducts** | **Array&lt;String&gt;** | Describes how to deal with Adducts: Detectable adducts which are only considered if there is an indication in the MS1 scan (e.g. correct mass delta).  Pos Examples: [M+H]+,[M]+,[M+K]+,[M+Na]+,[M+H-H2O]+,[M+Na2-H]+,[M+2K-H]+,[M+NH4]+,[M+H3O]+,[M+MeOH+H]+,[M+ACN+H]+,[M+2ACN+H]+,[M+IPA+H]+,[M+ACN+Na]+,[M+DMSO+H]+  Neg Examples: [M-H]-,[M]-,[M+K-2H]-,[M+Cl]-,[M-H2O-H]-,[M+Na-2H]-,M+FA-H]-,[M+Br]-,[M+HAc-H]-,[M+TFA-H]-,[M+ACN-H]- | [optional] 
**recompute** | **BOOLEAN** | Indicate if already existing result for a tool to be executed should be overwritten or not. | [optional] 
**formula_id_paras** | [**Sirius**](Sirius.md) |  | [optional] 
**zodiac_paras** | [**Zodiac**](Zodiac.md) |  | [optional] 
**fingerprint_prediction_paras** | [**FingerprintPrediction**](FingerprintPrediction.md) |  | [optional] 
**structure_db_search_paras** | [**StructureDbSearch**](StructureDbSearch.md) |  | [optional] 
**canopus_paras** | [**Canopus**](Canopus.md) |  | [optional] 
**config_map** | **Hash&lt;String, String&gt;** | As an alternative to the object based parameters, this map allows to store key value pairs  of ALL SIRIUS parameters. All possible parameters can be retrieved from SIRIUS via the respective endpoint. | [optional] 

