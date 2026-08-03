# RSirius::ConsensusAnnotationsDeNovo


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**selectionCriterion** | **character** | Criterion that was used to select the consensus annotation. | [optional] [Enum: [MAJORITY_FORMULA, TOP_FORMULA, SINGLETON_FORMULA]] 
**molecularFormula** | **character** | Molecular formula of the consensus annotation  Might be null if no consensus formula is available. | [optional] 
**compoundClasses** | [**CompoundClasses**](CompoundClasses.md) |  | [optional] 
**supportingFeatureIds** | **array[character]** | FeatureIds where the topAnnotation supports this annotation. | [optional] 


