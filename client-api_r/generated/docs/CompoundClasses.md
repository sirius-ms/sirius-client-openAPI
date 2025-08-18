# Rsirius::CompoundClasses

Container class that holds the most likely compound class for different levels of each ontology for a  certain Compound/Feature/FormulaCandidate/PredictedFingerprint.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**npcPathway** | [**CompoundClass**](CompoundClass.md) | Pathway level NPC class with the highest probability | [optional] 
**npcSuperclass** | [**CompoundClass**](CompoundClass.md) | Superclass level NPC class with the highest probability | [optional] 
**npcClass** | [**CompoundClass**](CompoundClass.md) | Class level NPC class with the highest probability | [optional] 
**classyFireLineage** | [**array[CompoundClass]**](CompoundClass.md) | Most likely ClassyFire lineage from ordered from least specific to most specific class  classyFireLineage.get(classyFireLineage.size() - 1) gives the most specific ClassyFire compound class annotation | [optional] 
**classyFireAlternatives** | [**array[CompoundClass]**](CompoundClass.md) | Alternative ClassyFire classes with high probability that do not fit into the linage | [optional] 


