# LipidAnnotation


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**lipid_species** | **str** | Predicted lipid species in LIPID MAPS notation.  NULL if not classified as lipid. | [optional] 
**lipid_maps_id** | **str** | LIPID MAPS id of the predicted lipid class. | [optional] 
**lipid_class_name** | **str** | Human-readable name of the predicted lipid class. | [optional] 
**hypothetical_structure** | **str** | Hypothetical molecular structure of the predicted lipid species as SMILES.  NULL if hypothetical structure not available. | [optional] 
**chains_unknown** | **bool** | True of the formula composition of the chains could not be determined from the MS/MS. | [optional] 

## Example

```python
from PySirius.models.lipid_annotation import LipidAnnotation

# TODO update the JSON string below
json = "{}"
# create an instance of LipidAnnotation from a JSON string
lipid_annotation_instance = LipidAnnotation.from_json(json)
# print the JSON string representation of the object
print LipidAnnotation.to_json()

# convert the object into a dict
lipid_annotation_dict = lipid_annotation_instance.to_dict()
# create an instance of LipidAnnotation from a dict
lipid_annotation_form_dict = lipid_annotation.from_dict(lipid_annotation_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


