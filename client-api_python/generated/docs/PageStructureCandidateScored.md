# PageStructureCandidateScored


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_pages** | **int** |  | [optional] 
**total_elements** | **int** |  | [optional] 
**last** | **bool** |  | [optional] 
**sort** | [**SortObject**](SortObject.md) |  | [optional] 
**first** | **bool** |  | [optional] 
**size** | **int** |  | [optional] 
**content** | [**List[StructureCandidateScored]**](StructureCandidateScored.md) |  | [optional] 
**number** | **int** |  | [optional] 
**number_of_elements** | **int** |  | [optional] 
**pageable** | [**PageableObject**](PageableObject.md) |  | [optional] 
**empty** | **bool** |  | [optional] 

## Example

```python
from PySirius.models.page_structure_candidate_scored import PageStructureCandidateScored

# TODO update the JSON string below
json = "{}"
# create an instance of PageStructureCandidateScored from a JSON string
page_structure_candidate_scored_instance = PageStructureCandidateScored.from_json(json)
# print the JSON string representation of the object
print PageStructureCandidateScored.to_json()

# convert the object into a dict
page_structure_candidate_scored_dict = page_structure_candidate_scored_instance.to_dict()
# create an instance of PageStructureCandidateScored from a dict
page_structure_candidate_scored_form_dict = page_structure_candidate_scored.from_dict(page_structure_candidate_scored_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


