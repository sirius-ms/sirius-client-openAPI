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
**quality** | [**DataQuality**](DataQuality.md) |  | [optional] [Enum: ] 
**hasMs1** | **character** | If true, the feature has at lease one MS1 spectrum | [optional] 
**hasMsMs** | **character** | If true, the feature has at lease one MS/MS spectrum | [optional] 
**msData** | [**MsData**](MsData.md) |  | [optional] 
**topAnnotations** | [**FeatureAnnotations**](FeatureAnnotations.md) |  | [optional] 
**topAnnotationsDeNovo** | [**FeatureAnnotations**](FeatureAnnotations.md) |  | [optional] 
**computing** | **character** | Write lock for this feature. If the feature is locked no write operations are possible.  True if any computation is modifying this feature or its results | [optional] 


