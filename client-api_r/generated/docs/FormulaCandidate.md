# Rsirius::FormulaCandidate

Molecular formula candidate that holds a unique identifier (molecular formula + adduct).  It can be extended with optional scoring metrics and the raw results  such as fragmentation trees and simulated isotope pattern.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**formulaId** | **character** | Unique identifier of this formula candidate | [optional] 
**molecularFormula** | **character** | molecular formula of this formula candidate | [optional] 
**adduct** | **character** | Adduct of this formula candidate | [optional] 
**rank** | **integer** |  | [optional] 
**siriusScoreNormalized** | **numeric** | Normalized Sirius Score of the formula candidate.  If NULL result is not available | [optional] 
**siriusScore** | **numeric** | Sirius Score (isotope + tree score) of the formula candidate.  If NULL result is not available | [optional] 
**isotopeScore** | **numeric** |  | [optional] 
**treeScore** | **numeric** |  | [optional] 
**zodiacScore** | **numeric** | Zodiac Score of the formula candidate.  If NULL result is not available | [optional] 
**numOfExplainedPeaks** | **integer** |  | [optional] 
**numOfExplainablePeaks** | **integer** |  | [optional] 
**totalExplainedIntensity** | **numeric** |  | [optional] 
**medianMassDeviation** | [**Deviation**](Deviation.md) |  | [optional] 
**fragmentationTree** | [**FragmentationTree**](FragmentationTree.md) |  | [optional] 
**annotatedSpectrum** | [**AnnotatedSpectrum**](AnnotatedSpectrum.md) |  | [optional] 
**isotopePatternAnnotation** | [**IsotopePatternAnnotation**](IsotopePatternAnnotation.md) |  | [optional] 
**lipidAnnotation** | [**LipidAnnotation**](LipidAnnotation.md) |  | [optional] 
**predictedFingerprint** | **array[numeric]** | Probabilistic molecular fingerprint predicted by CSI:FingerID | [optional] 
**compoundClasses** | [**CompoundClasses**](CompoundClasses.md) |  | [optional] 
**canopusPrediction** | [**CanopusPrediction**](CanopusPrediction.md) |  | [optional] 


