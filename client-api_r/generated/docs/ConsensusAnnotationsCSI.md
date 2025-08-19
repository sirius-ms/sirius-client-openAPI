# Rsirius::ConsensusAnnotationsCSI


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**molecularFormula** | **character** | Molecular formula of the consensus annotation  Might be null if no consensus formula is available. | [optional] 
**compoundClasses** | [**CompoundClasses**](CompoundClasses.md) | Compound classes (predicted with CANOPUS) corresponding to the molecularFormula  Might be null if no fingerprints or compound classes are available. | [optional] 
**supportingFeatureIds** | **array[character]** | FeatureIds where the topAnnotation supports this annotation. | [optional] 
**selectionCriterion** | **character** | Null if this is a custom selection | [optional] [Enum: [MAJORITY_STRUCTURE, CONFIDENCE_STRUCTURE, SINGLETON_STRUCTURE, MAJORITY_FORMULA, TOP_FORMULA, SINGLETON_FORMULA]] 
**csiFingerIdStructure** | [**StructureCandidate**](StructureCandidate.md) | Database structure candidate (searched with CSI:FingerID), that also defines the molecularFormula  Might be null if no consensus structure is available. | [optional] 
**confidenceExactMatch** | **numeric** | Confidence value that represents the certainty that reported consensus structure is exactly the measured one  If multiple features support this consensus structure the maximum confidence is reported | [optional] 
**confidenceApproxMatch** | **numeric** | Confidence value that represents the certainty that the exact consensus structure or a very similar  structure (e.g. measured by Maximum Common Edge Subgraph Distance) is the measured one.  If multiple features support this consensus structure the maximum confidence is reported | [optional] 


