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
**consensusAnnotations** | [**ConsensusAnnotationsCSI**](ConsensusAnnotationsCSI.md) |  | [optional] 
**consensusAnnotationsDeNovo** | [**ConsensusAnnotationsDeNovo**](ConsensusAnnotationsDeNovo.md) |  | [optional] 
**customAnnotations** | [**ConsensusAnnotationsCSI**](ConsensusAnnotationsCSI.md) |  | [optional] 


