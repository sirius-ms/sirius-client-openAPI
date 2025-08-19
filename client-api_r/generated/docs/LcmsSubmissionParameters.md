# Rsirius::LcmsSubmissionParameters


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**alignLCMSRuns** | **character** | Specifies whether LC/MS runs should be aligned | [optional] [default to TRUE] 
**noiseIntensity** | **numeric** | Noise level under which all peaks are considered to be likely noise. A peak has to be at least 3x noise level  to be picked as feature. Peaks with MS/MS are still picked even though they might be below noise level.  If not specified, the noise intensity is detected automatically from data. We recommend to NOT specify  this parameter, as the automated detection is usually sufficient. | [optional] [default to -1] 
**traceMaxMassDeviation** | [**Deviation**](Deviation.md) | Maximal allowed mass deviation for peaks in ms1 to be considered as belonging to the same trace. | [optional] 
**alignMaxMassDeviation** | [**Deviation**](Deviation.md) | Maximal allowed mass deviation for aligning features. If not specified, this parameter is estimated from data. | [optional] 
**alignMaxRetentionTimeDeviation** | **numeric** | Maximal allowed retention time error in seconds for aligning features. If not specified, this parameter is estimated from data. | [optional] [default to -1] 
**minSNR** | **numeric** | Minimum ratio between peak height and noise intensity for detecting features. By default, this value is 3. Features with good MS/MS are always picked independent of their intensity. For picking very low intensive features we recommend a min-snr of 2, but this will increase runtime and storage memory | [optional] [default to 3] 


