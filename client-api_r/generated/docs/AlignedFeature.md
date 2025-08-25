# Rsirius::AlignedFeature

The AlignedFeature contains the ID of a feature (aligned over runs) together with some read-only information  that might be displayed in some summary view.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**alignedFeatureId** | **character** |  | [optional] 
**compoundId** | **character** |  | [optional] 
**name** | **character** |  | [optional] 
**externalFeatureId** | **character** | Externally provided FeatureId (e.g. by some preprocessing tool).  This FeatureId is NOT used by SIRIUS but is stored to ease mapping information back to the source. | [optional] 
**ionMass** | **numeric** |  | [optional] 
**charge** | **integer** | Ion mode (charge) this feature has been measured in. | 
**detectedAdducts** | **set[character]** | Adducts of this feature that have been detected during preprocessing. | 
**rtStartSeconds** | **numeric** |  | [optional] 
**rtEndSeconds** | **numeric** |  | [optional] 
**rtApexSeconds** | **numeric** |  | [optional] 
**quality** | **character** | Quality of this feature. | [optional] [Enum: [NOT_APPLICABLE, LOWEST, BAD, DECENT, GOOD]] 
**hasMs1** | **character** | If true, the feature has at lease one MS1 spectrum | [optional] 
**hasMsMs** | **character** | If true, the feature has at lease one MS/MS spectrum | [optional] 
**msData** | [**MsData**](MsData.md) | Mass Spec data of this feature (input data) | [optional] 
**topAnnotations** | [**FeatureAnnotations**](FeatureAnnotations.md) | Top annotations of this feature.  If a CSI:FingerID structureAnnotation is available, the FormulaCandidate that corresponds to the  structureAnnotation is returned. Otherwise, it&#39;s the FormulaCandidate with the highest SiriusScore is returned.  CANOPUS Compound classes correspond to the FormulaCandidate no matter how it was selected   Null if it was not requested und non-null otherwise. | [optional] 
**topAnnotationsDeNovo** | [**FeatureAnnotations**](FeatureAnnotations.md) | Top de novo annotations of this feature.  The FormulaCandidate with the highest SiriusScore is returned. MSNovelist structureAnnotation and  CANOPUS compoundClasses correspond to the FormulaCandidate.   Null if it was not requested und non-null otherwise. | [optional] 
**computing** | **character** | Write lock for this feature. If the feature is locked no write operations are possible.  True if any computation is modifying this feature or its results | [optional] 
**computedTools** | [**ComputedSubtools**](ComputedSubtools.md) | Specifies which tools have been executed for this feature. Can be used to estimate which results can be expected. Null if it was not requested und non-null otherwise. | [optional] 
**tags** | [**map(Tag)**](Tag.md) | Key: tagName, value: tag | [optional] 


