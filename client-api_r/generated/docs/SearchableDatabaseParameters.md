# Rsirius::SearchableDatabaseParameters


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**displayName** | **character** | display name of the database  Should be short | [optional] [Max. length: 15] 
**location** | **character** | Storage location of user database  Might be NULL for non-user databases or if default location is used. | [optional] 
**matchRtOfReferenceSpectra** | **character** | Indicates whether this database shall be used to use retention time information for library matching.  Typically used for in-house spectral libraries that have been measured on | [optional] [default to FALSE] 


