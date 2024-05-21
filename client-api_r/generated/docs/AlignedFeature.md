# Rsirius::AlignedFeature

The AlignedFeature contains the ID of a feature (aligned over runs) together with some read-only information  that might be displayed in some summary view.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**alignedFeatureId** | **character** |  | [optional] 
**name** | **character** |  | [optional] 
**ionMass** | **numeric** |  | [optional] 
**ionType** | **character** |  | [optional] 
**rtStartSeconds** | **numeric** |  | [optional] 
**rtEndSeconds** | **numeric** |  | [optional] 
**msData** | [**MsData**](MsData.md) |  | [optional] 
**topAnnotations** | [**FeatureAnnotations**](FeatureAnnotations.md) |  | [optional] 
**topAnnotationsDeNovo** | [**FeatureAnnotations**](FeatureAnnotations.md) |  | [optional] 
**computing** | **character** | Write lock for this feature. If the feature is locked no write operations are possible.  True if any computation is modifying this feature or its results | [optional] 


