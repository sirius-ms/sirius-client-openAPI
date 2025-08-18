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
**fragmentationTree** | [**FragmentationTree**](FragmentationTree.md) | The fragmentation tree that belongs to this molecular formula candidate (produces the treeScore). | [optional] 
**annotatedSpectrum** | [**AnnotatedSpectrum**](AnnotatedSpectrum.md) | Fragmentation spectrum (e.g. Merged MS/MS) which is annotated with fragments and losses | [optional] 
**isotopePatternAnnotation** | [**IsotopePatternAnnotation**](IsotopePatternAnnotation.md) | The measured and simulated isotope pattern that have been  compared against each other to produce the isotopeScore. | [optional] 
**lipidAnnotation** | [**LipidAnnotation**](LipidAnnotation.md) | ElGordo lipid annotation of this candidate.  NULL if annotation was not requested. lipidAnnotation.lipidSpecies &#x3D;&#x3D; NULL if candidate has not been classified as a lipid | [optional] 
**predictedFingerprint** | **array[numeric]** | Probabilistic molecular fingerprint predicted by CSI:FingerID | [optional] 
**compoundClasses** | [**CompoundClasses**](CompoundClasses.md) | Most likely compound classes for different levels of each ontology for this FormulaCandidate (predictedFingerprint) | [optional] 
**canopusPrediction** | [**CanopusPrediction**](CanopusPrediction.md) | All classes predicted by canopus for this FormulaCandidate (predictedFingerprint) | [optional] 


