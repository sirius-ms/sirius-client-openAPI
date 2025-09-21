# Run


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**run_id** | **str** | Identifier | [optional] 
**name** | **str** | Informative, human-readable name of this run | [optional] 
**source** | **str** | Source location | [optional] 
**chromatography** | **str** |  | [optional] 
**ionization** | **str** |  | [optional] 
**fragmentation** | **str** |  | [optional] 
**mass_analyzers** | **List[str]** |  | [optional] 
**tags** | [**Dict[str, Tag]**](Tag.md) | Key: tagName, value: tag | [optional] 

## Example

```python
from PySirius.models.run import Run

# TODO update the JSON string below
json = "{}"
# create an instance of Run from a JSON string
run_instance = Run.from_json(json)
# print the JSON string representation of the object
print(Run.to_json())

# convert the object into a dict
run_dict = run_instance.to_dict()
# create an instance of Run from a dict
run_from_dict = Run.from_dict(run_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


