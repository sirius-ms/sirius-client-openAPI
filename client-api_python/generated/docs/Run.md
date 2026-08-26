# Run


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**run_id** | **str** | Identifier | [optional] 
**name** | **str** | Informative, human-readable name of the run | [optional] 
**source** | **str** | Source location | [optional] 
**chromatography** | **str** | Chromatography the run was measured with, e.g. &#39;Liquid Chromatography&#39;. | [optional] 
**ionization** | **str** | Ionization the run was measured with, named as in the HUPO PSI-MS controlled vocabulary,  e.g. &#39;electrospray ionization&#39;. | [optional] 
**fragmentation** | **str** | Fragmentation the run was measured with, named as in the HUPO PSI-MS controlled vocabulary,  e.g. &#39;beam-type collision-induced dissociation&#39;. | [optional] 
**mass_analyzers** | **List[Optional[str]]** | Mass analyzers of the instrument the run was measured on, named as in the HUPO PSI-MS  controlled vocabulary, e.g. &#39;orbitrap&#39;. | [optional] 
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


