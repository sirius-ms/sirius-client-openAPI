# Rsirius::ConnectionCheck



## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**workerInfo** | [**WorkerList**](WorkerList.md) |  | [optional] 
**licenseInfo** | [**LicenseInfo**](LicenseInfo.md) |  | 
**errors** | [**array[ConnectionError]**](ConnectionError.md) | List of errors ordered by significance. first error should be reported and addressed first.  Following errors might just be follow-up errors | 
**availableWorkers** | **set[character]** |  | 
**unAvailableWorkers** | **set[character]** |  | 
**supportsAllPredictorTypes** | **character** |  | 
**supportsPosPredictorTypes** | **character** |  | 
**supportsNegPredictorTypes** | **character** |  | 


