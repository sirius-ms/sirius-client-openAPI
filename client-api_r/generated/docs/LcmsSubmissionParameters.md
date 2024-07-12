# Rsirius::LcmsSubmissionParameters


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**alignLCMSRuns** | **character** | Specifies whether LC/MS runs should be aligned | [optional] [default to TRUE] 
**noise** | **numeric** | Features must be larger than &lt;value&gt; * detected noise level. | [optional] [default to 2.0] 
**persistence** | **numeric** | Features must have larger persistence (intensity above valley) than &lt;value&gt; * max trace intensity. | [optional] [default to 0.1] 
**merge** | **numeric** | Merge neighboring features with valley less than &lt;value&gt; * intensity. | [optional] [default to 0.8] 
**filter** | [**DataSmoothing**](DataSmoothing.md) |  | [optional] [Enum: ] 
**gaussianSigma** | **numeric** | Sigma (kernel width) for gaussian filter algorithm. | [optional] [default to 3.0] 
**waveletScale** | **integer** | Number of coefficients for wavelet filter algorithm. | [optional] [default to 20] 
**waveletWindow** | **numeric** | Wavelet window size (%) for wavelet filter algorithm. | [optional] [default to 11] 


