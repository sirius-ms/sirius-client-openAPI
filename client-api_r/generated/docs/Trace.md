# Rsirius::Trace


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **integer** |  | [optional] 
**sampleId** | **integer** |  | [optional] 
**sampleName** | **character** |  | [optional] 
**label** | **character** |  | [optional] 
**intensities** | **array[numeric]** |  | [optional] 
**annotations** | [**array[Annotation]**](Annotation.md) |  | [optional] 
**mz** | **numeric** |  | [optional] 
**merged** | **character** |  | [optional] 
**normalizationFactor** | **numeric** | Traces are stored with raw intensity values. The normalization factor maps them to relative intensities,  such that traces from different samples can be compared. | [optional] 
**noiseLevel** | **numeric** | The noise level is estimated from the median noise in the surrounding scans. It can be used to  calculate signal-to-noise ratios. | [optional] 


