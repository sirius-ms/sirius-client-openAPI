# Rsirius::Compound


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**compoundId** | **character** | uid of this compound Entity | [optional] 
**name** | **character** | Some (optional) human-readable name | [optional] 
**rtStartSeconds** | **numeric** | The merged/consensus retention time start (earliest rt) of this compound | [optional] 
**rtEndSeconds** | **numeric** | The merged/consensus retention time end (latest rt) of this compound | [optional] 
**neutralMass** | **numeric** | Neutral mass of this compound. Ion masse minus the mass of the assigned adduct of each feature of  this compound should result in the same neutral mass | [optional] 
**features** | [**array[AlignedFeature]**](AlignedFeature.md) | List of aligned features (adducts) that belong to the same (this) compound | [optional] 
**consensusAnnotations** | [**ConsensusAnnotationsCSI**](ConsensusAnnotationsCSI.md) | The consensus of the top annotations from all the features of this compound.  Null if it was not requested und non-null otherwise. Might contain empty fields if results are not available | [optional] 
**consensusAnnotationsDeNovo** | [**ConsensusAnnotationsDeNovo**](ConsensusAnnotationsDeNovo.md) | The consensus of the top de novo annotations from all the features of this compound.  Null if it was not requested und non-null otherwise. Might contain empty fields if results are not available | [optional] 
**customAnnotations** | [**ConsensusAnnotationsCSI**](ConsensusAnnotationsCSI.md) | Alternative annotations selected by the User. | [optional] 
**tags** | [**map(Tag)**](Tag.md) | Key: tagName, value: tag | [optional] 


