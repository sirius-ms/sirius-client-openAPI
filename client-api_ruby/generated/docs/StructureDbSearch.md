# RubySirius::StructureDbSearch

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enabled** | **BOOLEAN** | tags whether the tool is enabled | [optional] 
**structure_search_d_bs** | **Array&lt;String&gt;** | Structure databases to search in | [optional] 
**tag_lipids** | **BOOLEAN** | Candidates matching the lipid class estimated by El Gordo will be tagged.  The lipid class will only be available if El Gordo predicts that the MS/MS is a lipid spectrum.  If this parameter is set to &#x27;false&#x27; El Gordo will still be executed and e.g. improve the fragmentation  tree, but the matching structure candidates will not be tagged if they match lipid class. | [optional] 

