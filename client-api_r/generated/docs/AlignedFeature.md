# RSirius::AlignedFeature

The AlignedFeature contains the ID of a feature (aligned over runs) together with some read-only information  that might be displayed in some summary view.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**alignedFeatureId** | **character** | Unique identifier of the aligned feature within the project. | [optional] 
**compoundId** | **character** | Identifier of the compound the feature belongs to.  Features that are different adducts or isotopologues of the same molecule share it. | [optional] 
**name** | **character** | Informative, human-readable name of the feature. | [optional] 
**externalFeatureId** | **character** | Externally provided FeatureId (e.g. by some preprocessing tool).  This FeatureId is NOT used by SIRIUS but is stored to ease mapping information back to the source. | [optional] 
**ionMass** | **numeric** | Mass-to-charge ratio (m/z) of the precursor ion of the feature. | [optional] 
**charge** | **integer** | Ion mode (charge) the feature has been measured in. | 
**detectedAdducts** | **set[character]** | Adducts that have been detected for the feature during preprocessing.  Never empty: if no adduct could be detected, the unknown ion type matching the feature&#39;s  charge ([M+?]+ or [M+?]-) is reported instead, so every feature is filterable by adduct. | 
**rtStartSeconds** | **numeric** | Start of the retention time range the feature was detected in, in seconds. | [optional] 
**rtEndSeconds** | **numeric** | End of the retention time range the feature was detected in, in seconds. | [optional] 
**rtApexSeconds** | **numeric** | Retention time of the intensity apex of the feature, in seconds. | [optional] 
**quality** | **character** | Overall quality of the feature. NOT_APPLICABLE if no quality data is available | [optional] [Enum: [NOT_APPLICABLE, LOWEST, BAD, DECENT, GOOD]] 
**hasMs1** | **character** | If true, the feature has at least one MS1 spectrum | [optional] 
**hasMsMs** | **character** | If true, the feature has at least one MS/MS spectrum | [optional] 
**msData** | [**MsData**](MsData.md) |  | [optional] 
**topAnnotations** | [**FeatureAnnotations**](FeatureAnnotations.md) |  | [optional] 
**topAnnotationsDeNovo** | [**FeatureAnnotations**](FeatureAnnotations.md) |  | [optional] 
**computing** | **character** | Write lock for the feature. If the feature is locked no write operations are possible.  True if any computation is modifying the feature or its results. | [optional] 
**computedTools** | [**ComputedSubtools**](ComputedSubtools.md) |  | [optional] 
**qualities** | **map(character)** | Qualities per top level quality category. | [optional] [Enum: ] 
**tags** | [**map(Tag)**](Tag.md) | Key: tagName, value: tag | [optional] 


