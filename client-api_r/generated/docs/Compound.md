# RSirius::Compound


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**compoundId** | **character** | Unique id of the compound entity. | [optional] 
**name** | **character** | Some (optional) human-readable name | [optional] 
**rtStartSeconds** | **numeric** | The merged/consensus retention time start (earliest rt) of the compound | [optional] 
**rtEndSeconds** | **numeric** | The merged/consensus retention time end (latest rt) of the compound | [optional] 
**neutralMass** | **numeric** | Neutral mass of the compound. Ion mass minus the mass of the assigned adduct of each feature of  the compound should result in the same neutral mass | [optional] 
**features** | [**array[AlignedFeature]**](AlignedFeature.md) | List of aligned features (adducts) that belong to the compound | [optional] 
**consensusAnnotations** | [**ConsensusAnnotationsCSI**](ConsensusAnnotationsCSI.md) |  | [optional] 
**consensusAnnotationsDeNovo** | [**ConsensusAnnotationsDeNovo**](ConsensusAnnotationsDeNovo.md) |  | [optional] 
**customAnnotations** | [**ConsensusAnnotationsCSI**](ConsensusAnnotationsCSI.md) |  | [optional] 
**tags** | [**map(Tag)**](Tag.md) | Key: tagName, value: tag | [optional] 


