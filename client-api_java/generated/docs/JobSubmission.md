# JobSubmission

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**compoundIds** | **List&lt;String&gt;** | Compounds that should be the input for this Job |  [optional]
**fallbackAdducts** | **List&lt;String&gt;** | Describes how to deal with Adducts: Fallback adducts are considered if the auto detection did not find any indication for an ion mode.  Pos Examples: [M+H]+,[M]+,[M+K]+,[M+Na]+,[M+H-H2O]+,[M+Na2-H]+,[M+2K-H]+,[M+NH4]+,[M+H3O]+,[M+MeOH+H]+,[M+ACN+H]+,[M+2ACN+H]+,[M+IPA+H]+,[M+ACN+Na]+,[M+DMSO+H]+  Neg Examples: [M-H]-,[M]-,[M+K-2H]-,[M+Cl]-,[M-H2O-H]-,[M+Na-2H]-,M+FA-H]-,[M+Br]-,[M+HAc-H]-,[M+TFA-H]-,[M+ACN-H]- |  [optional]
**enforcedAdducts** | **List&lt;String&gt;** | Describes how to deal with Adducts:  Enforced adducts that are always considered.  Pos Examples: [M+H]+,[M]+,[M+K]+,[M+Na]+,[M+H-H2O]+,[M+Na2-H]+,[M+2K-H]+,[M+NH4]+,[M+H3O]+,[M+MeOH+H]+,[M+ACN+H]+,[M+2ACN+H]+,[M+IPA+H]+,[M+ACN+Na]+,[M+DMSO+H]+  Neg Examples: [M-H]-,[M]-,[M+K-2H]-,[M+Cl]-,[M-H2O-H]-,[M+Na-2H]-,M+FA-H]-,[M+Br]-,[M+HAc-H]-,[M+TFA-H]-,[M+ACN-H]- |  [optional]
**detectableAdducts** | **List&lt;String&gt;** | Describes how to deal with Adducts: Detectable adducts which are only considered if there is an indication in the MS1 scan (e.g. correct mass delta).  Pos Examples: [M+H]+,[M]+,[M+K]+,[M+Na]+,[M+H-H2O]+,[M+Na2-H]+,[M+2K-H]+,[M+NH4]+,[M+H3O]+,[M+MeOH+H]+,[M+ACN+H]+,[M+2ACN+H]+,[M+IPA+H]+,[M+ACN+Na]+,[M+DMSO+H]+  Neg Examples: [M-H]-,[M]-,[M+K-2H]-,[M+Cl]-,[M-H2O-H]-,[M+Na-2H]-,M+FA-H]-,[M+Br]-,[M+HAc-H]-,[M+TFA-H]-,[M+ACN-H]- |  [optional]
**recompute** | **Boolean** | Indicate if already existing result for a tool to be executed should be overwritten or not. |  [optional]
**formulaIdParas** | [**Sirius**](Sirius.md) |  |  [optional]
**zodiacParas** | [**Zodiac**](Zodiac.md) |  |  [optional]
**fingerprintPredictionParas** | [**FingerprintPrediction**](FingerprintPrediction.md) |  |  [optional]
**structureDbSearchParas** | [**StructureDbSearch**](StructureDbSearch.md) |  |  [optional]
**canopusParas** | [**Canopus**](Canopus.md) |  |  [optional]
**configMap** | **Map&lt;String, String&gt;** | As an alternative to the object based parameters, this map allows to store key value pairs  of ALL SIRIUS parameters. All possible parameters can be retrieved from SIRIUS via the respective endpoint. |  [optional]
