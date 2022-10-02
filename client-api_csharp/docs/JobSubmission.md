# IO.Swagger.Model.JobSubmission
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CompoundIds** | **List&lt;string&gt;** | Compounds that should be the input for this Job | [optional] 
**FallbackAdducts** | **List&lt;string&gt;** | Describes how to deal with Adducts: Fallback adducts are considered if the auto detection did not find any indication for an ion mode.  Pos Examples: [M+H]+,[M]+,[M+K]+,[M+Na]+,[M+H-H2O]+,[M+Na2-H]+,[M+2K-H]+,[M+NH4]+,[M+H3O]+,[M+MeOH+H]+,[M+ACN+H]+,[M+2ACN+H]+,[M+IPA+H]+,[M+ACN+Na]+,[M+DMSO+H]+  Neg Examples: [M-H]-,[M]-,[M+K-2H]-,[M+Cl]-,[M-H2O-H]-,[M+Na-2H]-,M+FA-H]-,[M+Br]-,[M+HAc-H]-,[M+TFA-H]-,[M+ACN-H]- | [optional] 
**EnforcedAdducts** | **List&lt;string&gt;** | Describes how to deal with Adducts:  Enforced adducts that are always considered.  Pos Examples: [M+H]+,[M]+,[M+K]+,[M+Na]+,[M+H-H2O]+,[M+Na2-H]+,[M+2K-H]+,[M+NH4]+,[M+H3O]+,[M+MeOH+H]+,[M+ACN+H]+,[M+2ACN+H]+,[M+IPA+H]+,[M+ACN+Na]+,[M+DMSO+H]+  Neg Examples: [M-H]-,[M]-,[M+K-2H]-,[M+Cl]-,[M-H2O-H]-,[M+Na-2H]-,M+FA-H]-,[M+Br]-,[M+HAc-H]-,[M+TFA-H]-,[M+ACN-H]- | [optional] 
**DetectableAdducts** | **List&lt;string&gt;** | Describes how to deal with Adducts: Detectable adducts which are only considered if there is an indication in the MS1 scan (e.g. correct mass delta).  Pos Examples: [M+H]+,[M]+,[M+K]+,[M+Na]+,[M+H-H2O]+,[M+Na2-H]+,[M+2K-H]+,[M+NH4]+,[M+H3O]+,[M+MeOH+H]+,[M+ACN+H]+,[M+2ACN+H]+,[M+IPA+H]+,[M+ACN+Na]+,[M+DMSO+H]+  Neg Examples: [M-H]-,[M]-,[M+K-2H]-,[M+Cl]-,[M-H2O-H]-,[M+Na-2H]-,M+FA-H]-,[M+Br]-,[M+HAc-H]-,[M+TFA-H]-,[M+ACN-H]- | [optional] 
**Recompute** | **bool?** | Indicate if already existing result for a tool to be executed should be overwritten or not. | [optional] 
**FormulaIdParas** | [**Sirius**](Sirius.md) |  | [optional] 
**ZodiacParas** | [**Zodiac**](Zodiac.md) |  | [optional] 
**FingerprintPredictionParas** | [**FingerprintPrediction**](FingerprintPrediction.md) |  | [optional] 
**StructureDbSearchParas** | [**StructureDbSearch**](StructureDbSearch.md) |  | [optional] 
**CanopusParas** | [**Canopus**](Canopus.md) |  | [optional] 
**ConfigMap** | **Dictionary&lt;string, string&gt;** | As an alternative to the object based parameters, this map allows to store key value pairs  of ALL SIRIUS parameters. All possible parameters can be retrieved from SIRIUS via the respective endpoint. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

