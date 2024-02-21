# Rsirius::ImportStringSubmission

Parameter Object to submit a job that imports ms/ms data from the given format into the specified project  Supported formats (ms, mgf, cef, msp, mzML, mzXML)

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**allowMs1OnlyData** | **character** |  | [optional] 
**ignoreFormulas** | **character** |  | [optional] 
**alignLCMSRuns** | **character** |  | [optional] 
**sourceName** | **character** | Name that specifies the data source. Can e.g. be a file path  or just a name. | [optional] 
**format** | [**ImportFormat**](ImportFormat.md) |  | [Enum: ] 
**data** | **character** | Data content in specified format | 


