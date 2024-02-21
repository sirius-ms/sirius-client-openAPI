# StructureDbSearch

User/developer friendly parameter subset for the CSI:FingerID structure db search tool.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enabled** | **bool** | tags whether the tool is enabled | [optional] 
**structure_search_dbs** | **List[str]** | Structure databases to search in | [optional] 
**tag_lipids** | **bool** | Candidates matching the lipid class estimated by El Gordo will be tagged.  The lipid class will only be available if El Gordo predicts that the MS/MS is a lipid spectrum.  If this parameter is set to &#39;false&#39; El Gordo will still be executed and e.g. improve the fragmentation  tree, but the matching structure candidates will not be tagged if they match lipid class. | [optional] 

## Example

```python
from PySirius.models.structure_db_search import StructureDbSearch

# TODO update the JSON string below
json = "{}"
# create an instance of StructureDbSearch from a JSON string
structure_db_search_instance = StructureDbSearch.from_json(json)
# print the JSON string representation of the object
print StructureDbSearch.to_json()

# convert the object into a dict
structure_db_search_dict = structure_db_search_instance.to_dict()
# create an instance of StructureDbSearch from a dict
structure_db_search_form_dict = structure_db_search.from_dict(structure_db_search_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


