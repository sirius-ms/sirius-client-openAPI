# SearchableDatabaseParameters


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**display_name** | **str** | display name of the database  Should be short | [optional] 
**location** | **str** | Storage location of user database  Might be NULL for non-user databases or if default location is used. | [optional] 
**match_rt_of_reference_spectra** | **bool** | Indicates whether this database shall be used to use retention time information for library matching.  Typically used for in-house spectral libraries that have been measured on | [optional] [default to False]

## Example

```python
from PySirius.models.searchable_database_parameters import SearchableDatabaseParameters

# TODO update the JSON string below
json = "{}"
# create an instance of SearchableDatabaseParameters from a JSON string
searchable_database_parameters_instance = SearchableDatabaseParameters.from_json(json)
# print the JSON string representation of the object
print(SearchableDatabaseParameters.to_json())

# convert the object into a dict
searchable_database_parameters_dict = searchable_database_parameters_instance.to_dict()
# create an instance of SearchableDatabaseParameters from a dict
searchable_database_parameters_from_dict = SearchableDatabaseParameters.from_dict(searchable_database_parameters_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


