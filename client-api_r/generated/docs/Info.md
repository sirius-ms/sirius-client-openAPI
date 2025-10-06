# RSirius::Info


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**nightSkyApiVersion** | **character** | API version of the SIRIUS Nightsky API | [optional] 
**siriusVersion** | **character** | Version of the SIRIUS application | [optional] 
**latestSiriusVersion** | **character** | Latest available Version of the SIRIUS application | [optional] 
**latestSiriusLink** | **character** | Link to the latest available Version of the SIRIUS application | [optional] 
**updateAvailable** | **character** | true if newer SIRIUS version is available | [optional] 
**siriusLibVersion** | **character** | Version of the SIRIUS libraries | [optional] 
**fingerIdLibVersion** | **character** | Version of the CSI:FingerID libraries | [optional] 
**chemDbVersion** | **character** | Version of the Chemical Database available via SIRIUS web services | [optional] 
**fingerIdModelVersion** | **character** | Version of the Machine learning models used for Fingerprint, Compound Class and Structure Prediction  Not available if web service is not reachable. | [optional] 
**fingerprintId** | **character** | Version of the Molecular Fingerprint used by SIRIUS | [optional] 
**availableILPSolvers** | **array[character]** | Set of solvers that are configured correctly and can be loaded | [Enum: ] 
**supportedILPSolvers** | **map(character)** | Set of ILP Solvers that are Supported and their version information | 


