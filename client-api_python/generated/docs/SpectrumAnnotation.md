# SpectrumAnnotation


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**molecular_formula** | **str** | Molecular formula that has been annotated to this spectrum | [optional] 
**ionization** | **str** | Ionization that has been annotated to this spectrum | [optional] 
**exact_mass** | **float** | Exact mass based on the annotated molecular formula and ionization | [optional] 
**mass_deviation_mz** | **float** | Absolute mass deviation of the exact mass to the precursor mass (precursorMz) of this spectrum in mDa | [optional] 
**mass_deviation_ppm** | **float** | Relative mass deviation of the exact mass to the precursor mass (precursorMz) of this spectrum in ppm | [optional] 
**structure_annotation_smiles** | **str** | Smiles of the structure candidate used to derive substructure peak annotations via epimetheus insilico fragmentation  Substructure highlighting (bond and atom indices) refer to this specific SMILES.  If you standardize or canonicalize this SMILES in any way the indices of substructure highlighting might  not match correctly anymore.   Null if substructure annotation not available or not requested. | [optional] 
**structure_annotation_score** | **float** | Overall score of all substructure annotations computed for this structure candidate (structureAnnotationSmiles)   Null if substructure annotation not available or not requested. | [optional] 

## Example

```python
from PySirius.models.spectrum_annotation import SpectrumAnnotation

# TODO update the JSON string below
json = "{}"
# create an instance of SpectrumAnnotation from a JSON string
spectrum_annotation_instance = SpectrumAnnotation.from_json(json)
# print the JSON string representation of the object
print(SpectrumAnnotation.to_json())

# convert the object into a dict
spectrum_annotation_dict = spectrum_annotation_instance.to_dict()
# create an instance of SpectrumAnnotation from a dict
spectrum_annotation_from_dict = SpectrumAnnotation.from_dict(spectrum_annotation_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


