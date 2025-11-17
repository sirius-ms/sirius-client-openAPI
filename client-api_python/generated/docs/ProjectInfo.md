# ProjectInfo


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**project_id** | **str** | a user selected unique name of the project for easy access. | [optional] 
**location** | **str** | storage location of the project. | [optional] 
**description** | **str** | Description of this project. | [optional] 
**type** | [**ProjectType**](ProjectType.md) |  | [optional] 
**compatible** | **bool** | Indicates whether computed results (e.g. fingerprints, compounds classes) are compatible with the backend.  If true project is up-to-date and there are no restrictions regarding usage.  If false project is incompatible and therefore \&quot;read only\&quot; until the incompatible results have been removed. See updateProject endpoint for further information  If NULL the information has not been requested. | [optional] 
**num_of_features** | **int** | Number of features (aligned over runs) in this project. If NULL, information has not been requested (See OptField &#39;sizeInformation&#39;). | [optional] 
**num_of_compounds** | **int** | Number of compounds (group of ion identities) in this project. If NULL, Information has not been requested (See OptField &#39;sizeInformation&#39;) or might be unavailable for this project type. | [optional] 
**num_of_bytes** | **int** | Size in Bytes this project consumes on disk If NULL, Information has not been requested (See OptField &#39;sizeInformation&#39;). | [optional] 
**detected_adducts** | **List[Optional[str]]** | Set of all detected adducts available in this projects | [optional] 

## Example

```python
from PySirius.models.project_info import ProjectInfo

# TODO update the JSON string below
json = "{}"
# create an instance of ProjectInfo from a JSON string
project_info_instance = ProjectInfo.from_json(json)
# print the JSON string representation of the object
print(ProjectInfo.to_json())

# convert the object into a dict
project_info_dict = project_info_instance.to_dict()
# create an instance of ProjectInfo from a dict
project_info_from_dict = ProjectInfo.from_dict(project_info_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


