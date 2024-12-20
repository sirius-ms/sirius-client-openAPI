# AdductEdgeExperimental

EXPERIMENTAL: This schema is experimental and may be changed (or even removed) without notice until it is declared stable.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**mz_delta** | **float** |  | [optional] 
**annotation** | **str** |  | [optional] 
**var_from** | **int** |  | [optional] 
**to** | **int** |  | [optional] 
**merged_correlation** | **float** |  | [optional] 
**representative_correlation** | **float** |  | [optional] 
**ms2cosine** | **float** |  | [optional] 
**pvalue** | **float** |  | [optional] 
**intensity_ratio_score** | **float** |  | [optional] 

## Example

```python
from PySirius.models.adduct_edge_experimental import AdductEdgeExperimental

# TODO update the JSON string below
json = "{}"
# create an instance of AdductEdgeExperimental from a JSON string
adduct_edge_experimental_instance = AdductEdgeExperimental.from_json(json)
# print the JSON string representation of the object
print(AdductEdgeExperimental.to_json())

# convert the object into a dict
adduct_edge_experimental_dict = adduct_edge_experimental_instance.to_dict()
# create an instance of AdductEdgeExperimental from a dict
adduct_edge_experimental_from_dict = AdductEdgeExperimental.from_dict(adduct_edge_experimental_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


