# RSirius::SearchableDatabaseParameters


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**displayName** | **character** | display name of the database  Should be short | [optional] [Max. length: 15] [Min. length: 1] 
**location** | **character** | Storage location of user database  Might be NULL for non-user databases or if default location is used. | [optional] 
**matchRtOfReferenceSpectra** | **character** | Indicates whether this database shall be used to use retention time information for library matching.  Typically used for in-house spectral libraries that were measured on the same  chromatographic setup as the samples being analyzed, so that retention times are comparable. | [optional] [default to FALSE] 


