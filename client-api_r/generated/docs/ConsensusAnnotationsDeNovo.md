# Rsirius::ConsensusAnnotationsDeNovo


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**molecularFormula** | **character** | Molecular formula of the consensus annotation  Might be null if no consensus formula is available. | [optional] 
**compoundClasses** | [**CompoundClasses**](CompoundClasses.md) | Compound classes (predicted with CANOPUS) corresponding to the molecularFormula  Might be null if no fingerprints or compound classes are available. | [optional] 
**supportingFeatureIds** | **array[character]** | FeatureIds where the topAnnotation supports this annotation. | [optional] 
**selectionCriterion** | **character** | Criterion that was used to select the consensus annotation. | [optional] [Enum: [MAJORITY_FORMULA, TOP_FORMULA, SINGLETON_FORMULA]] 


