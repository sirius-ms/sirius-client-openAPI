# RSirius::Feature

A feature as it has been detected in one single run, in contrast to an AlignedFeature which combines the  features of the same compound over all runs it was detected in.  <p>  It provides the properties that are specific to the run it was detected in, such as its position on the  retention time axis of that run and its quantity within that run.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**featureId** | **character** | Identifier | [optional] 
**alignedFeatureId** | **character** | ID of the AlignedFeature this feature belongs to | [optional] 
**runId** | **character** | ID of the run this feature belongs to | [optional] 
**averageMz** | **numeric** | Average m/z over the whole feature | [optional] 
**apexMz** | **numeric** | m/z at the apex of the feature, the m/z this feature was measured at in its run | [optional] 
**rtStartSeconds** | **numeric** | Start of the feature on the retention time axis in seconds | [optional] 
**rtEndSeconds** | **numeric** | End of the feature on the retention time axis in seconds | [optional] 
**rtApexSeconds** | **numeric** | Apex of the feature on the retention time axis in seconds | [optional] 
**rtFwhmSeconds** | **numeric** | Full width at half maximum of the feature on the retention time axis in seconds | [optional] 
**apexIntensity** | **numeric** | Feature quantity measured as the intensity of the apex of the feature | [optional] 
**areaUnderCurve** | **numeric** | Feature quantity measured as the area under the curve of the whole feature | [optional] 


