# CompoundId

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**index** | **int** |  | [optional] 
**ion_mass** | **float** |  | [optional] 
**ion_type** | **str** |  | [optional] 
**rt_start_seconds** | **float** |  | [optional] 
**rt_end_seconds** | **float** |  | [optional] 
**top_annotation** | [**CompoundAnnotation**](CompoundAnnotation.md) |  | [optional] 
**ms_data** | [**MsData**](MsData.md) |  | [optional] 
**quality_flags** | **list[str]** | Contains all pre-computation quality information that belong to  this compound, such as information about the quality of the peak shape, MS2 spectrum etc.,  see ({@link CompoundQuality.CompoundQualityFlag CompoundQuality.CompoundQualityFlag})  &lt;p&gt;  Each Compound has a Set of Quality assessment flags. | [optional] 
**lcms_feature_quality** | [**LCMSFeatureQuality**](LCMSFeatureQuality.md) |  | [optional] 
**computing** | **bool** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

