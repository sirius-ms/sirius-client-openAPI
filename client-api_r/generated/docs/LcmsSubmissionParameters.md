# RSirius::LcmsSubmissionParameters


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sampleNames** | **array[character]** | Sample names for each input file to link imported results, e.g. QuantTable back to the input data.  If NULL or empty sample names will be derived from the input files.  &lt;p&gt;  The names are matched to the input files by index. Partial lists are allowed: a NULL entry and any  input file without a corresponding entry get their name derived from the input file. Surplus entries  that match no input file are ignored.  &lt;p&gt;  Names must neither be blank nor duplicated, otherwise the import is rejected. | [optional] 
**sampleTypes** | **array[character]** | Sample type for each input file to be used to compute fold changes between blank and sample runs  If NULL or empty no fold changes will be computed during preprocessing.  &lt;p&gt;  The types are matched to the input files by index. In contrast to sampleNames either all or no sample  types have to be given: if the number of types does not match the number of input files or if any type  is NULL or blank, the import is rejected. | [optional] 
**alignLCMSRuns** | **character** | Specifies whether LC/MS runs should be aligned | [optional] [default to TRUE] 
**noiseIntensity** | **numeric** | Noise level under which all peaks are considered to be likely noise. A peak has to be at least 3x noise level  to be picked as feature. Peaks with MS/MS are still picked even though they might be below noise level.  If not specified, the noise intensity is detected automatically from the data. We recommend NOT specifying  this parameter, as the automated detection is usually sufficient. | [optional] [default to -1] 
**traceMaxMassDeviation** | [**Deviation**](Deviation.md) |  | [optional] 
**alignMaxMassDeviation** | [**Deviation**](Deviation.md) |  | [optional] 
**alignMaxRetentionTimeDeviation** | **numeric** | Maximum allowed retention time error in seconds for aligning features. If not specified, this parameter is estimated from the data. | [optional] [default to -1] 
**minSNR** | **numeric** | Minimum ratio between peak height and noise intensity for detecting features. By default, this value is 3. Features with good MS/MS are always picked independent of their intensity. For picking very low intensity features we recommend a min-snr of 2, but this will increase runtime and storage requirements | [optional] [default to 3] 


