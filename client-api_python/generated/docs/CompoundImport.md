# CompoundImport


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Some (optional) human-readable name | [optional] 
**features** | [**List[FeatureImport]**](FeatureImport.md) | The features this compound consists of. | 

## Example

```python
from PySirius.models.compound_import import CompoundImport

# TODO update the JSON string below
json = "{}"
# create an instance of CompoundImport from a JSON string
compound_import_instance = CompoundImport.from_json(json)
# print the JSON string representation of the object
print CompoundImport.to_json()

# convert the object into a dict
compound_import_dict = compound_import_instance.to_dict()
# create an instance of CompoundImport from a dict
compound_import_form_dict = compound_import.from_dict(compound_import_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


