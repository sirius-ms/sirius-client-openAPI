# Rsirius::CompoundId

The CompoundId contains the ID of a compound together with some read-only information that might be displayed in  some summary view.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **character** |  | [optional] 
**name** | **character** |  | [optional] 
**index** | **integer** |  | [optional] 
**ionMass** | **numeric** |  | [optional] 
**ionType** | **character** |  | [optional] 
**rtStartSeconds** | **numeric** |  | [optional] 
**rtEndSeconds** | **numeric** |  | [optional] 
**topAnnotation** | [**CompoundAnnotation**](CompoundAnnotation.md) |  | [optional] 
**msData** | [**MsData**](MsData.md) |  | [optional] 
**qualityFlags** | **array[character]** | Contains all pre-computation quality information that belong to  this compound, such as information about the quality of the peak shape, MS2 spectrum etc.,  see ({@link CompoundQuality.CompoundQualityFlag CompoundQuality.CompoundQualityFlag})  &lt;p&gt;  Each Compound has a Set of Quality assessment flags. | [optional] [Enum: ] 
**lcmsCompoundSummaryQualityData** | [**LCMSFeatureSummaryQualityData**](LCMSFeatureSummaryQualityData.md) |  | [optional] 
**computing** | **character** |  | [optional] 


