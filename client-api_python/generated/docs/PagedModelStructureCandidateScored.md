# PagedModelStructureCandidateScored


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**content** | [**List[StructureCandidateScored]**](StructureCandidateScored.md) |  | [optional] 
**page** | [**PageMetadata**](PageMetadata.md) |  | [optional] 

## Example

```python
from PySirius.models.paged_model_structure_candidate_scored import PagedModelStructureCandidateScored

# TODO update the JSON string below
json = "{}"
# create an instance of PagedModelStructureCandidateScored from a JSON string
paged_model_structure_candidate_scored_instance = PagedModelStructureCandidateScored.from_json(json)
# print the JSON string representation of the object
print(PagedModelStructureCandidateScored.to_json())

# convert the object into a dict
paged_model_structure_candidate_scored_dict = paged_model_structure_candidate_scored_instance.to_dict()
# create an instance of PagedModelStructureCandidateScored from a dict
paged_model_structure_candidate_scored_from_dict = PagedModelStructureCandidateScored.from_dict(paged_model_structure_candidate_scored_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


