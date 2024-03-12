# SearchableDatabase


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**display_name** | **str** | display name of the database  Should be short | [optional] 
**location** | **str** | Storage location of user database  Might be NULL for non-user databases or if default location is used. | [optional] 
**match_rt_of_reference_spectra** | **bool** | Indicates whether this database shall be used to use retention time information for library matching.  Typically used for in-house spectral libraries that have been measured on | [optional] [default to False]
**database_id** | **str** | A unique identifier or name of the database.  Should only contain file path and url save characters  For user databases this is usually the file name. | 
**custom_db** | **bool** | Indicates whether the database is a user managed custom database or if it is a  database that is included in SIRIUS which cannot be modified. | 
**searchable** | **bool** | True when this database can be used as a search parameter.  False if the database is just an additional filter that can be applied after search. | 
**db_date** | **str** | Date on which the data was imported / database was created. | [optional] 
**db_version** | **int** | database schema version | [optional] 
**update_needed** | **bool** | If true the database version is outdated and the database needs to be updated or re-imported before it can be used. | 
**number_of_structures** | **int** | Number of unique compounds available in this database. | [optional] 
**number_of_formulas** | **int** | Number of different molecular formulas available in this database. | [optional] 
**number_of_reference_spectra** | **int** | Number of reference spectra available in this database | [optional] 

## Example

```python
from PySirius.models.searchable_database import SearchableDatabase

# TODO update the JSON string below
json = "{}"
# create an instance of SearchableDatabase from a JSON string
searchable_database_instance = SearchableDatabase.from_json(json)
# print the JSON string representation of the object
print(SearchableDatabase.to_json())

# convert the object into a dict
searchable_database_dict = searchable_database_instance.to_dict()
# create an instance of SearchableDatabase from a dict
searchable_database_form_dict = searchable_database.from_dict(searchable_database_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


