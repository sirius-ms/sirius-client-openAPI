# RSirius::BioTransformerParameters


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cyp450Mode** | **character** | Specify the Phase I/Cyp450 mode for all provided BioTransformerSequenceSteps. Will only be applied to Steps that  require the Cyp450 mode as parameter. Can be null in cases where only BioTransformerSequenceSteps are specified  that do not need the Cyp450 mode. | [default to &quot;COMBINED&quot;] [Enum: [RULE_BASED, CY_PRODUCT, COMBINED]] 
**p2Mode** | **character** | Specify the Phase II mode for all provided BioTransformerSequenceSteps. Will only be applied to Steps that  require the Phase II mode as parameter. Can be null in cases where only BioTransformerSequenceSteps are specified  that do not need the Phase II mode. | [default to &quot;BT_RULE_BASED&quot;] [Enum: [BT_RULE_BASED, P2_RULE_ONLY, COMBINED_RULES]] 
**useDB** | **character** | Specify whether structures should additionally be retrieved from the HMDB database. | [optional] [default to TRUE] 
**bioTransformerSequenceSteps** | [**array[BioTransformerSequenceStep]**](BioTransformerSequenceStep.md) | Specify BioTransformerSequenceSteps to be applied to input structures. MultiStep MetabolicTransformations can  only be used as singletons (list size of one). | 


