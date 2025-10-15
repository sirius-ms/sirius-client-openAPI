# RSirius::ProjectInfo


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**projectId** | **character** | a user selected unique name of the project for easy access. | [optional] 
**location** | **character** | storage location of the project. | [optional] 
**description** | **character** | Description of this project. | [optional] 
**type** | **character** | Type of this project.  NULL if project type has not yet been specified by importing data. | [optional] [Enum: [UNIMPORTED, DIRECT_IMPORT, PEAKLISTS, ALIGNED_RUNS, UNALIGNED_RUNS]] 
**compatible** | **character** | Indicates whether computed results (e.g. fingerprints, compounds classes) are compatible with the backend.  If true project is up-to-date and there are no restrictions regarding usage.  If false project is incompatible and therefore \&quot;read only\&quot; until the incompatible results have been removed. See updateProject endpoint for further information  If NULL the information has not been requested. | [optional] 
**numOfFeatures** | **integer** | Number of features (aligned over runs) in this project. If NULL, information has not been requested (See OptField &#39;sizeInformation&#39;). | [optional] 
**numOfCompounds** | **integer** | Number of compounds (group of ion identities) in this project. If NULL, Information has not been requested (See OptField &#39;sizeInformation&#39;) or might be unavailable for this project type. | [optional] 
**numOfBytes** | **integer** | Size in Bytes this project consumes on disk If NULL, Information has not been requested (See OptField &#39;sizeInformation&#39;). | [optional] 


