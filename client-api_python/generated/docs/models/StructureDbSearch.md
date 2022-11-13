# PySirius.model.structure_db_search.StructureDbSearch

User/developer friendly parameter subset for the CSI:FingerID structure db search tool.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | User/developer friendly parameter subset for the CSI:FingerID structure db search tool. | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**enabled** | bool,  | BoolClass,  | tags whether the tool is enabled | [optional] 
**[structureSearchDBs](#structureSearchDBs)** | list, tuple,  | tuple,  | Structure databases to search in | [optional] 
**tagLipids** | bool,  | BoolClass,  | Candidates matching the lipid class estimated by El Gordo will be tagged.  The lipid class will only be available if El Gordo predicts that the MS/MS is a lipid spectrum.  If this parameter is set to &#x27;false&#x27; El Gordo will still be executed and e.g. improve the fragmentation  tree, but the matching structure candidates will not be tagged if they match lipid class. | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, int, float, bool, decimal.Decimal, None, list, tuple, bytes, io.FileIO, io.BufferedReader | frozendict.frozendict, str, BoolClass, decimal.Decimal, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

# structureSearchDBs

Structure databases to search in

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  | Structure databases to search in | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
items | str,  | str,  |  | must be one of ["ALL", "ALL_BUT_INSILICO", "PUBCHEM", "MESH", "HMDB", "KNAPSACK", "CHEBI", "PUBMED", "BIO", "KEGG", "HSDB", "MACONDA", "METACYC", "GNPS", "ZINCBIO", "TRAIN", "UNDP", "YMDB", "PLANTCYC", "NORMAN", "ADDITIONAL", "SUPERNATURAL", "COCONUT", "PUBCHEMANNOTATIONBIO", "PUBCHEMANNOTATIONDRUG", "PUBCHEMANNOTATIONSAFETYANDTOXIC", "PUBCHEMANNOTATIONFOOD", "LIPID", "KEGGMINE", "ECOCYCMINE", "YMDBMINE", ] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

