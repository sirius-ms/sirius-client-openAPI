# RSirius::StructureDbSearch

User/developer friendly parameter subset for the CSI:FingerID structure db search tool.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enabled** | **character** | tags whether the tool is enabled | [optional] 
**structureSearchDBs** | **array[character]** | Structure databases to search in | [optional] [Enum: ] 
**tagLipids** | **character** | Candidates matching the lipid class estimated by El Gordo will be tagged.  The lipid class will only be available if El Gordo predicts that the MS/MS is a lipid spectrum.  If this parameter is set to &#39;false&#39; El Gordo will still be executed and e.g. improve the fragmentation  tree, but the matching structure candidates will not be tagged if they match lipid class. | [optional] 


