# RSirius::SearchableDatabase


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**displayName** | **character** | display name of the database  Should be short | [optional] 
**location** | **character** | Storage location of user database  Might be NULL for non-user databases or if default location is used. | [optional] 
**matchRtOfReferenceSpectra** | **character** | Indicates whether this database shall be used to use retention time information for library matching.  Typically used for in-house spectral libraries that have been measured on | [optional] [default to FALSE] 
**databaseId** | **character** | A unique identifier or name of the database.  Should only contain file path and url save characters  For user databases this is usually the file name. | 
**customDb** | **character** | Indicates whether the database is a user managed custom database or if it is a  database that is included in SIRIUS which cannot be modified. | 
**searchable** | **character** | True when this database can be used as a search parameter.  False if the database is just an additional filter that can be applied after search. | 
**dbDate** | **character** | Date on which the data was imported / database was created. | [optional] 
**dbVersion** | **integer** | database schema version | [optional] 
**updateNeeded** | **character** | If true the database version is outdated and the database needs to be updated or re-imported before it can be used. | 
**numberOfStructures** | **integer** | Number of unique compounds available in this database. | [optional] 
**numberOfFormulas** | **integer** | Number of different molecular formulas available in this database. | [optional] 
**numberOfReferenceSpectra** | **integer** | Number of reference spectra available in this database | [optional] 
**errorMessage** | **character** | Error message if the database could not be loaded | [optional] 


