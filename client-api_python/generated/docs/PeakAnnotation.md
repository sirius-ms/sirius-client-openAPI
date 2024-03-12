# PeakAnnotation


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**fragment_id** | **int** | Identifier of the peak/fragment. Can be used to map fragments and peaks  among fragmentation trees and spectra. | 
**molecular_formula** | **str** | Molecular formula that has been annotated to this peak | [optional] 
**ionization** | **str** | Ionization that has been annotated to this peak | [optional] 
**exact_mass** | **float** | Exact mass of the annotated molecular formula and ionization | [optional] 
**mass_deviation_mz** | **float** | Absolute mass deviation of the exact mass to the measured peak mass in mDa | [optional] 
**mass_deviation_ppm** | **float** | Relative mass deviation of the exact mass to the measured peak mass in ppm | [optional] 
**recalibrated_mass_deviation_mz** | **float** | Absolute mass deviation of the exact mass to the recalibrated peak mass in mDa | [optional] 
**recalibrated_mass_deviation_ppm** | **float** | Relative mass deviation of the exact mass to the recalibrated peak mass in ppm | [optional] 
**parent_peak** | [**ParentPeak**](ParentPeak.md) |  | [optional] 
**substructure_atoms** | **List[Optional[int]]** | Array/List of indices of the atoms of the structure candidate that are part of this fragments substructure  (highlighted atoms) | [optional] 
**substructure_bonds** | **List[Optional[int]]** | Array/List of indices of the bonds of the structure candidate that are part of this fragments substructure  (highlighted bonds)   Null if substructure annotation not available or not requested. | [optional] 
**substructure_bonds_cut** | **List[Optional[int]]** | Array/List of indices of the bonds of the structure candidate that need to be cut to produce this fragments  substructure (highlighted cutted bonds).   Null if substructure annotation not available or not requested. | [optional] 
**substructure_score** | **float** | This score roughly reflects the probability of this fragment forming.   This is the score of the path from root to this node which has the maximal score or \&quot;profit\&quot;.  The score of a path is equal to the sum of scores of its contained fragments and edges.  Note: Refers to &#39;totalScore&#39; in CombinatorialNode   Null if substructure annotation not available or not requested. | [optional] 
**hydrogen_rearrangements** | **int** | Number of hydrogens rearrangements needed to match the substructure to the fragment formula.   Null if substructure annotation not available or not requested. | [optional] 

## Example

```python
from PySirius.models.peak_annotation import PeakAnnotation

# TODO update the JSON string below
json = "{}"
# create an instance of PeakAnnotation from a JSON string
peak_annotation_instance = PeakAnnotation.from_json(json)
# print the JSON string representation of the object
print(PeakAnnotation.to_json())

# convert the object into a dict
peak_annotation_dict = peak_annotation_instance.to_dict()
# create an instance of PeakAnnotation from a dict
peak_annotation_form_dict = peak_annotation.from_dict(peak_annotation_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


